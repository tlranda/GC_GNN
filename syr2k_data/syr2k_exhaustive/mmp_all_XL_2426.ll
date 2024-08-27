; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2426.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2426.c"
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
  %scevgep1151 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1150 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1149 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1148 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1148, %scevgep1151
  %bound1 = icmp ult i8* %scevgep1150, %scevgep1149
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
  br i1 %exitcond18.not.i, label %vector.ph1155, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1155:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1162 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1163 = shufflevector <4 x i64> %broadcast.splatinsert1162, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1155
  %index1156 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1155 ], [ %vec.ind.next1161, %vector.body1154 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1160, %broadcast.splat1163
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv7.i, i64 %index1156
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1157, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1154, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1154
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1155, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit913
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1217 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1217, label %for.body3.i46.preheader1651, label %vector.ph1218

vector.ph1218:                                    ; preds = %for.body3.i46.preheader
  %n.vec1220 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1216 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %index1221
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1222 = add i64 %index1221, 4
  %46 = icmp eq i64 %index.next1222, %n.vec1220
  br i1 %46, label %middle.block1214, label %vector.body1216, !llvm.loop !18

middle.block1214:                                 ; preds = %vector.body1216
  %cmp.n1224 = icmp eq i64 %indvars.iv21.i, %n.vec1220
  br i1 %cmp.n1224, label %for.inc6.i, label %for.body3.i46.preheader1651

for.body3.i46.preheader1651:                      ; preds = %for.body3.i46.preheader, %middle.block1214
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1220, %middle.block1214 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1651, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1651 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1214, %for.cond1.preheader.i45
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
  %min.iters.check1360 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1360, label %for.body3.i60.preheader1650, label %vector.ph1361

vector.ph1361:                                    ; preds = %for.body3.i60.preheader
  %n.vec1363 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1359

vector.body1359:                                  ; preds = %vector.body1359, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1359 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %index1364
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1368, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1365 = add i64 %index1364, 4
  %57 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %57, label %middle.block1357, label %vector.body1359, !llvm.loop !57

middle.block1357:                                 ; preds = %vector.body1359
  %cmp.n1367 = icmp eq i64 %indvars.iv21.i52, %n.vec1363
  br i1 %cmp.n1367, label %for.inc6.i63, label %for.body3.i60.preheader1650

for.body3.i60.preheader1650:                      ; preds = %for.body3.i60.preheader, %middle.block1357
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1363, %middle.block1357 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1650, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1650 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1357, %for.cond1.preheader.i54
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
  %min.iters.check1506 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1506, label %for.body3.i99.preheader1649, label %vector.ph1507

vector.ph1507:                                    ; preds = %for.body3.i99.preheader
  %n.vec1509 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1505

vector.body1505:                                  ; preds = %vector.body1505, %vector.ph1507
  %index1510 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1511, %vector.body1505 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %index1510
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1514, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1511 = add i64 %index1510, 4
  %68 = icmp eq i64 %index.next1511, %n.vec1509
  br i1 %68, label %middle.block1503, label %vector.body1505, !llvm.loop !59

middle.block1503:                                 ; preds = %vector.body1505
  %cmp.n1513 = icmp eq i64 %indvars.iv21.i91, %n.vec1509
  br i1 %cmp.n1513, label %for.inc6.i102, label %for.body3.i99.preheader1649

for.body3.i99.preheader1649:                      ; preds = %for.body3.i99.preheader, %middle.block1503
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1509, %middle.block1503 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1649, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1649 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1503, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1518 = phi i64 [ %indvar.next1519, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1518, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1520 = icmp ult i64 %88, 4
  br i1 %min.iters.check1520, label %polly.loop_header192.preheader, label %vector.ph1521

vector.ph1521:                                    ; preds = %polly.loop_header
  %n.vec1523 = and i64 %88, -4
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1521
  %index1524 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1525, %vector.body1517 ]
  %90 = shl nuw nsw i64 %index1524, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1528 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1528, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1525 = add i64 %index1524, 4
  %95 = icmp eq i64 %index.next1525, %n.vec1523
  br i1 %95, label %middle.block1515, label %vector.body1517, !llvm.loop !72

middle.block1515:                                 ; preds = %vector.body1517
  %cmp.n1527 = icmp eq i64 %88, %n.vec1523
  br i1 %cmp.n1527, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1515
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1523, %middle.block1515 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1515
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1519 = add i64 %indvar1518, 1
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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1059.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1058.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1557 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1558 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1590 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1591 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1623 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

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
  %exitcond1057.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1057.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nsw i64 %polly.indvar219, -100
  %98 = mul nuw nsw i64 %polly.indvar219, 100
  %99 = mul nuw nsw i64 %polly.indvar219, 100
  %100 = mul nsw i64 %polly.indvar219, -100
  %101 = mul nsw i64 %polly.indvar219, -100
  %102 = mul nuw nsw i64 %polly.indvar219, 100
  %103 = mul nuw nsw i64 %polly.indvar219, 100
  %104 = mul nsw i64 %polly.indvar219, -100
  %105 = mul nsw i64 %polly.indvar219, -100
  %106 = mul nuw nsw i64 %polly.indvar219, 100
  %107 = mul nuw nsw i64 %polly.indvar219, 100
  %108 = mul nsw i64 %polly.indvar219, -100
  %109 = mul nsw i64 %polly.indvar219, -100
  %110 = mul nuw nsw i64 %polly.indvar219, 100
  %111 = shl nuw nsw i64 %polly.indvar219, 1
  %112 = mul nuw nsw i64 %polly.indvar219, 7
  %113 = add nuw nsw i64 %112, 7
  %pexp.p_div_q = lshr i64 %113, 4
  %114 = sub nsw i64 %111, %pexp.p_div_q
  %polly.loop_guard = icmp sgt i64 %114, -2
  %115 = mul nsw i64 %polly.indvar219, -100
  %116 = mul nuw nsw i64 %polly.indvar219, 100
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 100
  %exitcond1056.not = icmp eq i64 %polly.indvar_next220, 12
  br i1 %exitcond1056.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %117 = shl nsw i64 %polly.indvar225, 2
  %118 = or i64 %117, 1
  %119 = or i64 %117, 2
  %120 = or i64 %117, 3
  %polly.access.mul.Packed_MemRef_call2285.us = mul nsw i64 %polly.indvar225, 4800
  %121 = or i64 %117, 1
  %polly.access.mul.Packed_MemRef_call2285.us.1 = mul nuw nsw i64 %121, 1200
  %122 = or i64 %117, 2
  %polly.access.mul.Packed_MemRef_call2285.us.2 = mul nuw nsw i64 %122, 1200
  %123 = or i64 %117, 3
  %polly.access.mul.Packed_MemRef_call2285.us.3 = mul nuw nsw i64 %123, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1055.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1046 = phi i64 [ %indvars.iv1044, %polly.loop_header228.preheader ], [ %indvars.iv.next1047, %polly.loop_exit237 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1043, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %124 = shl nuw nsw i64 %polly.indvar231, 6
  %125 = add i64 %97, %124
  %smax1632 = call i64 @llvm.smax.i64(i64 %125, i64 0)
  %126 = mul nsw i64 %polly.indvar231, -64
  %127 = add i64 %98, %126
  %128 = add i64 %smax1632, %127
  %129 = shl nuw nsw i64 %polly.indvar231, 9
  %130 = shl nuw nsw i64 %polly.indvar231, 6
  %131 = add i64 %100, %130
  %smax1618 = call i64 @llvm.smax.i64(i64 %131, i64 0)
  %132 = add nuw i64 %99, %smax1618
  %133 = mul nsw i64 %132, 9600
  %134 = add i64 %129, %133
  %135 = or i64 %129, 8
  %136 = add i64 %135, %133
  %137 = mul nsw i64 %polly.indvar231, -64
  %138 = add i64 %99, %137
  %139 = add i64 %smax1618, %138
  %140 = shl nuw nsw i64 %polly.indvar231, 6
  %141 = add i64 %101, %140
  %smax1600 = call i64 @llvm.smax.i64(i64 %141, i64 0)
  %142 = mul nsw i64 %polly.indvar231, -64
  %143 = add i64 %102, %142
  %144 = add i64 %smax1600, %143
  %145 = shl nuw nsw i64 %polly.indvar231, 9
  %146 = shl nuw nsw i64 %polly.indvar231, 6
  %147 = add i64 %104, %146
  %smax1585 = call i64 @llvm.smax.i64(i64 %147, i64 0)
  %148 = add nuw i64 %103, %smax1585
  %149 = mul nsw i64 %148, 9600
  %150 = add i64 %145, %149
  %151 = or i64 %145, 8
  %152 = add i64 %151, %149
  %153 = mul nsw i64 %polly.indvar231, -64
  %154 = add i64 %103, %153
  %155 = add i64 %smax1585, %154
  %156 = shl nuw nsw i64 %polly.indvar231, 6
  %157 = add i64 %105, %156
  %smax1567 = call i64 @llvm.smax.i64(i64 %157, i64 0)
  %158 = mul nsw i64 %polly.indvar231, -64
  %159 = add i64 %106, %158
  %160 = add i64 %smax1567, %159
  %161 = shl nuw nsw i64 %polly.indvar231, 9
  %162 = shl nuw nsw i64 %polly.indvar231, 6
  %163 = add i64 %108, %162
  %smax1552 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = add nuw i64 %107, %smax1552
  %165 = mul nsw i64 %164, 9600
  %166 = add i64 %161, %165
  %167 = or i64 %161, 8
  %168 = add i64 %167, %165
  %169 = mul nsw i64 %polly.indvar231, -64
  %170 = add i64 %107, %169
  %171 = add i64 %smax1552, %170
  %172 = shl nuw nsw i64 %polly.indvar231, 6
  %173 = add i64 %109, %172
  %smax1532 = call i64 @llvm.smax.i64(i64 %173, i64 0)
  %174 = mul nsw i64 %polly.indvar231, -64
  %175 = add i64 %110, %174
  %176 = add i64 %smax1532, %175
  %177 = shl nsw i64 %polly.indvar231, 6
  %178 = add nsw i64 %177, %115
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard238 = icmp slt i64 %180, 100
  br i1 %polly.loop_guard238, label %polly.loop_header235.preheader, label %polly.loop_exit237

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %181 = add i64 %smax, %indvars.iv1046
  %182 = sub nsw i64 %116, %177
  %183 = add nuw nsw i64 %177, 64
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233.not = icmp sgt i64 %polly.indvar231, %114
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 64
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -64
  br i1 %polly.loop_cond233.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1533 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1534, %polly.loop_exit269 ]
  %indvars.iv1048 = phi i64 [ %181, %polly.loop_header235.preheader ], [ %indvars.iv.next1049, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %180, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %184 = add i64 %128, %indvar1533
  %smin1633 = call i64 @llvm.smin.i64(i64 %184, i64 63)
  %185 = add nsw i64 %smin1633, 1
  %186 = mul nuw nsw i64 %indvar1533, 9600
  %187 = add i64 %134, %186
  %scevgep1619 = getelementptr i8, i8* %call, i64 %187
  %188 = add i64 %136, %186
  %scevgep1620 = getelementptr i8, i8* %call, i64 %188
  %189 = add i64 %139, %indvar1533
  %smin1621 = call i64 @llvm.smin.i64(i64 %189, i64 63)
  %190 = shl nsw i64 %smin1621, 3
  %scevgep1622 = getelementptr i8, i8* %scevgep1620, i64 %190
  %scevgep1624 = getelementptr i8, i8* %scevgep1623, i64 %190
  %191 = add i64 %144, %indvar1533
  %smin1601 = call i64 @llvm.smin.i64(i64 %191, i64 63)
  %192 = add nsw i64 %smin1601, 1
  %193 = mul nuw nsw i64 %indvar1533, 9600
  %194 = add i64 %150, %193
  %scevgep1586 = getelementptr i8, i8* %call, i64 %194
  %195 = add i64 %152, %193
  %scevgep1587 = getelementptr i8, i8* %call, i64 %195
  %196 = add i64 %155, %indvar1533
  %smin1588 = call i64 @llvm.smin.i64(i64 %196, i64 63)
  %197 = shl nsw i64 %smin1588, 3
  %scevgep1589 = getelementptr i8, i8* %scevgep1587, i64 %197
  %scevgep1592 = getelementptr i8, i8* %scevgep1591, i64 %197
  %198 = add i64 %160, %indvar1533
  %smin1568 = call i64 @llvm.smin.i64(i64 %198, i64 63)
  %199 = add nsw i64 %smin1568, 1
  %200 = mul nuw nsw i64 %indvar1533, 9600
  %201 = add i64 %166, %200
  %scevgep1553 = getelementptr i8, i8* %call, i64 %201
  %202 = add i64 %168, %200
  %scevgep1554 = getelementptr i8, i8* %call, i64 %202
  %203 = add i64 %171, %indvar1533
  %smin1555 = call i64 @llvm.smin.i64(i64 %203, i64 63)
  %204 = shl nsw i64 %smin1555, 3
  %scevgep1556 = getelementptr i8, i8* %scevgep1554, i64 %204
  %scevgep1559 = getelementptr i8, i8* %scevgep1558, i64 %204
  %205 = add i64 %176, %indvar1533
  %smin1535 = call i64 @llvm.smin.i64(i64 %205, i64 63)
  %206 = add nsw i64 %smin1535, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 63)
  %207 = add nsw i64 %polly.indvar239, %182
  %polly.loop_guard2521143 = icmp sgt i64 %207, -1
  %208 = add nuw nsw i64 %polly.indvar239, %116
  %.not = icmp ult i64 %208, %183
  %polly.access.mul.call1261 = mul nsw i64 %208, 1000
  %209 = add nuw i64 %polly.access.mul.call1261, %117
  br i1 %polly.loop_guard2521143, label %polly.loop_header249.us, label %polly.loop_header235.split

polly.loop_header249.us:                          ; preds = %polly.loop_header235, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header235 ]
  %210 = add nuw nsw i64 %polly.indvar253.us, %177
  %polly.access.mul.call1257.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %117, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar253.us, %smin1052
  br i1 %exitcond1050.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %209
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.loop_header249.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.loop_header249.us.1.preheader, label %polly.then.us

polly.loop_header249.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header249.us.1

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242.preheader

polly.loop_header242.preheader:                   ; preds = %polly.loop_header235.split
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %209
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.access.add.call1262.1 = or i64 %209, 1
  %polly.access.call1263.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.1
  %polly.access.call1263.load.1 = load double, double* %polly.access.call1263.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  store double %polly.access.call1263.load.1, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %polly.access.add.call1262.2 = or i64 %209, 2
  %polly.access.call1263.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.2
  %polly.access.call1263.load.2 = load double, double* %polly.access.call1263.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  store double %polly.access.call1263.load.2, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %polly.access.add.call1262.3 = or i64 %209, 3
  %polly.access.call1263.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.3
  %polly.access.call1263.load.3 = load double, double* %polly.access.call1263.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  store double %polly.access.call1263.load.3, double* %polly.access.Packed_MemRef_call1266.3, align 8
  br label %polly.loop_exit269

polly.loop_exit269:                               ; preds = %polly.loop_header274.us.3, %middle.block1529, %polly.loop_header235.split, %polly.loop_header242.preheader, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241 = icmp ult i64 %polly.indvar239, 99
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %indvar.next1534 = add i64 %indvar1533, 1
  br i1 %polly.loop_cond241, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header267.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %211 = mul i64 %208, 9600
  br i1 %polly.loop_guard2521143, label %polly.loop_header267.us.preheader, label %polly.loop_exit269

polly.loop_header267.us.preheader:                ; preds = %polly.loop_header267.preheader
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %208
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1634 = icmp ult i64 %185, 4
  br i1 %min.iters.check1634, label %polly.loop_header274.us.preheader, label %vector.memcheck1617

vector.memcheck1617:                              ; preds = %polly.loop_header267.us.preheader
  %bound01625 = icmp ult i8* %scevgep1619, %scevgep1624
  %bound11626 = icmp ult i8* %malloccall, %scevgep1622
  %found.conflict1627 = and i1 %bound01625, %bound11626
  br i1 %found.conflict1627, label %polly.loop_header274.us.preheader, label %vector.ph1635

vector.ph1635:                                    ; preds = %vector.memcheck1617
  %n.vec1637 = and i64 %185, -4
  %broadcast.splatinsert1643 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1644 = shufflevector <4 x double> %broadcast.splatinsert1643, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1646 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1647 = shufflevector <4 x double> %broadcast.splatinsert1646, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1631

vector.body1631:                                  ; preds = %vector.body1631, %vector.ph1635
  %index1638 = phi i64 [ 0, %vector.ph1635 ], [ %index.next1639, %vector.body1631 ]
  %212 = add nuw nsw i64 %index1638, %177
  %213 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1638
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1642 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !77
  %215 = fmul fast <4 x double> %broadcast.splat1644, %wide.load1642
  %216 = add nuw nsw i64 %212, %polly.access.mul.Packed_MemRef_call2285.us
  %217 = getelementptr double, double* %Packed_MemRef_call2, i64 %216
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1647, %wide.load1645
  %220 = shl i64 %212, 3
  %221 = add i64 %220, %211
  %222 = getelementptr i8, i8* %call, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  %wide.load1648 = load <4 x double>, <4 x double>* %223, align 8, !alias.scope !80, !noalias !82
  %224 = fadd fast <4 x double> %219, %215
  %225 = fmul fast <4 x double> %224, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %226 = fadd fast <4 x double> %225, %wide.load1648
  %227 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %226, <4 x double>* %227, align 8, !alias.scope !80, !noalias !82
  %index.next1639 = add i64 %index1638, 4
  %228 = icmp eq i64 %index.next1639, %n.vec1637
  br i1 %228, label %middle.block1629, label %vector.body1631, !llvm.loop !83

middle.block1629:                                 ; preds = %vector.body1631
  %cmp.n1641 = icmp eq i64 %185, %n.vec1637
  br i1 %cmp.n1641, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %vector.memcheck1617, %polly.loop_header267.us.preheader, %middle.block1629
  %polly.indvar278.us.ph = phi i64 [ 0, %vector.memcheck1617 ], [ 0, %polly.loop_header267.us.preheader ], [ %n.vec1637, %middle.block1629 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %229 = add nuw nsw i64 %polly.indvar278.us, %177
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar278.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %211
  %scevgep297.us = getelementptr i8, i8* %call, i64 %231
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar278.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us, !llvm.loop !84

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_header274.us, %middle.block1629
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.1, %208
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1295.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call1295.us.1, align 8
  %min.iters.check1602 = icmp ult i64 %192, 4
  br i1 %min.iters.check1602, label %polly.loop_header274.us.1.preheader, label %vector.memcheck1584

vector.memcheck1584:                              ; preds = %polly.loop_exit276.loopexit.us
  %bound01593 = icmp ult i8* %scevgep1586, %scevgep1592
  %bound11594 = icmp ult i8* %scevgep1590, %scevgep1589
  %found.conflict1595 = and i1 %bound01593, %bound11594
  br i1 %found.conflict1595, label %polly.loop_header274.us.1.preheader, label %vector.ph1603

vector.ph1603:                                    ; preds = %vector.memcheck1584
  %n.vec1605 = and i64 %192, -4
  %broadcast.splatinsert1611 = insertelement <4 x double> poison, double %_p_scalar_288.us.1, i32 0
  %broadcast.splat1612 = shufflevector <4 x double> %broadcast.splatinsert1611, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1614 = insertelement <4 x double> poison, double %_p_scalar_296.us.1, i32 0
  %broadcast.splat1615 = shufflevector <4 x double> %broadcast.splatinsert1614, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1599

vector.body1599:                                  ; preds = %vector.body1599, %vector.ph1603
  %index1606 = phi i64 [ 0, %vector.ph1603 ], [ %index.next1607, %vector.body1599 ]
  %232 = add nuw nsw i64 %index1606, %177
  %233 = add nuw nsw i64 %index1606, 1200
  %234 = getelementptr double, double* %Packed_MemRef_call1, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1610 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !85
  %236 = fmul fast <4 x double> %broadcast.splat1612, %wide.load1610
  %237 = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call2285.us.1
  %238 = getelementptr double, double* %Packed_MemRef_call2, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1613 = load <4 x double>, <4 x double>* %239, align 8
  %240 = fmul fast <4 x double> %broadcast.splat1615, %wide.load1613
  %241 = shl i64 %232, 3
  %242 = add i64 %241, %211
  %243 = getelementptr i8, i8* %call, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1616 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !88, !noalias !90
  %245 = fadd fast <4 x double> %240, %236
  %246 = fmul fast <4 x double> %245, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %247 = fadd fast <4 x double> %246, %wide.load1616
  %248 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !88, !noalias !90
  %index.next1607 = add i64 %index1606, 4
  %249 = icmp eq i64 %index.next1607, %n.vec1605
  br i1 %249, label %middle.block1597, label %vector.body1599, !llvm.loop !91

middle.block1597:                                 ; preds = %vector.body1599
  %cmp.n1609 = icmp eq i64 %192, %n.vec1605
  br i1 %cmp.n1609, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1.preheader

polly.loop_header274.us.1.preheader:              ; preds = %vector.memcheck1584, %polly.loop_exit276.loopexit.us, %middle.block1597
  %polly.indvar278.us.1.ph = phi i64 [ 0, %vector.memcheck1584 ], [ 0, %polly.loop_exit276.loopexit.us ], [ %n.vec1605, %middle.block1597 ]
  br label %polly.loop_header274.us.1

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit430
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1372 = phi i64 [ %indvar.next1373, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %250 = add i64 %indvar1372, 1
  %251 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %251
  %min.iters.check1374 = icmp ult i64 %250, 4
  br i1 %min.iters.check1374, label %polly.loop_header396.preheader, label %vector.ph1375

vector.ph1375:                                    ; preds = %polly.loop_header390
  %n.vec1377 = and i64 %250, -4
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1375
  %index1378 = phi i64 [ 0, %vector.ph1375 ], [ %index.next1379, %vector.body1371 ]
  %252 = shl nuw nsw i64 %index1378, 3
  %253 = getelementptr i8, i8* %scevgep402, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1382 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !92, !noalias !94
  %255 = fmul fast <4 x double> %wide.load1382, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %256 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %255, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %index.next1379 = add i64 %index1378, 4
  %257 = icmp eq i64 %index.next1379, %n.vec1377
  br i1 %257, label %middle.block1369, label %vector.body1371, !llvm.loop !99

middle.block1369:                                 ; preds = %vector.body1371
  %cmp.n1381 = icmp eq i64 %250, %n.vec1377
  br i1 %cmp.n1381, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1369
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1377, %middle.block1369 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1369
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1373 = add i64 %indvar1372, 1
  br i1 %exitcond1084.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %258 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %258
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1083.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !100

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond1082.not, label %polly.loop_header422.preheader, label %polly.loop_header406

polly.loop_header422.preheader:                   ; preds = %polly.loop_exit414
  %scevgep1411 = getelementptr i8, i8* %malloccall304, i64 19200
  %scevgep1412 = getelementptr i8, i8* %malloccall304, i64 19208
  %scevgep1444 = getelementptr i8, i8* %malloccall304, i64 9600
  %scevgep1445 = getelementptr i8, i8* %malloccall304, i64 9608
  %scevgep1477 = getelementptr i8, i8* %malloccall304, i64 8
  br label %polly.loop_header422

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %polly.access.mul.call2419 = mul nuw nsw i64 %polly.indvar415, 1000
  %polly.access.add.call2420 = add nuw nsw i64 %polly.access.mul.call2419, %polly.indvar409
  %polly.access.call2421 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2420
  %polly.access.call2421.load = load double, double* %polly.access.call2421, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar415, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2421.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next416, 1200
  br i1 %exitcond1081.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_header422.preheader, %polly.loop_exit430
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %259 = mul nsw i64 %polly.indvar425, -100
  %260 = mul nuw nsw i64 %polly.indvar425, 100
  %261 = mul nuw nsw i64 %polly.indvar425, 100
  %262 = mul nsw i64 %polly.indvar425, -100
  %263 = mul nsw i64 %polly.indvar425, -100
  %264 = mul nuw nsw i64 %polly.indvar425, 100
  %265 = mul nuw nsw i64 %polly.indvar425, 100
  %266 = mul nsw i64 %polly.indvar425, -100
  %267 = mul nsw i64 %polly.indvar425, -100
  %268 = mul nuw nsw i64 %polly.indvar425, 100
  %269 = mul nuw nsw i64 %polly.indvar425, 100
  %270 = mul nsw i64 %polly.indvar425, -100
  %271 = mul nsw i64 %polly.indvar425, -100
  %272 = mul nuw nsw i64 %polly.indvar425, 100
  %273 = shl nuw nsw i64 %polly.indvar425, 1
  %274 = mul nuw nsw i64 %polly.indvar425, 7
  %275 = add nuw nsw i64 %274, 7
  %pexp.p_div_q434 = lshr i64 %275, 4
  %276 = sub nsw i64 %273, %pexp.p_div_q434
  %polly.loop_guard439 = icmp sgt i64 %276, -2
  %277 = mul nsw i64 %polly.indvar425, -100
  %278 = mul nuw nsw i64 %polly.indvar425, 100
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -100
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 100
  %exitcond1080.not = icmp eq i64 %polly.indvar_next426, 12
  br i1 %exitcond1080.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439, label %polly.loop_header436.preheader, label %polly.loop_exit438

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %279 = shl nsw i64 %polly.indvar431, 2
  %280 = or i64 %279, 1
  %281 = or i64 %279, 2
  %282 = or i64 %279, 3
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nsw i64 %polly.indvar431, 4800
  %283 = or i64 %279, 1
  %polly.access.mul.Packed_MemRef_call2307498.us.1 = mul nuw nsw i64 %283, 1200
  %284 = or i64 %279, 2
  %polly.access.mul.Packed_MemRef_call2307498.us.2 = mul nuw nsw i64 %284, 1200
  %285 = or i64 %279, 3
  %polly.access.mul.Packed_MemRef_call2307498.us.3 = mul nuw nsw i64 %285, 1200
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next432, 250
  br i1 %exitcond1079.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1069 = phi i64 [ %indvars.iv1067, %polly.loop_header436.preheader ], [ %indvars.iv.next1070, %polly.loop_exit446 ]
  %indvars.iv1064 = phi i64 [ %indvars.iv1062, %polly.loop_header436.preheader ], [ %indvars.iv.next1065, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %286 = shl nuw nsw i64 %polly.indvar440, 6
  %287 = add i64 %259, %286
  %smax1486 = call i64 @llvm.smax.i64(i64 %287, i64 0)
  %288 = mul nsw i64 %polly.indvar440, -64
  %289 = add i64 %260, %288
  %290 = add i64 %smax1486, %289
  %291 = shl nuw nsw i64 %polly.indvar440, 9
  %292 = shl nuw nsw i64 %polly.indvar440, 6
  %293 = add i64 %262, %292
  %smax1472 = call i64 @llvm.smax.i64(i64 %293, i64 0)
  %294 = add nuw i64 %261, %smax1472
  %295 = mul nsw i64 %294, 9600
  %296 = add i64 %291, %295
  %297 = or i64 %291, 8
  %298 = add i64 %297, %295
  %299 = mul nsw i64 %polly.indvar440, -64
  %300 = add i64 %261, %299
  %301 = add i64 %smax1472, %300
  %302 = shl nuw nsw i64 %polly.indvar440, 6
  %303 = add i64 %263, %302
  %smax1454 = call i64 @llvm.smax.i64(i64 %303, i64 0)
  %304 = mul nsw i64 %polly.indvar440, -64
  %305 = add i64 %264, %304
  %306 = add i64 %smax1454, %305
  %307 = shl nuw nsw i64 %polly.indvar440, 9
  %308 = shl nuw nsw i64 %polly.indvar440, 6
  %309 = add i64 %266, %308
  %smax1439 = call i64 @llvm.smax.i64(i64 %309, i64 0)
  %310 = add nuw i64 %265, %smax1439
  %311 = mul nsw i64 %310, 9600
  %312 = add i64 %307, %311
  %313 = or i64 %307, 8
  %314 = add i64 %313, %311
  %315 = mul nsw i64 %polly.indvar440, -64
  %316 = add i64 %265, %315
  %317 = add i64 %smax1439, %316
  %318 = shl nuw nsw i64 %polly.indvar440, 6
  %319 = add i64 %267, %318
  %smax1421 = call i64 @llvm.smax.i64(i64 %319, i64 0)
  %320 = mul nsw i64 %polly.indvar440, -64
  %321 = add i64 %268, %320
  %322 = add i64 %smax1421, %321
  %323 = shl nuw nsw i64 %polly.indvar440, 9
  %324 = shl nuw nsw i64 %polly.indvar440, 6
  %325 = add i64 %270, %324
  %smax1406 = call i64 @llvm.smax.i64(i64 %325, i64 0)
  %326 = add nuw i64 %269, %smax1406
  %327 = mul nsw i64 %326, 9600
  %328 = add i64 %323, %327
  %329 = or i64 %323, 8
  %330 = add i64 %329, %327
  %331 = mul nsw i64 %polly.indvar440, -64
  %332 = add i64 %269, %331
  %333 = add i64 %smax1406, %332
  %334 = shl nuw nsw i64 %polly.indvar440, 6
  %335 = add i64 %271, %334
  %smax1386 = call i64 @llvm.smax.i64(i64 %335, i64 0)
  %336 = mul nsw i64 %polly.indvar440, -64
  %337 = add i64 %272, %336
  %338 = add i64 %smax1386, %337
  %339 = shl nsw i64 %polly.indvar440, 6
  %340 = add nsw i64 %339, %277
  %341 = icmp sgt i64 %340, 0
  %342 = select i1 %341, i64 %340, i64 0
  %polly.loop_guard447 = icmp slt i64 %342, 100
  br i1 %polly.loop_guard447, label %polly.loop_header444.preheader, label %polly.loop_exit446

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1066 = call i64 @llvm.smax.i64(i64 %indvars.iv1064, i64 0)
  %343 = add i64 %smax1066, %indvars.iv1069
  %344 = sub nsw i64 %278, %339
  %345 = add nuw nsw i64 %339, 64
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %polly.loop_cond442.not = icmp sgt i64 %polly.indvar440, %276
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, 64
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -64
  br i1 %polly.loop_cond442.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1387 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1388, %polly.loop_exit482 ]
  %indvars.iv1071 = phi i64 [ %343, %polly.loop_header444.preheader ], [ %indvars.iv.next1072, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %342, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %346 = add i64 %290, %indvar1387
  %smin1487 = call i64 @llvm.smin.i64(i64 %346, i64 63)
  %347 = add nsw i64 %smin1487, 1
  %348 = mul nuw nsw i64 %indvar1387, 9600
  %349 = add i64 %296, %348
  %scevgep1473 = getelementptr i8, i8* %call, i64 %349
  %350 = add i64 %298, %348
  %scevgep1474 = getelementptr i8, i8* %call, i64 %350
  %351 = add i64 %301, %indvar1387
  %smin1475 = call i64 @llvm.smin.i64(i64 %351, i64 63)
  %352 = shl nsw i64 %smin1475, 3
  %scevgep1476 = getelementptr i8, i8* %scevgep1474, i64 %352
  %scevgep1478 = getelementptr i8, i8* %scevgep1477, i64 %352
  %353 = add i64 %306, %indvar1387
  %smin1455 = call i64 @llvm.smin.i64(i64 %353, i64 63)
  %354 = add nsw i64 %smin1455, 1
  %355 = mul nuw nsw i64 %indvar1387, 9600
  %356 = add i64 %312, %355
  %scevgep1440 = getelementptr i8, i8* %call, i64 %356
  %357 = add i64 %314, %355
  %scevgep1441 = getelementptr i8, i8* %call, i64 %357
  %358 = add i64 %317, %indvar1387
  %smin1442 = call i64 @llvm.smin.i64(i64 %358, i64 63)
  %359 = shl nsw i64 %smin1442, 3
  %scevgep1443 = getelementptr i8, i8* %scevgep1441, i64 %359
  %scevgep1446 = getelementptr i8, i8* %scevgep1445, i64 %359
  %360 = add i64 %322, %indvar1387
  %smin1422 = call i64 @llvm.smin.i64(i64 %360, i64 63)
  %361 = add nsw i64 %smin1422, 1
  %362 = mul nuw nsw i64 %indvar1387, 9600
  %363 = add i64 %328, %362
  %scevgep1407 = getelementptr i8, i8* %call, i64 %363
  %364 = add i64 %330, %362
  %scevgep1408 = getelementptr i8, i8* %call, i64 %364
  %365 = add i64 %333, %indvar1387
  %smin1409 = call i64 @llvm.smin.i64(i64 %365, i64 63)
  %366 = shl nsw i64 %smin1409, 3
  %scevgep1410 = getelementptr i8, i8* %scevgep1408, i64 %366
  %scevgep1413 = getelementptr i8, i8* %scevgep1412, i64 %366
  %367 = add i64 %338, %indvar1387
  %smin1389 = call i64 @llvm.smin.i64(i64 %367, i64 63)
  %368 = add nsw i64 %smin1389, 1
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 63)
  %369 = add nsw i64 %polly.indvar448, %344
  %polly.loop_guard4611144 = icmp sgt i64 %369, -1
  %370 = add nuw nsw i64 %polly.indvar448, %278
  %.not932 = icmp ult i64 %370, %345
  %polly.access.mul.call1474 = mul nsw i64 %370, 1000
  %371 = add nuw i64 %polly.access.mul.call1474, %279
  br i1 %polly.loop_guard4611144, label %polly.loop_header458.us, label %polly.loop_header444.split

polly.loop_header458.us:                          ; preds = %polly.loop_header444, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header444 ]
  %372 = add nuw nsw i64 %polly.indvar462.us, %339
  %polly.access.mul.call1466.us = mul nuw nsw i64 %372, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %279, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar462.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar462.us, %smin1076
  br i1 %exitcond1074.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %371
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %369
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.loop_header458.us.1.preheader

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not932, label %polly.loop_header458.us.1.preheader, label %polly.then471.us

polly.loop_header458.us.1.preheader:              ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  br label %polly.loop_header458.us.1

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not932, label %polly.loop_exit482, label %polly.loop_header451.preheader

polly.loop_header451.preheader:                   ; preds = %polly.loop_header444.split
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %371
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %369
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.access.add.call1475.1 = or i64 %371, 1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1305479.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1305479.1, align 8
  %polly.access.add.call1475.2 = or i64 %371, 2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1305479.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1305479.2, align 8
  %polly.access.add.call1475.3 = or i64 %371, 3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1305479.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1305479.3, align 8
  br label %polly.loop_exit482

polly.loop_exit482:                               ; preds = %polly.loop_header487.us.3, %middle.block1383, %polly.loop_header444.split, %polly.loop_header451.preheader, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp ult i64 %polly.indvar448, 99
  %indvars.iv.next1072 = add i64 %indvars.iv1071, 1
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header480.preheader:                   ; preds = %polly.cond469.loopexit.us.3, %polly.then471.us.3
  %373 = mul i64 %370, 9600
  br i1 %polly.loop_guard4611144, label %polly.loop_header480.us.preheader, label %polly.loop_exit482

polly.loop_header480.us.preheader:                ; preds = %polly.loop_header480.preheader
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %370
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %369
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1488 = icmp ult i64 %347, 4
  br i1 %min.iters.check1488, label %polly.loop_header487.us.preheader, label %vector.memcheck1471

vector.memcheck1471:                              ; preds = %polly.loop_header480.us.preheader
  %bound01479 = icmp ult i8* %scevgep1473, %scevgep1478
  %bound11480 = icmp ult i8* %malloccall304, %scevgep1476
  %found.conflict1481 = and i1 %bound01479, %bound11480
  br i1 %found.conflict1481, label %polly.loop_header487.us.preheader, label %vector.ph1489

vector.ph1489:                                    ; preds = %vector.memcheck1471
  %n.vec1491 = and i64 %347, -4
  %broadcast.splatinsert1497 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1498 = shufflevector <4 x double> %broadcast.splatinsert1497, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1500 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1501 = shufflevector <4 x double> %broadcast.splatinsert1500, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1485

vector.body1485:                                  ; preds = %vector.body1485, %vector.ph1489
  %index1492 = phi i64 [ 0, %vector.ph1489 ], [ %index.next1493, %vector.body1485 ]
  %374 = add nuw nsw i64 %index1492, %339
  %375 = getelementptr double, double* %Packed_MemRef_call1305, i64 %index1492
  %376 = bitcast double* %375 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %376, align 8, !alias.scope !103
  %377 = fmul fast <4 x double> %broadcast.splat1498, %wide.load1496
  %378 = add nuw nsw i64 %374, %polly.access.mul.Packed_MemRef_call2307498.us
  %379 = getelementptr double, double* %Packed_MemRef_call2307, i64 %378
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %380, align 8
  %381 = fmul fast <4 x double> %broadcast.splat1501, %wide.load1499
  %382 = shl i64 %374, 3
  %383 = add i64 %382, %373
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  %wide.load1502 = load <4 x double>, <4 x double>* %385, align 8, !alias.scope !106, !noalias !108
  %386 = fadd fast <4 x double> %381, %377
  %387 = fmul fast <4 x double> %386, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %388 = fadd fast <4 x double> %387, %wide.load1502
  %389 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %388, <4 x double>* %389, align 8, !alias.scope !106, !noalias !108
  %index.next1493 = add i64 %index1492, 4
  %390 = icmp eq i64 %index.next1493, %n.vec1491
  br i1 %390, label %middle.block1483, label %vector.body1485, !llvm.loop !109

middle.block1483:                                 ; preds = %vector.body1485
  %cmp.n1495 = icmp eq i64 %347, %n.vec1491
  br i1 %cmp.n1495, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %vector.memcheck1471, %polly.loop_header480.us.preheader, %middle.block1483
  %polly.indvar491.us.ph = phi i64 [ 0, %vector.memcheck1471 ], [ 0, %polly.loop_header480.us.preheader ], [ %n.vec1491, %middle.block1483 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %391 = add nuw nsw i64 %polly.indvar491.us, %339
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar491.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %391, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %373
  %scevgep510.us = getelementptr i8, i8* %call, i64 %393
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar491.us, %smin1076
  br i1 %exitcond1077.not, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us, !llvm.loop !110

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_header487.us, %middle.block1483
  %polly.access.add.Packed_MemRef_call2307499.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.1, %370
  %polly.access.Packed_MemRef_call2307500.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2307500.us.1, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1305508.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call1305508.us.1, align 8
  %min.iters.check1456 = icmp ult i64 %354, 4
  br i1 %min.iters.check1456, label %polly.loop_header487.us.1.preheader, label %vector.memcheck1438

vector.memcheck1438:                              ; preds = %polly.loop_exit489.loopexit.us
  %bound01447 = icmp ult i8* %scevgep1440, %scevgep1446
  %bound11448 = icmp ult i8* %scevgep1444, %scevgep1443
  %found.conflict1449 = and i1 %bound01447, %bound11448
  br i1 %found.conflict1449, label %polly.loop_header487.us.1.preheader, label %vector.ph1457

vector.ph1457:                                    ; preds = %vector.memcheck1438
  %n.vec1459 = and i64 %354, -4
  %broadcast.splatinsert1465 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1466 = shufflevector <4 x double> %broadcast.splatinsert1465, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1468 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1469 = shufflevector <4 x double> %broadcast.splatinsert1468, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %vector.ph1457
  %index1460 = phi i64 [ 0, %vector.ph1457 ], [ %index.next1461, %vector.body1453 ]
  %394 = add nuw nsw i64 %index1460, %339
  %395 = add nuw nsw i64 %index1460, 1200
  %396 = getelementptr double, double* %Packed_MemRef_call1305, i64 %395
  %397 = bitcast double* %396 to <4 x double>*
  %wide.load1464 = load <4 x double>, <4 x double>* %397, align 8, !alias.scope !111
  %398 = fmul fast <4 x double> %broadcast.splat1466, %wide.load1464
  %399 = add nuw nsw i64 %394, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %400 = getelementptr double, double* %Packed_MemRef_call2307, i64 %399
  %401 = bitcast double* %400 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %401, align 8
  %402 = fmul fast <4 x double> %broadcast.splat1469, %wide.load1467
  %403 = shl i64 %394, 3
  %404 = add i64 %403, %373
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %406, align 8, !alias.scope !114, !noalias !116
  %407 = fadd fast <4 x double> %402, %398
  %408 = fmul fast <4 x double> %407, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %409 = fadd fast <4 x double> %408, %wide.load1470
  %410 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %409, <4 x double>* %410, align 8, !alias.scope !114, !noalias !116
  %index.next1461 = add i64 %index1460, 4
  %411 = icmp eq i64 %index.next1461, %n.vec1459
  br i1 %411, label %middle.block1451, label %vector.body1453, !llvm.loop !117

middle.block1451:                                 ; preds = %vector.body1453
  %cmp.n1463 = icmp eq i64 %354, %n.vec1459
  br i1 %cmp.n1463, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1.preheader

polly.loop_header487.us.1.preheader:              ; preds = %vector.memcheck1438, %polly.loop_exit489.loopexit.us, %middle.block1451
  %polly.indvar491.us.1.ph = phi i64 [ 0, %vector.memcheck1438 ], [ 0, %polly.loop_exit489.loopexit.us ], [ %n.vec1459, %middle.block1451 ]
  br label %polly.loop_header487.us.1

polly.start515:                                   ; preds = %init_array.exit
  %malloccall517 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall519 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header603

polly.exiting516:                                 ; preds = %polly.loop_exit643
  tail call void @free(i8* %malloccall517)
  tail call void @free(i8* %malloccall519)
  br label %kernel_syr2k.exit

polly.loop_header603:                             ; preds = %polly.loop_exit611, %polly.start515
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit611 ], [ 0, %polly.start515 ]
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 1, %polly.start515 ]
  %412 = add i64 %indvar, 1
  %413 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %413
  %min.iters.check1228 = icmp ult i64 %412, 4
  br i1 %min.iters.check1228, label %polly.loop_header609.preheader, label %vector.ph1229

vector.ph1229:                                    ; preds = %polly.loop_header603
  %n.vec1231 = and i64 %412, -4
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1233, %vector.body1227 ]
  %414 = shl nuw nsw i64 %index1232, 3
  %415 = getelementptr i8, i8* %scevgep615, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  %wide.load1236 = load <4 x double>, <4 x double>* %416, align 8, !alias.scope !118, !noalias !120
  %417 = fmul fast <4 x double> %wide.load1236, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %418 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %417, <4 x double>* %418, align 8, !alias.scope !118, !noalias !120
  %index.next1233 = add i64 %index1232, 4
  %419 = icmp eq i64 %index.next1233, %n.vec1231
  br i1 %419, label %middle.block1225, label %vector.body1227, !llvm.loop !125

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %412, %n.vec1231
  br i1 %cmp.n1235, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1225
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1231, %middle.block1225 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1225
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1108.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %420 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %420
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1107.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !126

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit627
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit627 ], [ 0, %polly.loop_header619.preheader ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar622, 1200
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_header625
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next623, 1000
  br i1 %exitcond1106.not, label %polly.loop_header635.preheader, label %polly.loop_header619

polly.loop_header635.preheader:                   ; preds = %polly.loop_exit627
  %scevgep1265 = getelementptr i8, i8* %malloccall517, i64 19200
  %scevgep1266 = getelementptr i8, i8* %malloccall517, i64 19208
  %scevgep1298 = getelementptr i8, i8* %malloccall517, i64 9600
  %scevgep1299 = getelementptr i8, i8* %malloccall517, i64 9608
  %scevgep1331 = getelementptr i8, i8* %malloccall517, i64 8
  br label %polly.loop_header635

polly.loop_header625:                             ; preds = %polly.loop_header625, %polly.loop_header619
  %polly.indvar628 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next629, %polly.loop_header625 ]
  %polly.access.mul.call2632 = mul nuw nsw i64 %polly.indvar628, 1000
  %polly.access.add.call2633 = add nuw nsw i64 %polly.access.mul.call2632, %polly.indvar622
  %polly.access.call2634 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2633
  %polly.access.call2634.load = load double, double* %polly.access.call2634, align 8, !alias.scope !122, !noalias !127
  %polly.access.add.Packed_MemRef_call2520 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call2520
  %polly.access.Packed_MemRef_call2520 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520
  store double %polly.access.call2634.load, double* %polly.access.Packed_MemRef_call2520, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next629, 1200
  br i1 %exitcond1105.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header635:                             ; preds = %polly.loop_header635.preheader, %polly.loop_exit643
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %421 = mul nsw i64 %polly.indvar638, -100
  %422 = mul nuw nsw i64 %polly.indvar638, 100
  %423 = mul nuw nsw i64 %polly.indvar638, 100
  %424 = mul nsw i64 %polly.indvar638, -100
  %425 = mul nsw i64 %polly.indvar638, -100
  %426 = mul nuw nsw i64 %polly.indvar638, 100
  %427 = mul nuw nsw i64 %polly.indvar638, 100
  %428 = mul nsw i64 %polly.indvar638, -100
  %429 = mul nsw i64 %polly.indvar638, -100
  %430 = mul nuw nsw i64 %polly.indvar638, 100
  %431 = mul nuw nsw i64 %polly.indvar638, 100
  %432 = mul nsw i64 %polly.indvar638, -100
  %433 = mul nsw i64 %polly.indvar638, -100
  %434 = mul nuw nsw i64 %polly.indvar638, 100
  %435 = shl nuw nsw i64 %polly.indvar638, 1
  %436 = mul nuw nsw i64 %polly.indvar638, 7
  %437 = add nuw nsw i64 %436, 7
  %pexp.p_div_q647 = lshr i64 %437, 4
  %438 = sub nsw i64 %435, %pexp.p_div_q647
  %polly.loop_guard652 = icmp sgt i64 %438, -2
  %439 = mul nsw i64 %polly.indvar638, -100
  %440 = mul nuw nsw i64 %polly.indvar638, 100
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -100
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 100
  %exitcond1104.not = icmp eq i64 %polly.indvar_next639, 12
  br i1 %exitcond1104.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %441 = shl nsw i64 %polly.indvar644, 2
  %442 = or i64 %441, 1
  %443 = or i64 %441, 2
  %444 = or i64 %441, 3
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nsw i64 %polly.indvar644, 4800
  %445 = or i64 %441, 1
  %polly.access.mul.Packed_MemRef_call2520711.us.1 = mul nuw nsw i64 %445, 1200
  %446 = or i64 %441, 2
  %polly.access.mul.Packed_MemRef_call2520711.us.2 = mul nuw nsw i64 %446, 1200
  %447 = or i64 %441, 3
  %polly.access.mul.Packed_MemRef_call2520711.us.3 = mul nuw nsw i64 %447, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next645, 250
  br i1 %exitcond1103.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1093 = phi i64 [ %indvars.iv1091, %polly.loop_header649.preheader ], [ %indvars.iv.next1094, %polly.loop_exit659 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv1086, %polly.loop_header649.preheader ], [ %indvars.iv.next1089, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %448 = shl nuw nsw i64 %polly.indvar653, 6
  %449 = add i64 %421, %448
  %smax1340 = call i64 @llvm.smax.i64(i64 %449, i64 0)
  %450 = mul nsw i64 %polly.indvar653, -64
  %451 = add i64 %422, %450
  %452 = add i64 %smax1340, %451
  %453 = shl nuw nsw i64 %polly.indvar653, 9
  %454 = shl nuw nsw i64 %polly.indvar653, 6
  %455 = add i64 %424, %454
  %smax1326 = call i64 @llvm.smax.i64(i64 %455, i64 0)
  %456 = add nuw i64 %423, %smax1326
  %457 = mul nsw i64 %456, 9600
  %458 = add i64 %453, %457
  %459 = or i64 %453, 8
  %460 = add i64 %459, %457
  %461 = mul nsw i64 %polly.indvar653, -64
  %462 = add i64 %423, %461
  %463 = add i64 %smax1326, %462
  %464 = shl nuw nsw i64 %polly.indvar653, 6
  %465 = add i64 %425, %464
  %smax1308 = call i64 @llvm.smax.i64(i64 %465, i64 0)
  %466 = mul nsw i64 %polly.indvar653, -64
  %467 = add i64 %426, %466
  %468 = add i64 %smax1308, %467
  %469 = shl nuw nsw i64 %polly.indvar653, 9
  %470 = shl nuw nsw i64 %polly.indvar653, 6
  %471 = add i64 %428, %470
  %smax1293 = call i64 @llvm.smax.i64(i64 %471, i64 0)
  %472 = add nuw i64 %427, %smax1293
  %473 = mul nsw i64 %472, 9600
  %474 = add i64 %469, %473
  %475 = or i64 %469, 8
  %476 = add i64 %475, %473
  %477 = mul nsw i64 %polly.indvar653, -64
  %478 = add i64 %427, %477
  %479 = add i64 %smax1293, %478
  %480 = shl nuw nsw i64 %polly.indvar653, 6
  %481 = add i64 %429, %480
  %smax1275 = call i64 @llvm.smax.i64(i64 %481, i64 0)
  %482 = mul nsw i64 %polly.indvar653, -64
  %483 = add i64 %430, %482
  %484 = add i64 %smax1275, %483
  %485 = shl nuw nsw i64 %polly.indvar653, 9
  %486 = shl nuw nsw i64 %polly.indvar653, 6
  %487 = add i64 %432, %486
  %smax1260 = call i64 @llvm.smax.i64(i64 %487, i64 0)
  %488 = add nuw i64 %431, %smax1260
  %489 = mul nsw i64 %488, 9600
  %490 = add i64 %485, %489
  %491 = or i64 %485, 8
  %492 = add i64 %491, %489
  %493 = mul nsw i64 %polly.indvar653, -64
  %494 = add i64 %431, %493
  %495 = add i64 %smax1260, %494
  %496 = shl nuw nsw i64 %polly.indvar653, 6
  %497 = add i64 %433, %496
  %smax1240 = call i64 @llvm.smax.i64(i64 %497, i64 0)
  %498 = mul nsw i64 %polly.indvar653, -64
  %499 = add i64 %434, %498
  %500 = add i64 %smax1240, %499
  %501 = shl nsw i64 %polly.indvar653, 6
  %502 = add nsw i64 %501, %439
  %503 = icmp sgt i64 %502, 0
  %504 = select i1 %503, i64 %502, i64 0
  %polly.loop_guard660 = icmp slt i64 %504, 100
  br i1 %polly.loop_guard660, label %polly.loop_header657.preheader, label %polly.loop_exit659

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1090 = call i64 @llvm.smax.i64(i64 %indvars.iv1088, i64 0)
  %505 = add i64 %smax1090, %indvars.iv1093
  %506 = sub nsw i64 %440, %501
  %507 = add nuw nsw i64 %501, 64
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655.not = icmp sgt i64 %polly.indvar653, %438
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, 64
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -64
  br i1 %polly.loop_cond655.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1241 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1242, %polly.loop_exit695 ]
  %indvars.iv1095 = phi i64 [ %505, %polly.loop_header657.preheader ], [ %indvars.iv.next1096, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %504, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %508 = add i64 %452, %indvar1241
  %smin1341 = call i64 @llvm.smin.i64(i64 %508, i64 63)
  %509 = add nsw i64 %smin1341, 1
  %510 = mul nuw nsw i64 %indvar1241, 9600
  %511 = add i64 %458, %510
  %scevgep1327 = getelementptr i8, i8* %call, i64 %511
  %512 = add i64 %460, %510
  %scevgep1328 = getelementptr i8, i8* %call, i64 %512
  %513 = add i64 %463, %indvar1241
  %smin1329 = call i64 @llvm.smin.i64(i64 %513, i64 63)
  %514 = shl nsw i64 %smin1329, 3
  %scevgep1330 = getelementptr i8, i8* %scevgep1328, i64 %514
  %scevgep1332 = getelementptr i8, i8* %scevgep1331, i64 %514
  %515 = add i64 %468, %indvar1241
  %smin1309 = call i64 @llvm.smin.i64(i64 %515, i64 63)
  %516 = add nsw i64 %smin1309, 1
  %517 = mul nuw nsw i64 %indvar1241, 9600
  %518 = add i64 %474, %517
  %scevgep1294 = getelementptr i8, i8* %call, i64 %518
  %519 = add i64 %476, %517
  %scevgep1295 = getelementptr i8, i8* %call, i64 %519
  %520 = add i64 %479, %indvar1241
  %smin1296 = call i64 @llvm.smin.i64(i64 %520, i64 63)
  %521 = shl nsw i64 %smin1296, 3
  %scevgep1297 = getelementptr i8, i8* %scevgep1295, i64 %521
  %scevgep1300 = getelementptr i8, i8* %scevgep1299, i64 %521
  %522 = add i64 %484, %indvar1241
  %smin1276 = call i64 @llvm.smin.i64(i64 %522, i64 63)
  %523 = add nsw i64 %smin1276, 1
  %524 = mul nuw nsw i64 %indvar1241, 9600
  %525 = add i64 %490, %524
  %scevgep1261 = getelementptr i8, i8* %call, i64 %525
  %526 = add i64 %492, %524
  %scevgep1262 = getelementptr i8, i8* %call, i64 %526
  %527 = add i64 %495, %indvar1241
  %smin1263 = call i64 @llvm.smin.i64(i64 %527, i64 63)
  %528 = shl nsw i64 %smin1263, 3
  %scevgep1264 = getelementptr i8, i8* %scevgep1262, i64 %528
  %scevgep1267 = getelementptr i8, i8* %scevgep1266, i64 %528
  %529 = add i64 %500, %indvar1241
  %smin1243 = call i64 @llvm.smin.i64(i64 %529, i64 63)
  %530 = add nsw i64 %smin1243, 1
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 63)
  %531 = add nsw i64 %polly.indvar661, %506
  %polly.loop_guard6741145 = icmp sgt i64 %531, -1
  %532 = add nuw nsw i64 %polly.indvar661, %440
  %.not933 = icmp ult i64 %532, %507
  %polly.access.mul.call1687 = mul nsw i64 %532, 1000
  %533 = add nuw i64 %polly.access.mul.call1687, %441
  br i1 %polly.loop_guard6741145, label %polly.loop_header671.us, label %polly.loop_header657.split

polly.loop_header671.us:                          ; preds = %polly.loop_header657, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header657 ]
  %534 = add nuw nsw i64 %polly.indvar675.us, %501
  %polly.access.mul.call1679.us = mul nuw nsw i64 %534, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %441, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar675.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar675.us, %smin1100
  br i1 %exitcond1098.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %533
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %531
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.loop_header671.us.1.preheader

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not933, label %polly.loop_header671.us.1.preheader, label %polly.then684.us

polly.loop_header671.us.1.preheader:              ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  br label %polly.loop_header671.us.1

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not933, label %polly.loop_exit695, label %polly.loop_header664.preheader

polly.loop_header664.preheader:                   ; preds = %polly.loop_header657.split
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %533
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %531
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.access.add.call1688.1 = or i64 %533, 1
  %polly.access.call1689.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.1
  %polly.access.call1689.load.1 = load double, double* %polly.access.call1689.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1518692.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.1
  store double %polly.access.call1689.load.1, double* %polly.access.Packed_MemRef_call1518692.1, align 8
  %polly.access.add.call1688.2 = or i64 %533, 2
  %polly.access.call1689.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.2
  %polly.access.call1689.load.2 = load double, double* %polly.access.call1689.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1518692.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.2
  store double %polly.access.call1689.load.2, double* %polly.access.Packed_MemRef_call1518692.2, align 8
  %polly.access.add.call1688.3 = or i64 %533, 3
  %polly.access.call1689.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.3
  %polly.access.call1689.load.3 = load double, double* %polly.access.call1689.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1518692.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.3
  store double %polly.access.call1689.load.3, double* %polly.access.Packed_MemRef_call1518692.3, align 8
  br label %polly.loop_exit695

polly.loop_exit695:                               ; preds = %polly.loop_header700.us.3, %middle.block1237, %polly.loop_header657.split, %polly.loop_header664.preheader, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663 = icmp ult i64 %polly.indvar661, 99
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 1
  %indvar.next1242 = add i64 %indvar1241, 1
  br i1 %polly.loop_cond663, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header693.preheader:                   ; preds = %polly.cond682.loopexit.us.3, %polly.then684.us.3
  %535 = mul i64 %532, 9600
  br i1 %polly.loop_guard6741145, label %polly.loop_header693.us.preheader, label %polly.loop_exit695

polly.loop_header693.us.preheader:                ; preds = %polly.loop_header693.preheader
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %532
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %531
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1342 = icmp ult i64 %509, 4
  br i1 %min.iters.check1342, label %polly.loop_header700.us.preheader, label %vector.memcheck1325

vector.memcheck1325:                              ; preds = %polly.loop_header693.us.preheader
  %bound01333 = icmp ult i8* %scevgep1327, %scevgep1332
  %bound11334 = icmp ult i8* %malloccall517, %scevgep1330
  %found.conflict1335 = and i1 %bound01333, %bound11334
  br i1 %found.conflict1335, label %polly.loop_header700.us.preheader, label %vector.ph1343

vector.ph1343:                                    ; preds = %vector.memcheck1325
  %n.vec1345 = and i64 %509, -4
  %broadcast.splatinsert1351 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1352 = shufflevector <4 x double> %broadcast.splatinsert1351, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1354 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1355 = shufflevector <4 x double> %broadcast.splatinsert1354, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1339 ]
  %536 = add nuw nsw i64 %index1346, %501
  %537 = getelementptr double, double* %Packed_MemRef_call1518, i64 %index1346
  %538 = bitcast double* %537 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %538, align 8, !alias.scope !129
  %539 = fmul fast <4 x double> %broadcast.splat1352, %wide.load1350
  %540 = add nuw nsw i64 %536, %polly.access.mul.Packed_MemRef_call2520711.us
  %541 = getelementptr double, double* %Packed_MemRef_call2520, i64 %540
  %542 = bitcast double* %541 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %542, align 8
  %543 = fmul fast <4 x double> %broadcast.splat1355, %wide.load1353
  %544 = shl i64 %536, 3
  %545 = add i64 %544, %535
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  %wide.load1356 = load <4 x double>, <4 x double>* %547, align 8, !alias.scope !132, !noalias !134
  %548 = fadd fast <4 x double> %543, %539
  %549 = fmul fast <4 x double> %548, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %550 = fadd fast <4 x double> %549, %wide.load1356
  %551 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %550, <4 x double>* %551, align 8, !alias.scope !132, !noalias !134
  %index.next1347 = add i64 %index1346, 4
  %552 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %552, label %middle.block1337, label %vector.body1339, !llvm.loop !135

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1349 = icmp eq i64 %509, %n.vec1345
  br i1 %cmp.n1349, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %vector.memcheck1325, %polly.loop_header693.us.preheader, %middle.block1337
  %polly.indvar704.us.ph = phi i64 [ 0, %vector.memcheck1325 ], [ 0, %polly.loop_header693.us.preheader ], [ %n.vec1345, %middle.block1337 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %553 = add nuw nsw i64 %polly.indvar704.us, %501
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar704.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %553, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %554 = shl i64 %553, 3
  %555 = add i64 %554, %535
  %scevgep723.us = getelementptr i8, i8* %call, i64 %555
  %scevgep723724.us = bitcast i8* %scevgep723.us to double*
  %_p_scalar_725.us = load double, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_725.us
  store double %p_add42.i.us, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar704.us, %smin1100
  br i1 %exitcond1101.not, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us, !llvm.loop !136

polly.loop_exit702.loopexit.us:                   ; preds = %polly.loop_header700.us, %middle.block1337
  %polly.access.add.Packed_MemRef_call2520712.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.1, %532
  %polly.access.Packed_MemRef_call2520713.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call2520713.us.1, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1518721.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.1
  %_p_scalar_722.us.1 = load double, double* %polly.access.Packed_MemRef_call1518721.us.1, align 8
  %min.iters.check1310 = icmp ult i64 %516, 4
  br i1 %min.iters.check1310, label %polly.loop_header700.us.1.preheader, label %vector.memcheck1292

vector.memcheck1292:                              ; preds = %polly.loop_exit702.loopexit.us
  %bound01301 = icmp ult i8* %scevgep1294, %scevgep1300
  %bound11302 = icmp ult i8* %scevgep1298, %scevgep1297
  %found.conflict1303 = and i1 %bound01301, %bound11302
  br i1 %found.conflict1303, label %polly.loop_header700.us.1.preheader, label %vector.ph1311

vector.ph1311:                                    ; preds = %vector.memcheck1292
  %n.vec1313 = and i64 %516, -4
  %broadcast.splatinsert1319 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1320 = shufflevector <4 x double> %broadcast.splatinsert1319, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_722.us.1, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1307 ]
  %556 = add nuw nsw i64 %index1314, %501
  %557 = add nuw nsw i64 %index1314, 1200
  %558 = getelementptr double, double* %Packed_MemRef_call1518, i64 %557
  %559 = bitcast double* %558 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %559, align 8, !alias.scope !137
  %560 = fmul fast <4 x double> %broadcast.splat1320, %wide.load1318
  %561 = add nuw nsw i64 %556, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %562 = getelementptr double, double* %Packed_MemRef_call2520, i64 %561
  %563 = bitcast double* %562 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %563, align 8
  %564 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %565 = shl i64 %556, 3
  %566 = add i64 %565, %535
  %567 = getelementptr i8, i8* %call, i64 %566
  %568 = bitcast i8* %567 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !140, !noalias !142
  %569 = fadd fast <4 x double> %564, %560
  %570 = fmul fast <4 x double> %569, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %571 = fadd fast <4 x double> %570, %wide.load1324
  %572 = bitcast i8* %567 to <4 x double>*
  store <4 x double> %571, <4 x double>* %572, align 8, !alias.scope !140, !noalias !142
  %index.next1315 = add i64 %index1314, 4
  %573 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %573, label %middle.block1305, label %vector.body1307, !llvm.loop !143

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1317 = icmp eq i64 %516, %n.vec1313
  br i1 %cmp.n1317, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1.preheader

polly.loop_header700.us.1.preheader:              ; preds = %vector.memcheck1292, %polly.loop_exit702.loopexit.us, %middle.block1305
  %polly.indvar704.us.1.ph = phi i64 [ 0, %vector.memcheck1292 ], [ 0, %polly.loop_exit702.loopexit.us ], [ %n.vec1313, %middle.block1305 ]
  br label %polly.loop_header700.us.1

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 -1168)
  %574 = shl nsw i64 %polly.indvar855, 5
  %575 = add nsw i64 %smin1135, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -32
  %exitcond1138.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1138.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %576 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %576, i64 -1168)
  %577 = add nsw i64 %smin, 1200
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 -1168)
  %578 = shl nsw i64 %polly.indvar861, 5
  %579 = add nsw i64 %smin1131, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1137.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %580 = add nuw nsw i64 %polly.indvar867, %574
  %581 = trunc i64 %580 to i32
  %582 = mul nuw nsw i64 %580, 9600
  %min.iters.check = icmp eq i64 %577, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1174 = insertelement <4 x i64> poison, i64 %578, i32 0
  %broadcast.splat1175 = shufflevector <4 x i64> %broadcast.splatinsert1174, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %581, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1167
  %index1168 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1167 ], [ %vec.ind.next1173, %vector.body1166 ]
  %583 = add nuw nsw <4 x i64> %vec.ind1172, %broadcast.splat1175
  %584 = trunc <4 x i64> %583 to <4 x i32>
  %585 = mul <4 x i32> %broadcast.splat1177, %584
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
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %595 = icmp eq i64 %index.next1169, %577
  br i1 %595, label %polly.loop_exit872, label %vector.body1166, !llvm.loop !149

polly.loop_exit872:                               ; preds = %vector.body1166, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar867, %575
  br i1 %exitcond1136.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %596 = add nuw nsw i64 %polly.indvar873, %578
  %597 = trunc i64 %596 to i32
  %598 = mul i32 %597, %581
  %599 = add i32 %598, 3
  %600 = urem i32 %599, 1200
  %p_conv31.i = sitofp i32 %600 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %601 = shl i64 %596, 3
  %602 = add nuw nsw i64 %601, %582
  %scevgep876 = getelementptr i8, i8* %call, i64 %602
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar873, %579
  br i1 %exitcond1132.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !150

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 -1168)
  %603 = shl nsw i64 %polly.indvar882, 5
  %604 = add nsw i64 %smin1125, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1128.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %605 = mul nsw i64 %polly.indvar888, -32
  %smin1181 = call i64 @llvm.smin.i64(i64 %605, i64 -968)
  %606 = add nsw i64 %smin1181, 1000
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -968)
  %607 = shl nsw i64 %polly.indvar888, 5
  %608 = add nsw i64 %smin1121, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1127.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %609 = add nuw nsw i64 %polly.indvar894, %603
  %610 = trunc i64 %609 to i32
  %611 = mul nuw nsw i64 %609, 8000
  %min.iters.check1182 = icmp eq i64 %606, 0
  br i1 %min.iters.check1182, label %polly.loop_header897, label %vector.ph1183

vector.ph1183:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1192 = insertelement <4 x i64> poison, i64 %607, i32 0
  %broadcast.splat1193 = shufflevector <4 x i64> %broadcast.splatinsert1192, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %610, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1183
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1187, %vector.body1180 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1183 ], [ %vec.ind.next1191, %vector.body1180 ]
  %612 = add nuw nsw <4 x i64> %vec.ind1190, %broadcast.splat1193
  %613 = trunc <4 x i64> %612 to <4 x i32>
  %614 = mul <4 x i32> %broadcast.splat1195, %613
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
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %624 = icmp eq i64 %index.next1187, %606
  br i1 %624, label %polly.loop_exit899, label %vector.body1180, !llvm.loop !152

polly.loop_exit899:                               ; preds = %vector.body1180, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar894, %604
  br i1 %exitcond1126.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %625 = add nuw nsw i64 %polly.indvar900, %607
  %626 = trunc i64 %625 to i32
  %627 = mul i32 %626, %610
  %628 = add i32 %627, 2
  %629 = urem i32 %628, 1000
  %p_conv10.i = sitofp i32 %629 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %630 = shl i64 %625, 3
  %631 = add nuw nsw i64 %630, %611
  %scevgep903 = getelementptr i8, i8* %call2, i64 %631
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar900, %608
  br i1 %exitcond1122.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !153

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %632 = shl nsw i64 %polly.indvar908, 5
  %633 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1118.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %634 = mul nsw i64 %polly.indvar914, -32
  %smin1199 = call i64 @llvm.smin.i64(i64 %634, i64 -968)
  %635 = add nsw i64 %smin1199, 1000
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -968)
  %636 = shl nsw i64 %polly.indvar914, 5
  %637 = add nsw i64 %smin1111, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1117.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %638 = add nuw nsw i64 %polly.indvar920, %632
  %639 = trunc i64 %638 to i32
  %640 = mul nuw nsw i64 %638, 8000
  %min.iters.check1200 = icmp eq i64 %635, 0
  br i1 %min.iters.check1200, label %polly.loop_header923, label %vector.ph1201

vector.ph1201:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1210 = insertelement <4 x i64> poison, i64 %636, i32 0
  %broadcast.splat1211 = shufflevector <4 x i64> %broadcast.splatinsert1210, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %639, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1201
  %index1204 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1205, %vector.body1198 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1201 ], [ %vec.ind.next1209, %vector.body1198 ]
  %641 = add nuw nsw <4 x i64> %vec.ind1208, %broadcast.splat1211
  %642 = trunc <4 x i64> %641 to <4 x i32>
  %643 = mul <4 x i32> %broadcast.splat1213, %642
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
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %653 = icmp eq i64 %index.next1205, %635
  br i1 %653, label %polly.loop_exit925, label %vector.body1198, !llvm.loop !155

polly.loop_exit925:                               ; preds = %vector.body1198, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar920, %633
  br i1 %exitcond1116.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %654 = add nuw nsw i64 %polly.indvar926, %636
  %655 = trunc i64 %654 to i32
  %656 = mul i32 %655, %639
  %657 = add i32 %656, 1
  %658 = urem i32 %657, 1200
  %p_conv.i = sitofp i32 %658 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %659 = shl i64 %654, 3
  %660 = add nuw nsw i64 %659, %640
  %scevgep930 = getelementptr i8, i8* %call1, i64 %660
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar926, %637
  br i1 %exitcond1112.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !156

polly.loop_header249.us.1:                        ; preds = %polly.loop_header249.us.1.preheader, %polly.loop_header249.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header249.us.1 ], [ 0, %polly.loop_header249.us.1.preheader ]
  %661 = add nuw nsw i64 %polly.indvar253.us.1, %177
  %polly.access.mul.call1257.us.1 = mul nuw nsw i64 %661, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %118, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %exitcond1050.1.not = icmp eq i64 %polly.indvar253.us.1, %smin1052
  br i1 %exitcond1050.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header249.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header249.us.1
  br i1 %.not, label %polly.loop_header249.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1262.us.1 = or i64 %209, 1
  %polly.access.call1263.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.1
  %polly.access.call1263.load.us.1 = load double, double* %polly.access.call1263.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1266.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.1
  store double %polly.access.call1263.load.us.1, double* %polly.access.Packed_MemRef_call1266.us.1, align 8
  br label %polly.loop_header249.us.2.preheader

polly.loop_header249.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header249.us.2

polly.loop_header249.us.2:                        ; preds = %polly.loop_header249.us.2.preheader, %polly.loop_header249.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header249.us.2 ], [ 0, %polly.loop_header249.us.2.preheader ]
  %662 = add nuw nsw i64 %polly.indvar253.us.2, %177
  %polly.access.mul.call1257.us.2 = mul nuw nsw i64 %662, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %119, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %exitcond1050.2.not = icmp eq i64 %polly.indvar253.us.2, %smin1052
  br i1 %exitcond1050.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header249.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header249.us.2
  br i1 %.not, label %polly.loop_header249.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1262.us.2 = or i64 %209, 2
  %polly.access.call1263.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.2
  %polly.access.call1263.load.us.2 = load double, double* %polly.access.call1263.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1266.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.2
  store double %polly.access.call1263.load.us.2, double* %polly.access.Packed_MemRef_call1266.us.2, align 8
  br label %polly.loop_header249.us.3.preheader

polly.loop_header249.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header249.us.3

polly.loop_header249.us.3:                        ; preds = %polly.loop_header249.us.3.preheader, %polly.loop_header249.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header249.us.3 ], [ 0, %polly.loop_header249.us.3.preheader ]
  %663 = add nuw nsw i64 %polly.indvar253.us.3, %177
  %polly.access.mul.call1257.us.3 = mul nuw nsw i64 %663, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %120, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %exitcond1050.3.not = icmp eq i64 %polly.indvar253.us.3, %smin1052
  br i1 %exitcond1050.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header249.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header249.us.3
  br i1 %.not, label %polly.loop_header267.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1262.us.3 = or i64 %209, 3
  %polly.access.call1263.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.3
  %polly.access.call1263.load.us.3 = load double, double* %polly.access.call1263.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1266.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.3
  store double %polly.access.call1263.load.us.3, double* %polly.access.Packed_MemRef_call1266.us.3, align 8
  br label %polly.loop_header267.preheader

polly.loop_header274.us.1:                        ; preds = %polly.loop_header274.us.1.preheader, %polly.loop_header274.us.1
  %polly.indvar278.us.1 = phi i64 [ %polly.indvar_next279.us.1, %polly.loop_header274.us.1 ], [ %polly.indvar278.us.1.ph, %polly.loop_header274.us.1.preheader ]
  %664 = add nuw nsw i64 %polly.indvar278.us.1, %177
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1200
  %polly.access.Packed_MemRef_call1283.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call1283.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_288.us.1, %_p_scalar_284.us.1
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2285.us.1
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_296.us.1, %_p_scalar_292.us.1
  %665 = shl i64 %664, 3
  %666 = add i64 %665, %211
  %scevgep297.us.1 = getelementptr i8, i8* %call, i64 %666
  %scevgep297298.us.1 = bitcast i8* %scevgep297.us.1 to double*
  %_p_scalar_299.us.1 = load double, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_299.us.1
  store double %p_add42.i118.us.1, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1
  %exitcond1053.1.not = icmp eq i64 %polly.indvar278.us.1, %smin1052
  br i1 %exitcond1053.1.not, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1, !llvm.loop !157

polly.loop_exit276.loopexit.us.1:                 ; preds = %polly.loop_header274.us.1, %middle.block1597
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.2, %208
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %polly.access.add.Packed_MemRef_call1294.us.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1295.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call1295.us.2, align 8
  %min.iters.check1569 = icmp ult i64 %199, 4
  br i1 %min.iters.check1569, label %polly.loop_header274.us.2.preheader, label %vector.memcheck1551

vector.memcheck1551:                              ; preds = %polly.loop_exit276.loopexit.us.1
  %bound01560 = icmp ult i8* %scevgep1553, %scevgep1559
  %bound11561 = icmp ult i8* %scevgep1557, %scevgep1556
  %found.conflict1562 = and i1 %bound01560, %bound11561
  br i1 %found.conflict1562, label %polly.loop_header274.us.2.preheader, label %vector.ph1570

vector.ph1570:                                    ; preds = %vector.memcheck1551
  %n.vec1572 = and i64 %199, -4
  %broadcast.splatinsert1578 = insertelement <4 x double> poison, double %_p_scalar_288.us.2, i32 0
  %broadcast.splat1579 = shufflevector <4 x double> %broadcast.splatinsert1578, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_296.us.2, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1566

vector.body1566:                                  ; preds = %vector.body1566, %vector.ph1570
  %index1573 = phi i64 [ 0, %vector.ph1570 ], [ %index.next1574, %vector.body1566 ]
  %667 = add nuw nsw i64 %index1573, %177
  %668 = add nuw nsw i64 %index1573, 2400
  %669 = getelementptr double, double* %Packed_MemRef_call1, i64 %668
  %670 = bitcast double* %669 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %670, align 8, !alias.scope !158
  %671 = fmul fast <4 x double> %broadcast.splat1579, %wide.load1577
  %672 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2285.us.2
  %673 = getelementptr double, double* %Packed_MemRef_call2, i64 %672
  %674 = bitcast double* %673 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %674, align 8
  %675 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %676 = shl i64 %667, 3
  %677 = add i64 %676, %211
  %678 = getelementptr i8, i8* %call, i64 %677
  %679 = bitcast i8* %678 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !161, !noalias !163
  %680 = fadd fast <4 x double> %675, %671
  %681 = fmul fast <4 x double> %680, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %682 = fadd fast <4 x double> %681, %wide.load1583
  %683 = bitcast i8* %678 to <4 x double>*
  store <4 x double> %682, <4 x double>* %683, align 8, !alias.scope !161, !noalias !163
  %index.next1574 = add i64 %index1573, 4
  %684 = icmp eq i64 %index.next1574, %n.vec1572
  br i1 %684, label %middle.block1564, label %vector.body1566, !llvm.loop !164

middle.block1564:                                 ; preds = %vector.body1566
  %cmp.n1576 = icmp eq i64 %199, %n.vec1572
  br i1 %cmp.n1576, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2.preheader

polly.loop_header274.us.2.preheader:              ; preds = %vector.memcheck1551, %polly.loop_exit276.loopexit.us.1, %middle.block1564
  %polly.indvar278.us.2.ph = phi i64 [ 0, %vector.memcheck1551 ], [ 0, %polly.loop_exit276.loopexit.us.1 ], [ %n.vec1572, %middle.block1564 ]
  br label %polly.loop_header274.us.2

polly.loop_header274.us.2:                        ; preds = %polly.loop_header274.us.2.preheader, %polly.loop_header274.us.2
  %polly.indvar278.us.2 = phi i64 [ %polly.indvar_next279.us.2, %polly.loop_header274.us.2 ], [ %polly.indvar278.us.2.ph, %polly.loop_header274.us.2.preheader ]
  %685 = add nuw nsw i64 %polly.indvar278.us.2, %177
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 2400
  %polly.access.Packed_MemRef_call1283.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call1283.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_288.us.2, %_p_scalar_284.us.2
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %685, %polly.access.mul.Packed_MemRef_call2285.us.2
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_296.us.2, %_p_scalar_292.us.2
  %686 = shl i64 %685, 3
  %687 = add i64 %686, %211
  %scevgep297.us.2 = getelementptr i8, i8* %call, i64 %687
  %scevgep297298.us.2 = bitcast i8* %scevgep297.us.2 to double*
  %_p_scalar_299.us.2 = load double, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_299.us.2
  store double %p_add42.i118.us.2, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 1
  %exitcond1053.2.not = icmp eq i64 %polly.indvar278.us.2, %smin1052
  br i1 %exitcond1053.2.not, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2, !llvm.loop !165

polly.loop_exit276.loopexit.us.2:                 ; preds = %polly.loop_header274.us.2, %middle.block1564
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.3, %208
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %polly.access.add.Packed_MemRef_call1294.us.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1295.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call1295.us.3, align 8
  %min.iters.check1536 = icmp ult i64 %206, 4
  br i1 %min.iters.check1536, label %polly.loop_header274.us.3.preheader, label %vector.ph1537

vector.ph1537:                                    ; preds = %polly.loop_exit276.loopexit.us.2
  %n.vec1539 = and i64 %206, -4
  %broadcast.splatinsert1545 = insertelement <4 x double> poison, double %_p_scalar_288.us.3, i32 0
  %broadcast.splat1546 = shufflevector <4 x double> %broadcast.splatinsert1545, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1548 = insertelement <4 x double> poison, double %_p_scalar_296.us.3, i32 0
  %broadcast.splat1549 = shufflevector <4 x double> %broadcast.splatinsert1548, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1531

vector.body1531:                                  ; preds = %vector.body1531, %vector.ph1537
  %index1540 = phi i64 [ 0, %vector.ph1537 ], [ %index.next1541, %vector.body1531 ]
  %688 = add nuw nsw i64 %index1540, %177
  %689 = add nuw nsw i64 %index1540, 3600
  %690 = getelementptr double, double* %Packed_MemRef_call1, i64 %689
  %691 = bitcast double* %690 to <4 x double>*
  %wide.load1544 = load <4 x double>, <4 x double>* %691, align 8
  %692 = fmul fast <4 x double> %broadcast.splat1546, %wide.load1544
  %693 = add nuw nsw i64 %688, %polly.access.mul.Packed_MemRef_call2285.us.3
  %694 = getelementptr double, double* %Packed_MemRef_call2, i64 %693
  %695 = bitcast double* %694 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %695, align 8
  %696 = fmul fast <4 x double> %broadcast.splat1549, %wide.load1547
  %697 = shl i64 %688, 3
  %698 = add i64 %697, %211
  %699 = getelementptr i8, i8* %call, i64 %698
  %700 = bitcast i8* %699 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %700, align 8, !alias.scope !65, !noalias !67
  %701 = fadd fast <4 x double> %696, %692
  %702 = fmul fast <4 x double> %701, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %703 = fadd fast <4 x double> %702, %wide.load1550
  %704 = bitcast i8* %699 to <4 x double>*
  store <4 x double> %703, <4 x double>* %704, align 8, !alias.scope !65, !noalias !67
  %index.next1541 = add i64 %index1540, 4
  %705 = icmp eq i64 %index.next1541, %n.vec1539
  br i1 %705, label %middle.block1529, label %vector.body1531, !llvm.loop !166

middle.block1529:                                 ; preds = %vector.body1531
  %cmp.n1543 = icmp eq i64 %206, %n.vec1539
  br i1 %cmp.n1543, label %polly.loop_exit269, label %polly.loop_header274.us.3.preheader

polly.loop_header274.us.3.preheader:              ; preds = %polly.loop_exit276.loopexit.us.2, %middle.block1529
  %polly.indvar278.us.3.ph = phi i64 [ 0, %polly.loop_exit276.loopexit.us.2 ], [ %n.vec1539, %middle.block1529 ]
  br label %polly.loop_header274.us.3

polly.loop_header274.us.3:                        ; preds = %polly.loop_header274.us.3.preheader, %polly.loop_header274.us.3
  %polly.indvar278.us.3 = phi i64 [ %polly.indvar_next279.us.3, %polly.loop_header274.us.3 ], [ %polly.indvar278.us.3.ph, %polly.loop_header274.us.3.preheader ]
  %706 = add nuw nsw i64 %polly.indvar278.us.3, %177
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 3600
  %polly.access.Packed_MemRef_call1283.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call1283.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_288.us.3, %_p_scalar_284.us.3
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %706, %polly.access.mul.Packed_MemRef_call2285.us.3
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_296.us.3, %_p_scalar_292.us.3
  %707 = shl i64 %706, 3
  %708 = add i64 %707, %211
  %scevgep297.us.3 = getelementptr i8, i8* %call, i64 %708
  %scevgep297298.us.3 = bitcast i8* %scevgep297.us.3 to double*
  %_p_scalar_299.us.3 = load double, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_299.us.3
  store double %p_add42.i118.us.3, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 1
  %exitcond1053.3.not = icmp eq i64 %polly.indvar278.us.3, %smin1052
  br i1 %exitcond1053.3.not, label %polly.loop_exit269, label %polly.loop_header274.us.3, !llvm.loop !167

polly.loop_header458.us.1:                        ; preds = %polly.loop_header458.us.1.preheader, %polly.loop_header458.us.1
  %polly.indvar462.us.1 = phi i64 [ %polly.indvar_next463.us.1, %polly.loop_header458.us.1 ], [ 0, %polly.loop_header458.us.1.preheader ]
  %709 = add nuw nsw i64 %polly.indvar462.us.1, %339
  %polly.access.mul.call1466.us.1 = mul nuw nsw i64 %709, 1000
  %polly.access.add.call1467.us.1 = add nuw nsw i64 %280, %polly.access.mul.call1466.us.1
  %polly.access.call1468.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.1
  %polly.access.call1468.load.us.1 = load double, double* %polly.access.call1468.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1200
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1468.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.indvar_next463.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1
  %exitcond1074.1.not = icmp eq i64 %polly.indvar462.us.1, %smin1076
  br i1 %exitcond1074.1.not, label %polly.cond469.loopexit.us.1, label %polly.loop_header458.us.1

polly.cond469.loopexit.us.1:                      ; preds = %polly.loop_header458.us.1
  br i1 %.not932, label %polly.loop_header458.us.2.preheader, label %polly.then471.us.1

polly.then471.us.1:                               ; preds = %polly.cond469.loopexit.us.1
  %polly.access.add.call1475.us.1 = or i64 %371, 1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1305479.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1305479.us.1, align 8
  br label %polly.loop_header458.us.2.preheader

polly.loop_header458.us.2.preheader:              ; preds = %polly.then471.us.1, %polly.cond469.loopexit.us.1
  br label %polly.loop_header458.us.2

polly.loop_header458.us.2:                        ; preds = %polly.loop_header458.us.2.preheader, %polly.loop_header458.us.2
  %polly.indvar462.us.2 = phi i64 [ %polly.indvar_next463.us.2, %polly.loop_header458.us.2 ], [ 0, %polly.loop_header458.us.2.preheader ]
  %710 = add nuw nsw i64 %polly.indvar462.us.2, %339
  %polly.access.mul.call1466.us.2 = mul nuw nsw i64 %710, 1000
  %polly.access.add.call1467.us.2 = add nuw nsw i64 %281, %polly.access.mul.call1466.us.2
  %polly.access.call1468.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.2
  %polly.access.call1468.load.us.2 = load double, double* %polly.access.call1468.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 2400
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1468.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.indvar_next463.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 1
  %exitcond1074.2.not = icmp eq i64 %polly.indvar462.us.2, %smin1076
  br i1 %exitcond1074.2.not, label %polly.cond469.loopexit.us.2, label %polly.loop_header458.us.2

polly.cond469.loopexit.us.2:                      ; preds = %polly.loop_header458.us.2
  br i1 %.not932, label %polly.loop_header458.us.3.preheader, label %polly.then471.us.2

polly.then471.us.2:                               ; preds = %polly.cond469.loopexit.us.2
  %polly.access.add.call1475.us.2 = or i64 %371, 2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1305479.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1305479.us.2, align 8
  br label %polly.loop_header458.us.3.preheader

polly.loop_header458.us.3.preheader:              ; preds = %polly.then471.us.2, %polly.cond469.loopexit.us.2
  br label %polly.loop_header458.us.3

polly.loop_header458.us.3:                        ; preds = %polly.loop_header458.us.3.preheader, %polly.loop_header458.us.3
  %polly.indvar462.us.3 = phi i64 [ %polly.indvar_next463.us.3, %polly.loop_header458.us.3 ], [ 0, %polly.loop_header458.us.3.preheader ]
  %711 = add nuw nsw i64 %polly.indvar462.us.3, %339
  %polly.access.mul.call1466.us.3 = mul nuw nsw i64 %711, 1000
  %polly.access.add.call1467.us.3 = add nuw nsw i64 %282, %polly.access.mul.call1466.us.3
  %polly.access.call1468.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.3
  %polly.access.call1468.load.us.3 = load double, double* %polly.access.call1468.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 3600
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1468.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.indvar_next463.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 1
  %exitcond1074.3.not = icmp eq i64 %polly.indvar462.us.3, %smin1076
  br i1 %exitcond1074.3.not, label %polly.cond469.loopexit.us.3, label %polly.loop_header458.us.3

polly.cond469.loopexit.us.3:                      ; preds = %polly.loop_header458.us.3
  br i1 %.not932, label %polly.loop_header480.preheader, label %polly.then471.us.3

polly.then471.us.3:                               ; preds = %polly.cond469.loopexit.us.3
  %polly.access.add.call1475.us.3 = or i64 %371, 3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1305479.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1305479.us.3, align 8
  br label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_header487.us.1.preheader, %polly.loop_header487.us.1
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_header487.us.1 ], [ %polly.indvar491.us.1.ph, %polly.loop_header487.us.1.preheader ]
  %712 = add nuw nsw i64 %polly.indvar491.us.1, %339
  %polly.access.add.Packed_MemRef_call1305495.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1200
  %polly.access.Packed_MemRef_call1305496.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call1305496.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %polly.access.add.Packed_MemRef_call2307503.us.1 = add nuw nsw i64 %712, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %polly.access.Packed_MemRef_call2307504.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call2307504.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %713 = shl i64 %712, 3
  %714 = add i64 %713, %373
  %scevgep510.us.1 = getelementptr i8, i8* %call, i64 %714
  %scevgep510511.us.1 = bitcast i8* %scevgep510.us.1 to double*
  %_p_scalar_512.us.1 = load double, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_512.us.1
  store double %p_add42.i79.us.1, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %exitcond1077.1.not = icmp eq i64 %polly.indvar491.us.1, %smin1076
  br i1 %exitcond1077.1.not, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1, !llvm.loop !168

polly.loop_exit489.loopexit.us.1:                 ; preds = %polly.loop_header487.us.1, %middle.block1451
  %polly.access.add.Packed_MemRef_call2307499.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.2, %370
  %polly.access.Packed_MemRef_call2307500.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2307500.us.2, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1305508.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call1305508.us.2, align 8
  %min.iters.check1423 = icmp ult i64 %361, 4
  br i1 %min.iters.check1423, label %polly.loop_header487.us.2.preheader, label %vector.memcheck1405

vector.memcheck1405:                              ; preds = %polly.loop_exit489.loopexit.us.1
  %bound01414 = icmp ult i8* %scevgep1407, %scevgep1413
  %bound11415 = icmp ult i8* %scevgep1411, %scevgep1410
  %found.conflict1416 = and i1 %bound01414, %bound11415
  br i1 %found.conflict1416, label %polly.loop_header487.us.2.preheader, label %vector.ph1424

vector.ph1424:                                    ; preds = %vector.memcheck1405
  %n.vec1426 = and i64 %361, -4
  %broadcast.splatinsert1432 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1433 = shufflevector <4 x double> %broadcast.splatinsert1432, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1436 = shufflevector <4 x double> %broadcast.splatinsert1435, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1420

vector.body1420:                                  ; preds = %vector.body1420, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1428, %vector.body1420 ]
  %715 = add nuw nsw i64 %index1427, %339
  %716 = add nuw nsw i64 %index1427, 2400
  %717 = getelementptr double, double* %Packed_MemRef_call1305, i64 %716
  %718 = bitcast double* %717 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %718, align 8, !alias.scope !169
  %719 = fmul fast <4 x double> %broadcast.splat1433, %wide.load1431
  %720 = add nuw nsw i64 %715, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %721 = getelementptr double, double* %Packed_MemRef_call2307, i64 %720
  %722 = bitcast double* %721 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %722, align 8
  %723 = fmul fast <4 x double> %broadcast.splat1436, %wide.load1434
  %724 = shl i64 %715, 3
  %725 = add i64 %724, %373
  %726 = getelementptr i8, i8* %call, i64 %725
  %727 = bitcast i8* %726 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %727, align 8, !alias.scope !172, !noalias !174
  %728 = fadd fast <4 x double> %723, %719
  %729 = fmul fast <4 x double> %728, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %730 = fadd fast <4 x double> %729, %wide.load1437
  %731 = bitcast i8* %726 to <4 x double>*
  store <4 x double> %730, <4 x double>* %731, align 8, !alias.scope !172, !noalias !174
  %index.next1428 = add i64 %index1427, 4
  %732 = icmp eq i64 %index.next1428, %n.vec1426
  br i1 %732, label %middle.block1418, label %vector.body1420, !llvm.loop !175

middle.block1418:                                 ; preds = %vector.body1420
  %cmp.n1430 = icmp eq i64 %361, %n.vec1426
  br i1 %cmp.n1430, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2.preheader

polly.loop_header487.us.2.preheader:              ; preds = %vector.memcheck1405, %polly.loop_exit489.loopexit.us.1, %middle.block1418
  %polly.indvar491.us.2.ph = phi i64 [ 0, %vector.memcheck1405 ], [ 0, %polly.loop_exit489.loopexit.us.1 ], [ %n.vec1426, %middle.block1418 ]
  br label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_header487.us.2.preheader, %polly.loop_header487.us.2
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_header487.us.2 ], [ %polly.indvar491.us.2.ph, %polly.loop_header487.us.2.preheader ]
  %733 = add nuw nsw i64 %polly.indvar491.us.2, %339
  %polly.access.add.Packed_MemRef_call1305495.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 2400
  %polly.access.Packed_MemRef_call1305496.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call1305496.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %polly.access.add.Packed_MemRef_call2307503.us.2 = add nuw nsw i64 %733, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %polly.access.Packed_MemRef_call2307504.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call2307504.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %734 = shl i64 %733, 3
  %735 = add i64 %734, %373
  %scevgep510.us.2 = getelementptr i8, i8* %call, i64 %735
  %scevgep510511.us.2 = bitcast i8* %scevgep510.us.2 to double*
  %_p_scalar_512.us.2 = load double, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_512.us.2
  store double %p_add42.i79.us.2, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %exitcond1077.2.not = icmp eq i64 %polly.indvar491.us.2, %smin1076
  br i1 %exitcond1077.2.not, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2, !llvm.loop !176

polly.loop_exit489.loopexit.us.2:                 ; preds = %polly.loop_header487.us.2, %middle.block1418
  %polly.access.add.Packed_MemRef_call2307499.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.3, %370
  %polly.access.Packed_MemRef_call2307500.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2307500.us.3, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1305508.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call1305508.us.3, align 8
  %min.iters.check1390 = icmp ult i64 %368, 4
  br i1 %min.iters.check1390, label %polly.loop_header487.us.3.preheader, label %vector.ph1391

vector.ph1391:                                    ; preds = %polly.loop_exit489.loopexit.us.2
  %n.vec1393 = and i64 %368, -4
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1385

vector.body1385:                                  ; preds = %vector.body1385, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1385 ]
  %736 = add nuw nsw i64 %index1394, %339
  %737 = add nuw nsw i64 %index1394, 3600
  %738 = getelementptr double, double* %Packed_MemRef_call1305, i64 %737
  %739 = bitcast double* %738 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %739, align 8
  %740 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %741 = add nuw nsw i64 %736, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %742 = getelementptr double, double* %Packed_MemRef_call2307, i64 %741
  %743 = bitcast double* %742 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %743, align 8
  %744 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %745 = shl i64 %736, 3
  %746 = add i64 %745, %373
  %747 = getelementptr i8, i8* %call, i64 %746
  %748 = bitcast i8* %747 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %748, align 8, !alias.scope !92, !noalias !94
  %749 = fadd fast <4 x double> %744, %740
  %750 = fmul fast <4 x double> %749, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %751 = fadd fast <4 x double> %750, %wide.load1404
  %752 = bitcast i8* %747 to <4 x double>*
  store <4 x double> %751, <4 x double>* %752, align 8, !alias.scope !92, !noalias !94
  %index.next1395 = add i64 %index1394, 4
  %753 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %753, label %middle.block1383, label %vector.body1385, !llvm.loop !177

middle.block1383:                                 ; preds = %vector.body1385
  %cmp.n1397 = icmp eq i64 %368, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit482, label %polly.loop_header487.us.3.preheader

polly.loop_header487.us.3.preheader:              ; preds = %polly.loop_exit489.loopexit.us.2, %middle.block1383
  %polly.indvar491.us.3.ph = phi i64 [ 0, %polly.loop_exit489.loopexit.us.2 ], [ %n.vec1393, %middle.block1383 ]
  br label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_header487.us.3.preheader, %polly.loop_header487.us.3
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_header487.us.3 ], [ %polly.indvar491.us.3.ph, %polly.loop_header487.us.3.preheader ]
  %754 = add nuw nsw i64 %polly.indvar491.us.3, %339
  %polly.access.add.Packed_MemRef_call1305495.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 3600
  %polly.access.Packed_MemRef_call1305496.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call1305496.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %polly.access.add.Packed_MemRef_call2307503.us.3 = add nuw nsw i64 %754, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %polly.access.Packed_MemRef_call2307504.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call2307504.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %755 = shl i64 %754, 3
  %756 = add i64 %755, %373
  %scevgep510.us.3 = getelementptr i8, i8* %call, i64 %756
  %scevgep510511.us.3 = bitcast i8* %scevgep510.us.3 to double*
  %_p_scalar_512.us.3 = load double, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_512.us.3
  store double %p_add42.i79.us.3, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %exitcond1077.3.not = icmp eq i64 %polly.indvar491.us.3, %smin1076
  br i1 %exitcond1077.3.not, label %polly.loop_exit482, label %polly.loop_header487.us.3, !llvm.loop !178

polly.loop_header671.us.1:                        ; preds = %polly.loop_header671.us.1.preheader, %polly.loop_header671.us.1
  %polly.indvar675.us.1 = phi i64 [ %polly.indvar_next676.us.1, %polly.loop_header671.us.1 ], [ 0, %polly.loop_header671.us.1.preheader ]
  %757 = add nuw nsw i64 %polly.indvar675.us.1, %501
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %757, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %442, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1200
  %polly.access.Packed_MemRef_call1518.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1518.us.1, align 8
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1
  %exitcond1098.1.not = icmp eq i64 %polly.indvar675.us.1, %smin1100
  br i1 %exitcond1098.1.not, label %polly.cond682.loopexit.us.1, label %polly.loop_header671.us.1

polly.cond682.loopexit.us.1:                      ; preds = %polly.loop_header671.us.1
  br i1 %.not933, label %polly.loop_header671.us.2.preheader, label %polly.then684.us.1

polly.then684.us.1:                               ; preds = %polly.cond682.loopexit.us.1
  %polly.access.add.call1688.us.1 = or i64 %533, 1
  %polly.access.call1689.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.1
  %polly.access.call1689.load.us.1 = load double, double* %polly.access.call1689.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1518692.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.1
  store double %polly.access.call1689.load.us.1, double* %polly.access.Packed_MemRef_call1518692.us.1, align 8
  br label %polly.loop_header671.us.2.preheader

polly.loop_header671.us.2.preheader:              ; preds = %polly.then684.us.1, %polly.cond682.loopexit.us.1
  br label %polly.loop_header671.us.2

polly.loop_header671.us.2:                        ; preds = %polly.loop_header671.us.2.preheader, %polly.loop_header671.us.2
  %polly.indvar675.us.2 = phi i64 [ %polly.indvar_next676.us.2, %polly.loop_header671.us.2 ], [ 0, %polly.loop_header671.us.2.preheader ]
  %758 = add nuw nsw i64 %polly.indvar675.us.2, %501
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %758, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %443, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 2400
  %polly.access.Packed_MemRef_call1518.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1518.us.2, align 8
  %polly.indvar_next676.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 1
  %exitcond1098.2.not = icmp eq i64 %polly.indvar675.us.2, %smin1100
  br i1 %exitcond1098.2.not, label %polly.cond682.loopexit.us.2, label %polly.loop_header671.us.2

polly.cond682.loopexit.us.2:                      ; preds = %polly.loop_header671.us.2
  br i1 %.not933, label %polly.loop_header671.us.3.preheader, label %polly.then684.us.2

polly.then684.us.2:                               ; preds = %polly.cond682.loopexit.us.2
  %polly.access.add.call1688.us.2 = or i64 %533, 2
  %polly.access.call1689.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.2
  %polly.access.call1689.load.us.2 = load double, double* %polly.access.call1689.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1518692.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.2
  store double %polly.access.call1689.load.us.2, double* %polly.access.Packed_MemRef_call1518692.us.2, align 8
  br label %polly.loop_header671.us.3.preheader

polly.loop_header671.us.3.preheader:              ; preds = %polly.then684.us.2, %polly.cond682.loopexit.us.2
  br label %polly.loop_header671.us.3

polly.loop_header671.us.3:                        ; preds = %polly.loop_header671.us.3.preheader, %polly.loop_header671.us.3
  %polly.indvar675.us.3 = phi i64 [ %polly.indvar_next676.us.3, %polly.loop_header671.us.3 ], [ 0, %polly.loop_header671.us.3.preheader ]
  %759 = add nuw nsw i64 %polly.indvar675.us.3, %501
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %759, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %444, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 3600
  %polly.access.Packed_MemRef_call1518.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1518.us.3, align 8
  %polly.indvar_next676.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 1
  %exitcond1098.3.not = icmp eq i64 %polly.indvar675.us.3, %smin1100
  br i1 %exitcond1098.3.not, label %polly.cond682.loopexit.us.3, label %polly.loop_header671.us.3

polly.cond682.loopexit.us.3:                      ; preds = %polly.loop_header671.us.3
  br i1 %.not933, label %polly.loop_header693.preheader, label %polly.then684.us.3

polly.then684.us.3:                               ; preds = %polly.cond682.loopexit.us.3
  %polly.access.add.call1688.us.3 = or i64 %533, 3
  %polly.access.call1689.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.3
  %polly.access.call1689.load.us.3 = load double, double* %polly.access.call1689.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1518692.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.3
  store double %polly.access.call1689.load.us.3, double* %polly.access.Packed_MemRef_call1518692.us.3, align 8
  br label %polly.loop_header693.preheader

polly.loop_header700.us.1:                        ; preds = %polly.loop_header700.us.1.preheader, %polly.loop_header700.us.1
  %polly.indvar704.us.1 = phi i64 [ %polly.indvar_next705.us.1, %polly.loop_header700.us.1 ], [ %polly.indvar704.us.1.ph, %polly.loop_header700.us.1.preheader ]
  %760 = add nuw nsw i64 %polly.indvar704.us.1, %501
  %polly.access.add.Packed_MemRef_call1518708.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1200
  %polly.access.Packed_MemRef_call1518709.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1518709.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %polly.access.add.Packed_MemRef_call2520716.us.1 = add nuw nsw i64 %760, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %polly.access.Packed_MemRef_call2520717.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.1
  %_p_scalar_718.us.1 = load double, double* %polly.access.Packed_MemRef_call2520717.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_722.us.1, %_p_scalar_718.us.1
  %761 = shl i64 %760, 3
  %762 = add i64 %761, %535
  %scevgep723.us.1 = getelementptr i8, i8* %call, i64 %762
  %scevgep723724.us.1 = bitcast i8* %scevgep723.us.1 to double*
  %_p_scalar_725.us.1 = load double, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_725.us.1
  store double %p_add42.i.us.1, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1
  %exitcond1101.1.not = icmp eq i64 %polly.indvar704.us.1, %smin1100
  br i1 %exitcond1101.1.not, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1, !llvm.loop !179

polly.loop_exit702.loopexit.us.1:                 ; preds = %polly.loop_header700.us.1, %middle.block1305
  %polly.access.add.Packed_MemRef_call2520712.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.2, %532
  %polly.access.Packed_MemRef_call2520713.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call2520713.us.2, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1518721.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.2
  %_p_scalar_722.us.2 = load double, double* %polly.access.Packed_MemRef_call1518721.us.2, align 8
  %min.iters.check1277 = icmp ult i64 %523, 4
  br i1 %min.iters.check1277, label %polly.loop_header700.us.2.preheader, label %vector.memcheck1259

vector.memcheck1259:                              ; preds = %polly.loop_exit702.loopexit.us.1
  %bound01268 = icmp ult i8* %scevgep1261, %scevgep1267
  %bound11269 = icmp ult i8* %scevgep1265, %scevgep1264
  %found.conflict1270 = and i1 %bound01268, %bound11269
  br i1 %found.conflict1270, label %polly.loop_header700.us.2.preheader, label %vector.ph1278

vector.ph1278:                                    ; preds = %vector.memcheck1259
  %n.vec1280 = and i64 %523, -4
  %broadcast.splatinsert1286 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1287 = shufflevector <4 x double> %broadcast.splatinsert1286, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1289 = insertelement <4 x double> poison, double %_p_scalar_722.us.2, i32 0
  %broadcast.splat1290 = shufflevector <4 x double> %broadcast.splatinsert1289, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1278
  %index1281 = phi i64 [ 0, %vector.ph1278 ], [ %index.next1282, %vector.body1274 ]
  %763 = add nuw nsw i64 %index1281, %501
  %764 = add nuw nsw i64 %index1281, 2400
  %765 = getelementptr double, double* %Packed_MemRef_call1518, i64 %764
  %766 = bitcast double* %765 to <4 x double>*
  %wide.load1285 = load <4 x double>, <4 x double>* %766, align 8, !alias.scope !180
  %767 = fmul fast <4 x double> %broadcast.splat1287, %wide.load1285
  %768 = add nuw nsw i64 %763, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %769 = getelementptr double, double* %Packed_MemRef_call2520, i64 %768
  %770 = bitcast double* %769 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %770, align 8
  %771 = fmul fast <4 x double> %broadcast.splat1290, %wide.load1288
  %772 = shl i64 %763, 3
  %773 = add i64 %772, %535
  %774 = getelementptr i8, i8* %call, i64 %773
  %775 = bitcast i8* %774 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %775, align 8, !alias.scope !183, !noalias !185
  %776 = fadd fast <4 x double> %771, %767
  %777 = fmul fast <4 x double> %776, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %778 = fadd fast <4 x double> %777, %wide.load1291
  %779 = bitcast i8* %774 to <4 x double>*
  store <4 x double> %778, <4 x double>* %779, align 8, !alias.scope !183, !noalias !185
  %index.next1282 = add i64 %index1281, 4
  %780 = icmp eq i64 %index.next1282, %n.vec1280
  br i1 %780, label %middle.block1272, label %vector.body1274, !llvm.loop !186

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1284 = icmp eq i64 %523, %n.vec1280
  br i1 %cmp.n1284, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2.preheader

polly.loop_header700.us.2.preheader:              ; preds = %vector.memcheck1259, %polly.loop_exit702.loopexit.us.1, %middle.block1272
  %polly.indvar704.us.2.ph = phi i64 [ 0, %vector.memcheck1259 ], [ 0, %polly.loop_exit702.loopexit.us.1 ], [ %n.vec1280, %middle.block1272 ]
  br label %polly.loop_header700.us.2

polly.loop_header700.us.2:                        ; preds = %polly.loop_header700.us.2.preheader, %polly.loop_header700.us.2
  %polly.indvar704.us.2 = phi i64 [ %polly.indvar_next705.us.2, %polly.loop_header700.us.2 ], [ %polly.indvar704.us.2.ph, %polly.loop_header700.us.2.preheader ]
  %781 = add nuw nsw i64 %polly.indvar704.us.2, %501
  %polly.access.add.Packed_MemRef_call1518708.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 2400
  %polly.access.Packed_MemRef_call1518709.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1518709.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %polly.access.add.Packed_MemRef_call2520716.us.2 = add nuw nsw i64 %781, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %polly.access.Packed_MemRef_call2520717.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.2
  %_p_scalar_718.us.2 = load double, double* %polly.access.Packed_MemRef_call2520717.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_722.us.2, %_p_scalar_718.us.2
  %782 = shl i64 %781, 3
  %783 = add i64 %782, %535
  %scevgep723.us.2 = getelementptr i8, i8* %call, i64 %783
  %scevgep723724.us.2 = bitcast i8* %scevgep723.us.2 to double*
  %_p_scalar_725.us.2 = load double, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_725.us.2
  store double %p_add42.i.us.2, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 1
  %exitcond1101.2.not = icmp eq i64 %polly.indvar704.us.2, %smin1100
  br i1 %exitcond1101.2.not, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2, !llvm.loop !187

polly.loop_exit702.loopexit.us.2:                 ; preds = %polly.loop_header700.us.2, %middle.block1272
  %polly.access.add.Packed_MemRef_call2520712.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.3, %532
  %polly.access.Packed_MemRef_call2520713.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call2520713.us.3, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1518721.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.3
  %_p_scalar_722.us.3 = load double, double* %polly.access.Packed_MemRef_call1518721.us.3, align 8
  %min.iters.check1244 = icmp ult i64 %530, 4
  br i1 %min.iters.check1244, label %polly.loop_header700.us.3.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_exit702.loopexit.us.2
  %n.vec1247 = and i64 %530, -4
  %broadcast.splatinsert1253 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1254 = shufflevector <4 x double> %broadcast.splatinsert1253, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_722.us.3, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1239 ]
  %784 = add nuw nsw i64 %index1248, %501
  %785 = add nuw nsw i64 %index1248, 3600
  %786 = getelementptr double, double* %Packed_MemRef_call1518, i64 %785
  %787 = bitcast double* %786 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %787, align 8
  %788 = fmul fast <4 x double> %broadcast.splat1254, %wide.load1252
  %789 = add nuw nsw i64 %784, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %790 = getelementptr double, double* %Packed_MemRef_call2520, i64 %789
  %791 = bitcast double* %790 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %791, align 8
  %792 = fmul fast <4 x double> %broadcast.splat1257, %wide.load1255
  %793 = shl i64 %784, 3
  %794 = add i64 %793, %535
  %795 = getelementptr i8, i8* %call, i64 %794
  %796 = bitcast i8* %795 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %796, align 8, !alias.scope !118, !noalias !120
  %797 = fadd fast <4 x double> %792, %788
  %798 = fmul fast <4 x double> %797, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %799 = fadd fast <4 x double> %798, %wide.load1258
  %800 = bitcast i8* %795 to <4 x double>*
  store <4 x double> %799, <4 x double>* %800, align 8, !alias.scope !118, !noalias !120
  %index.next1249 = add i64 %index1248, 4
  %801 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %801, label %middle.block1237, label %vector.body1239, !llvm.loop !188

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1251 = icmp eq i64 %530, %n.vec1247
  br i1 %cmp.n1251, label %polly.loop_exit695, label %polly.loop_header700.us.3.preheader

polly.loop_header700.us.3.preheader:              ; preds = %polly.loop_exit702.loopexit.us.2, %middle.block1237
  %polly.indvar704.us.3.ph = phi i64 [ 0, %polly.loop_exit702.loopexit.us.2 ], [ %n.vec1247, %middle.block1237 ]
  br label %polly.loop_header700.us.3

polly.loop_header700.us.3:                        ; preds = %polly.loop_header700.us.3.preheader, %polly.loop_header700.us.3
  %polly.indvar704.us.3 = phi i64 [ %polly.indvar_next705.us.3, %polly.loop_header700.us.3 ], [ %polly.indvar704.us.3.ph, %polly.loop_header700.us.3.preheader ]
  %802 = add nuw nsw i64 %polly.indvar704.us.3, %501
  %polly.access.add.Packed_MemRef_call1518708.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 3600
  %polly.access.Packed_MemRef_call1518709.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1518709.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %polly.access.add.Packed_MemRef_call2520716.us.3 = add nuw nsw i64 %802, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %polly.access.Packed_MemRef_call2520717.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.3
  %_p_scalar_718.us.3 = load double, double* %polly.access.Packed_MemRef_call2520717.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_722.us.3, %_p_scalar_718.us.3
  %803 = shl i64 %802, 3
  %804 = add i64 %803, %535
  %scevgep723.us.3 = getelementptr i8, i8* %call, i64 %804
  %scevgep723724.us.3 = bitcast i8* %scevgep723.us.3 to double*
  %_p_scalar_725.us.3 = load double, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_725.us.3
  store double %p_add42.i.us.3, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 1
  %exitcond1101.3.not = icmp eq i64 %polly.indvar704.us.3, %smin1100
  br i1 %exitcond1101.3.not, label %polly.loop_exit695, label %polly.loop_header700.us.3, !llvm.loop !189
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
!26 = !{!"llvm.loop.tile.size", i32 64}
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
!49 = !{!"llvm.loop.tile.size", i32 100}
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
