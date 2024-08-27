; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1820.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1820.c"
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
  %scevgep1156 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1155 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1154 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1153 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1153, %scevgep1156
  %bound1 = icmp ult i8* %scevgep1155, %scevgep1154
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
  br i1 %exitcond18.not.i, label %vector.ph1160, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1160:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1160
  %index1161 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1160 ], [ %vec.ind.next1166, %vector.body1159 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv7.i, i64 %index1161
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1162, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1159, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1159
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1160, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit913
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1222 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1222, label %for.body3.i46.preheader1656, label %vector.ph1223

vector.ph1223:                                    ; preds = %for.body3.i46.preheader
  %n.vec1225 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %index1226
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %46 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %46, label %middle.block1219, label %vector.body1221, !llvm.loop !18

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %indvars.iv21.i, %n.vec1225
  br i1 %cmp.n1229, label %for.inc6.i, label %for.body3.i46.preheader1656

for.body3.i46.preheader1656:                      ; preds = %for.body3.i46.preheader, %middle.block1219
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1225, %middle.block1219 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1656, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1656 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1219, %for.cond1.preheader.i45
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
  %min.iters.check1365 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1365, label %for.body3.i60.preheader1655, label %vector.ph1366

vector.ph1366:                                    ; preds = %for.body3.i60.preheader
  %n.vec1368 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1370, %vector.body1364 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %index1369
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1373 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1373, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1370 = add i64 %index1369, 4
  %57 = icmp eq i64 %index.next1370, %n.vec1368
  br i1 %57, label %middle.block1362, label %vector.body1364, !llvm.loop !57

middle.block1362:                                 ; preds = %vector.body1364
  %cmp.n1372 = icmp eq i64 %indvars.iv21.i52, %n.vec1368
  br i1 %cmp.n1372, label %for.inc6.i63, label %for.body3.i60.preheader1655

for.body3.i60.preheader1655:                      ; preds = %for.body3.i60.preheader, %middle.block1362
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1368, %middle.block1362 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1655, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1655 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1362, %for.cond1.preheader.i54
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
  %min.iters.check1511 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1511, label %for.body3.i99.preheader1654, label %vector.ph1512

vector.ph1512:                                    ; preds = %for.body3.i99.preheader
  %n.vec1514 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1510

vector.body1510:                                  ; preds = %vector.body1510, %vector.ph1512
  %index1515 = phi i64 [ 0, %vector.ph1512 ], [ %index.next1516, %vector.body1510 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %index1515
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1519, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1516 = add i64 %index1515, 4
  %68 = icmp eq i64 %index.next1516, %n.vec1514
  br i1 %68, label %middle.block1508, label %vector.body1510, !llvm.loop !59

middle.block1508:                                 ; preds = %vector.body1510
  %cmp.n1518 = icmp eq i64 %indvars.iv21.i91, %n.vec1514
  br i1 %cmp.n1518, label %for.inc6.i102, label %for.body3.i99.preheader1654

for.body3.i99.preheader1654:                      ; preds = %for.body3.i99.preheader, %middle.block1508
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1514, %middle.block1508 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1654, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1654 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1508, %for.cond1.preheader.i93
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
  %indvar1523 = phi i64 [ %indvar.next1524, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1523, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1525 = icmp ult i64 %88, 4
  br i1 %min.iters.check1525, label %polly.loop_header192.preheader, label %vector.ph1526

vector.ph1526:                                    ; preds = %polly.loop_header
  %n.vec1528 = and i64 %88, -4
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %vector.ph1526
  %index1529 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1530, %vector.body1522 ]
  %90 = shl nuw nsw i64 %index1529, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1533 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1533, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1530 = add i64 %index1529, 4
  %95 = icmp eq i64 %index.next1530, %n.vec1528
  br i1 %95, label %middle.block1520, label %vector.body1522, !llvm.loop !72

middle.block1520:                                 ; preds = %vector.body1522
  %cmp.n1532 = icmp eq i64 %88, %n.vec1528
  br i1 %cmp.n1532, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1520
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1528, %middle.block1520 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1520
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1524 = add i64 %indvar1523, 1
  br i1 %exitcond1063.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1062.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1062.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1061.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1562 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1563 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1595 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1596 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1628 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1060.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1060.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nsw i64 %polly.indvar219, -32
  %98 = shl nuw nsw i64 %polly.indvar219, 5
  %99 = shl nuw nsw i64 %polly.indvar219, 5
  %100 = mul nsw i64 %polly.indvar219, -32
  %101 = mul nsw i64 %polly.indvar219, -32
  %102 = shl nuw nsw i64 %polly.indvar219, 5
  %103 = shl nuw nsw i64 %polly.indvar219, 5
  %104 = mul nsw i64 %polly.indvar219, -32
  %105 = mul nsw i64 %polly.indvar219, -32
  %106 = shl nuw nsw i64 %polly.indvar219, 5
  %107 = shl nuw nsw i64 %polly.indvar219, 5
  %108 = mul nsw i64 %polly.indvar219, -32
  %109 = mul nsw i64 %polly.indvar219, -32
  %110 = shl nuw nsw i64 %polly.indvar219, 5
  %111 = mul nuw nsw i64 %polly.indvar219, 9
  %112 = add nuw nsw i64 %111, 34
  %pexp.p_div_q = udiv i64 %112, 25
  %113 = sub nsw i64 %polly.indvar219, %pexp.p_div_q
  %114 = add nsw i64 %113, 1
  %.inv = icmp slt i64 %113, 23
  %115 = select i1 %.inv, i64 %114, i64 23
  %polly.loop_guard = icmp sgt i64 %115, -1
  %116 = mul nsw i64 %polly.indvar219, -32
  %117 = icmp slt i64 %116, -1168
  %118 = select i1 %117, i64 %116, i64 -1168
  %119 = add nsw i64 %118, 1199
  %120 = shl nsw i64 %polly.indvar219, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next1047 = add nuw nsw i64 %indvars.iv1046, 32
  %exitcond1059.not = icmp eq i64 %polly.indvar_next220, 38
  br i1 %exitcond1059.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %121 = shl nsw i64 %polly.indvar225, 2
  %122 = or i64 %121, 1
  %123 = or i64 %121, 2
  %124 = or i64 %121, 3
  %polly.access.mul.Packed_MemRef_call2285.us = mul nsw i64 %polly.indvar225, 4800
  %125 = or i64 %121, 1
  %polly.access.mul.Packed_MemRef_call2285.us.1 = mul nuw nsw i64 %125, 1200
  %126 = or i64 %121, 2
  %polly.access.mul.Packed_MemRef_call2285.us.2 = mul nuw nsw i64 %126, 1200
  %127 = or i64 %121, 3
  %polly.access.mul.Packed_MemRef_call2285.us.3 = mul nuw nsw i64 %127, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1058.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1048 = phi i64 [ %indvars.iv1046, %polly.loop_header228.preheader ], [ %indvars.iv.next1049, %polly.loop_exit237 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1045, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %128 = mul i64 %polly.indvar231, 50
  %129 = add i64 %97, %128
  %smax1637 = call i64 @llvm.smax.i64(i64 %129, i64 0)
  %130 = mul i64 %polly.indvar231, -50
  %131 = add i64 %98, %130
  %132 = add i64 %smax1637, %131
  %133 = mul i64 %polly.indvar231, 400
  %134 = mul i64 %polly.indvar231, 50
  %135 = add i64 %100, %134
  %smax1623 = call i64 @llvm.smax.i64(i64 %135, i64 0)
  %136 = add nuw i64 %99, %smax1623
  %137 = mul i64 %136, 9600
  %138 = add i64 %133, %137
  %139 = or i64 %133, 8
  %140 = add i64 %139, %137
  %141 = mul i64 %polly.indvar231, -50
  %142 = add i64 %99, %141
  %143 = add i64 %smax1623, %142
  %144 = mul i64 %polly.indvar231, 50
  %145 = add i64 %101, %144
  %smax1605 = call i64 @llvm.smax.i64(i64 %145, i64 0)
  %146 = mul i64 %polly.indvar231, -50
  %147 = add i64 %102, %146
  %148 = add i64 %smax1605, %147
  %149 = mul i64 %polly.indvar231, 400
  %150 = mul i64 %polly.indvar231, 50
  %151 = add i64 %104, %150
  %smax1590 = call i64 @llvm.smax.i64(i64 %151, i64 0)
  %152 = add nuw i64 %103, %smax1590
  %153 = mul i64 %152, 9600
  %154 = add i64 %149, %153
  %155 = or i64 %149, 8
  %156 = add i64 %155, %153
  %157 = mul i64 %polly.indvar231, -50
  %158 = add i64 %103, %157
  %159 = add i64 %smax1590, %158
  %160 = mul i64 %polly.indvar231, 50
  %161 = add i64 %105, %160
  %smax1572 = call i64 @llvm.smax.i64(i64 %161, i64 0)
  %162 = mul i64 %polly.indvar231, -50
  %163 = add i64 %106, %162
  %164 = add i64 %smax1572, %163
  %165 = mul i64 %polly.indvar231, 400
  %166 = mul i64 %polly.indvar231, 50
  %167 = add i64 %108, %166
  %smax1557 = call i64 @llvm.smax.i64(i64 %167, i64 0)
  %168 = add nuw i64 %107, %smax1557
  %169 = mul i64 %168, 9600
  %170 = add i64 %165, %169
  %171 = or i64 %165, 8
  %172 = add i64 %171, %169
  %173 = mul i64 %polly.indvar231, -50
  %174 = add i64 %107, %173
  %175 = add i64 %smax1557, %174
  %176 = mul i64 %polly.indvar231, 50
  %177 = add i64 %109, %176
  %smax1537 = call i64 @llvm.smax.i64(i64 %177, i64 0)
  %178 = mul i64 %polly.indvar231, -50
  %179 = add i64 %110, %178
  %180 = add i64 %smax1537, %179
  %181 = mul nsw i64 %polly.indvar231, 50
  %182 = add nsw i64 %181, %116
  %183 = icmp sgt i64 %182, 0
  %184 = select i1 %183, i64 %182, i64 0
  %polly.loop_guard238.not = icmp sgt i64 %184, %119
  br i1 %polly.loop_guard238.not, label %polly.loop_exit237, label %polly.loop_header235.preheader

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1044, i64 0)
  %185 = add i64 %smax, %indvars.iv1048
  %186 = sub nsw i64 %120, %181
  %187 = add nuw nsw i64 %181, 50
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw i64 %polly.indvar231, 1
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 50
  %indvars.iv.next1049 = add i64 %indvars.iv1048, -50
  %exitcond1057.not = icmp eq i64 %polly.indvar231, %115
  br i1 %exitcond1057.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1538 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1539, %polly.loop_exit269 ]
  %indvars.iv1050 = phi i64 [ %185, %polly.loop_header235.preheader ], [ %indvars.iv.next1051, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %184, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %188 = add i64 %132, %indvar1538
  %smin1638 = call i64 @llvm.smin.i64(i64 %188, i64 49)
  %189 = add nsw i64 %smin1638, 1
  %190 = mul i64 %indvar1538, 9600
  %191 = add i64 %138, %190
  %scevgep1624 = getelementptr i8, i8* %call, i64 %191
  %192 = add i64 %140, %190
  %scevgep1625 = getelementptr i8, i8* %call, i64 %192
  %193 = add i64 %143, %indvar1538
  %smin1626 = call i64 @llvm.smin.i64(i64 %193, i64 49)
  %194 = shl i64 %smin1626, 3
  %scevgep1627 = getelementptr i8, i8* %scevgep1625, i64 %194
  %scevgep1629 = getelementptr i8, i8* %scevgep1628, i64 %194
  %195 = add i64 %148, %indvar1538
  %smin1606 = call i64 @llvm.smin.i64(i64 %195, i64 49)
  %196 = add nsw i64 %smin1606, 1
  %197 = mul i64 %indvar1538, 9600
  %198 = add i64 %154, %197
  %scevgep1591 = getelementptr i8, i8* %call, i64 %198
  %199 = add i64 %156, %197
  %scevgep1592 = getelementptr i8, i8* %call, i64 %199
  %200 = add i64 %159, %indvar1538
  %smin1593 = call i64 @llvm.smin.i64(i64 %200, i64 49)
  %201 = shl i64 %smin1593, 3
  %scevgep1594 = getelementptr i8, i8* %scevgep1592, i64 %201
  %scevgep1597 = getelementptr i8, i8* %scevgep1596, i64 %201
  %202 = add i64 %164, %indvar1538
  %smin1573 = call i64 @llvm.smin.i64(i64 %202, i64 49)
  %203 = add nsw i64 %smin1573, 1
  %204 = mul i64 %indvar1538, 9600
  %205 = add i64 %170, %204
  %scevgep1558 = getelementptr i8, i8* %call, i64 %205
  %206 = add i64 %172, %204
  %scevgep1559 = getelementptr i8, i8* %call, i64 %206
  %207 = add i64 %175, %indvar1538
  %smin1560 = call i64 @llvm.smin.i64(i64 %207, i64 49)
  %208 = shl i64 %smin1560, 3
  %scevgep1561 = getelementptr i8, i8* %scevgep1559, i64 %208
  %scevgep1564 = getelementptr i8, i8* %scevgep1563, i64 %208
  %209 = add i64 %180, %indvar1538
  %smin1540 = call i64 @llvm.smin.i64(i64 %209, i64 49)
  %210 = add nsw i64 %smin1540, 1
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 49)
  %211 = add nsw i64 %polly.indvar239, %186
  %polly.loop_guard2521148 = icmp sgt i64 %211, -1
  %212 = add nuw nsw i64 %polly.indvar239, %120
  %.not = icmp ult i64 %212, %187
  %polly.access.mul.call1261 = mul nsw i64 %212, 1000
  %213 = add nuw i64 %polly.access.mul.call1261, %121
  br i1 %polly.loop_guard2521148, label %polly.loop_header249.us, label %polly.loop_header235.split

polly.loop_header249.us:                          ; preds = %polly.loop_header235, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header235 ]
  %214 = add nuw nsw i64 %polly.indvar253.us, %181
  %polly.access.mul.call1257.us = mul nsw i64 %214, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %121, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar253.us, %smin1054
  br i1 %exitcond1052.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %213
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %211
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.loop_header249.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.loop_header249.us.1.preheader, label %polly.then.us

polly.loop_header249.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header249.us.1

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242.preheader

polly.loop_header242.preheader:                   ; preds = %polly.loop_header235.split
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %213
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %211
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.access.add.call1262.1 = or i64 %213, 1
  %polly.access.call1263.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.1
  %polly.access.call1263.load.1 = load double, double* %polly.access.call1263.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.1 = add nsw i64 %211, 1200
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  store double %polly.access.call1263.load.1, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %polly.access.add.call1262.2 = or i64 %213, 2
  %polly.access.call1263.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.2
  %polly.access.call1263.load.2 = load double, double* %polly.access.call1263.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.2 = add nsw i64 %211, 2400
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  store double %polly.access.call1263.load.2, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %polly.access.add.call1262.3 = or i64 %213, 3
  %polly.access.call1263.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.3
  %polly.access.call1263.load.3 = load double, double* %polly.access.call1263.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.3 = add nsw i64 %211, 3600
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  store double %polly.access.call1263.load.3, double* %polly.access.Packed_MemRef_call1266.3, align 8
  br label %polly.loop_exit269

polly.loop_exit269:                               ; preds = %polly.loop_header274.us.3, %middle.block1534, %polly.loop_header235.split, %polly.loop_header242.preheader, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241.not.not = icmp ult i64 %polly.indvar239, %119
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 1
  %indvar.next1539 = add i64 %indvar1538, 1
  br i1 %polly.loop_cond241.not.not, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header267.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %215 = mul i64 %212, 9600
  br i1 %polly.loop_guard2521148, label %polly.loop_header267.us.preheader, label %polly.loop_exit269

polly.loop_header267.us.preheader:                ; preds = %polly.loop_header267.preheader
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %212
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %211
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1639 = icmp ult i64 %189, 4
  br i1 %min.iters.check1639, label %polly.loop_header274.us.preheader, label %vector.memcheck1622

vector.memcheck1622:                              ; preds = %polly.loop_header267.us.preheader
  %bound01630 = icmp ult i8* %scevgep1624, %scevgep1629
  %bound11631 = icmp ult i8* %malloccall, %scevgep1627
  %found.conflict1632 = and i1 %bound01630, %bound11631
  br i1 %found.conflict1632, label %polly.loop_header274.us.preheader, label %vector.ph1640

vector.ph1640:                                    ; preds = %vector.memcheck1622
  %n.vec1642 = and i64 %189, -4
  %broadcast.splatinsert1648 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1649 = shufflevector <4 x double> %broadcast.splatinsert1648, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1651 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1652 = shufflevector <4 x double> %broadcast.splatinsert1651, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1636

vector.body1636:                                  ; preds = %vector.body1636, %vector.ph1640
  %index1643 = phi i64 [ 0, %vector.ph1640 ], [ %index.next1644, %vector.body1636 ]
  %216 = add nuw nsw i64 %index1643, %181
  %217 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1643
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1647 = load <4 x double>, <4 x double>* %218, align 8, !alias.scope !77
  %219 = fmul fast <4 x double> %broadcast.splat1649, %wide.load1647
  %220 = add nuw nsw i64 %216, %polly.access.mul.Packed_MemRef_call2285.us
  %221 = getelementptr double, double* %Packed_MemRef_call2, i64 %220
  %222 = bitcast double* %221 to <4 x double>*
  %wide.load1650 = load <4 x double>, <4 x double>* %222, align 8
  %223 = fmul fast <4 x double> %broadcast.splat1652, %wide.load1650
  %224 = shl i64 %216, 3
  %225 = add i64 %224, %215
  %226 = getelementptr i8, i8* %call, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  %wide.load1653 = load <4 x double>, <4 x double>* %227, align 8, !alias.scope !80, !noalias !82
  %228 = fadd fast <4 x double> %223, %219
  %229 = fmul fast <4 x double> %228, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %230 = fadd fast <4 x double> %229, %wide.load1653
  %231 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %230, <4 x double>* %231, align 8, !alias.scope !80, !noalias !82
  %index.next1644 = add i64 %index1643, 4
  %232 = icmp eq i64 %index.next1644, %n.vec1642
  br i1 %232, label %middle.block1634, label %vector.body1636, !llvm.loop !83

middle.block1634:                                 ; preds = %vector.body1636
  %cmp.n1646 = icmp eq i64 %189, %n.vec1642
  br i1 %cmp.n1646, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %vector.memcheck1622, %polly.loop_header267.us.preheader, %middle.block1634
  %polly.indvar278.us.ph = phi i64 [ 0, %vector.memcheck1622 ], [ 0, %polly.loop_header267.us.preheader ], [ %n.vec1642, %middle.block1634 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %233 = add nuw nsw i64 %polly.indvar278.us, %181
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar278.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %233, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %234 = shl i64 %233, 3
  %235 = add i64 %234, %215
  %scevgep297.us = getelementptr i8, i8* %call, i64 %235
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar278.us, %smin1054
  br i1 %exitcond1055.not, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us, !llvm.loop !84

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_header274.us, %middle.block1634
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.1, %212
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nsw i64 %211, 1200
  %polly.access.Packed_MemRef_call1295.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call1295.us.1, align 8
  %min.iters.check1607 = icmp ult i64 %196, 4
  br i1 %min.iters.check1607, label %polly.loop_header274.us.1.preheader, label %vector.memcheck1589

vector.memcheck1589:                              ; preds = %polly.loop_exit276.loopexit.us
  %bound01598 = icmp ult i8* %scevgep1591, %scevgep1597
  %bound11599 = icmp ult i8* %scevgep1595, %scevgep1594
  %found.conflict1600 = and i1 %bound01598, %bound11599
  br i1 %found.conflict1600, label %polly.loop_header274.us.1.preheader, label %vector.ph1608

vector.ph1608:                                    ; preds = %vector.memcheck1589
  %n.vec1610 = and i64 %196, -4
  %broadcast.splatinsert1616 = insertelement <4 x double> poison, double %_p_scalar_288.us.1, i32 0
  %broadcast.splat1617 = shufflevector <4 x double> %broadcast.splatinsert1616, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1619 = insertelement <4 x double> poison, double %_p_scalar_296.us.1, i32 0
  %broadcast.splat1620 = shufflevector <4 x double> %broadcast.splatinsert1619, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1604

vector.body1604:                                  ; preds = %vector.body1604, %vector.ph1608
  %index1611 = phi i64 [ 0, %vector.ph1608 ], [ %index.next1612, %vector.body1604 ]
  %236 = add nuw nsw i64 %index1611, %181
  %237 = add nuw nsw i64 %index1611, 1200
  %238 = getelementptr double, double* %Packed_MemRef_call1, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1615 = load <4 x double>, <4 x double>* %239, align 8, !alias.scope !85
  %240 = fmul fast <4 x double> %broadcast.splat1617, %wide.load1615
  %241 = add nuw nsw i64 %236, %polly.access.mul.Packed_MemRef_call2285.us.1
  %242 = getelementptr double, double* %Packed_MemRef_call2, i64 %241
  %243 = bitcast double* %242 to <4 x double>*
  %wide.load1618 = load <4 x double>, <4 x double>* %243, align 8
  %244 = fmul fast <4 x double> %broadcast.splat1620, %wide.load1618
  %245 = shl i64 %236, 3
  %246 = add i64 %245, %215
  %247 = getelementptr i8, i8* %call, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  %wide.load1621 = load <4 x double>, <4 x double>* %248, align 8, !alias.scope !88, !noalias !90
  %249 = fadd fast <4 x double> %244, %240
  %250 = fmul fast <4 x double> %249, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %251 = fadd fast <4 x double> %250, %wide.load1621
  %252 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %251, <4 x double>* %252, align 8, !alias.scope !88, !noalias !90
  %index.next1612 = add i64 %index1611, 4
  %253 = icmp eq i64 %index.next1612, %n.vec1610
  br i1 %253, label %middle.block1602, label %vector.body1604, !llvm.loop !91

middle.block1602:                                 ; preds = %vector.body1604
  %cmp.n1614 = icmp eq i64 %196, %n.vec1610
  br i1 %cmp.n1614, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1.preheader

polly.loop_header274.us.1.preheader:              ; preds = %vector.memcheck1589, %polly.loop_exit276.loopexit.us, %middle.block1602
  %polly.indvar278.us.1.ph = phi i64 [ 0, %vector.memcheck1589 ], [ 0, %polly.loop_exit276.loopexit.us ], [ %n.vec1610, %middle.block1602 ]
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
  %indvar1377 = phi i64 [ %indvar.next1378, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %254 = add i64 %indvar1377, 1
  %255 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %255
  %min.iters.check1379 = icmp ult i64 %254, 4
  br i1 %min.iters.check1379, label %polly.loop_header396.preheader, label %vector.ph1380

vector.ph1380:                                    ; preds = %polly.loop_header390
  %n.vec1382 = and i64 %254, -4
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1384, %vector.body1376 ]
  %256 = shl nuw nsw i64 %index1383, 3
  %257 = getelementptr i8, i8* %scevgep402, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %258, align 8, !alias.scope !92, !noalias !94
  %259 = fmul fast <4 x double> %wide.load1387, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %260 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %259, <4 x double>* %260, align 8, !alias.scope !92, !noalias !94
  %index.next1384 = add i64 %index1383, 4
  %261 = icmp eq i64 %index.next1384, %n.vec1382
  br i1 %261, label %middle.block1374, label %vector.body1376, !llvm.loop !99

middle.block1374:                                 ; preds = %vector.body1376
  %cmp.n1386 = icmp eq i64 %254, %n.vec1382
  br i1 %cmp.n1386, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1374
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1382, %middle.block1374 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1374
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1378 = add i64 %indvar1377, 1
  br i1 %exitcond1088.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %262 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %262
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1087.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !100

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond1086.not, label %polly.loop_header422.preheader, label %polly.loop_header406

polly.loop_header422.preheader:                   ; preds = %polly.loop_exit414
  %scevgep1416 = getelementptr i8, i8* %malloccall304, i64 19200
  %scevgep1417 = getelementptr i8, i8* %malloccall304, i64 19208
  %scevgep1449 = getelementptr i8, i8* %malloccall304, i64 9600
  %scevgep1450 = getelementptr i8, i8* %malloccall304, i64 9608
  %scevgep1482 = getelementptr i8, i8* %malloccall304, i64 8
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
  %exitcond1085.not = icmp eq i64 %polly.indvar_next416, 1200
  br i1 %exitcond1085.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_header422.preheader, %polly.loop_exit430
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %263 = mul nsw i64 %polly.indvar425, -32
  %264 = shl nuw nsw i64 %polly.indvar425, 5
  %265 = shl nuw nsw i64 %polly.indvar425, 5
  %266 = mul nsw i64 %polly.indvar425, -32
  %267 = mul nsw i64 %polly.indvar425, -32
  %268 = shl nuw nsw i64 %polly.indvar425, 5
  %269 = shl nuw nsw i64 %polly.indvar425, 5
  %270 = mul nsw i64 %polly.indvar425, -32
  %271 = mul nsw i64 %polly.indvar425, -32
  %272 = shl nuw nsw i64 %polly.indvar425, 5
  %273 = shl nuw nsw i64 %polly.indvar425, 5
  %274 = mul nsw i64 %polly.indvar425, -32
  %275 = mul nsw i64 %polly.indvar425, -32
  %276 = shl nuw nsw i64 %polly.indvar425, 5
  %277 = mul nuw nsw i64 %polly.indvar425, 9
  %278 = add nuw nsw i64 %277, 34
  %pexp.p_div_q434 = udiv i64 %278, 25
  %279 = sub nsw i64 %polly.indvar425, %pexp.p_div_q434
  %280 = add nsw i64 %279, 1
  %.inv932 = icmp slt i64 %279, 23
  %281 = select i1 %.inv932, i64 %280, i64 23
  %polly.loop_guard439 = icmp sgt i64 %281, -1
  %282 = mul nsw i64 %polly.indvar425, -32
  %283 = icmp slt i64 %282, -1168
  %284 = select i1 %283, i64 %282, i64 -1168
  %285 = add nsw i64 %284, 1199
  %286 = shl nsw i64 %polly.indvar425, 5
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -32
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 32
  %exitcond1084.not = icmp eq i64 %polly.indvar_next426, 38
  br i1 %exitcond1084.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439, label %polly.loop_header436.preheader, label %polly.loop_exit438

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %287 = shl nsw i64 %polly.indvar431, 2
  %288 = or i64 %287, 1
  %289 = or i64 %287, 2
  %290 = or i64 %287, 3
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nsw i64 %polly.indvar431, 4800
  %291 = or i64 %287, 1
  %polly.access.mul.Packed_MemRef_call2307498.us.1 = mul nuw nsw i64 %291, 1200
  %292 = or i64 %287, 2
  %polly.access.mul.Packed_MemRef_call2307498.us.2 = mul nuw nsw i64 %292, 1200
  %293 = or i64 %287, 3
  %polly.access.mul.Packed_MemRef_call2307498.us.3 = mul nuw nsw i64 %293, 1200
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next432, 250
  br i1 %exitcond1083.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1072 = phi i64 [ %indvars.iv1070, %polly.loop_header436.preheader ], [ %indvars.iv.next1073, %polly.loop_exit446 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv1065, %polly.loop_header436.preheader ], [ %indvars.iv.next1068, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %294 = mul i64 %polly.indvar440, 50
  %295 = add i64 %263, %294
  %smax1491 = call i64 @llvm.smax.i64(i64 %295, i64 0)
  %296 = mul i64 %polly.indvar440, -50
  %297 = add i64 %264, %296
  %298 = add i64 %smax1491, %297
  %299 = mul i64 %polly.indvar440, 400
  %300 = mul i64 %polly.indvar440, 50
  %301 = add i64 %266, %300
  %smax1477 = call i64 @llvm.smax.i64(i64 %301, i64 0)
  %302 = add nuw i64 %265, %smax1477
  %303 = mul i64 %302, 9600
  %304 = add i64 %299, %303
  %305 = or i64 %299, 8
  %306 = add i64 %305, %303
  %307 = mul i64 %polly.indvar440, -50
  %308 = add i64 %265, %307
  %309 = add i64 %smax1477, %308
  %310 = mul i64 %polly.indvar440, 50
  %311 = add i64 %267, %310
  %smax1459 = call i64 @llvm.smax.i64(i64 %311, i64 0)
  %312 = mul i64 %polly.indvar440, -50
  %313 = add i64 %268, %312
  %314 = add i64 %smax1459, %313
  %315 = mul i64 %polly.indvar440, 400
  %316 = mul i64 %polly.indvar440, 50
  %317 = add i64 %270, %316
  %smax1444 = call i64 @llvm.smax.i64(i64 %317, i64 0)
  %318 = add nuw i64 %269, %smax1444
  %319 = mul i64 %318, 9600
  %320 = add i64 %315, %319
  %321 = or i64 %315, 8
  %322 = add i64 %321, %319
  %323 = mul i64 %polly.indvar440, -50
  %324 = add i64 %269, %323
  %325 = add i64 %smax1444, %324
  %326 = mul i64 %polly.indvar440, 50
  %327 = add i64 %271, %326
  %smax1426 = call i64 @llvm.smax.i64(i64 %327, i64 0)
  %328 = mul i64 %polly.indvar440, -50
  %329 = add i64 %272, %328
  %330 = add i64 %smax1426, %329
  %331 = mul i64 %polly.indvar440, 400
  %332 = mul i64 %polly.indvar440, 50
  %333 = add i64 %274, %332
  %smax1411 = call i64 @llvm.smax.i64(i64 %333, i64 0)
  %334 = add nuw i64 %273, %smax1411
  %335 = mul i64 %334, 9600
  %336 = add i64 %331, %335
  %337 = or i64 %331, 8
  %338 = add i64 %337, %335
  %339 = mul i64 %polly.indvar440, -50
  %340 = add i64 %273, %339
  %341 = add i64 %smax1411, %340
  %342 = mul i64 %polly.indvar440, 50
  %343 = add i64 %275, %342
  %smax1391 = call i64 @llvm.smax.i64(i64 %343, i64 0)
  %344 = mul i64 %polly.indvar440, -50
  %345 = add i64 %276, %344
  %346 = add i64 %smax1391, %345
  %347 = mul nsw i64 %polly.indvar440, 50
  %348 = add nsw i64 %347, %282
  %349 = icmp sgt i64 %348, 0
  %350 = select i1 %349, i64 %348, i64 0
  %polly.loop_guard447.not = icmp sgt i64 %350, %285
  br i1 %polly.loop_guard447.not, label %polly.loop_exit446, label %polly.loop_header444.preheader

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1069 = call i64 @llvm.smax.i64(i64 %indvars.iv1067, i64 0)
  %351 = add i64 %smax1069, %indvars.iv1072
  %352 = sub nsw i64 %286, %347
  %353 = add nuw nsw i64 %347, 50
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw i64 %polly.indvar440, 1
  %indvars.iv.next1068 = add i64 %indvars.iv1067, 50
  %indvars.iv.next1073 = add i64 %indvars.iv1072, -50
  %exitcond1082.not = icmp eq i64 %polly.indvar440, %281
  br i1 %exitcond1082.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1392 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1393, %polly.loop_exit482 ]
  %indvars.iv1074 = phi i64 [ %351, %polly.loop_header444.preheader ], [ %indvars.iv.next1075, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %350, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %354 = add i64 %298, %indvar1392
  %smin1492 = call i64 @llvm.smin.i64(i64 %354, i64 49)
  %355 = add nsw i64 %smin1492, 1
  %356 = mul i64 %indvar1392, 9600
  %357 = add i64 %304, %356
  %scevgep1478 = getelementptr i8, i8* %call, i64 %357
  %358 = add i64 %306, %356
  %scevgep1479 = getelementptr i8, i8* %call, i64 %358
  %359 = add i64 %309, %indvar1392
  %smin1480 = call i64 @llvm.smin.i64(i64 %359, i64 49)
  %360 = shl i64 %smin1480, 3
  %scevgep1481 = getelementptr i8, i8* %scevgep1479, i64 %360
  %scevgep1483 = getelementptr i8, i8* %scevgep1482, i64 %360
  %361 = add i64 %314, %indvar1392
  %smin1460 = call i64 @llvm.smin.i64(i64 %361, i64 49)
  %362 = add nsw i64 %smin1460, 1
  %363 = mul i64 %indvar1392, 9600
  %364 = add i64 %320, %363
  %scevgep1445 = getelementptr i8, i8* %call, i64 %364
  %365 = add i64 %322, %363
  %scevgep1446 = getelementptr i8, i8* %call, i64 %365
  %366 = add i64 %325, %indvar1392
  %smin1447 = call i64 @llvm.smin.i64(i64 %366, i64 49)
  %367 = shl i64 %smin1447, 3
  %scevgep1448 = getelementptr i8, i8* %scevgep1446, i64 %367
  %scevgep1451 = getelementptr i8, i8* %scevgep1450, i64 %367
  %368 = add i64 %330, %indvar1392
  %smin1427 = call i64 @llvm.smin.i64(i64 %368, i64 49)
  %369 = add nsw i64 %smin1427, 1
  %370 = mul i64 %indvar1392, 9600
  %371 = add i64 %336, %370
  %scevgep1412 = getelementptr i8, i8* %call, i64 %371
  %372 = add i64 %338, %370
  %scevgep1413 = getelementptr i8, i8* %call, i64 %372
  %373 = add i64 %341, %indvar1392
  %smin1414 = call i64 @llvm.smin.i64(i64 %373, i64 49)
  %374 = shl i64 %smin1414, 3
  %scevgep1415 = getelementptr i8, i8* %scevgep1413, i64 %374
  %scevgep1418 = getelementptr i8, i8* %scevgep1417, i64 %374
  %375 = add i64 %346, %indvar1392
  %smin1394 = call i64 @llvm.smin.i64(i64 %375, i64 49)
  %376 = add nsw i64 %smin1394, 1
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 49)
  %377 = add nsw i64 %polly.indvar448, %352
  %polly.loop_guard4611149 = icmp sgt i64 %377, -1
  %378 = add nuw nsw i64 %polly.indvar448, %286
  %.not933 = icmp ult i64 %378, %353
  %polly.access.mul.call1474 = mul nsw i64 %378, 1000
  %379 = add nuw i64 %polly.access.mul.call1474, %287
  br i1 %polly.loop_guard4611149, label %polly.loop_header458.us, label %polly.loop_header444.split

polly.loop_header458.us:                          ; preds = %polly.loop_header444, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header444 ]
  %380 = add nuw nsw i64 %polly.indvar462.us, %347
  %polly.access.mul.call1466.us = mul nsw i64 %380, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %287, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar462.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar462.us, %smin1079
  br i1 %exitcond1077.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %379
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %377
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.loop_header458.us.1.preheader

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not933, label %polly.loop_header458.us.1.preheader, label %polly.then471.us

polly.loop_header458.us.1.preheader:              ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  br label %polly.loop_header458.us.1

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not933, label %polly.loop_exit482, label %polly.loop_header451.preheader

polly.loop_header451.preheader:                   ; preds = %polly.loop_header444.split
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %379
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %377
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.access.add.call1475.1 = or i64 %379, 1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.1 = add nsw i64 %377, 1200
  %polly.access.Packed_MemRef_call1305479.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1305479.1, align 8
  %polly.access.add.call1475.2 = or i64 %379, 2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.2 = add nsw i64 %377, 2400
  %polly.access.Packed_MemRef_call1305479.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1305479.2, align 8
  %polly.access.add.call1475.3 = or i64 %379, 3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.3 = add nsw i64 %377, 3600
  %polly.access.Packed_MemRef_call1305479.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1305479.3, align 8
  br label %polly.loop_exit482

polly.loop_exit482:                               ; preds = %polly.loop_header487.us.3, %middle.block1388, %polly.loop_header444.split, %polly.loop_header451.preheader, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp ult i64 %polly.indvar448, %285
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 1
  %indvar.next1393 = add i64 %indvar1392, 1
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header480.preheader:                   ; preds = %polly.cond469.loopexit.us.3, %polly.then471.us.3
  %381 = mul i64 %378, 9600
  br i1 %polly.loop_guard4611149, label %polly.loop_header480.us.preheader, label %polly.loop_exit482

polly.loop_header480.us.preheader:                ; preds = %polly.loop_header480.preheader
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %378
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %377
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1493 = icmp ult i64 %355, 4
  br i1 %min.iters.check1493, label %polly.loop_header487.us.preheader, label %vector.memcheck1476

vector.memcheck1476:                              ; preds = %polly.loop_header480.us.preheader
  %bound01484 = icmp ult i8* %scevgep1478, %scevgep1483
  %bound11485 = icmp ult i8* %malloccall304, %scevgep1481
  %found.conflict1486 = and i1 %bound01484, %bound11485
  br i1 %found.conflict1486, label %polly.loop_header487.us.preheader, label %vector.ph1494

vector.ph1494:                                    ; preds = %vector.memcheck1476
  %n.vec1496 = and i64 %355, -4
  %broadcast.splatinsert1502 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1503 = shufflevector <4 x double> %broadcast.splatinsert1502, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1505 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1506 = shufflevector <4 x double> %broadcast.splatinsert1505, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1494
  %index1497 = phi i64 [ 0, %vector.ph1494 ], [ %index.next1498, %vector.body1490 ]
  %382 = add nuw nsw i64 %index1497, %347
  %383 = getelementptr double, double* %Packed_MemRef_call1305, i64 %index1497
  %384 = bitcast double* %383 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %384, align 8, !alias.scope !103
  %385 = fmul fast <4 x double> %broadcast.splat1503, %wide.load1501
  %386 = add nuw nsw i64 %382, %polly.access.mul.Packed_MemRef_call2307498.us
  %387 = getelementptr double, double* %Packed_MemRef_call2307, i64 %386
  %388 = bitcast double* %387 to <4 x double>*
  %wide.load1504 = load <4 x double>, <4 x double>* %388, align 8
  %389 = fmul fast <4 x double> %broadcast.splat1506, %wide.load1504
  %390 = shl i64 %382, 3
  %391 = add i64 %390, %381
  %392 = getelementptr i8, i8* %call, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %393, align 8, !alias.scope !106, !noalias !108
  %394 = fadd fast <4 x double> %389, %385
  %395 = fmul fast <4 x double> %394, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %396 = fadd fast <4 x double> %395, %wide.load1507
  %397 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %396, <4 x double>* %397, align 8, !alias.scope !106, !noalias !108
  %index.next1498 = add i64 %index1497, 4
  %398 = icmp eq i64 %index.next1498, %n.vec1496
  br i1 %398, label %middle.block1488, label %vector.body1490, !llvm.loop !109

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1500 = icmp eq i64 %355, %n.vec1496
  br i1 %cmp.n1500, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %vector.memcheck1476, %polly.loop_header480.us.preheader, %middle.block1488
  %polly.indvar491.us.ph = phi i64 [ 0, %vector.memcheck1476 ], [ 0, %polly.loop_header480.us.preheader ], [ %n.vec1496, %middle.block1488 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %399 = add nuw nsw i64 %polly.indvar491.us, %347
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar491.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %399, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %400 = shl i64 %399, 3
  %401 = add i64 %400, %381
  %scevgep510.us = getelementptr i8, i8* %call, i64 %401
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar491.us, %smin1079
  br i1 %exitcond1080.not, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us, !llvm.loop !110

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_header487.us, %middle.block1488
  %polly.access.add.Packed_MemRef_call2307499.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.1, %378
  %polly.access.Packed_MemRef_call2307500.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2307500.us.1, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.1 = add nsw i64 %377, 1200
  %polly.access.Packed_MemRef_call1305508.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call1305508.us.1, align 8
  %min.iters.check1461 = icmp ult i64 %362, 4
  br i1 %min.iters.check1461, label %polly.loop_header487.us.1.preheader, label %vector.memcheck1443

vector.memcheck1443:                              ; preds = %polly.loop_exit489.loopexit.us
  %bound01452 = icmp ult i8* %scevgep1445, %scevgep1451
  %bound11453 = icmp ult i8* %scevgep1449, %scevgep1448
  %found.conflict1454 = and i1 %bound01452, %bound11453
  br i1 %found.conflict1454, label %polly.loop_header487.us.1.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %vector.memcheck1443
  %n.vec1464 = and i64 %362, -4
  %broadcast.splatinsert1470 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1471 = shufflevector <4 x double> %broadcast.splatinsert1470, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1473 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1474 = shufflevector <4 x double> %broadcast.splatinsert1473, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1458 ]
  %402 = add nuw nsw i64 %index1465, %347
  %403 = add nuw nsw i64 %index1465, 1200
  %404 = getelementptr double, double* %Packed_MemRef_call1305, i64 %403
  %405 = bitcast double* %404 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %405, align 8, !alias.scope !111
  %406 = fmul fast <4 x double> %broadcast.splat1471, %wide.load1469
  %407 = add nuw nsw i64 %402, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %408 = getelementptr double, double* %Packed_MemRef_call2307, i64 %407
  %409 = bitcast double* %408 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %409, align 8
  %410 = fmul fast <4 x double> %broadcast.splat1474, %wide.load1472
  %411 = shl i64 %402, 3
  %412 = add i64 %411, %381
  %413 = getelementptr i8, i8* %call, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %414, align 8, !alias.scope !114, !noalias !116
  %415 = fadd fast <4 x double> %410, %406
  %416 = fmul fast <4 x double> %415, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %417 = fadd fast <4 x double> %416, %wide.load1475
  %418 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %417, <4 x double>* %418, align 8, !alias.scope !114, !noalias !116
  %index.next1466 = add i64 %index1465, 4
  %419 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %419, label %middle.block1456, label %vector.body1458, !llvm.loop !117

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1468 = icmp eq i64 %362, %n.vec1464
  br i1 %cmp.n1468, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1.preheader

polly.loop_header487.us.1.preheader:              ; preds = %vector.memcheck1443, %polly.loop_exit489.loopexit.us, %middle.block1456
  %polly.indvar491.us.1.ph = phi i64 [ 0, %vector.memcheck1443 ], [ 0, %polly.loop_exit489.loopexit.us ], [ %n.vec1464, %middle.block1456 ]
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
  %420 = add i64 %indvar, 1
  %421 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %421
  %min.iters.check1233 = icmp ult i64 %420, 4
  br i1 %min.iters.check1233, label %polly.loop_header609.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header603
  %n.vec1236 = and i64 %420, -4
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1232 ]
  %422 = shl nuw nsw i64 %index1237, 3
  %423 = getelementptr i8, i8* %scevgep615, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %424, align 8, !alias.scope !118, !noalias !120
  %425 = fmul fast <4 x double> %wide.load1241, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %426 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %425, <4 x double>* %426, align 8, !alias.scope !118, !noalias !120
  %index.next1238 = add i64 %index1237, 4
  %427 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %427, label %middle.block1230, label %vector.body1232, !llvm.loop !125

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %420, %n.vec1236
  br i1 %cmp.n1240, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1230
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1236, %middle.block1230 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1230
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1113.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %428 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %428
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1112.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !126

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit627
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit627 ], [ 0, %polly.loop_header619.preheader ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar622, 1200
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_header625
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next623, 1000
  br i1 %exitcond1111.not, label %polly.loop_header635.preheader, label %polly.loop_header619

polly.loop_header635.preheader:                   ; preds = %polly.loop_exit627
  %scevgep1270 = getelementptr i8, i8* %malloccall517, i64 19200
  %scevgep1271 = getelementptr i8, i8* %malloccall517, i64 19208
  %scevgep1303 = getelementptr i8, i8* %malloccall517, i64 9600
  %scevgep1304 = getelementptr i8, i8* %malloccall517, i64 9608
  %scevgep1336 = getelementptr i8, i8* %malloccall517, i64 8
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
  %exitcond1110.not = icmp eq i64 %polly.indvar_next629, 1200
  br i1 %exitcond1110.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header635:                             ; preds = %polly.loop_header635.preheader, %polly.loop_exit643
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %429 = mul nsw i64 %polly.indvar638, -32
  %430 = shl nuw nsw i64 %polly.indvar638, 5
  %431 = shl nuw nsw i64 %polly.indvar638, 5
  %432 = mul nsw i64 %polly.indvar638, -32
  %433 = mul nsw i64 %polly.indvar638, -32
  %434 = shl nuw nsw i64 %polly.indvar638, 5
  %435 = shl nuw nsw i64 %polly.indvar638, 5
  %436 = mul nsw i64 %polly.indvar638, -32
  %437 = mul nsw i64 %polly.indvar638, -32
  %438 = shl nuw nsw i64 %polly.indvar638, 5
  %439 = shl nuw nsw i64 %polly.indvar638, 5
  %440 = mul nsw i64 %polly.indvar638, -32
  %441 = mul nsw i64 %polly.indvar638, -32
  %442 = shl nuw nsw i64 %polly.indvar638, 5
  %443 = mul nuw nsw i64 %polly.indvar638, 9
  %444 = add nuw nsw i64 %443, 34
  %pexp.p_div_q647 = udiv i64 %444, 25
  %445 = sub nsw i64 %polly.indvar638, %pexp.p_div_q647
  %446 = add nsw i64 %445, 1
  %.inv934 = icmp slt i64 %445, 23
  %447 = select i1 %.inv934, i64 %446, i64 23
  %polly.loop_guard652 = icmp sgt i64 %447, -1
  %448 = mul nsw i64 %polly.indvar638, -32
  %449 = icmp slt i64 %448, -1168
  %450 = select i1 %449, i64 %448, i64 -1168
  %451 = add nsw i64 %450, 1199
  %452 = shl nsw i64 %polly.indvar638, 5
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -32
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 32
  %exitcond1109.not = icmp eq i64 %polly.indvar_next639, 38
  br i1 %exitcond1109.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %453 = shl nsw i64 %polly.indvar644, 2
  %454 = or i64 %453, 1
  %455 = or i64 %453, 2
  %456 = or i64 %453, 3
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nsw i64 %polly.indvar644, 4800
  %457 = or i64 %453, 1
  %polly.access.mul.Packed_MemRef_call2520711.us.1 = mul nuw nsw i64 %457, 1200
  %458 = or i64 %453, 2
  %polly.access.mul.Packed_MemRef_call2520711.us.2 = mul nuw nsw i64 %458, 1200
  %459 = or i64 %453, 3
  %polly.access.mul.Packed_MemRef_call2520711.us.3 = mul nuw nsw i64 %459, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next645, 250
  br i1 %exitcond1108.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1097 = phi i64 [ %indvars.iv1095, %polly.loop_header649.preheader ], [ %indvars.iv.next1098, %polly.loop_exit659 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv1090, %polly.loop_header649.preheader ], [ %indvars.iv.next1093, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %460 = mul i64 %polly.indvar653, 50
  %461 = add i64 %429, %460
  %smax1345 = call i64 @llvm.smax.i64(i64 %461, i64 0)
  %462 = mul i64 %polly.indvar653, -50
  %463 = add i64 %430, %462
  %464 = add i64 %smax1345, %463
  %465 = mul i64 %polly.indvar653, 400
  %466 = mul i64 %polly.indvar653, 50
  %467 = add i64 %432, %466
  %smax1331 = call i64 @llvm.smax.i64(i64 %467, i64 0)
  %468 = add nuw i64 %431, %smax1331
  %469 = mul i64 %468, 9600
  %470 = add i64 %465, %469
  %471 = or i64 %465, 8
  %472 = add i64 %471, %469
  %473 = mul i64 %polly.indvar653, -50
  %474 = add i64 %431, %473
  %475 = add i64 %smax1331, %474
  %476 = mul i64 %polly.indvar653, 50
  %477 = add i64 %433, %476
  %smax1313 = call i64 @llvm.smax.i64(i64 %477, i64 0)
  %478 = mul i64 %polly.indvar653, -50
  %479 = add i64 %434, %478
  %480 = add i64 %smax1313, %479
  %481 = mul i64 %polly.indvar653, 400
  %482 = mul i64 %polly.indvar653, 50
  %483 = add i64 %436, %482
  %smax1298 = call i64 @llvm.smax.i64(i64 %483, i64 0)
  %484 = add nuw i64 %435, %smax1298
  %485 = mul i64 %484, 9600
  %486 = add i64 %481, %485
  %487 = or i64 %481, 8
  %488 = add i64 %487, %485
  %489 = mul i64 %polly.indvar653, -50
  %490 = add i64 %435, %489
  %491 = add i64 %smax1298, %490
  %492 = mul i64 %polly.indvar653, 50
  %493 = add i64 %437, %492
  %smax1280 = call i64 @llvm.smax.i64(i64 %493, i64 0)
  %494 = mul i64 %polly.indvar653, -50
  %495 = add i64 %438, %494
  %496 = add i64 %smax1280, %495
  %497 = mul i64 %polly.indvar653, 400
  %498 = mul i64 %polly.indvar653, 50
  %499 = add i64 %440, %498
  %smax1265 = call i64 @llvm.smax.i64(i64 %499, i64 0)
  %500 = add nuw i64 %439, %smax1265
  %501 = mul i64 %500, 9600
  %502 = add i64 %497, %501
  %503 = or i64 %497, 8
  %504 = add i64 %503, %501
  %505 = mul i64 %polly.indvar653, -50
  %506 = add i64 %439, %505
  %507 = add i64 %smax1265, %506
  %508 = mul i64 %polly.indvar653, 50
  %509 = add i64 %441, %508
  %smax1245 = call i64 @llvm.smax.i64(i64 %509, i64 0)
  %510 = mul i64 %polly.indvar653, -50
  %511 = add i64 %442, %510
  %512 = add i64 %smax1245, %511
  %513 = mul nsw i64 %polly.indvar653, 50
  %514 = add nsw i64 %513, %448
  %515 = icmp sgt i64 %514, 0
  %516 = select i1 %515, i64 %514, i64 0
  %polly.loop_guard660.not = icmp sgt i64 %516, %451
  br i1 %polly.loop_guard660.not, label %polly.loop_exit659, label %polly.loop_header657.preheader

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1094 = call i64 @llvm.smax.i64(i64 %indvars.iv1092, i64 0)
  %517 = add i64 %smax1094, %indvars.iv1097
  %518 = sub nsw i64 %452, %513
  %519 = add nuw nsw i64 %513, 50
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw i64 %polly.indvar653, 1
  %indvars.iv.next1093 = add i64 %indvars.iv1092, 50
  %indvars.iv.next1098 = add i64 %indvars.iv1097, -50
  %exitcond1107.not = icmp eq i64 %polly.indvar653, %447
  br i1 %exitcond1107.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1246 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1247, %polly.loop_exit695 ]
  %indvars.iv1099 = phi i64 [ %517, %polly.loop_header657.preheader ], [ %indvars.iv.next1100, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %516, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %520 = add i64 %464, %indvar1246
  %smin1346 = call i64 @llvm.smin.i64(i64 %520, i64 49)
  %521 = add nsw i64 %smin1346, 1
  %522 = mul i64 %indvar1246, 9600
  %523 = add i64 %470, %522
  %scevgep1332 = getelementptr i8, i8* %call, i64 %523
  %524 = add i64 %472, %522
  %scevgep1333 = getelementptr i8, i8* %call, i64 %524
  %525 = add i64 %475, %indvar1246
  %smin1334 = call i64 @llvm.smin.i64(i64 %525, i64 49)
  %526 = shl i64 %smin1334, 3
  %scevgep1335 = getelementptr i8, i8* %scevgep1333, i64 %526
  %scevgep1337 = getelementptr i8, i8* %scevgep1336, i64 %526
  %527 = add i64 %480, %indvar1246
  %smin1314 = call i64 @llvm.smin.i64(i64 %527, i64 49)
  %528 = add nsw i64 %smin1314, 1
  %529 = mul i64 %indvar1246, 9600
  %530 = add i64 %486, %529
  %scevgep1299 = getelementptr i8, i8* %call, i64 %530
  %531 = add i64 %488, %529
  %scevgep1300 = getelementptr i8, i8* %call, i64 %531
  %532 = add i64 %491, %indvar1246
  %smin1301 = call i64 @llvm.smin.i64(i64 %532, i64 49)
  %533 = shl i64 %smin1301, 3
  %scevgep1302 = getelementptr i8, i8* %scevgep1300, i64 %533
  %scevgep1305 = getelementptr i8, i8* %scevgep1304, i64 %533
  %534 = add i64 %496, %indvar1246
  %smin1281 = call i64 @llvm.smin.i64(i64 %534, i64 49)
  %535 = add nsw i64 %smin1281, 1
  %536 = mul i64 %indvar1246, 9600
  %537 = add i64 %502, %536
  %scevgep1266 = getelementptr i8, i8* %call, i64 %537
  %538 = add i64 %504, %536
  %scevgep1267 = getelementptr i8, i8* %call, i64 %538
  %539 = add i64 %507, %indvar1246
  %smin1268 = call i64 @llvm.smin.i64(i64 %539, i64 49)
  %540 = shl i64 %smin1268, 3
  %scevgep1269 = getelementptr i8, i8* %scevgep1267, i64 %540
  %scevgep1272 = getelementptr i8, i8* %scevgep1271, i64 %540
  %541 = add i64 %512, %indvar1246
  %smin1248 = call i64 @llvm.smin.i64(i64 %541, i64 49)
  %542 = add nsw i64 %smin1248, 1
  %smin1104 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 49)
  %543 = add nsw i64 %polly.indvar661, %518
  %polly.loop_guard6741150 = icmp sgt i64 %543, -1
  %544 = add nuw nsw i64 %polly.indvar661, %452
  %.not935 = icmp ult i64 %544, %519
  %polly.access.mul.call1687 = mul nsw i64 %544, 1000
  %545 = add nuw i64 %polly.access.mul.call1687, %453
  br i1 %polly.loop_guard6741150, label %polly.loop_header671.us, label %polly.loop_header657.split

polly.loop_header671.us:                          ; preds = %polly.loop_header657, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header657 ]
  %546 = add nuw nsw i64 %polly.indvar675.us, %513
  %polly.access.mul.call1679.us = mul nsw i64 %546, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %453, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar675.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar675.us, %smin1104
  br i1 %exitcond1102.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %545
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %543
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.loop_header671.us.1.preheader

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not935, label %polly.loop_header671.us.1.preheader, label %polly.then684.us

polly.loop_header671.us.1.preheader:              ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  br label %polly.loop_header671.us.1

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not935, label %polly.loop_exit695, label %polly.loop_header664.preheader

polly.loop_header664.preheader:                   ; preds = %polly.loop_header657.split
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %545
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %543
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.access.add.call1688.1 = or i64 %545, 1
  %polly.access.call1689.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.1
  %polly.access.call1689.load.1 = load double, double* %polly.access.call1689.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.1 = add nsw i64 %543, 1200
  %polly.access.Packed_MemRef_call1518692.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.1
  store double %polly.access.call1689.load.1, double* %polly.access.Packed_MemRef_call1518692.1, align 8
  %polly.access.add.call1688.2 = or i64 %545, 2
  %polly.access.call1689.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.2
  %polly.access.call1689.load.2 = load double, double* %polly.access.call1689.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.2 = add nsw i64 %543, 2400
  %polly.access.Packed_MemRef_call1518692.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.2
  store double %polly.access.call1689.load.2, double* %polly.access.Packed_MemRef_call1518692.2, align 8
  %polly.access.add.call1688.3 = or i64 %545, 3
  %polly.access.call1689.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.3
  %polly.access.call1689.load.3 = load double, double* %polly.access.call1689.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.3 = add nsw i64 %543, 3600
  %polly.access.Packed_MemRef_call1518692.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.3
  store double %polly.access.call1689.load.3, double* %polly.access.Packed_MemRef_call1518692.3, align 8
  br label %polly.loop_exit695

polly.loop_exit695:                               ; preds = %polly.loop_header700.us.3, %middle.block1242, %polly.loop_header657.split, %polly.loop_header664.preheader, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663.not.not = icmp ult i64 %polly.indvar661, %451
  %indvars.iv.next1100 = add i64 %indvars.iv1099, 1
  %indvar.next1247 = add i64 %indvar1246, 1
  br i1 %polly.loop_cond663.not.not, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header693.preheader:                   ; preds = %polly.cond682.loopexit.us.3, %polly.then684.us.3
  %547 = mul i64 %544, 9600
  br i1 %polly.loop_guard6741150, label %polly.loop_header693.us.preheader, label %polly.loop_exit695

polly.loop_header693.us.preheader:                ; preds = %polly.loop_header693.preheader
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %544
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %543
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1347 = icmp ult i64 %521, 4
  br i1 %min.iters.check1347, label %polly.loop_header700.us.preheader, label %vector.memcheck1330

vector.memcheck1330:                              ; preds = %polly.loop_header693.us.preheader
  %bound01338 = icmp ult i8* %scevgep1332, %scevgep1337
  %bound11339 = icmp ult i8* %malloccall517, %scevgep1335
  %found.conflict1340 = and i1 %bound01338, %bound11339
  br i1 %found.conflict1340, label %polly.loop_header700.us.preheader, label %vector.ph1348

vector.ph1348:                                    ; preds = %vector.memcheck1330
  %n.vec1350 = and i64 %521, -4
  %broadcast.splatinsert1356 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1357 = shufflevector <4 x double> %broadcast.splatinsert1356, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1360 = shufflevector <4 x double> %broadcast.splatinsert1359, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1352, %vector.body1344 ]
  %548 = add nuw nsw i64 %index1351, %513
  %549 = getelementptr double, double* %Packed_MemRef_call1518, i64 %index1351
  %550 = bitcast double* %549 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %550, align 8, !alias.scope !129
  %551 = fmul fast <4 x double> %broadcast.splat1357, %wide.load1355
  %552 = add nuw nsw i64 %548, %polly.access.mul.Packed_MemRef_call2520711.us
  %553 = getelementptr double, double* %Packed_MemRef_call2520, i64 %552
  %554 = bitcast double* %553 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %554, align 8
  %555 = fmul fast <4 x double> %broadcast.splat1360, %wide.load1358
  %556 = shl i64 %548, 3
  %557 = add i64 %556, %547
  %558 = getelementptr i8, i8* %call, i64 %557
  %559 = bitcast i8* %558 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %559, align 8, !alias.scope !132, !noalias !134
  %560 = fadd fast <4 x double> %555, %551
  %561 = fmul fast <4 x double> %560, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %562 = fadd fast <4 x double> %561, %wide.load1361
  %563 = bitcast i8* %558 to <4 x double>*
  store <4 x double> %562, <4 x double>* %563, align 8, !alias.scope !132, !noalias !134
  %index.next1352 = add i64 %index1351, 4
  %564 = icmp eq i64 %index.next1352, %n.vec1350
  br i1 %564, label %middle.block1342, label %vector.body1344, !llvm.loop !135

middle.block1342:                                 ; preds = %vector.body1344
  %cmp.n1354 = icmp eq i64 %521, %n.vec1350
  br i1 %cmp.n1354, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %vector.memcheck1330, %polly.loop_header693.us.preheader, %middle.block1342
  %polly.indvar704.us.ph = phi i64 [ 0, %vector.memcheck1330 ], [ 0, %polly.loop_header693.us.preheader ], [ %n.vec1350, %middle.block1342 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %565 = add nuw nsw i64 %polly.indvar704.us, %513
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar704.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %565, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %566 = shl i64 %565, 3
  %567 = add i64 %566, %547
  %scevgep723.us = getelementptr i8, i8* %call, i64 %567
  %scevgep723724.us = bitcast i8* %scevgep723.us to double*
  %_p_scalar_725.us = load double, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_725.us
  store double %p_add42.i.us, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar704.us, %smin1104
  br i1 %exitcond1105.not, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us, !llvm.loop !136

polly.loop_exit702.loopexit.us:                   ; preds = %polly.loop_header700.us, %middle.block1342
  %polly.access.add.Packed_MemRef_call2520712.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.1, %544
  %polly.access.Packed_MemRef_call2520713.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call2520713.us.1, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.1 = add nsw i64 %543, 1200
  %polly.access.Packed_MemRef_call1518721.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.1
  %_p_scalar_722.us.1 = load double, double* %polly.access.Packed_MemRef_call1518721.us.1, align 8
  %min.iters.check1315 = icmp ult i64 %528, 4
  br i1 %min.iters.check1315, label %polly.loop_header700.us.1.preheader, label %vector.memcheck1297

vector.memcheck1297:                              ; preds = %polly.loop_exit702.loopexit.us
  %bound01306 = icmp ult i8* %scevgep1299, %scevgep1305
  %bound11307 = icmp ult i8* %scevgep1303, %scevgep1302
  %found.conflict1308 = and i1 %bound01306, %bound11307
  br i1 %found.conflict1308, label %polly.loop_header700.us.1.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %vector.memcheck1297
  %n.vec1318 = and i64 %528, -4
  %broadcast.splatinsert1324 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1325 = shufflevector <4 x double> %broadcast.splatinsert1324, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1327 = insertelement <4 x double> poison, double %_p_scalar_722.us.1, i32 0
  %broadcast.splat1328 = shufflevector <4 x double> %broadcast.splatinsert1327, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1312 ]
  %568 = add nuw nsw i64 %index1319, %513
  %569 = add nuw nsw i64 %index1319, 1200
  %570 = getelementptr double, double* %Packed_MemRef_call1518, i64 %569
  %571 = bitcast double* %570 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %571, align 8, !alias.scope !137
  %572 = fmul fast <4 x double> %broadcast.splat1325, %wide.load1323
  %573 = add nuw nsw i64 %568, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %574 = getelementptr double, double* %Packed_MemRef_call2520, i64 %573
  %575 = bitcast double* %574 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %575, align 8
  %576 = fmul fast <4 x double> %broadcast.splat1328, %wide.load1326
  %577 = shl i64 %568, 3
  %578 = add i64 %577, %547
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %580, align 8, !alias.scope !140, !noalias !142
  %581 = fadd fast <4 x double> %576, %572
  %582 = fmul fast <4 x double> %581, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %583 = fadd fast <4 x double> %582, %wide.load1329
  %584 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %583, <4 x double>* %584, align 8, !alias.scope !140, !noalias !142
  %index.next1320 = add i64 %index1319, 4
  %585 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %585, label %middle.block1310, label %vector.body1312, !llvm.loop !143

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1322 = icmp eq i64 %528, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1.preheader

polly.loop_header700.us.1.preheader:              ; preds = %vector.memcheck1297, %polly.loop_exit702.loopexit.us, %middle.block1310
  %polly.indvar704.us.1.ph = phi i64 [ 0, %vector.memcheck1297 ], [ 0, %polly.loop_exit702.loopexit.us ], [ %n.vec1318, %middle.block1310 ]
  br label %polly.loop_header700.us.1

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %586 = shl nsw i64 %polly.indvar855, 5
  %587 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1143.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %588 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %588, i64 -1168)
  %589 = add nsw i64 %smin, 1200
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -1168)
  %590 = shl nsw i64 %polly.indvar861, 5
  %591 = add nsw i64 %smin1136, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1142.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %592 = add nuw nsw i64 %polly.indvar867, %586
  %593 = trunc i64 %592 to i32
  %594 = mul nuw nsw i64 %592, 9600
  %min.iters.check = icmp eq i64 %589, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1172

vector.ph1172:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1179 = insertelement <4 x i64> poison, i64 %590, i32 0
  %broadcast.splat1180 = shufflevector <4 x i64> %broadcast.splatinsert1179, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %593, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1172
  %index1173 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1172 ], [ %vec.ind.next1178, %vector.body1171 ]
  %595 = add nuw nsw <4 x i64> %vec.ind1177, %broadcast.splat1180
  %596 = trunc <4 x i64> %595 to <4 x i32>
  %597 = mul <4 x i32> %broadcast.splat1182, %596
  %598 = add <4 x i32> %597, <i32 3, i32 3, i32 3, i32 3>
  %599 = urem <4 x i32> %598, <i32 1200, i32 1200, i32 1200, i32 1200>
  %600 = sitofp <4 x i32> %599 to <4 x double>
  %601 = fmul fast <4 x double> %600, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %602 = extractelement <4 x i64> %595, i32 0
  %603 = shl i64 %602, 3
  %604 = add nuw nsw i64 %603, %594
  %605 = getelementptr i8, i8* %call, i64 %604
  %606 = bitcast i8* %605 to <4 x double>*
  store <4 x double> %601, <4 x double>* %606, align 8, !alias.scope !144, !noalias !146
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %607 = icmp eq i64 %index.next1174, %589
  br i1 %607, label %polly.loop_exit872, label %vector.body1171, !llvm.loop !149

polly.loop_exit872:                               ; preds = %vector.body1171, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar867, %587
  br i1 %exitcond1141.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %608 = add nuw nsw i64 %polly.indvar873, %590
  %609 = trunc i64 %608 to i32
  %610 = mul i32 %609, %593
  %611 = add i32 %610, 3
  %612 = urem i32 %611, 1200
  %p_conv31.i = sitofp i32 %612 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %613 = shl i64 %608, 3
  %614 = add nuw nsw i64 %613, %594
  %scevgep876 = getelementptr i8, i8* %call, i64 %614
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar873, %591
  br i1 %exitcond1137.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !150

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %615 = shl nsw i64 %polly.indvar882, 5
  %616 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1133.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %617 = mul nsw i64 %polly.indvar888, -32
  %smin1186 = call i64 @llvm.smin.i64(i64 %617, i64 -968)
  %618 = add nsw i64 %smin1186, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %619 = shl nsw i64 %polly.indvar888, 5
  %620 = add nsw i64 %smin1126, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1132.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %621 = add nuw nsw i64 %polly.indvar894, %615
  %622 = trunc i64 %621 to i32
  %623 = mul nuw nsw i64 %621, 8000
  %min.iters.check1187 = icmp eq i64 %618, 0
  br i1 %min.iters.check1187, label %polly.loop_header897, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1197 = insertelement <4 x i64> poison, i64 %619, i32 0
  %broadcast.splat1198 = shufflevector <4 x i64> %broadcast.splatinsert1197, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %622, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1185 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1188 ], [ %vec.ind.next1196, %vector.body1185 ]
  %624 = add nuw nsw <4 x i64> %vec.ind1195, %broadcast.splat1198
  %625 = trunc <4 x i64> %624 to <4 x i32>
  %626 = mul <4 x i32> %broadcast.splat1200, %625
  %627 = add <4 x i32> %626, <i32 2, i32 2, i32 2, i32 2>
  %628 = urem <4 x i32> %627, <i32 1000, i32 1000, i32 1000, i32 1000>
  %629 = sitofp <4 x i32> %628 to <4 x double>
  %630 = fmul fast <4 x double> %629, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %631 = extractelement <4 x i64> %624, i32 0
  %632 = shl i64 %631, 3
  %633 = add nuw nsw i64 %632, %623
  %634 = getelementptr i8, i8* %call2, i64 %633
  %635 = bitcast i8* %634 to <4 x double>*
  store <4 x double> %630, <4 x double>* %635, align 8, !alias.scope !148, !noalias !151
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %636 = icmp eq i64 %index.next1192, %618
  br i1 %636, label %polly.loop_exit899, label %vector.body1185, !llvm.loop !152

polly.loop_exit899:                               ; preds = %vector.body1185, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar894, %616
  br i1 %exitcond1131.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %637 = add nuw nsw i64 %polly.indvar900, %619
  %638 = trunc i64 %637 to i32
  %639 = mul i32 %638, %622
  %640 = add i32 %639, 2
  %641 = urem i32 %640, 1000
  %p_conv10.i = sitofp i32 %641 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %642 = shl i64 %637, 3
  %643 = add nuw nsw i64 %642, %623
  %scevgep903 = getelementptr i8, i8* %call2, i64 %643
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar900, %620
  br i1 %exitcond1127.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !153

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -1168)
  %644 = shl nsw i64 %polly.indvar908, 5
  %645 = add nsw i64 %smin1120, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1123.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %646 = mul nsw i64 %polly.indvar914, -32
  %smin1204 = call i64 @llvm.smin.i64(i64 %646, i64 -968)
  %647 = add nsw i64 %smin1204, 1000
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -968)
  %648 = shl nsw i64 %polly.indvar914, 5
  %649 = add nsw i64 %smin1116, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1122.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %650 = add nuw nsw i64 %polly.indvar920, %644
  %651 = trunc i64 %650 to i32
  %652 = mul nuw nsw i64 %650, 8000
  %min.iters.check1205 = icmp eq i64 %647, 0
  br i1 %min.iters.check1205, label %polly.loop_header923, label %vector.ph1206

vector.ph1206:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1215 = insertelement <4 x i64> poison, i64 %648, i32 0
  %broadcast.splat1216 = shufflevector <4 x i64> %broadcast.splatinsert1215, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %651, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1203 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1206 ], [ %vec.ind.next1214, %vector.body1203 ]
  %653 = add nuw nsw <4 x i64> %vec.ind1213, %broadcast.splat1216
  %654 = trunc <4 x i64> %653 to <4 x i32>
  %655 = mul <4 x i32> %broadcast.splat1218, %654
  %656 = add <4 x i32> %655, <i32 1, i32 1, i32 1, i32 1>
  %657 = urem <4 x i32> %656, <i32 1200, i32 1200, i32 1200, i32 1200>
  %658 = sitofp <4 x i32> %657 to <4 x double>
  %659 = fmul fast <4 x double> %658, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %660 = extractelement <4 x i64> %653, i32 0
  %661 = shl i64 %660, 3
  %662 = add nuw nsw i64 %661, %652
  %663 = getelementptr i8, i8* %call1, i64 %662
  %664 = bitcast i8* %663 to <4 x double>*
  store <4 x double> %659, <4 x double>* %664, align 8, !alias.scope !147, !noalias !154
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %665 = icmp eq i64 %index.next1210, %647
  br i1 %665, label %polly.loop_exit925, label %vector.body1203, !llvm.loop !155

polly.loop_exit925:                               ; preds = %vector.body1203, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar920, %645
  br i1 %exitcond1121.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %666 = add nuw nsw i64 %polly.indvar926, %648
  %667 = trunc i64 %666 to i32
  %668 = mul i32 %667, %651
  %669 = add i32 %668, 1
  %670 = urem i32 %669, 1200
  %p_conv.i = sitofp i32 %670 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %671 = shl i64 %666, 3
  %672 = add nuw nsw i64 %671, %652
  %scevgep930 = getelementptr i8, i8* %call1, i64 %672
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar926, %649
  br i1 %exitcond1117.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !156

polly.loop_header249.us.1:                        ; preds = %polly.loop_header249.us.1.preheader, %polly.loop_header249.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header249.us.1 ], [ 0, %polly.loop_header249.us.1.preheader ]
  %673 = add nuw nsw i64 %polly.indvar253.us.1, %181
  %polly.access.mul.call1257.us.1 = mul nsw i64 %673, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %122, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %exitcond1052.1.not = icmp eq i64 %polly.indvar253.us.1, %smin1054
  br i1 %exitcond1052.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header249.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header249.us.1
  br i1 %.not, label %polly.loop_header249.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1262.us.1 = or i64 %213, 1
  %polly.access.call1263.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.1
  %polly.access.call1263.load.us.1 = load double, double* %polly.access.call1263.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.1 = add nsw i64 %211, 1200
  %polly.access.Packed_MemRef_call1266.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.1
  store double %polly.access.call1263.load.us.1, double* %polly.access.Packed_MemRef_call1266.us.1, align 8
  br label %polly.loop_header249.us.2.preheader

polly.loop_header249.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header249.us.2

polly.loop_header249.us.2:                        ; preds = %polly.loop_header249.us.2.preheader, %polly.loop_header249.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header249.us.2 ], [ 0, %polly.loop_header249.us.2.preheader ]
  %674 = add nuw nsw i64 %polly.indvar253.us.2, %181
  %polly.access.mul.call1257.us.2 = mul nsw i64 %674, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %123, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %exitcond1052.2.not = icmp eq i64 %polly.indvar253.us.2, %smin1054
  br i1 %exitcond1052.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header249.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header249.us.2
  br i1 %.not, label %polly.loop_header249.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1262.us.2 = or i64 %213, 2
  %polly.access.call1263.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.2
  %polly.access.call1263.load.us.2 = load double, double* %polly.access.call1263.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.2 = add nsw i64 %211, 2400
  %polly.access.Packed_MemRef_call1266.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.2
  store double %polly.access.call1263.load.us.2, double* %polly.access.Packed_MemRef_call1266.us.2, align 8
  br label %polly.loop_header249.us.3.preheader

polly.loop_header249.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header249.us.3

polly.loop_header249.us.3:                        ; preds = %polly.loop_header249.us.3.preheader, %polly.loop_header249.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header249.us.3 ], [ 0, %polly.loop_header249.us.3.preheader ]
  %675 = add nuw nsw i64 %polly.indvar253.us.3, %181
  %polly.access.mul.call1257.us.3 = mul nsw i64 %675, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %124, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %exitcond1052.3.not = icmp eq i64 %polly.indvar253.us.3, %smin1054
  br i1 %exitcond1052.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header249.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header249.us.3
  br i1 %.not, label %polly.loop_header267.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1262.us.3 = or i64 %213, 3
  %polly.access.call1263.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.3
  %polly.access.call1263.load.us.3 = load double, double* %polly.access.call1263.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.3 = add nsw i64 %211, 3600
  %polly.access.Packed_MemRef_call1266.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.3
  store double %polly.access.call1263.load.us.3, double* %polly.access.Packed_MemRef_call1266.us.3, align 8
  br label %polly.loop_header267.preheader

polly.loop_header274.us.1:                        ; preds = %polly.loop_header274.us.1.preheader, %polly.loop_header274.us.1
  %polly.indvar278.us.1 = phi i64 [ %polly.indvar_next279.us.1, %polly.loop_header274.us.1 ], [ %polly.indvar278.us.1.ph, %polly.loop_header274.us.1.preheader ]
  %676 = add nuw nsw i64 %polly.indvar278.us.1, %181
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1200
  %polly.access.Packed_MemRef_call1283.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call1283.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_288.us.1, %_p_scalar_284.us.1
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %676, %polly.access.mul.Packed_MemRef_call2285.us.1
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_296.us.1, %_p_scalar_292.us.1
  %677 = shl i64 %676, 3
  %678 = add i64 %677, %215
  %scevgep297.us.1 = getelementptr i8, i8* %call, i64 %678
  %scevgep297298.us.1 = bitcast i8* %scevgep297.us.1 to double*
  %_p_scalar_299.us.1 = load double, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_299.us.1
  store double %p_add42.i118.us.1, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1
  %exitcond1055.1.not = icmp eq i64 %polly.indvar278.us.1, %smin1054
  br i1 %exitcond1055.1.not, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1, !llvm.loop !157

polly.loop_exit276.loopexit.us.1:                 ; preds = %polly.loop_header274.us.1, %middle.block1602
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.2, %212
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %polly.access.add.Packed_MemRef_call1294.us.2 = add nsw i64 %211, 2400
  %polly.access.Packed_MemRef_call1295.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call1295.us.2, align 8
  %min.iters.check1574 = icmp ult i64 %203, 4
  br i1 %min.iters.check1574, label %polly.loop_header274.us.2.preheader, label %vector.memcheck1556

vector.memcheck1556:                              ; preds = %polly.loop_exit276.loopexit.us.1
  %bound01565 = icmp ult i8* %scevgep1558, %scevgep1564
  %bound11566 = icmp ult i8* %scevgep1562, %scevgep1561
  %found.conflict1567 = and i1 %bound01565, %bound11566
  br i1 %found.conflict1567, label %polly.loop_header274.us.2.preheader, label %vector.ph1575

vector.ph1575:                                    ; preds = %vector.memcheck1556
  %n.vec1577 = and i64 %203, -4
  %broadcast.splatinsert1583 = insertelement <4 x double> poison, double %_p_scalar_288.us.2, i32 0
  %broadcast.splat1584 = shufflevector <4 x double> %broadcast.splatinsert1583, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1586 = insertelement <4 x double> poison, double %_p_scalar_296.us.2, i32 0
  %broadcast.splat1587 = shufflevector <4 x double> %broadcast.splatinsert1586, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1575
  %index1578 = phi i64 [ 0, %vector.ph1575 ], [ %index.next1579, %vector.body1571 ]
  %679 = add nuw nsw i64 %index1578, %181
  %680 = add nuw nsw i64 %index1578, 2400
  %681 = getelementptr double, double* %Packed_MemRef_call1, i64 %680
  %682 = bitcast double* %681 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %682, align 8, !alias.scope !158
  %683 = fmul fast <4 x double> %broadcast.splat1584, %wide.load1582
  %684 = add nuw nsw i64 %679, %polly.access.mul.Packed_MemRef_call2285.us.2
  %685 = getelementptr double, double* %Packed_MemRef_call2, i64 %684
  %686 = bitcast double* %685 to <4 x double>*
  %wide.load1585 = load <4 x double>, <4 x double>* %686, align 8
  %687 = fmul fast <4 x double> %broadcast.splat1587, %wide.load1585
  %688 = shl i64 %679, 3
  %689 = add i64 %688, %215
  %690 = getelementptr i8, i8* %call, i64 %689
  %691 = bitcast i8* %690 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %691, align 8, !alias.scope !161, !noalias !163
  %692 = fadd fast <4 x double> %687, %683
  %693 = fmul fast <4 x double> %692, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %694 = fadd fast <4 x double> %693, %wide.load1588
  %695 = bitcast i8* %690 to <4 x double>*
  store <4 x double> %694, <4 x double>* %695, align 8, !alias.scope !161, !noalias !163
  %index.next1579 = add i64 %index1578, 4
  %696 = icmp eq i64 %index.next1579, %n.vec1577
  br i1 %696, label %middle.block1569, label %vector.body1571, !llvm.loop !164

middle.block1569:                                 ; preds = %vector.body1571
  %cmp.n1581 = icmp eq i64 %203, %n.vec1577
  br i1 %cmp.n1581, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2.preheader

polly.loop_header274.us.2.preheader:              ; preds = %vector.memcheck1556, %polly.loop_exit276.loopexit.us.1, %middle.block1569
  %polly.indvar278.us.2.ph = phi i64 [ 0, %vector.memcheck1556 ], [ 0, %polly.loop_exit276.loopexit.us.1 ], [ %n.vec1577, %middle.block1569 ]
  br label %polly.loop_header274.us.2

polly.loop_header274.us.2:                        ; preds = %polly.loop_header274.us.2.preheader, %polly.loop_header274.us.2
  %polly.indvar278.us.2 = phi i64 [ %polly.indvar_next279.us.2, %polly.loop_header274.us.2 ], [ %polly.indvar278.us.2.ph, %polly.loop_header274.us.2.preheader ]
  %697 = add nuw nsw i64 %polly.indvar278.us.2, %181
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 2400
  %polly.access.Packed_MemRef_call1283.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call1283.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_288.us.2, %_p_scalar_284.us.2
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %697, %polly.access.mul.Packed_MemRef_call2285.us.2
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_296.us.2, %_p_scalar_292.us.2
  %698 = shl i64 %697, 3
  %699 = add i64 %698, %215
  %scevgep297.us.2 = getelementptr i8, i8* %call, i64 %699
  %scevgep297298.us.2 = bitcast i8* %scevgep297.us.2 to double*
  %_p_scalar_299.us.2 = load double, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_299.us.2
  store double %p_add42.i118.us.2, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 1
  %exitcond1055.2.not = icmp eq i64 %polly.indvar278.us.2, %smin1054
  br i1 %exitcond1055.2.not, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2, !llvm.loop !165

polly.loop_exit276.loopexit.us.2:                 ; preds = %polly.loop_header274.us.2, %middle.block1569
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.3, %212
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %polly.access.add.Packed_MemRef_call1294.us.3 = add nsw i64 %211, 3600
  %polly.access.Packed_MemRef_call1295.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call1295.us.3, align 8
  %min.iters.check1541 = icmp ult i64 %210, 4
  br i1 %min.iters.check1541, label %polly.loop_header274.us.3.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %polly.loop_exit276.loopexit.us.2
  %n.vec1544 = and i64 %210, -4
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_288.us.3, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_296.us.3, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1546, %vector.body1536 ]
  %700 = add nuw nsw i64 %index1545, %181
  %701 = add nuw nsw i64 %index1545, 3600
  %702 = getelementptr double, double* %Packed_MemRef_call1, i64 %701
  %703 = bitcast double* %702 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %703, align 8
  %704 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %705 = add nuw nsw i64 %700, %polly.access.mul.Packed_MemRef_call2285.us.3
  %706 = getelementptr double, double* %Packed_MemRef_call2, i64 %705
  %707 = bitcast double* %706 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %707, align 8
  %708 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %709 = shl i64 %700, 3
  %710 = add i64 %709, %215
  %711 = getelementptr i8, i8* %call, i64 %710
  %712 = bitcast i8* %711 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %712, align 8, !alias.scope !65, !noalias !67
  %713 = fadd fast <4 x double> %708, %704
  %714 = fmul fast <4 x double> %713, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %715 = fadd fast <4 x double> %714, %wide.load1555
  %716 = bitcast i8* %711 to <4 x double>*
  store <4 x double> %715, <4 x double>* %716, align 8, !alias.scope !65, !noalias !67
  %index.next1546 = add i64 %index1545, 4
  %717 = icmp eq i64 %index.next1546, %n.vec1544
  br i1 %717, label %middle.block1534, label %vector.body1536, !llvm.loop !166

middle.block1534:                                 ; preds = %vector.body1536
  %cmp.n1548 = icmp eq i64 %210, %n.vec1544
  br i1 %cmp.n1548, label %polly.loop_exit269, label %polly.loop_header274.us.3.preheader

polly.loop_header274.us.3.preheader:              ; preds = %polly.loop_exit276.loopexit.us.2, %middle.block1534
  %polly.indvar278.us.3.ph = phi i64 [ 0, %polly.loop_exit276.loopexit.us.2 ], [ %n.vec1544, %middle.block1534 ]
  br label %polly.loop_header274.us.3

polly.loop_header274.us.3:                        ; preds = %polly.loop_header274.us.3.preheader, %polly.loop_header274.us.3
  %polly.indvar278.us.3 = phi i64 [ %polly.indvar_next279.us.3, %polly.loop_header274.us.3 ], [ %polly.indvar278.us.3.ph, %polly.loop_header274.us.3.preheader ]
  %718 = add nuw nsw i64 %polly.indvar278.us.3, %181
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 3600
  %polly.access.Packed_MemRef_call1283.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call1283.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_288.us.3, %_p_scalar_284.us.3
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %718, %polly.access.mul.Packed_MemRef_call2285.us.3
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_296.us.3, %_p_scalar_292.us.3
  %719 = shl i64 %718, 3
  %720 = add i64 %719, %215
  %scevgep297.us.3 = getelementptr i8, i8* %call, i64 %720
  %scevgep297298.us.3 = bitcast i8* %scevgep297.us.3 to double*
  %_p_scalar_299.us.3 = load double, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_299.us.3
  store double %p_add42.i118.us.3, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 1
  %exitcond1055.3.not = icmp eq i64 %polly.indvar278.us.3, %smin1054
  br i1 %exitcond1055.3.not, label %polly.loop_exit269, label %polly.loop_header274.us.3, !llvm.loop !167

polly.loop_header458.us.1:                        ; preds = %polly.loop_header458.us.1.preheader, %polly.loop_header458.us.1
  %polly.indvar462.us.1 = phi i64 [ %polly.indvar_next463.us.1, %polly.loop_header458.us.1 ], [ 0, %polly.loop_header458.us.1.preheader ]
  %721 = add nuw nsw i64 %polly.indvar462.us.1, %347
  %polly.access.mul.call1466.us.1 = mul nsw i64 %721, 1000
  %polly.access.add.call1467.us.1 = add nuw nsw i64 %288, %polly.access.mul.call1466.us.1
  %polly.access.call1468.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.1
  %polly.access.call1468.load.us.1 = load double, double* %polly.access.call1468.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1200
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1468.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.indvar_next463.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1
  %exitcond1077.1.not = icmp eq i64 %polly.indvar462.us.1, %smin1079
  br i1 %exitcond1077.1.not, label %polly.cond469.loopexit.us.1, label %polly.loop_header458.us.1

polly.cond469.loopexit.us.1:                      ; preds = %polly.loop_header458.us.1
  br i1 %.not933, label %polly.loop_header458.us.2.preheader, label %polly.then471.us.1

polly.then471.us.1:                               ; preds = %polly.cond469.loopexit.us.1
  %polly.access.add.call1475.us.1 = or i64 %379, 1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.1 = add nsw i64 %377, 1200
  %polly.access.Packed_MemRef_call1305479.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1305479.us.1, align 8
  br label %polly.loop_header458.us.2.preheader

polly.loop_header458.us.2.preheader:              ; preds = %polly.then471.us.1, %polly.cond469.loopexit.us.1
  br label %polly.loop_header458.us.2

polly.loop_header458.us.2:                        ; preds = %polly.loop_header458.us.2.preheader, %polly.loop_header458.us.2
  %polly.indvar462.us.2 = phi i64 [ %polly.indvar_next463.us.2, %polly.loop_header458.us.2 ], [ 0, %polly.loop_header458.us.2.preheader ]
  %722 = add nuw nsw i64 %polly.indvar462.us.2, %347
  %polly.access.mul.call1466.us.2 = mul nsw i64 %722, 1000
  %polly.access.add.call1467.us.2 = add nuw nsw i64 %289, %polly.access.mul.call1466.us.2
  %polly.access.call1468.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.2
  %polly.access.call1468.load.us.2 = load double, double* %polly.access.call1468.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 2400
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1468.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.indvar_next463.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 1
  %exitcond1077.2.not = icmp eq i64 %polly.indvar462.us.2, %smin1079
  br i1 %exitcond1077.2.not, label %polly.cond469.loopexit.us.2, label %polly.loop_header458.us.2

polly.cond469.loopexit.us.2:                      ; preds = %polly.loop_header458.us.2
  br i1 %.not933, label %polly.loop_header458.us.3.preheader, label %polly.then471.us.2

polly.then471.us.2:                               ; preds = %polly.cond469.loopexit.us.2
  %polly.access.add.call1475.us.2 = or i64 %379, 2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.2 = add nsw i64 %377, 2400
  %polly.access.Packed_MemRef_call1305479.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1305479.us.2, align 8
  br label %polly.loop_header458.us.3.preheader

polly.loop_header458.us.3.preheader:              ; preds = %polly.then471.us.2, %polly.cond469.loopexit.us.2
  br label %polly.loop_header458.us.3

polly.loop_header458.us.3:                        ; preds = %polly.loop_header458.us.3.preheader, %polly.loop_header458.us.3
  %polly.indvar462.us.3 = phi i64 [ %polly.indvar_next463.us.3, %polly.loop_header458.us.3 ], [ 0, %polly.loop_header458.us.3.preheader ]
  %723 = add nuw nsw i64 %polly.indvar462.us.3, %347
  %polly.access.mul.call1466.us.3 = mul nsw i64 %723, 1000
  %polly.access.add.call1467.us.3 = add nuw nsw i64 %290, %polly.access.mul.call1466.us.3
  %polly.access.call1468.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.3
  %polly.access.call1468.load.us.3 = load double, double* %polly.access.call1468.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 3600
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1468.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.indvar_next463.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 1
  %exitcond1077.3.not = icmp eq i64 %polly.indvar462.us.3, %smin1079
  br i1 %exitcond1077.3.not, label %polly.cond469.loopexit.us.3, label %polly.loop_header458.us.3

polly.cond469.loopexit.us.3:                      ; preds = %polly.loop_header458.us.3
  br i1 %.not933, label %polly.loop_header480.preheader, label %polly.then471.us.3

polly.then471.us.3:                               ; preds = %polly.cond469.loopexit.us.3
  %polly.access.add.call1475.us.3 = or i64 %379, 3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.3 = add nsw i64 %377, 3600
  %polly.access.Packed_MemRef_call1305479.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1305479.us.3, align 8
  br label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_header487.us.1.preheader, %polly.loop_header487.us.1
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_header487.us.1 ], [ %polly.indvar491.us.1.ph, %polly.loop_header487.us.1.preheader ]
  %724 = add nuw nsw i64 %polly.indvar491.us.1, %347
  %polly.access.add.Packed_MemRef_call1305495.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1200
  %polly.access.Packed_MemRef_call1305496.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call1305496.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %polly.access.add.Packed_MemRef_call2307503.us.1 = add nuw nsw i64 %724, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %polly.access.Packed_MemRef_call2307504.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call2307504.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %725 = shl i64 %724, 3
  %726 = add i64 %725, %381
  %scevgep510.us.1 = getelementptr i8, i8* %call, i64 %726
  %scevgep510511.us.1 = bitcast i8* %scevgep510.us.1 to double*
  %_p_scalar_512.us.1 = load double, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_512.us.1
  store double %p_add42.i79.us.1, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %exitcond1080.1.not = icmp eq i64 %polly.indvar491.us.1, %smin1079
  br i1 %exitcond1080.1.not, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1, !llvm.loop !168

polly.loop_exit489.loopexit.us.1:                 ; preds = %polly.loop_header487.us.1, %middle.block1456
  %polly.access.add.Packed_MemRef_call2307499.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.2, %378
  %polly.access.Packed_MemRef_call2307500.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2307500.us.2, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.2 = add nsw i64 %377, 2400
  %polly.access.Packed_MemRef_call1305508.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call1305508.us.2, align 8
  %min.iters.check1428 = icmp ult i64 %369, 4
  br i1 %min.iters.check1428, label %polly.loop_header487.us.2.preheader, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %polly.loop_exit489.loopexit.us.1
  %bound01419 = icmp ult i8* %scevgep1412, %scevgep1418
  %bound11420 = icmp ult i8* %scevgep1416, %scevgep1415
  %found.conflict1421 = and i1 %bound01419, %bound11420
  br i1 %found.conflict1421, label %polly.loop_header487.us.2.preheader, label %vector.ph1429

vector.ph1429:                                    ; preds = %vector.memcheck1410
  %n.vec1431 = and i64 %369, -4
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1425

vector.body1425:                                  ; preds = %vector.body1425, %vector.ph1429
  %index1432 = phi i64 [ 0, %vector.ph1429 ], [ %index.next1433, %vector.body1425 ]
  %727 = add nuw nsw i64 %index1432, %347
  %728 = add nuw nsw i64 %index1432, 2400
  %729 = getelementptr double, double* %Packed_MemRef_call1305, i64 %728
  %730 = bitcast double* %729 to <4 x double>*
  %wide.load1436 = load <4 x double>, <4 x double>* %730, align 8, !alias.scope !169
  %731 = fmul fast <4 x double> %broadcast.splat1438, %wide.load1436
  %732 = add nuw nsw i64 %727, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %733 = getelementptr double, double* %Packed_MemRef_call2307, i64 %732
  %734 = bitcast double* %733 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %734, align 8
  %735 = fmul fast <4 x double> %broadcast.splat1441, %wide.load1439
  %736 = shl i64 %727, 3
  %737 = add i64 %736, %381
  %738 = getelementptr i8, i8* %call, i64 %737
  %739 = bitcast i8* %738 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %739, align 8, !alias.scope !172, !noalias !174
  %740 = fadd fast <4 x double> %735, %731
  %741 = fmul fast <4 x double> %740, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %742 = fadd fast <4 x double> %741, %wide.load1442
  %743 = bitcast i8* %738 to <4 x double>*
  store <4 x double> %742, <4 x double>* %743, align 8, !alias.scope !172, !noalias !174
  %index.next1433 = add i64 %index1432, 4
  %744 = icmp eq i64 %index.next1433, %n.vec1431
  br i1 %744, label %middle.block1423, label %vector.body1425, !llvm.loop !175

middle.block1423:                                 ; preds = %vector.body1425
  %cmp.n1435 = icmp eq i64 %369, %n.vec1431
  br i1 %cmp.n1435, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2.preheader

polly.loop_header487.us.2.preheader:              ; preds = %vector.memcheck1410, %polly.loop_exit489.loopexit.us.1, %middle.block1423
  %polly.indvar491.us.2.ph = phi i64 [ 0, %vector.memcheck1410 ], [ 0, %polly.loop_exit489.loopexit.us.1 ], [ %n.vec1431, %middle.block1423 ]
  br label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_header487.us.2.preheader, %polly.loop_header487.us.2
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_header487.us.2 ], [ %polly.indvar491.us.2.ph, %polly.loop_header487.us.2.preheader ]
  %745 = add nuw nsw i64 %polly.indvar491.us.2, %347
  %polly.access.add.Packed_MemRef_call1305495.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 2400
  %polly.access.Packed_MemRef_call1305496.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call1305496.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %polly.access.add.Packed_MemRef_call2307503.us.2 = add nuw nsw i64 %745, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %polly.access.Packed_MemRef_call2307504.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call2307504.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %746 = shl i64 %745, 3
  %747 = add i64 %746, %381
  %scevgep510.us.2 = getelementptr i8, i8* %call, i64 %747
  %scevgep510511.us.2 = bitcast i8* %scevgep510.us.2 to double*
  %_p_scalar_512.us.2 = load double, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_512.us.2
  store double %p_add42.i79.us.2, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %exitcond1080.2.not = icmp eq i64 %polly.indvar491.us.2, %smin1079
  br i1 %exitcond1080.2.not, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2, !llvm.loop !176

polly.loop_exit489.loopexit.us.2:                 ; preds = %polly.loop_header487.us.2, %middle.block1423
  %polly.access.add.Packed_MemRef_call2307499.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.3, %378
  %polly.access.Packed_MemRef_call2307500.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2307500.us.3, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.3 = add nsw i64 %377, 3600
  %polly.access.Packed_MemRef_call1305508.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call1305508.us.3, align 8
  %min.iters.check1395 = icmp ult i64 %376, 4
  br i1 %min.iters.check1395, label %polly.loop_header487.us.3.preheader, label %vector.ph1396

vector.ph1396:                                    ; preds = %polly.loop_exit489.loopexit.us.2
  %n.vec1398 = and i64 %376, -4
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1400, %vector.body1390 ]
  %748 = add nuw nsw i64 %index1399, %347
  %749 = add nuw nsw i64 %index1399, 3600
  %750 = getelementptr double, double* %Packed_MemRef_call1305, i64 %749
  %751 = bitcast double* %750 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %751, align 8
  %752 = fmul fast <4 x double> %broadcast.splat1405, %wide.load1403
  %753 = add nuw nsw i64 %748, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %754 = getelementptr double, double* %Packed_MemRef_call2307, i64 %753
  %755 = bitcast double* %754 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %755, align 8
  %756 = fmul fast <4 x double> %broadcast.splat1408, %wide.load1406
  %757 = shl i64 %748, 3
  %758 = add i64 %757, %381
  %759 = getelementptr i8, i8* %call, i64 %758
  %760 = bitcast i8* %759 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %760, align 8, !alias.scope !92, !noalias !94
  %761 = fadd fast <4 x double> %756, %752
  %762 = fmul fast <4 x double> %761, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %763 = fadd fast <4 x double> %762, %wide.load1409
  %764 = bitcast i8* %759 to <4 x double>*
  store <4 x double> %763, <4 x double>* %764, align 8, !alias.scope !92, !noalias !94
  %index.next1400 = add i64 %index1399, 4
  %765 = icmp eq i64 %index.next1400, %n.vec1398
  br i1 %765, label %middle.block1388, label %vector.body1390, !llvm.loop !177

middle.block1388:                                 ; preds = %vector.body1390
  %cmp.n1402 = icmp eq i64 %376, %n.vec1398
  br i1 %cmp.n1402, label %polly.loop_exit482, label %polly.loop_header487.us.3.preheader

polly.loop_header487.us.3.preheader:              ; preds = %polly.loop_exit489.loopexit.us.2, %middle.block1388
  %polly.indvar491.us.3.ph = phi i64 [ 0, %polly.loop_exit489.loopexit.us.2 ], [ %n.vec1398, %middle.block1388 ]
  br label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_header487.us.3.preheader, %polly.loop_header487.us.3
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_header487.us.3 ], [ %polly.indvar491.us.3.ph, %polly.loop_header487.us.3.preheader ]
  %766 = add nuw nsw i64 %polly.indvar491.us.3, %347
  %polly.access.add.Packed_MemRef_call1305495.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 3600
  %polly.access.Packed_MemRef_call1305496.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call1305496.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %polly.access.add.Packed_MemRef_call2307503.us.3 = add nuw nsw i64 %766, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %polly.access.Packed_MemRef_call2307504.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call2307504.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %767 = shl i64 %766, 3
  %768 = add i64 %767, %381
  %scevgep510.us.3 = getelementptr i8, i8* %call, i64 %768
  %scevgep510511.us.3 = bitcast i8* %scevgep510.us.3 to double*
  %_p_scalar_512.us.3 = load double, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_512.us.3
  store double %p_add42.i79.us.3, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %exitcond1080.3.not = icmp eq i64 %polly.indvar491.us.3, %smin1079
  br i1 %exitcond1080.3.not, label %polly.loop_exit482, label %polly.loop_header487.us.3, !llvm.loop !178

polly.loop_header671.us.1:                        ; preds = %polly.loop_header671.us.1.preheader, %polly.loop_header671.us.1
  %polly.indvar675.us.1 = phi i64 [ %polly.indvar_next676.us.1, %polly.loop_header671.us.1 ], [ 0, %polly.loop_header671.us.1.preheader ]
  %769 = add nuw nsw i64 %polly.indvar675.us.1, %513
  %polly.access.mul.call1679.us.1 = mul nsw i64 %769, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %454, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1200
  %polly.access.Packed_MemRef_call1518.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1518.us.1, align 8
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1
  %exitcond1102.1.not = icmp eq i64 %polly.indvar675.us.1, %smin1104
  br i1 %exitcond1102.1.not, label %polly.cond682.loopexit.us.1, label %polly.loop_header671.us.1

polly.cond682.loopexit.us.1:                      ; preds = %polly.loop_header671.us.1
  br i1 %.not935, label %polly.loop_header671.us.2.preheader, label %polly.then684.us.1

polly.then684.us.1:                               ; preds = %polly.cond682.loopexit.us.1
  %polly.access.add.call1688.us.1 = or i64 %545, 1
  %polly.access.call1689.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.1
  %polly.access.call1689.load.us.1 = load double, double* %polly.access.call1689.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.1 = add nsw i64 %543, 1200
  %polly.access.Packed_MemRef_call1518692.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.1
  store double %polly.access.call1689.load.us.1, double* %polly.access.Packed_MemRef_call1518692.us.1, align 8
  br label %polly.loop_header671.us.2.preheader

polly.loop_header671.us.2.preheader:              ; preds = %polly.then684.us.1, %polly.cond682.loopexit.us.1
  br label %polly.loop_header671.us.2

polly.loop_header671.us.2:                        ; preds = %polly.loop_header671.us.2.preheader, %polly.loop_header671.us.2
  %polly.indvar675.us.2 = phi i64 [ %polly.indvar_next676.us.2, %polly.loop_header671.us.2 ], [ 0, %polly.loop_header671.us.2.preheader ]
  %770 = add nuw nsw i64 %polly.indvar675.us.2, %513
  %polly.access.mul.call1679.us.2 = mul nsw i64 %770, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %455, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 2400
  %polly.access.Packed_MemRef_call1518.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1518.us.2, align 8
  %polly.indvar_next676.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 1
  %exitcond1102.2.not = icmp eq i64 %polly.indvar675.us.2, %smin1104
  br i1 %exitcond1102.2.not, label %polly.cond682.loopexit.us.2, label %polly.loop_header671.us.2

polly.cond682.loopexit.us.2:                      ; preds = %polly.loop_header671.us.2
  br i1 %.not935, label %polly.loop_header671.us.3.preheader, label %polly.then684.us.2

polly.then684.us.2:                               ; preds = %polly.cond682.loopexit.us.2
  %polly.access.add.call1688.us.2 = or i64 %545, 2
  %polly.access.call1689.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.2
  %polly.access.call1689.load.us.2 = load double, double* %polly.access.call1689.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.2 = add nsw i64 %543, 2400
  %polly.access.Packed_MemRef_call1518692.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.2
  store double %polly.access.call1689.load.us.2, double* %polly.access.Packed_MemRef_call1518692.us.2, align 8
  br label %polly.loop_header671.us.3.preheader

polly.loop_header671.us.3.preheader:              ; preds = %polly.then684.us.2, %polly.cond682.loopexit.us.2
  br label %polly.loop_header671.us.3

polly.loop_header671.us.3:                        ; preds = %polly.loop_header671.us.3.preheader, %polly.loop_header671.us.3
  %polly.indvar675.us.3 = phi i64 [ %polly.indvar_next676.us.3, %polly.loop_header671.us.3 ], [ 0, %polly.loop_header671.us.3.preheader ]
  %771 = add nuw nsw i64 %polly.indvar675.us.3, %513
  %polly.access.mul.call1679.us.3 = mul nsw i64 %771, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %456, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 3600
  %polly.access.Packed_MemRef_call1518.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1518.us.3, align 8
  %polly.indvar_next676.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 1
  %exitcond1102.3.not = icmp eq i64 %polly.indvar675.us.3, %smin1104
  br i1 %exitcond1102.3.not, label %polly.cond682.loopexit.us.3, label %polly.loop_header671.us.3

polly.cond682.loopexit.us.3:                      ; preds = %polly.loop_header671.us.3
  br i1 %.not935, label %polly.loop_header693.preheader, label %polly.then684.us.3

polly.then684.us.3:                               ; preds = %polly.cond682.loopexit.us.3
  %polly.access.add.call1688.us.3 = or i64 %545, 3
  %polly.access.call1689.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.3
  %polly.access.call1689.load.us.3 = load double, double* %polly.access.call1689.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.3 = add nsw i64 %543, 3600
  %polly.access.Packed_MemRef_call1518692.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.3
  store double %polly.access.call1689.load.us.3, double* %polly.access.Packed_MemRef_call1518692.us.3, align 8
  br label %polly.loop_header693.preheader

polly.loop_header700.us.1:                        ; preds = %polly.loop_header700.us.1.preheader, %polly.loop_header700.us.1
  %polly.indvar704.us.1 = phi i64 [ %polly.indvar_next705.us.1, %polly.loop_header700.us.1 ], [ %polly.indvar704.us.1.ph, %polly.loop_header700.us.1.preheader ]
  %772 = add nuw nsw i64 %polly.indvar704.us.1, %513
  %polly.access.add.Packed_MemRef_call1518708.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1200
  %polly.access.Packed_MemRef_call1518709.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1518709.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %polly.access.add.Packed_MemRef_call2520716.us.1 = add nuw nsw i64 %772, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %polly.access.Packed_MemRef_call2520717.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.1
  %_p_scalar_718.us.1 = load double, double* %polly.access.Packed_MemRef_call2520717.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_722.us.1, %_p_scalar_718.us.1
  %773 = shl i64 %772, 3
  %774 = add i64 %773, %547
  %scevgep723.us.1 = getelementptr i8, i8* %call, i64 %774
  %scevgep723724.us.1 = bitcast i8* %scevgep723.us.1 to double*
  %_p_scalar_725.us.1 = load double, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_725.us.1
  store double %p_add42.i.us.1, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1
  %exitcond1105.1.not = icmp eq i64 %polly.indvar704.us.1, %smin1104
  br i1 %exitcond1105.1.not, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1, !llvm.loop !179

polly.loop_exit702.loopexit.us.1:                 ; preds = %polly.loop_header700.us.1, %middle.block1310
  %polly.access.add.Packed_MemRef_call2520712.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.2, %544
  %polly.access.Packed_MemRef_call2520713.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call2520713.us.2, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.2 = add nsw i64 %543, 2400
  %polly.access.Packed_MemRef_call1518721.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.2
  %_p_scalar_722.us.2 = load double, double* %polly.access.Packed_MemRef_call1518721.us.2, align 8
  %min.iters.check1282 = icmp ult i64 %535, 4
  br i1 %min.iters.check1282, label %polly.loop_header700.us.2.preheader, label %vector.memcheck1264

vector.memcheck1264:                              ; preds = %polly.loop_exit702.loopexit.us.1
  %bound01273 = icmp ult i8* %scevgep1266, %scevgep1272
  %bound11274 = icmp ult i8* %scevgep1270, %scevgep1269
  %found.conflict1275 = and i1 %bound01273, %bound11274
  br i1 %found.conflict1275, label %polly.loop_header700.us.2.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %vector.memcheck1264
  %n.vec1285 = and i64 %535, -4
  %broadcast.splatinsert1291 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1292 = shufflevector <4 x double> %broadcast.splatinsert1291, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x double> poison, double %_p_scalar_722.us.2, i32 0
  %broadcast.splat1295 = shufflevector <4 x double> %broadcast.splatinsert1294, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1279 ]
  %775 = add nuw nsw i64 %index1286, %513
  %776 = add nuw nsw i64 %index1286, 2400
  %777 = getelementptr double, double* %Packed_MemRef_call1518, i64 %776
  %778 = bitcast double* %777 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %778, align 8, !alias.scope !180
  %779 = fmul fast <4 x double> %broadcast.splat1292, %wide.load1290
  %780 = add nuw nsw i64 %775, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %781 = getelementptr double, double* %Packed_MemRef_call2520, i64 %780
  %782 = bitcast double* %781 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %782, align 8
  %783 = fmul fast <4 x double> %broadcast.splat1295, %wide.load1293
  %784 = shl i64 %775, 3
  %785 = add i64 %784, %547
  %786 = getelementptr i8, i8* %call, i64 %785
  %787 = bitcast i8* %786 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %787, align 8, !alias.scope !183, !noalias !185
  %788 = fadd fast <4 x double> %783, %779
  %789 = fmul fast <4 x double> %788, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %790 = fadd fast <4 x double> %789, %wide.load1296
  %791 = bitcast i8* %786 to <4 x double>*
  store <4 x double> %790, <4 x double>* %791, align 8, !alias.scope !183, !noalias !185
  %index.next1287 = add i64 %index1286, 4
  %792 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %792, label %middle.block1277, label %vector.body1279, !llvm.loop !186

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1289 = icmp eq i64 %535, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2.preheader

polly.loop_header700.us.2.preheader:              ; preds = %vector.memcheck1264, %polly.loop_exit702.loopexit.us.1, %middle.block1277
  %polly.indvar704.us.2.ph = phi i64 [ 0, %vector.memcheck1264 ], [ 0, %polly.loop_exit702.loopexit.us.1 ], [ %n.vec1285, %middle.block1277 ]
  br label %polly.loop_header700.us.2

polly.loop_header700.us.2:                        ; preds = %polly.loop_header700.us.2.preheader, %polly.loop_header700.us.2
  %polly.indvar704.us.2 = phi i64 [ %polly.indvar_next705.us.2, %polly.loop_header700.us.2 ], [ %polly.indvar704.us.2.ph, %polly.loop_header700.us.2.preheader ]
  %793 = add nuw nsw i64 %polly.indvar704.us.2, %513
  %polly.access.add.Packed_MemRef_call1518708.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 2400
  %polly.access.Packed_MemRef_call1518709.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1518709.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %polly.access.add.Packed_MemRef_call2520716.us.2 = add nuw nsw i64 %793, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %polly.access.Packed_MemRef_call2520717.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.2
  %_p_scalar_718.us.2 = load double, double* %polly.access.Packed_MemRef_call2520717.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_722.us.2, %_p_scalar_718.us.2
  %794 = shl i64 %793, 3
  %795 = add i64 %794, %547
  %scevgep723.us.2 = getelementptr i8, i8* %call, i64 %795
  %scevgep723724.us.2 = bitcast i8* %scevgep723.us.2 to double*
  %_p_scalar_725.us.2 = load double, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_725.us.2
  store double %p_add42.i.us.2, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 1
  %exitcond1105.2.not = icmp eq i64 %polly.indvar704.us.2, %smin1104
  br i1 %exitcond1105.2.not, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2, !llvm.loop !187

polly.loop_exit702.loopexit.us.2:                 ; preds = %polly.loop_header700.us.2, %middle.block1277
  %polly.access.add.Packed_MemRef_call2520712.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.3, %544
  %polly.access.Packed_MemRef_call2520713.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call2520713.us.3, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.3 = add nsw i64 %543, 3600
  %polly.access.Packed_MemRef_call1518721.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.3
  %_p_scalar_722.us.3 = load double, double* %polly.access.Packed_MemRef_call1518721.us.3, align 8
  %min.iters.check1249 = icmp ult i64 %542, 4
  br i1 %min.iters.check1249, label %polly.loop_header700.us.3.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_exit702.loopexit.us.2
  %n.vec1252 = and i64 %542, -4
  %broadcast.splatinsert1258 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1259 = shufflevector <4 x double> %broadcast.splatinsert1258, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1261 = insertelement <4 x double> poison, double %_p_scalar_722.us.3, i32 0
  %broadcast.splat1262 = shufflevector <4 x double> %broadcast.splatinsert1261, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1244 ]
  %796 = add nuw nsw i64 %index1253, %513
  %797 = add nuw nsw i64 %index1253, 3600
  %798 = getelementptr double, double* %Packed_MemRef_call1518, i64 %797
  %799 = bitcast double* %798 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %799, align 8
  %800 = fmul fast <4 x double> %broadcast.splat1259, %wide.load1257
  %801 = add nuw nsw i64 %796, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %802 = getelementptr double, double* %Packed_MemRef_call2520, i64 %801
  %803 = bitcast double* %802 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %803, align 8
  %804 = fmul fast <4 x double> %broadcast.splat1262, %wide.load1260
  %805 = shl i64 %796, 3
  %806 = add i64 %805, %547
  %807 = getelementptr i8, i8* %call, i64 %806
  %808 = bitcast i8* %807 to <4 x double>*
  %wide.load1263 = load <4 x double>, <4 x double>* %808, align 8, !alias.scope !118, !noalias !120
  %809 = fadd fast <4 x double> %804, %800
  %810 = fmul fast <4 x double> %809, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %811 = fadd fast <4 x double> %810, %wide.load1263
  %812 = bitcast i8* %807 to <4 x double>*
  store <4 x double> %811, <4 x double>* %812, align 8, !alias.scope !118, !noalias !120
  %index.next1254 = add i64 %index1253, 4
  %813 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %813, label %middle.block1242, label %vector.body1244, !llvm.loop !188

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1256 = icmp eq i64 %542, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit695, label %polly.loop_header700.us.3.preheader

polly.loop_header700.us.3.preheader:              ; preds = %polly.loop_exit702.loopexit.us.2, %middle.block1242
  %polly.indvar704.us.3.ph = phi i64 [ 0, %polly.loop_exit702.loopexit.us.2 ], [ %n.vec1252, %middle.block1242 ]
  br label %polly.loop_header700.us.3

polly.loop_header700.us.3:                        ; preds = %polly.loop_header700.us.3.preheader, %polly.loop_header700.us.3
  %polly.indvar704.us.3 = phi i64 [ %polly.indvar_next705.us.3, %polly.loop_header700.us.3 ], [ %polly.indvar704.us.3.ph, %polly.loop_header700.us.3.preheader ]
  %814 = add nuw nsw i64 %polly.indvar704.us.3, %513
  %polly.access.add.Packed_MemRef_call1518708.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 3600
  %polly.access.Packed_MemRef_call1518709.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1518709.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %polly.access.add.Packed_MemRef_call2520716.us.3 = add nuw nsw i64 %814, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %polly.access.Packed_MemRef_call2520717.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.3
  %_p_scalar_718.us.3 = load double, double* %polly.access.Packed_MemRef_call2520717.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_722.us.3, %_p_scalar_718.us.3
  %815 = shl i64 %814, 3
  %816 = add i64 %815, %547
  %scevgep723.us.3 = getelementptr i8, i8* %call, i64 %816
  %scevgep723724.us.3 = bitcast i8* %scevgep723.us.3 to double*
  %_p_scalar_725.us.3 = load double, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_725.us.3
  store double %p_add42.i.us.3, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 1
  %exitcond1105.3.not = icmp eq i64 %polly.indvar704.us.3, %smin1104
  br i1 %exitcond1105.3.not, label %polly.loop_exit695, label %polly.loop_header700.us.3, !llvm.loop !189
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
!49 = !{!"llvm.loop.tile.size", i32 32}
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
