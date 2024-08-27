; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2064.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2064.c"
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
  %97 = mul nsw i64 %polly.indvar219, -64
  %98 = shl nuw nsw i64 %polly.indvar219, 6
  %99 = shl nuw nsw i64 %polly.indvar219, 6
  %100 = mul nsw i64 %polly.indvar219, -64
  %101 = mul nsw i64 %polly.indvar219, -64
  %102 = shl nuw nsw i64 %polly.indvar219, 6
  %103 = shl nuw nsw i64 %polly.indvar219, 6
  %104 = mul nsw i64 %polly.indvar219, -64
  %105 = mul nsw i64 %polly.indvar219, -64
  %106 = shl nuw nsw i64 %polly.indvar219, 6
  %107 = shl nuw nsw i64 %polly.indvar219, 6
  %108 = mul nsw i64 %polly.indvar219, -64
  %109 = mul nsw i64 %polly.indvar219, -64
  %110 = shl nuw nsw i64 %polly.indvar219, 6
  %111 = add nuw nsw i64 %polly.indvar219, 6
  %pexp.p_div_q = udiv i64 %111, 5
  %112 = sub nsw i64 %polly.indvar219, %pexp.p_div_q
  %113 = add nsw i64 %112, 1
  %.inv = icmp slt i64 %112, 14
  %114 = select i1 %.inv, i64 %113, i64 14
  %polly.loop_guard = icmp sgt i64 %114, -1
  %115 = mul nsw i64 %polly.indvar219, -64
  %116 = icmp slt i64 %115, -1136
  %117 = select i1 %116, i64 %115, i64 -1136
  %118 = add nsw i64 %117, 1199
  %119 = shl nsw i64 %polly.indvar219, 6
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1047 = add nuw nsw i64 %indvars.iv1046, 64
  %exitcond1059.not = icmp eq i64 %polly.indvar_next220, 19
  br i1 %exitcond1059.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %120 = shl nsw i64 %polly.indvar225, 2
  %121 = or i64 %120, 1
  %122 = or i64 %120, 2
  %123 = or i64 %120, 3
  %polly.access.mul.Packed_MemRef_call2285.us = mul nsw i64 %polly.indvar225, 4800
  %124 = or i64 %120, 1
  %polly.access.mul.Packed_MemRef_call2285.us.1 = mul nuw nsw i64 %124, 1200
  %125 = or i64 %120, 2
  %polly.access.mul.Packed_MemRef_call2285.us.2 = mul nuw nsw i64 %125, 1200
  %126 = or i64 %120, 3
  %polly.access.mul.Packed_MemRef_call2285.us.3 = mul nuw nsw i64 %126, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1058.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1048 = phi i64 [ %indvars.iv1046, %polly.loop_header228.preheader ], [ %indvars.iv.next1049, %polly.loop_exit237 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1045, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %127 = mul i64 %polly.indvar231, 80
  %128 = add i64 %97, %127
  %smax1637 = call i64 @llvm.smax.i64(i64 %128, i64 0)
  %129 = mul i64 %polly.indvar231, -80
  %130 = add i64 %98, %129
  %131 = add i64 %smax1637, %130
  %132 = mul i64 %polly.indvar231, 640
  %133 = mul i64 %polly.indvar231, 80
  %134 = add i64 %100, %133
  %smax1623 = call i64 @llvm.smax.i64(i64 %134, i64 0)
  %135 = add nuw i64 %99, %smax1623
  %136 = mul i64 %135, 9600
  %137 = add i64 %132, %136
  %138 = or i64 %132, 8
  %139 = add i64 %138, %136
  %140 = mul i64 %polly.indvar231, -80
  %141 = add i64 %99, %140
  %142 = add i64 %smax1623, %141
  %143 = mul i64 %polly.indvar231, 80
  %144 = add i64 %101, %143
  %smax1605 = call i64 @llvm.smax.i64(i64 %144, i64 0)
  %145 = mul i64 %polly.indvar231, -80
  %146 = add i64 %102, %145
  %147 = add i64 %smax1605, %146
  %148 = mul i64 %polly.indvar231, 640
  %149 = mul i64 %polly.indvar231, 80
  %150 = add i64 %104, %149
  %smax1590 = call i64 @llvm.smax.i64(i64 %150, i64 0)
  %151 = add nuw i64 %103, %smax1590
  %152 = mul i64 %151, 9600
  %153 = add i64 %148, %152
  %154 = or i64 %148, 8
  %155 = add i64 %154, %152
  %156 = mul i64 %polly.indvar231, -80
  %157 = add i64 %103, %156
  %158 = add i64 %smax1590, %157
  %159 = mul i64 %polly.indvar231, 80
  %160 = add i64 %105, %159
  %smax1572 = call i64 @llvm.smax.i64(i64 %160, i64 0)
  %161 = mul i64 %polly.indvar231, -80
  %162 = add i64 %106, %161
  %163 = add i64 %smax1572, %162
  %164 = mul i64 %polly.indvar231, 640
  %165 = mul i64 %polly.indvar231, 80
  %166 = add i64 %108, %165
  %smax1557 = call i64 @llvm.smax.i64(i64 %166, i64 0)
  %167 = add nuw i64 %107, %smax1557
  %168 = mul i64 %167, 9600
  %169 = add i64 %164, %168
  %170 = or i64 %164, 8
  %171 = add i64 %170, %168
  %172 = mul i64 %polly.indvar231, -80
  %173 = add i64 %107, %172
  %174 = add i64 %smax1557, %173
  %175 = mul i64 %polly.indvar231, 80
  %176 = add i64 %109, %175
  %smax1537 = call i64 @llvm.smax.i64(i64 %176, i64 0)
  %177 = mul i64 %polly.indvar231, -80
  %178 = add i64 %110, %177
  %179 = add i64 %smax1537, %178
  %180 = mul nsw i64 %polly.indvar231, 80
  %181 = add nsw i64 %180, %115
  %182 = icmp sgt i64 %181, 0
  %183 = select i1 %182, i64 %181, i64 0
  %polly.loop_guard238.not = icmp sgt i64 %183, %118
  br i1 %polly.loop_guard238.not, label %polly.loop_exit237, label %polly.loop_header235.preheader

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1044, i64 0)
  %184 = add i64 %smax, %indvars.iv1048
  %185 = sub nsw i64 %119, %180
  %186 = add nuw nsw i64 %180, 80
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw i64 %polly.indvar231, 1
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 80
  %indvars.iv.next1049 = add i64 %indvars.iv1048, -80
  %exitcond1057.not = icmp eq i64 %polly.indvar231, %114
  br i1 %exitcond1057.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1538 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1539, %polly.loop_exit269 ]
  %indvars.iv1050 = phi i64 [ %184, %polly.loop_header235.preheader ], [ %indvars.iv.next1051, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %183, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %187 = add i64 %131, %indvar1538
  %smin1638 = call i64 @llvm.smin.i64(i64 %187, i64 79)
  %188 = add nsw i64 %smin1638, 1
  %189 = mul i64 %indvar1538, 9600
  %190 = add i64 %137, %189
  %scevgep1624 = getelementptr i8, i8* %call, i64 %190
  %191 = add i64 %139, %189
  %scevgep1625 = getelementptr i8, i8* %call, i64 %191
  %192 = add i64 %142, %indvar1538
  %smin1626 = call i64 @llvm.smin.i64(i64 %192, i64 79)
  %193 = shl i64 %smin1626, 3
  %scevgep1627 = getelementptr i8, i8* %scevgep1625, i64 %193
  %scevgep1629 = getelementptr i8, i8* %scevgep1628, i64 %193
  %194 = add i64 %147, %indvar1538
  %smin1606 = call i64 @llvm.smin.i64(i64 %194, i64 79)
  %195 = add nsw i64 %smin1606, 1
  %196 = mul i64 %indvar1538, 9600
  %197 = add i64 %153, %196
  %scevgep1591 = getelementptr i8, i8* %call, i64 %197
  %198 = add i64 %155, %196
  %scevgep1592 = getelementptr i8, i8* %call, i64 %198
  %199 = add i64 %158, %indvar1538
  %smin1593 = call i64 @llvm.smin.i64(i64 %199, i64 79)
  %200 = shl i64 %smin1593, 3
  %scevgep1594 = getelementptr i8, i8* %scevgep1592, i64 %200
  %scevgep1597 = getelementptr i8, i8* %scevgep1596, i64 %200
  %201 = add i64 %163, %indvar1538
  %smin1573 = call i64 @llvm.smin.i64(i64 %201, i64 79)
  %202 = add nsw i64 %smin1573, 1
  %203 = mul i64 %indvar1538, 9600
  %204 = add i64 %169, %203
  %scevgep1558 = getelementptr i8, i8* %call, i64 %204
  %205 = add i64 %171, %203
  %scevgep1559 = getelementptr i8, i8* %call, i64 %205
  %206 = add i64 %174, %indvar1538
  %smin1560 = call i64 @llvm.smin.i64(i64 %206, i64 79)
  %207 = shl i64 %smin1560, 3
  %scevgep1561 = getelementptr i8, i8* %scevgep1559, i64 %207
  %scevgep1564 = getelementptr i8, i8* %scevgep1563, i64 %207
  %208 = add i64 %179, %indvar1538
  %smin1540 = call i64 @llvm.smin.i64(i64 %208, i64 79)
  %209 = add nsw i64 %smin1540, 1
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 79)
  %210 = add nsw i64 %polly.indvar239, %185
  %polly.loop_guard2521148 = icmp sgt i64 %210, -1
  %211 = add nuw nsw i64 %polly.indvar239, %119
  %.not = icmp ult i64 %211, %186
  %polly.access.mul.call1261 = mul nsw i64 %211, 1000
  %212 = add nuw i64 %polly.access.mul.call1261, %120
  br i1 %polly.loop_guard2521148, label %polly.loop_header249.us, label %polly.loop_header235.split

polly.loop_header249.us:                          ; preds = %polly.loop_header235, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header235 ]
  %213 = add nuw nsw i64 %polly.indvar253.us, %180
  %polly.access.mul.call1257.us = mul nsw i64 %213, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %120, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar253.us, %smin1054
  br i1 %exitcond1052.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %212
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %210
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.loop_header249.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.loop_header249.us.1.preheader, label %polly.then.us

polly.loop_header249.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header249.us.1

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242.preheader

polly.loop_header242.preheader:                   ; preds = %polly.loop_header235.split
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %212
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %210
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.access.add.call1262.1 = or i64 %212, 1
  %polly.access.call1263.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.1
  %polly.access.call1263.load.1 = load double, double* %polly.access.call1263.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  store double %polly.access.call1263.load.1, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %polly.access.add.call1262.2 = or i64 %212, 2
  %polly.access.call1263.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.2
  %polly.access.call1263.load.2 = load double, double* %polly.access.call1263.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  store double %polly.access.call1263.load.2, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %polly.access.add.call1262.3 = or i64 %212, 3
  %polly.access.call1263.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.3
  %polly.access.call1263.load.3 = load double, double* %polly.access.call1263.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  store double %polly.access.call1263.load.3, double* %polly.access.Packed_MemRef_call1266.3, align 8
  br label %polly.loop_exit269

polly.loop_exit269:                               ; preds = %polly.loop_header274.us.3, %middle.block1534, %polly.loop_header235.split, %polly.loop_header242.preheader, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241.not.not = icmp ult i64 %polly.indvar239, %118
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 1
  %indvar.next1539 = add i64 %indvar1538, 1
  br i1 %polly.loop_cond241.not.not, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header267.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %214 = mul i64 %211, 9600
  br i1 %polly.loop_guard2521148, label %polly.loop_header267.us.preheader, label %polly.loop_exit269

polly.loop_header267.us.preheader:                ; preds = %polly.loop_header267.preheader
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %211
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %210
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1639 = icmp ult i64 %188, 4
  br i1 %min.iters.check1639, label %polly.loop_header274.us.preheader, label %vector.memcheck1622

vector.memcheck1622:                              ; preds = %polly.loop_header267.us.preheader
  %bound01630 = icmp ult i8* %scevgep1624, %scevgep1629
  %bound11631 = icmp ult i8* %malloccall, %scevgep1627
  %found.conflict1632 = and i1 %bound01630, %bound11631
  br i1 %found.conflict1632, label %polly.loop_header274.us.preheader, label %vector.ph1640

vector.ph1640:                                    ; preds = %vector.memcheck1622
  %n.vec1642 = and i64 %188, -4
  %broadcast.splatinsert1648 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1649 = shufflevector <4 x double> %broadcast.splatinsert1648, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1651 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1652 = shufflevector <4 x double> %broadcast.splatinsert1651, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1636

vector.body1636:                                  ; preds = %vector.body1636, %vector.ph1640
  %index1643 = phi i64 [ 0, %vector.ph1640 ], [ %index.next1644, %vector.body1636 ]
  %215 = add nuw nsw i64 %index1643, %180
  %216 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1643
  %217 = bitcast double* %216 to <4 x double>*
  %wide.load1647 = load <4 x double>, <4 x double>* %217, align 8, !alias.scope !77
  %218 = fmul fast <4 x double> %broadcast.splat1649, %wide.load1647
  %219 = add nuw nsw i64 %215, %polly.access.mul.Packed_MemRef_call2285.us
  %220 = getelementptr double, double* %Packed_MemRef_call2, i64 %219
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1650 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1652, %wide.load1650
  %223 = shl i64 %215, 3
  %224 = add i64 %223, %214
  %225 = getelementptr i8, i8* %call, i64 %224
  %226 = bitcast i8* %225 to <4 x double>*
  %wide.load1653 = load <4 x double>, <4 x double>* %226, align 8, !alias.scope !80, !noalias !82
  %227 = fadd fast <4 x double> %222, %218
  %228 = fmul fast <4 x double> %227, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %229 = fadd fast <4 x double> %228, %wide.load1653
  %230 = bitcast i8* %225 to <4 x double>*
  store <4 x double> %229, <4 x double>* %230, align 8, !alias.scope !80, !noalias !82
  %index.next1644 = add i64 %index1643, 4
  %231 = icmp eq i64 %index.next1644, %n.vec1642
  br i1 %231, label %middle.block1634, label %vector.body1636, !llvm.loop !83

middle.block1634:                                 ; preds = %vector.body1636
  %cmp.n1646 = icmp eq i64 %188, %n.vec1642
  br i1 %cmp.n1646, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %vector.memcheck1622, %polly.loop_header267.us.preheader, %middle.block1634
  %polly.indvar278.us.ph = phi i64 [ 0, %vector.memcheck1622 ], [ 0, %polly.loop_header267.us.preheader ], [ %n.vec1642, %middle.block1634 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %232 = add nuw nsw i64 %polly.indvar278.us, %180
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar278.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %233 = shl i64 %232, 3
  %234 = add i64 %233, %214
  %scevgep297.us = getelementptr i8, i8* %call, i64 %234
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
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.1, %211
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1295.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call1295.us.1, align 8
  %min.iters.check1607 = icmp ult i64 %195, 4
  br i1 %min.iters.check1607, label %polly.loop_header274.us.1.preheader, label %vector.memcheck1589

vector.memcheck1589:                              ; preds = %polly.loop_exit276.loopexit.us
  %bound01598 = icmp ult i8* %scevgep1591, %scevgep1597
  %bound11599 = icmp ult i8* %scevgep1595, %scevgep1594
  %found.conflict1600 = and i1 %bound01598, %bound11599
  br i1 %found.conflict1600, label %polly.loop_header274.us.1.preheader, label %vector.ph1608

vector.ph1608:                                    ; preds = %vector.memcheck1589
  %n.vec1610 = and i64 %195, -4
  %broadcast.splatinsert1616 = insertelement <4 x double> poison, double %_p_scalar_288.us.1, i32 0
  %broadcast.splat1617 = shufflevector <4 x double> %broadcast.splatinsert1616, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1619 = insertelement <4 x double> poison, double %_p_scalar_296.us.1, i32 0
  %broadcast.splat1620 = shufflevector <4 x double> %broadcast.splatinsert1619, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1604

vector.body1604:                                  ; preds = %vector.body1604, %vector.ph1608
  %index1611 = phi i64 [ 0, %vector.ph1608 ], [ %index.next1612, %vector.body1604 ]
  %235 = add nuw nsw i64 %index1611, %180
  %236 = add nuw nsw i64 %index1611, 1200
  %237 = getelementptr double, double* %Packed_MemRef_call1, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1615 = load <4 x double>, <4 x double>* %238, align 8, !alias.scope !85
  %239 = fmul fast <4 x double> %broadcast.splat1617, %wide.load1615
  %240 = add nuw nsw i64 %235, %polly.access.mul.Packed_MemRef_call2285.us.1
  %241 = getelementptr double, double* %Packed_MemRef_call2, i64 %240
  %242 = bitcast double* %241 to <4 x double>*
  %wide.load1618 = load <4 x double>, <4 x double>* %242, align 8
  %243 = fmul fast <4 x double> %broadcast.splat1620, %wide.load1618
  %244 = shl i64 %235, 3
  %245 = add i64 %244, %214
  %246 = getelementptr i8, i8* %call, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  %wide.load1621 = load <4 x double>, <4 x double>* %247, align 8, !alias.scope !88, !noalias !90
  %248 = fadd fast <4 x double> %243, %239
  %249 = fmul fast <4 x double> %248, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %250 = fadd fast <4 x double> %249, %wide.load1621
  %251 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %250, <4 x double>* %251, align 8, !alias.scope !88, !noalias !90
  %index.next1612 = add i64 %index1611, 4
  %252 = icmp eq i64 %index.next1612, %n.vec1610
  br i1 %252, label %middle.block1602, label %vector.body1604, !llvm.loop !91

middle.block1602:                                 ; preds = %vector.body1604
  %cmp.n1614 = icmp eq i64 %195, %n.vec1610
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
  %253 = add i64 %indvar1377, 1
  %254 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %254
  %min.iters.check1379 = icmp ult i64 %253, 4
  br i1 %min.iters.check1379, label %polly.loop_header396.preheader, label %vector.ph1380

vector.ph1380:                                    ; preds = %polly.loop_header390
  %n.vec1382 = and i64 %253, -4
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1384, %vector.body1376 ]
  %255 = shl nuw nsw i64 %index1383, 3
  %256 = getelementptr i8, i8* %scevgep402, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %257, align 8, !alias.scope !92, !noalias !94
  %258 = fmul fast <4 x double> %wide.load1387, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %259 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %258, <4 x double>* %259, align 8, !alias.scope !92, !noalias !94
  %index.next1384 = add i64 %index1383, 4
  %260 = icmp eq i64 %index.next1384, %n.vec1382
  br i1 %260, label %middle.block1374, label %vector.body1376, !llvm.loop !99

middle.block1374:                                 ; preds = %vector.body1376
  %cmp.n1386 = icmp eq i64 %253, %n.vec1382
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
  %261 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %261
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
  %262 = mul nsw i64 %polly.indvar425, -64
  %263 = shl nuw nsw i64 %polly.indvar425, 6
  %264 = shl nuw nsw i64 %polly.indvar425, 6
  %265 = mul nsw i64 %polly.indvar425, -64
  %266 = mul nsw i64 %polly.indvar425, -64
  %267 = shl nuw nsw i64 %polly.indvar425, 6
  %268 = shl nuw nsw i64 %polly.indvar425, 6
  %269 = mul nsw i64 %polly.indvar425, -64
  %270 = mul nsw i64 %polly.indvar425, -64
  %271 = shl nuw nsw i64 %polly.indvar425, 6
  %272 = shl nuw nsw i64 %polly.indvar425, 6
  %273 = mul nsw i64 %polly.indvar425, -64
  %274 = mul nsw i64 %polly.indvar425, -64
  %275 = shl nuw nsw i64 %polly.indvar425, 6
  %276 = add nuw nsw i64 %polly.indvar425, 6
  %pexp.p_div_q434 = udiv i64 %276, 5
  %277 = sub nsw i64 %polly.indvar425, %pexp.p_div_q434
  %278 = add nsw i64 %277, 1
  %.inv932 = icmp slt i64 %277, 14
  %279 = select i1 %.inv932, i64 %278, i64 14
  %polly.loop_guard439 = icmp sgt i64 %279, -1
  %280 = mul nsw i64 %polly.indvar425, -64
  %281 = icmp slt i64 %280, -1136
  %282 = select i1 %281, i64 %280, i64 -1136
  %283 = add nsw i64 %282, 1199
  %284 = shl nsw i64 %polly.indvar425, 6
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -64
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 64
  %exitcond1084.not = icmp eq i64 %polly.indvar_next426, 19
  br i1 %exitcond1084.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439, label %polly.loop_header436.preheader, label %polly.loop_exit438

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %285 = shl nsw i64 %polly.indvar431, 2
  %286 = or i64 %285, 1
  %287 = or i64 %285, 2
  %288 = or i64 %285, 3
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nsw i64 %polly.indvar431, 4800
  %289 = or i64 %285, 1
  %polly.access.mul.Packed_MemRef_call2307498.us.1 = mul nuw nsw i64 %289, 1200
  %290 = or i64 %285, 2
  %polly.access.mul.Packed_MemRef_call2307498.us.2 = mul nuw nsw i64 %290, 1200
  %291 = or i64 %285, 3
  %polly.access.mul.Packed_MemRef_call2307498.us.3 = mul nuw nsw i64 %291, 1200
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next432, 250
  br i1 %exitcond1083.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1072 = phi i64 [ %indvars.iv1070, %polly.loop_header436.preheader ], [ %indvars.iv.next1073, %polly.loop_exit446 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv1065, %polly.loop_header436.preheader ], [ %indvars.iv.next1068, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %292 = mul i64 %polly.indvar440, 80
  %293 = add i64 %262, %292
  %smax1491 = call i64 @llvm.smax.i64(i64 %293, i64 0)
  %294 = mul i64 %polly.indvar440, -80
  %295 = add i64 %263, %294
  %296 = add i64 %smax1491, %295
  %297 = mul i64 %polly.indvar440, 640
  %298 = mul i64 %polly.indvar440, 80
  %299 = add i64 %265, %298
  %smax1477 = call i64 @llvm.smax.i64(i64 %299, i64 0)
  %300 = add nuw i64 %264, %smax1477
  %301 = mul i64 %300, 9600
  %302 = add i64 %297, %301
  %303 = or i64 %297, 8
  %304 = add i64 %303, %301
  %305 = mul i64 %polly.indvar440, -80
  %306 = add i64 %264, %305
  %307 = add i64 %smax1477, %306
  %308 = mul i64 %polly.indvar440, 80
  %309 = add i64 %266, %308
  %smax1459 = call i64 @llvm.smax.i64(i64 %309, i64 0)
  %310 = mul i64 %polly.indvar440, -80
  %311 = add i64 %267, %310
  %312 = add i64 %smax1459, %311
  %313 = mul i64 %polly.indvar440, 640
  %314 = mul i64 %polly.indvar440, 80
  %315 = add i64 %269, %314
  %smax1444 = call i64 @llvm.smax.i64(i64 %315, i64 0)
  %316 = add nuw i64 %268, %smax1444
  %317 = mul i64 %316, 9600
  %318 = add i64 %313, %317
  %319 = or i64 %313, 8
  %320 = add i64 %319, %317
  %321 = mul i64 %polly.indvar440, -80
  %322 = add i64 %268, %321
  %323 = add i64 %smax1444, %322
  %324 = mul i64 %polly.indvar440, 80
  %325 = add i64 %270, %324
  %smax1426 = call i64 @llvm.smax.i64(i64 %325, i64 0)
  %326 = mul i64 %polly.indvar440, -80
  %327 = add i64 %271, %326
  %328 = add i64 %smax1426, %327
  %329 = mul i64 %polly.indvar440, 640
  %330 = mul i64 %polly.indvar440, 80
  %331 = add i64 %273, %330
  %smax1411 = call i64 @llvm.smax.i64(i64 %331, i64 0)
  %332 = add nuw i64 %272, %smax1411
  %333 = mul i64 %332, 9600
  %334 = add i64 %329, %333
  %335 = or i64 %329, 8
  %336 = add i64 %335, %333
  %337 = mul i64 %polly.indvar440, -80
  %338 = add i64 %272, %337
  %339 = add i64 %smax1411, %338
  %340 = mul i64 %polly.indvar440, 80
  %341 = add i64 %274, %340
  %smax1391 = call i64 @llvm.smax.i64(i64 %341, i64 0)
  %342 = mul i64 %polly.indvar440, -80
  %343 = add i64 %275, %342
  %344 = add i64 %smax1391, %343
  %345 = mul nsw i64 %polly.indvar440, 80
  %346 = add nsw i64 %345, %280
  %347 = icmp sgt i64 %346, 0
  %348 = select i1 %347, i64 %346, i64 0
  %polly.loop_guard447.not = icmp sgt i64 %348, %283
  br i1 %polly.loop_guard447.not, label %polly.loop_exit446, label %polly.loop_header444.preheader

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1069 = call i64 @llvm.smax.i64(i64 %indvars.iv1067, i64 0)
  %349 = add i64 %smax1069, %indvars.iv1072
  %350 = sub nsw i64 %284, %345
  %351 = add nuw nsw i64 %345, 80
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw i64 %polly.indvar440, 1
  %indvars.iv.next1068 = add i64 %indvars.iv1067, 80
  %indvars.iv.next1073 = add i64 %indvars.iv1072, -80
  %exitcond1082.not = icmp eq i64 %polly.indvar440, %279
  br i1 %exitcond1082.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1392 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1393, %polly.loop_exit482 ]
  %indvars.iv1074 = phi i64 [ %349, %polly.loop_header444.preheader ], [ %indvars.iv.next1075, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %348, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %352 = add i64 %296, %indvar1392
  %smin1492 = call i64 @llvm.smin.i64(i64 %352, i64 79)
  %353 = add nsw i64 %smin1492, 1
  %354 = mul i64 %indvar1392, 9600
  %355 = add i64 %302, %354
  %scevgep1478 = getelementptr i8, i8* %call, i64 %355
  %356 = add i64 %304, %354
  %scevgep1479 = getelementptr i8, i8* %call, i64 %356
  %357 = add i64 %307, %indvar1392
  %smin1480 = call i64 @llvm.smin.i64(i64 %357, i64 79)
  %358 = shl i64 %smin1480, 3
  %scevgep1481 = getelementptr i8, i8* %scevgep1479, i64 %358
  %scevgep1483 = getelementptr i8, i8* %scevgep1482, i64 %358
  %359 = add i64 %312, %indvar1392
  %smin1460 = call i64 @llvm.smin.i64(i64 %359, i64 79)
  %360 = add nsw i64 %smin1460, 1
  %361 = mul i64 %indvar1392, 9600
  %362 = add i64 %318, %361
  %scevgep1445 = getelementptr i8, i8* %call, i64 %362
  %363 = add i64 %320, %361
  %scevgep1446 = getelementptr i8, i8* %call, i64 %363
  %364 = add i64 %323, %indvar1392
  %smin1447 = call i64 @llvm.smin.i64(i64 %364, i64 79)
  %365 = shl i64 %smin1447, 3
  %scevgep1448 = getelementptr i8, i8* %scevgep1446, i64 %365
  %scevgep1451 = getelementptr i8, i8* %scevgep1450, i64 %365
  %366 = add i64 %328, %indvar1392
  %smin1427 = call i64 @llvm.smin.i64(i64 %366, i64 79)
  %367 = add nsw i64 %smin1427, 1
  %368 = mul i64 %indvar1392, 9600
  %369 = add i64 %334, %368
  %scevgep1412 = getelementptr i8, i8* %call, i64 %369
  %370 = add i64 %336, %368
  %scevgep1413 = getelementptr i8, i8* %call, i64 %370
  %371 = add i64 %339, %indvar1392
  %smin1414 = call i64 @llvm.smin.i64(i64 %371, i64 79)
  %372 = shl i64 %smin1414, 3
  %scevgep1415 = getelementptr i8, i8* %scevgep1413, i64 %372
  %scevgep1418 = getelementptr i8, i8* %scevgep1417, i64 %372
  %373 = add i64 %344, %indvar1392
  %smin1394 = call i64 @llvm.smin.i64(i64 %373, i64 79)
  %374 = add nsw i64 %smin1394, 1
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 79)
  %375 = add nsw i64 %polly.indvar448, %350
  %polly.loop_guard4611149 = icmp sgt i64 %375, -1
  %376 = add nuw nsw i64 %polly.indvar448, %284
  %.not933 = icmp ult i64 %376, %351
  %polly.access.mul.call1474 = mul nsw i64 %376, 1000
  %377 = add nuw i64 %polly.access.mul.call1474, %285
  br i1 %polly.loop_guard4611149, label %polly.loop_header458.us, label %polly.loop_header444.split

polly.loop_header458.us:                          ; preds = %polly.loop_header444, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header444 ]
  %378 = add nuw nsw i64 %polly.indvar462.us, %345
  %polly.access.mul.call1466.us = mul nsw i64 %378, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %285, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar462.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar462.us, %smin1079
  br i1 %exitcond1077.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %377
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %375
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.loop_header458.us.1.preheader

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not933, label %polly.loop_header458.us.1.preheader, label %polly.then471.us

polly.loop_header458.us.1.preheader:              ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  br label %polly.loop_header458.us.1

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not933, label %polly.loop_exit482, label %polly.loop_header451.preheader

polly.loop_header451.preheader:                   ; preds = %polly.loop_header444.split
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %377
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %375
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.access.add.call1475.1 = or i64 %377, 1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.1 = add nsw i64 %375, 1200
  %polly.access.Packed_MemRef_call1305479.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1305479.1, align 8
  %polly.access.add.call1475.2 = or i64 %377, 2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.2 = add nsw i64 %375, 2400
  %polly.access.Packed_MemRef_call1305479.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1305479.2, align 8
  %polly.access.add.call1475.3 = or i64 %377, 3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.3 = add nsw i64 %375, 3600
  %polly.access.Packed_MemRef_call1305479.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1305479.3, align 8
  br label %polly.loop_exit482

polly.loop_exit482:                               ; preds = %polly.loop_header487.us.3, %middle.block1388, %polly.loop_header444.split, %polly.loop_header451.preheader, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp ult i64 %polly.indvar448, %283
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 1
  %indvar.next1393 = add i64 %indvar1392, 1
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header480.preheader:                   ; preds = %polly.cond469.loopexit.us.3, %polly.then471.us.3
  %379 = mul i64 %376, 9600
  br i1 %polly.loop_guard4611149, label %polly.loop_header480.us.preheader, label %polly.loop_exit482

polly.loop_header480.us.preheader:                ; preds = %polly.loop_header480.preheader
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %376
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %375
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1493 = icmp ult i64 %353, 4
  br i1 %min.iters.check1493, label %polly.loop_header487.us.preheader, label %vector.memcheck1476

vector.memcheck1476:                              ; preds = %polly.loop_header480.us.preheader
  %bound01484 = icmp ult i8* %scevgep1478, %scevgep1483
  %bound11485 = icmp ult i8* %malloccall304, %scevgep1481
  %found.conflict1486 = and i1 %bound01484, %bound11485
  br i1 %found.conflict1486, label %polly.loop_header487.us.preheader, label %vector.ph1494

vector.ph1494:                                    ; preds = %vector.memcheck1476
  %n.vec1496 = and i64 %353, -4
  %broadcast.splatinsert1502 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1503 = shufflevector <4 x double> %broadcast.splatinsert1502, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1505 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1506 = shufflevector <4 x double> %broadcast.splatinsert1505, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1494
  %index1497 = phi i64 [ 0, %vector.ph1494 ], [ %index.next1498, %vector.body1490 ]
  %380 = add nuw nsw i64 %index1497, %345
  %381 = getelementptr double, double* %Packed_MemRef_call1305, i64 %index1497
  %382 = bitcast double* %381 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %382, align 8, !alias.scope !103
  %383 = fmul fast <4 x double> %broadcast.splat1503, %wide.load1501
  %384 = add nuw nsw i64 %380, %polly.access.mul.Packed_MemRef_call2307498.us
  %385 = getelementptr double, double* %Packed_MemRef_call2307, i64 %384
  %386 = bitcast double* %385 to <4 x double>*
  %wide.load1504 = load <4 x double>, <4 x double>* %386, align 8
  %387 = fmul fast <4 x double> %broadcast.splat1506, %wide.load1504
  %388 = shl i64 %380, 3
  %389 = add i64 %388, %379
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %391, align 8, !alias.scope !106, !noalias !108
  %392 = fadd fast <4 x double> %387, %383
  %393 = fmul fast <4 x double> %392, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %394 = fadd fast <4 x double> %393, %wide.load1507
  %395 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %394, <4 x double>* %395, align 8, !alias.scope !106, !noalias !108
  %index.next1498 = add i64 %index1497, 4
  %396 = icmp eq i64 %index.next1498, %n.vec1496
  br i1 %396, label %middle.block1488, label %vector.body1490, !llvm.loop !109

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1500 = icmp eq i64 %353, %n.vec1496
  br i1 %cmp.n1500, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %vector.memcheck1476, %polly.loop_header480.us.preheader, %middle.block1488
  %polly.indvar491.us.ph = phi i64 [ 0, %vector.memcheck1476 ], [ 0, %polly.loop_header480.us.preheader ], [ %n.vec1496, %middle.block1488 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %397 = add nuw nsw i64 %polly.indvar491.us, %345
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar491.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %397, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %398 = shl i64 %397, 3
  %399 = add i64 %398, %379
  %scevgep510.us = getelementptr i8, i8* %call, i64 %399
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
  %polly.access.add.Packed_MemRef_call2307499.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.1, %376
  %polly.access.Packed_MemRef_call2307500.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2307500.us.1, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.1 = add nsw i64 %375, 1200
  %polly.access.Packed_MemRef_call1305508.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call1305508.us.1, align 8
  %min.iters.check1461 = icmp ult i64 %360, 4
  br i1 %min.iters.check1461, label %polly.loop_header487.us.1.preheader, label %vector.memcheck1443

vector.memcheck1443:                              ; preds = %polly.loop_exit489.loopexit.us
  %bound01452 = icmp ult i8* %scevgep1445, %scevgep1451
  %bound11453 = icmp ult i8* %scevgep1449, %scevgep1448
  %found.conflict1454 = and i1 %bound01452, %bound11453
  br i1 %found.conflict1454, label %polly.loop_header487.us.1.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %vector.memcheck1443
  %n.vec1464 = and i64 %360, -4
  %broadcast.splatinsert1470 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1471 = shufflevector <4 x double> %broadcast.splatinsert1470, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1473 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1474 = shufflevector <4 x double> %broadcast.splatinsert1473, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1458 ]
  %400 = add nuw nsw i64 %index1465, %345
  %401 = add nuw nsw i64 %index1465, 1200
  %402 = getelementptr double, double* %Packed_MemRef_call1305, i64 %401
  %403 = bitcast double* %402 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %403, align 8, !alias.scope !111
  %404 = fmul fast <4 x double> %broadcast.splat1471, %wide.load1469
  %405 = add nuw nsw i64 %400, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %406 = getelementptr double, double* %Packed_MemRef_call2307, i64 %405
  %407 = bitcast double* %406 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %407, align 8
  %408 = fmul fast <4 x double> %broadcast.splat1474, %wide.load1472
  %409 = shl i64 %400, 3
  %410 = add i64 %409, %379
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %412, align 8, !alias.scope !114, !noalias !116
  %413 = fadd fast <4 x double> %408, %404
  %414 = fmul fast <4 x double> %413, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %415 = fadd fast <4 x double> %414, %wide.load1475
  %416 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %415, <4 x double>* %416, align 8, !alias.scope !114, !noalias !116
  %index.next1466 = add i64 %index1465, 4
  %417 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %417, label %middle.block1456, label %vector.body1458, !llvm.loop !117

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1468 = icmp eq i64 %360, %n.vec1464
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
  %418 = add i64 %indvar, 1
  %419 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %419
  %min.iters.check1233 = icmp ult i64 %418, 4
  br i1 %min.iters.check1233, label %polly.loop_header609.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header603
  %n.vec1236 = and i64 %418, -4
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1232 ]
  %420 = shl nuw nsw i64 %index1237, 3
  %421 = getelementptr i8, i8* %scevgep615, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %422, align 8, !alias.scope !118, !noalias !120
  %423 = fmul fast <4 x double> %wide.load1241, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %424 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %423, <4 x double>* %424, align 8, !alias.scope !118, !noalias !120
  %index.next1238 = add i64 %index1237, 4
  %425 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %425, label %middle.block1230, label %vector.body1232, !llvm.loop !125

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %418, %n.vec1236
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
  %426 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %426
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
  %427 = mul nsw i64 %polly.indvar638, -64
  %428 = shl nuw nsw i64 %polly.indvar638, 6
  %429 = shl nuw nsw i64 %polly.indvar638, 6
  %430 = mul nsw i64 %polly.indvar638, -64
  %431 = mul nsw i64 %polly.indvar638, -64
  %432 = shl nuw nsw i64 %polly.indvar638, 6
  %433 = shl nuw nsw i64 %polly.indvar638, 6
  %434 = mul nsw i64 %polly.indvar638, -64
  %435 = mul nsw i64 %polly.indvar638, -64
  %436 = shl nuw nsw i64 %polly.indvar638, 6
  %437 = shl nuw nsw i64 %polly.indvar638, 6
  %438 = mul nsw i64 %polly.indvar638, -64
  %439 = mul nsw i64 %polly.indvar638, -64
  %440 = shl nuw nsw i64 %polly.indvar638, 6
  %441 = add nuw nsw i64 %polly.indvar638, 6
  %pexp.p_div_q647 = udiv i64 %441, 5
  %442 = sub nsw i64 %polly.indvar638, %pexp.p_div_q647
  %443 = add nsw i64 %442, 1
  %.inv934 = icmp slt i64 %442, 14
  %444 = select i1 %.inv934, i64 %443, i64 14
  %polly.loop_guard652 = icmp sgt i64 %444, -1
  %445 = mul nsw i64 %polly.indvar638, -64
  %446 = icmp slt i64 %445, -1136
  %447 = select i1 %446, i64 %445, i64 -1136
  %448 = add nsw i64 %447, 1199
  %449 = shl nsw i64 %polly.indvar638, 6
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -64
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 64
  %exitcond1109.not = icmp eq i64 %polly.indvar_next639, 19
  br i1 %exitcond1109.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %450 = shl nsw i64 %polly.indvar644, 2
  %451 = or i64 %450, 1
  %452 = or i64 %450, 2
  %453 = or i64 %450, 3
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nsw i64 %polly.indvar644, 4800
  %454 = or i64 %450, 1
  %polly.access.mul.Packed_MemRef_call2520711.us.1 = mul nuw nsw i64 %454, 1200
  %455 = or i64 %450, 2
  %polly.access.mul.Packed_MemRef_call2520711.us.2 = mul nuw nsw i64 %455, 1200
  %456 = or i64 %450, 3
  %polly.access.mul.Packed_MemRef_call2520711.us.3 = mul nuw nsw i64 %456, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next645, 250
  br i1 %exitcond1108.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1097 = phi i64 [ %indvars.iv1095, %polly.loop_header649.preheader ], [ %indvars.iv.next1098, %polly.loop_exit659 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv1090, %polly.loop_header649.preheader ], [ %indvars.iv.next1093, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %457 = mul i64 %polly.indvar653, 80
  %458 = add i64 %427, %457
  %smax1345 = call i64 @llvm.smax.i64(i64 %458, i64 0)
  %459 = mul i64 %polly.indvar653, -80
  %460 = add i64 %428, %459
  %461 = add i64 %smax1345, %460
  %462 = mul i64 %polly.indvar653, 640
  %463 = mul i64 %polly.indvar653, 80
  %464 = add i64 %430, %463
  %smax1331 = call i64 @llvm.smax.i64(i64 %464, i64 0)
  %465 = add nuw i64 %429, %smax1331
  %466 = mul i64 %465, 9600
  %467 = add i64 %462, %466
  %468 = or i64 %462, 8
  %469 = add i64 %468, %466
  %470 = mul i64 %polly.indvar653, -80
  %471 = add i64 %429, %470
  %472 = add i64 %smax1331, %471
  %473 = mul i64 %polly.indvar653, 80
  %474 = add i64 %431, %473
  %smax1313 = call i64 @llvm.smax.i64(i64 %474, i64 0)
  %475 = mul i64 %polly.indvar653, -80
  %476 = add i64 %432, %475
  %477 = add i64 %smax1313, %476
  %478 = mul i64 %polly.indvar653, 640
  %479 = mul i64 %polly.indvar653, 80
  %480 = add i64 %434, %479
  %smax1298 = call i64 @llvm.smax.i64(i64 %480, i64 0)
  %481 = add nuw i64 %433, %smax1298
  %482 = mul i64 %481, 9600
  %483 = add i64 %478, %482
  %484 = or i64 %478, 8
  %485 = add i64 %484, %482
  %486 = mul i64 %polly.indvar653, -80
  %487 = add i64 %433, %486
  %488 = add i64 %smax1298, %487
  %489 = mul i64 %polly.indvar653, 80
  %490 = add i64 %435, %489
  %smax1280 = call i64 @llvm.smax.i64(i64 %490, i64 0)
  %491 = mul i64 %polly.indvar653, -80
  %492 = add i64 %436, %491
  %493 = add i64 %smax1280, %492
  %494 = mul i64 %polly.indvar653, 640
  %495 = mul i64 %polly.indvar653, 80
  %496 = add i64 %438, %495
  %smax1265 = call i64 @llvm.smax.i64(i64 %496, i64 0)
  %497 = add nuw i64 %437, %smax1265
  %498 = mul i64 %497, 9600
  %499 = add i64 %494, %498
  %500 = or i64 %494, 8
  %501 = add i64 %500, %498
  %502 = mul i64 %polly.indvar653, -80
  %503 = add i64 %437, %502
  %504 = add i64 %smax1265, %503
  %505 = mul i64 %polly.indvar653, 80
  %506 = add i64 %439, %505
  %smax1245 = call i64 @llvm.smax.i64(i64 %506, i64 0)
  %507 = mul i64 %polly.indvar653, -80
  %508 = add i64 %440, %507
  %509 = add i64 %smax1245, %508
  %510 = mul nsw i64 %polly.indvar653, 80
  %511 = add nsw i64 %510, %445
  %512 = icmp sgt i64 %511, 0
  %513 = select i1 %512, i64 %511, i64 0
  %polly.loop_guard660.not = icmp sgt i64 %513, %448
  br i1 %polly.loop_guard660.not, label %polly.loop_exit659, label %polly.loop_header657.preheader

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1094 = call i64 @llvm.smax.i64(i64 %indvars.iv1092, i64 0)
  %514 = add i64 %smax1094, %indvars.iv1097
  %515 = sub nsw i64 %449, %510
  %516 = add nuw nsw i64 %510, 80
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw i64 %polly.indvar653, 1
  %indvars.iv.next1093 = add i64 %indvars.iv1092, 80
  %indvars.iv.next1098 = add i64 %indvars.iv1097, -80
  %exitcond1107.not = icmp eq i64 %polly.indvar653, %444
  br i1 %exitcond1107.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1246 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1247, %polly.loop_exit695 ]
  %indvars.iv1099 = phi i64 [ %514, %polly.loop_header657.preheader ], [ %indvars.iv.next1100, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %513, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %517 = add i64 %461, %indvar1246
  %smin1346 = call i64 @llvm.smin.i64(i64 %517, i64 79)
  %518 = add nsw i64 %smin1346, 1
  %519 = mul i64 %indvar1246, 9600
  %520 = add i64 %467, %519
  %scevgep1332 = getelementptr i8, i8* %call, i64 %520
  %521 = add i64 %469, %519
  %scevgep1333 = getelementptr i8, i8* %call, i64 %521
  %522 = add i64 %472, %indvar1246
  %smin1334 = call i64 @llvm.smin.i64(i64 %522, i64 79)
  %523 = shl i64 %smin1334, 3
  %scevgep1335 = getelementptr i8, i8* %scevgep1333, i64 %523
  %scevgep1337 = getelementptr i8, i8* %scevgep1336, i64 %523
  %524 = add i64 %477, %indvar1246
  %smin1314 = call i64 @llvm.smin.i64(i64 %524, i64 79)
  %525 = add nsw i64 %smin1314, 1
  %526 = mul i64 %indvar1246, 9600
  %527 = add i64 %483, %526
  %scevgep1299 = getelementptr i8, i8* %call, i64 %527
  %528 = add i64 %485, %526
  %scevgep1300 = getelementptr i8, i8* %call, i64 %528
  %529 = add i64 %488, %indvar1246
  %smin1301 = call i64 @llvm.smin.i64(i64 %529, i64 79)
  %530 = shl i64 %smin1301, 3
  %scevgep1302 = getelementptr i8, i8* %scevgep1300, i64 %530
  %scevgep1305 = getelementptr i8, i8* %scevgep1304, i64 %530
  %531 = add i64 %493, %indvar1246
  %smin1281 = call i64 @llvm.smin.i64(i64 %531, i64 79)
  %532 = add nsw i64 %smin1281, 1
  %533 = mul i64 %indvar1246, 9600
  %534 = add i64 %499, %533
  %scevgep1266 = getelementptr i8, i8* %call, i64 %534
  %535 = add i64 %501, %533
  %scevgep1267 = getelementptr i8, i8* %call, i64 %535
  %536 = add i64 %504, %indvar1246
  %smin1268 = call i64 @llvm.smin.i64(i64 %536, i64 79)
  %537 = shl i64 %smin1268, 3
  %scevgep1269 = getelementptr i8, i8* %scevgep1267, i64 %537
  %scevgep1272 = getelementptr i8, i8* %scevgep1271, i64 %537
  %538 = add i64 %509, %indvar1246
  %smin1248 = call i64 @llvm.smin.i64(i64 %538, i64 79)
  %539 = add nsw i64 %smin1248, 1
  %smin1104 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 79)
  %540 = add nsw i64 %polly.indvar661, %515
  %polly.loop_guard6741150 = icmp sgt i64 %540, -1
  %541 = add nuw nsw i64 %polly.indvar661, %449
  %.not935 = icmp ult i64 %541, %516
  %polly.access.mul.call1687 = mul nsw i64 %541, 1000
  %542 = add nuw i64 %polly.access.mul.call1687, %450
  br i1 %polly.loop_guard6741150, label %polly.loop_header671.us, label %polly.loop_header657.split

polly.loop_header671.us:                          ; preds = %polly.loop_header657, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header657 ]
  %543 = add nuw nsw i64 %polly.indvar675.us, %510
  %polly.access.mul.call1679.us = mul nsw i64 %543, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %450, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar675.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar675.us, %smin1104
  br i1 %exitcond1102.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %542
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %540
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.loop_header671.us.1.preheader

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not935, label %polly.loop_header671.us.1.preheader, label %polly.then684.us

polly.loop_header671.us.1.preheader:              ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  br label %polly.loop_header671.us.1

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not935, label %polly.loop_exit695, label %polly.loop_header664.preheader

polly.loop_header664.preheader:                   ; preds = %polly.loop_header657.split
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %542
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %540
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.access.add.call1688.1 = or i64 %542, 1
  %polly.access.call1689.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.1
  %polly.access.call1689.load.1 = load double, double* %polly.access.call1689.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.1 = add nsw i64 %540, 1200
  %polly.access.Packed_MemRef_call1518692.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.1
  store double %polly.access.call1689.load.1, double* %polly.access.Packed_MemRef_call1518692.1, align 8
  %polly.access.add.call1688.2 = or i64 %542, 2
  %polly.access.call1689.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.2
  %polly.access.call1689.load.2 = load double, double* %polly.access.call1689.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.2 = add nsw i64 %540, 2400
  %polly.access.Packed_MemRef_call1518692.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.2
  store double %polly.access.call1689.load.2, double* %polly.access.Packed_MemRef_call1518692.2, align 8
  %polly.access.add.call1688.3 = or i64 %542, 3
  %polly.access.call1689.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.3
  %polly.access.call1689.load.3 = load double, double* %polly.access.call1689.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.3 = add nsw i64 %540, 3600
  %polly.access.Packed_MemRef_call1518692.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.3
  store double %polly.access.call1689.load.3, double* %polly.access.Packed_MemRef_call1518692.3, align 8
  br label %polly.loop_exit695

polly.loop_exit695:                               ; preds = %polly.loop_header700.us.3, %middle.block1242, %polly.loop_header657.split, %polly.loop_header664.preheader, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663.not.not = icmp ult i64 %polly.indvar661, %448
  %indvars.iv.next1100 = add i64 %indvars.iv1099, 1
  %indvar.next1247 = add i64 %indvar1246, 1
  br i1 %polly.loop_cond663.not.not, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header693.preheader:                   ; preds = %polly.cond682.loopexit.us.3, %polly.then684.us.3
  %544 = mul i64 %541, 9600
  br i1 %polly.loop_guard6741150, label %polly.loop_header693.us.preheader, label %polly.loop_exit695

polly.loop_header693.us.preheader:                ; preds = %polly.loop_header693.preheader
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %541
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %540
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1347 = icmp ult i64 %518, 4
  br i1 %min.iters.check1347, label %polly.loop_header700.us.preheader, label %vector.memcheck1330

vector.memcheck1330:                              ; preds = %polly.loop_header693.us.preheader
  %bound01338 = icmp ult i8* %scevgep1332, %scevgep1337
  %bound11339 = icmp ult i8* %malloccall517, %scevgep1335
  %found.conflict1340 = and i1 %bound01338, %bound11339
  br i1 %found.conflict1340, label %polly.loop_header700.us.preheader, label %vector.ph1348

vector.ph1348:                                    ; preds = %vector.memcheck1330
  %n.vec1350 = and i64 %518, -4
  %broadcast.splatinsert1356 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1357 = shufflevector <4 x double> %broadcast.splatinsert1356, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1360 = shufflevector <4 x double> %broadcast.splatinsert1359, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1352, %vector.body1344 ]
  %545 = add nuw nsw i64 %index1351, %510
  %546 = getelementptr double, double* %Packed_MemRef_call1518, i64 %index1351
  %547 = bitcast double* %546 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %547, align 8, !alias.scope !129
  %548 = fmul fast <4 x double> %broadcast.splat1357, %wide.load1355
  %549 = add nuw nsw i64 %545, %polly.access.mul.Packed_MemRef_call2520711.us
  %550 = getelementptr double, double* %Packed_MemRef_call2520, i64 %549
  %551 = bitcast double* %550 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %551, align 8
  %552 = fmul fast <4 x double> %broadcast.splat1360, %wide.load1358
  %553 = shl i64 %545, 3
  %554 = add i64 %553, %544
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %556, align 8, !alias.scope !132, !noalias !134
  %557 = fadd fast <4 x double> %552, %548
  %558 = fmul fast <4 x double> %557, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %559 = fadd fast <4 x double> %558, %wide.load1361
  %560 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %559, <4 x double>* %560, align 8, !alias.scope !132, !noalias !134
  %index.next1352 = add i64 %index1351, 4
  %561 = icmp eq i64 %index.next1352, %n.vec1350
  br i1 %561, label %middle.block1342, label %vector.body1344, !llvm.loop !135

middle.block1342:                                 ; preds = %vector.body1344
  %cmp.n1354 = icmp eq i64 %518, %n.vec1350
  br i1 %cmp.n1354, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %vector.memcheck1330, %polly.loop_header693.us.preheader, %middle.block1342
  %polly.indvar704.us.ph = phi i64 [ 0, %vector.memcheck1330 ], [ 0, %polly.loop_header693.us.preheader ], [ %n.vec1350, %middle.block1342 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %562 = add nuw nsw i64 %polly.indvar704.us, %510
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar704.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %562, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %563 = shl i64 %562, 3
  %564 = add i64 %563, %544
  %scevgep723.us = getelementptr i8, i8* %call, i64 %564
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
  %polly.access.add.Packed_MemRef_call2520712.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.1, %541
  %polly.access.Packed_MemRef_call2520713.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call2520713.us.1, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.1 = add nsw i64 %540, 1200
  %polly.access.Packed_MemRef_call1518721.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.1
  %_p_scalar_722.us.1 = load double, double* %polly.access.Packed_MemRef_call1518721.us.1, align 8
  %min.iters.check1315 = icmp ult i64 %525, 4
  br i1 %min.iters.check1315, label %polly.loop_header700.us.1.preheader, label %vector.memcheck1297

vector.memcheck1297:                              ; preds = %polly.loop_exit702.loopexit.us
  %bound01306 = icmp ult i8* %scevgep1299, %scevgep1305
  %bound11307 = icmp ult i8* %scevgep1303, %scevgep1302
  %found.conflict1308 = and i1 %bound01306, %bound11307
  br i1 %found.conflict1308, label %polly.loop_header700.us.1.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %vector.memcheck1297
  %n.vec1318 = and i64 %525, -4
  %broadcast.splatinsert1324 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1325 = shufflevector <4 x double> %broadcast.splatinsert1324, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1327 = insertelement <4 x double> poison, double %_p_scalar_722.us.1, i32 0
  %broadcast.splat1328 = shufflevector <4 x double> %broadcast.splatinsert1327, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1312 ]
  %565 = add nuw nsw i64 %index1319, %510
  %566 = add nuw nsw i64 %index1319, 1200
  %567 = getelementptr double, double* %Packed_MemRef_call1518, i64 %566
  %568 = bitcast double* %567 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !137
  %569 = fmul fast <4 x double> %broadcast.splat1325, %wide.load1323
  %570 = add nuw nsw i64 %565, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %571 = getelementptr double, double* %Packed_MemRef_call2520, i64 %570
  %572 = bitcast double* %571 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %572, align 8
  %573 = fmul fast <4 x double> %broadcast.splat1328, %wide.load1326
  %574 = shl i64 %565, 3
  %575 = add i64 %574, %544
  %576 = getelementptr i8, i8* %call, i64 %575
  %577 = bitcast i8* %576 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %577, align 8, !alias.scope !140, !noalias !142
  %578 = fadd fast <4 x double> %573, %569
  %579 = fmul fast <4 x double> %578, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %580 = fadd fast <4 x double> %579, %wide.load1329
  %581 = bitcast i8* %576 to <4 x double>*
  store <4 x double> %580, <4 x double>* %581, align 8, !alias.scope !140, !noalias !142
  %index.next1320 = add i64 %index1319, 4
  %582 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %582, label %middle.block1310, label %vector.body1312, !llvm.loop !143

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1322 = icmp eq i64 %525, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1.preheader

polly.loop_header700.us.1.preheader:              ; preds = %vector.memcheck1297, %polly.loop_exit702.loopexit.us, %middle.block1310
  %polly.indvar704.us.1.ph = phi i64 [ 0, %vector.memcheck1297 ], [ 0, %polly.loop_exit702.loopexit.us ], [ %n.vec1318, %middle.block1310 ]
  br label %polly.loop_header700.us.1

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %583 = shl nsw i64 %polly.indvar855, 5
  %584 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1143.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %585 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %585, i64 -1168)
  %586 = add nsw i64 %smin, 1200
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -1168)
  %587 = shl nsw i64 %polly.indvar861, 5
  %588 = add nsw i64 %smin1136, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1142.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %589 = add nuw nsw i64 %polly.indvar867, %583
  %590 = trunc i64 %589 to i32
  %591 = mul nuw nsw i64 %589, 9600
  %min.iters.check = icmp eq i64 %586, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1172

vector.ph1172:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1179 = insertelement <4 x i64> poison, i64 %587, i32 0
  %broadcast.splat1180 = shufflevector <4 x i64> %broadcast.splatinsert1179, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %590, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1172
  %index1173 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1172 ], [ %vec.ind.next1178, %vector.body1171 ]
  %592 = add nuw nsw <4 x i64> %vec.ind1177, %broadcast.splat1180
  %593 = trunc <4 x i64> %592 to <4 x i32>
  %594 = mul <4 x i32> %broadcast.splat1182, %593
  %595 = add <4 x i32> %594, <i32 3, i32 3, i32 3, i32 3>
  %596 = urem <4 x i32> %595, <i32 1200, i32 1200, i32 1200, i32 1200>
  %597 = sitofp <4 x i32> %596 to <4 x double>
  %598 = fmul fast <4 x double> %597, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %599 = extractelement <4 x i64> %592, i32 0
  %600 = shl i64 %599, 3
  %601 = add nuw nsw i64 %600, %591
  %602 = getelementptr i8, i8* %call, i64 %601
  %603 = bitcast i8* %602 to <4 x double>*
  store <4 x double> %598, <4 x double>* %603, align 8, !alias.scope !144, !noalias !146
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %604 = icmp eq i64 %index.next1174, %586
  br i1 %604, label %polly.loop_exit872, label %vector.body1171, !llvm.loop !149

polly.loop_exit872:                               ; preds = %vector.body1171, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar867, %584
  br i1 %exitcond1141.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %605 = add nuw nsw i64 %polly.indvar873, %587
  %606 = trunc i64 %605 to i32
  %607 = mul i32 %606, %590
  %608 = add i32 %607, 3
  %609 = urem i32 %608, 1200
  %p_conv31.i = sitofp i32 %609 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %610 = shl i64 %605, 3
  %611 = add nuw nsw i64 %610, %591
  %scevgep876 = getelementptr i8, i8* %call, i64 %611
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar873, %588
  br i1 %exitcond1137.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !150

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %612 = shl nsw i64 %polly.indvar882, 5
  %613 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1133.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %614 = mul nsw i64 %polly.indvar888, -32
  %smin1186 = call i64 @llvm.smin.i64(i64 %614, i64 -968)
  %615 = add nsw i64 %smin1186, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %616 = shl nsw i64 %polly.indvar888, 5
  %617 = add nsw i64 %smin1126, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1132.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %618 = add nuw nsw i64 %polly.indvar894, %612
  %619 = trunc i64 %618 to i32
  %620 = mul nuw nsw i64 %618, 8000
  %min.iters.check1187 = icmp eq i64 %615, 0
  br i1 %min.iters.check1187, label %polly.loop_header897, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1197 = insertelement <4 x i64> poison, i64 %616, i32 0
  %broadcast.splat1198 = shufflevector <4 x i64> %broadcast.splatinsert1197, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %619, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1185 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1188 ], [ %vec.ind.next1196, %vector.body1185 ]
  %621 = add nuw nsw <4 x i64> %vec.ind1195, %broadcast.splat1198
  %622 = trunc <4 x i64> %621 to <4 x i32>
  %623 = mul <4 x i32> %broadcast.splat1200, %622
  %624 = add <4 x i32> %623, <i32 2, i32 2, i32 2, i32 2>
  %625 = urem <4 x i32> %624, <i32 1000, i32 1000, i32 1000, i32 1000>
  %626 = sitofp <4 x i32> %625 to <4 x double>
  %627 = fmul fast <4 x double> %626, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %628 = extractelement <4 x i64> %621, i32 0
  %629 = shl i64 %628, 3
  %630 = add nuw nsw i64 %629, %620
  %631 = getelementptr i8, i8* %call2, i64 %630
  %632 = bitcast i8* %631 to <4 x double>*
  store <4 x double> %627, <4 x double>* %632, align 8, !alias.scope !148, !noalias !151
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %633 = icmp eq i64 %index.next1192, %615
  br i1 %633, label %polly.loop_exit899, label %vector.body1185, !llvm.loop !152

polly.loop_exit899:                               ; preds = %vector.body1185, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar894, %613
  br i1 %exitcond1131.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %634 = add nuw nsw i64 %polly.indvar900, %616
  %635 = trunc i64 %634 to i32
  %636 = mul i32 %635, %619
  %637 = add i32 %636, 2
  %638 = urem i32 %637, 1000
  %p_conv10.i = sitofp i32 %638 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %639 = shl i64 %634, 3
  %640 = add nuw nsw i64 %639, %620
  %scevgep903 = getelementptr i8, i8* %call2, i64 %640
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar900, %617
  br i1 %exitcond1127.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !153

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -1168)
  %641 = shl nsw i64 %polly.indvar908, 5
  %642 = add nsw i64 %smin1120, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1123.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %643 = mul nsw i64 %polly.indvar914, -32
  %smin1204 = call i64 @llvm.smin.i64(i64 %643, i64 -968)
  %644 = add nsw i64 %smin1204, 1000
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -968)
  %645 = shl nsw i64 %polly.indvar914, 5
  %646 = add nsw i64 %smin1116, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1122.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %647 = add nuw nsw i64 %polly.indvar920, %641
  %648 = trunc i64 %647 to i32
  %649 = mul nuw nsw i64 %647, 8000
  %min.iters.check1205 = icmp eq i64 %644, 0
  br i1 %min.iters.check1205, label %polly.loop_header923, label %vector.ph1206

vector.ph1206:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1215 = insertelement <4 x i64> poison, i64 %645, i32 0
  %broadcast.splat1216 = shufflevector <4 x i64> %broadcast.splatinsert1215, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %648, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1203 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1206 ], [ %vec.ind.next1214, %vector.body1203 ]
  %650 = add nuw nsw <4 x i64> %vec.ind1213, %broadcast.splat1216
  %651 = trunc <4 x i64> %650 to <4 x i32>
  %652 = mul <4 x i32> %broadcast.splat1218, %651
  %653 = add <4 x i32> %652, <i32 1, i32 1, i32 1, i32 1>
  %654 = urem <4 x i32> %653, <i32 1200, i32 1200, i32 1200, i32 1200>
  %655 = sitofp <4 x i32> %654 to <4 x double>
  %656 = fmul fast <4 x double> %655, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %657 = extractelement <4 x i64> %650, i32 0
  %658 = shl i64 %657, 3
  %659 = add nuw nsw i64 %658, %649
  %660 = getelementptr i8, i8* %call1, i64 %659
  %661 = bitcast i8* %660 to <4 x double>*
  store <4 x double> %656, <4 x double>* %661, align 8, !alias.scope !147, !noalias !154
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %662 = icmp eq i64 %index.next1210, %644
  br i1 %662, label %polly.loop_exit925, label %vector.body1203, !llvm.loop !155

polly.loop_exit925:                               ; preds = %vector.body1203, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar920, %642
  br i1 %exitcond1121.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %663 = add nuw nsw i64 %polly.indvar926, %645
  %664 = trunc i64 %663 to i32
  %665 = mul i32 %664, %648
  %666 = add i32 %665, 1
  %667 = urem i32 %666, 1200
  %p_conv.i = sitofp i32 %667 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %668 = shl i64 %663, 3
  %669 = add nuw nsw i64 %668, %649
  %scevgep930 = getelementptr i8, i8* %call1, i64 %669
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar926, %646
  br i1 %exitcond1117.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !156

polly.loop_header249.us.1:                        ; preds = %polly.loop_header249.us.1.preheader, %polly.loop_header249.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header249.us.1 ], [ 0, %polly.loop_header249.us.1.preheader ]
  %670 = add nuw nsw i64 %polly.indvar253.us.1, %180
  %polly.access.mul.call1257.us.1 = mul nsw i64 %670, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %121, %polly.access.mul.call1257.us.1
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
  %polly.access.add.call1262.us.1 = or i64 %212, 1
  %polly.access.call1263.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.1
  %polly.access.call1263.load.us.1 = load double, double* %polly.access.call1263.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1266.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.1
  store double %polly.access.call1263.load.us.1, double* %polly.access.Packed_MemRef_call1266.us.1, align 8
  br label %polly.loop_header249.us.2.preheader

polly.loop_header249.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header249.us.2

polly.loop_header249.us.2:                        ; preds = %polly.loop_header249.us.2.preheader, %polly.loop_header249.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header249.us.2 ], [ 0, %polly.loop_header249.us.2.preheader ]
  %671 = add nuw nsw i64 %polly.indvar253.us.2, %180
  %polly.access.mul.call1257.us.2 = mul nsw i64 %671, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %122, %polly.access.mul.call1257.us.2
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
  %polly.access.add.call1262.us.2 = or i64 %212, 2
  %polly.access.call1263.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.2
  %polly.access.call1263.load.us.2 = load double, double* %polly.access.call1263.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1266.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.2
  store double %polly.access.call1263.load.us.2, double* %polly.access.Packed_MemRef_call1266.us.2, align 8
  br label %polly.loop_header249.us.3.preheader

polly.loop_header249.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header249.us.3

polly.loop_header249.us.3:                        ; preds = %polly.loop_header249.us.3.preheader, %polly.loop_header249.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header249.us.3 ], [ 0, %polly.loop_header249.us.3.preheader ]
  %672 = add nuw nsw i64 %polly.indvar253.us.3, %180
  %polly.access.mul.call1257.us.3 = mul nsw i64 %672, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %123, %polly.access.mul.call1257.us.3
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
  %polly.access.add.call1262.us.3 = or i64 %212, 3
  %polly.access.call1263.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.3
  %polly.access.call1263.load.us.3 = load double, double* %polly.access.call1263.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1266.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.3
  store double %polly.access.call1263.load.us.3, double* %polly.access.Packed_MemRef_call1266.us.3, align 8
  br label %polly.loop_header267.preheader

polly.loop_header274.us.1:                        ; preds = %polly.loop_header274.us.1.preheader, %polly.loop_header274.us.1
  %polly.indvar278.us.1 = phi i64 [ %polly.indvar_next279.us.1, %polly.loop_header274.us.1 ], [ %polly.indvar278.us.1.ph, %polly.loop_header274.us.1.preheader ]
  %673 = add nuw nsw i64 %polly.indvar278.us.1, %180
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1200
  %polly.access.Packed_MemRef_call1283.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call1283.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_288.us.1, %_p_scalar_284.us.1
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %673, %polly.access.mul.Packed_MemRef_call2285.us.1
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_296.us.1, %_p_scalar_292.us.1
  %674 = shl i64 %673, 3
  %675 = add i64 %674, %214
  %scevgep297.us.1 = getelementptr i8, i8* %call, i64 %675
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
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.2, %211
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %polly.access.add.Packed_MemRef_call1294.us.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1295.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call1295.us.2, align 8
  %min.iters.check1574 = icmp ult i64 %202, 4
  br i1 %min.iters.check1574, label %polly.loop_header274.us.2.preheader, label %vector.memcheck1556

vector.memcheck1556:                              ; preds = %polly.loop_exit276.loopexit.us.1
  %bound01565 = icmp ult i8* %scevgep1558, %scevgep1564
  %bound11566 = icmp ult i8* %scevgep1562, %scevgep1561
  %found.conflict1567 = and i1 %bound01565, %bound11566
  br i1 %found.conflict1567, label %polly.loop_header274.us.2.preheader, label %vector.ph1575

vector.ph1575:                                    ; preds = %vector.memcheck1556
  %n.vec1577 = and i64 %202, -4
  %broadcast.splatinsert1583 = insertelement <4 x double> poison, double %_p_scalar_288.us.2, i32 0
  %broadcast.splat1584 = shufflevector <4 x double> %broadcast.splatinsert1583, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1586 = insertelement <4 x double> poison, double %_p_scalar_296.us.2, i32 0
  %broadcast.splat1587 = shufflevector <4 x double> %broadcast.splatinsert1586, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1575
  %index1578 = phi i64 [ 0, %vector.ph1575 ], [ %index.next1579, %vector.body1571 ]
  %676 = add nuw nsw i64 %index1578, %180
  %677 = add nuw nsw i64 %index1578, 2400
  %678 = getelementptr double, double* %Packed_MemRef_call1, i64 %677
  %679 = bitcast double* %678 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !158
  %680 = fmul fast <4 x double> %broadcast.splat1584, %wide.load1582
  %681 = add nuw nsw i64 %676, %polly.access.mul.Packed_MemRef_call2285.us.2
  %682 = getelementptr double, double* %Packed_MemRef_call2, i64 %681
  %683 = bitcast double* %682 to <4 x double>*
  %wide.load1585 = load <4 x double>, <4 x double>* %683, align 8
  %684 = fmul fast <4 x double> %broadcast.splat1587, %wide.load1585
  %685 = shl i64 %676, 3
  %686 = add i64 %685, %214
  %687 = getelementptr i8, i8* %call, i64 %686
  %688 = bitcast i8* %687 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %688, align 8, !alias.scope !161, !noalias !163
  %689 = fadd fast <4 x double> %684, %680
  %690 = fmul fast <4 x double> %689, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %691 = fadd fast <4 x double> %690, %wide.load1588
  %692 = bitcast i8* %687 to <4 x double>*
  store <4 x double> %691, <4 x double>* %692, align 8, !alias.scope !161, !noalias !163
  %index.next1579 = add i64 %index1578, 4
  %693 = icmp eq i64 %index.next1579, %n.vec1577
  br i1 %693, label %middle.block1569, label %vector.body1571, !llvm.loop !164

middle.block1569:                                 ; preds = %vector.body1571
  %cmp.n1581 = icmp eq i64 %202, %n.vec1577
  br i1 %cmp.n1581, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2.preheader

polly.loop_header274.us.2.preheader:              ; preds = %vector.memcheck1556, %polly.loop_exit276.loopexit.us.1, %middle.block1569
  %polly.indvar278.us.2.ph = phi i64 [ 0, %vector.memcheck1556 ], [ 0, %polly.loop_exit276.loopexit.us.1 ], [ %n.vec1577, %middle.block1569 ]
  br label %polly.loop_header274.us.2

polly.loop_header274.us.2:                        ; preds = %polly.loop_header274.us.2.preheader, %polly.loop_header274.us.2
  %polly.indvar278.us.2 = phi i64 [ %polly.indvar_next279.us.2, %polly.loop_header274.us.2 ], [ %polly.indvar278.us.2.ph, %polly.loop_header274.us.2.preheader ]
  %694 = add nuw nsw i64 %polly.indvar278.us.2, %180
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 2400
  %polly.access.Packed_MemRef_call1283.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call1283.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_288.us.2, %_p_scalar_284.us.2
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %694, %polly.access.mul.Packed_MemRef_call2285.us.2
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_296.us.2, %_p_scalar_292.us.2
  %695 = shl i64 %694, 3
  %696 = add i64 %695, %214
  %scevgep297.us.2 = getelementptr i8, i8* %call, i64 %696
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
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.3, %211
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %polly.access.add.Packed_MemRef_call1294.us.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1295.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call1295.us.3, align 8
  %min.iters.check1541 = icmp ult i64 %209, 4
  br i1 %min.iters.check1541, label %polly.loop_header274.us.3.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %polly.loop_exit276.loopexit.us.2
  %n.vec1544 = and i64 %209, -4
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_288.us.3, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_296.us.3, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1546, %vector.body1536 ]
  %697 = add nuw nsw i64 %index1545, %180
  %698 = add nuw nsw i64 %index1545, 3600
  %699 = getelementptr double, double* %Packed_MemRef_call1, i64 %698
  %700 = bitcast double* %699 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %700, align 8
  %701 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %702 = add nuw nsw i64 %697, %polly.access.mul.Packed_MemRef_call2285.us.3
  %703 = getelementptr double, double* %Packed_MemRef_call2, i64 %702
  %704 = bitcast double* %703 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %704, align 8
  %705 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %706 = shl i64 %697, 3
  %707 = add i64 %706, %214
  %708 = getelementptr i8, i8* %call, i64 %707
  %709 = bitcast i8* %708 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %709, align 8, !alias.scope !65, !noalias !67
  %710 = fadd fast <4 x double> %705, %701
  %711 = fmul fast <4 x double> %710, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %712 = fadd fast <4 x double> %711, %wide.load1555
  %713 = bitcast i8* %708 to <4 x double>*
  store <4 x double> %712, <4 x double>* %713, align 8, !alias.scope !65, !noalias !67
  %index.next1546 = add i64 %index1545, 4
  %714 = icmp eq i64 %index.next1546, %n.vec1544
  br i1 %714, label %middle.block1534, label %vector.body1536, !llvm.loop !166

middle.block1534:                                 ; preds = %vector.body1536
  %cmp.n1548 = icmp eq i64 %209, %n.vec1544
  br i1 %cmp.n1548, label %polly.loop_exit269, label %polly.loop_header274.us.3.preheader

polly.loop_header274.us.3.preheader:              ; preds = %polly.loop_exit276.loopexit.us.2, %middle.block1534
  %polly.indvar278.us.3.ph = phi i64 [ 0, %polly.loop_exit276.loopexit.us.2 ], [ %n.vec1544, %middle.block1534 ]
  br label %polly.loop_header274.us.3

polly.loop_header274.us.3:                        ; preds = %polly.loop_header274.us.3.preheader, %polly.loop_header274.us.3
  %polly.indvar278.us.3 = phi i64 [ %polly.indvar_next279.us.3, %polly.loop_header274.us.3 ], [ %polly.indvar278.us.3.ph, %polly.loop_header274.us.3.preheader ]
  %715 = add nuw nsw i64 %polly.indvar278.us.3, %180
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 3600
  %polly.access.Packed_MemRef_call1283.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call1283.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_288.us.3, %_p_scalar_284.us.3
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %715, %polly.access.mul.Packed_MemRef_call2285.us.3
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_296.us.3, %_p_scalar_292.us.3
  %716 = shl i64 %715, 3
  %717 = add i64 %716, %214
  %scevgep297.us.3 = getelementptr i8, i8* %call, i64 %717
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
  %718 = add nuw nsw i64 %polly.indvar462.us.1, %345
  %polly.access.mul.call1466.us.1 = mul nsw i64 %718, 1000
  %polly.access.add.call1467.us.1 = add nuw nsw i64 %286, %polly.access.mul.call1466.us.1
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
  %polly.access.add.call1475.us.1 = or i64 %377, 1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.1 = add nsw i64 %375, 1200
  %polly.access.Packed_MemRef_call1305479.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1305479.us.1, align 8
  br label %polly.loop_header458.us.2.preheader

polly.loop_header458.us.2.preheader:              ; preds = %polly.then471.us.1, %polly.cond469.loopexit.us.1
  br label %polly.loop_header458.us.2

polly.loop_header458.us.2:                        ; preds = %polly.loop_header458.us.2.preheader, %polly.loop_header458.us.2
  %polly.indvar462.us.2 = phi i64 [ %polly.indvar_next463.us.2, %polly.loop_header458.us.2 ], [ 0, %polly.loop_header458.us.2.preheader ]
  %719 = add nuw nsw i64 %polly.indvar462.us.2, %345
  %polly.access.mul.call1466.us.2 = mul nsw i64 %719, 1000
  %polly.access.add.call1467.us.2 = add nuw nsw i64 %287, %polly.access.mul.call1466.us.2
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
  %polly.access.add.call1475.us.2 = or i64 %377, 2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.2 = add nsw i64 %375, 2400
  %polly.access.Packed_MemRef_call1305479.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1305479.us.2, align 8
  br label %polly.loop_header458.us.3.preheader

polly.loop_header458.us.3.preheader:              ; preds = %polly.then471.us.2, %polly.cond469.loopexit.us.2
  br label %polly.loop_header458.us.3

polly.loop_header458.us.3:                        ; preds = %polly.loop_header458.us.3.preheader, %polly.loop_header458.us.3
  %polly.indvar462.us.3 = phi i64 [ %polly.indvar_next463.us.3, %polly.loop_header458.us.3 ], [ 0, %polly.loop_header458.us.3.preheader ]
  %720 = add nuw nsw i64 %polly.indvar462.us.3, %345
  %polly.access.mul.call1466.us.3 = mul nsw i64 %720, 1000
  %polly.access.add.call1467.us.3 = add nuw nsw i64 %288, %polly.access.mul.call1466.us.3
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
  %polly.access.add.call1475.us.3 = or i64 %377, 3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.3 = add nsw i64 %375, 3600
  %polly.access.Packed_MemRef_call1305479.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1305479.us.3, align 8
  br label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_header487.us.1.preheader, %polly.loop_header487.us.1
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_header487.us.1 ], [ %polly.indvar491.us.1.ph, %polly.loop_header487.us.1.preheader ]
  %721 = add nuw nsw i64 %polly.indvar491.us.1, %345
  %polly.access.add.Packed_MemRef_call1305495.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1200
  %polly.access.Packed_MemRef_call1305496.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call1305496.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %polly.access.add.Packed_MemRef_call2307503.us.1 = add nuw nsw i64 %721, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %polly.access.Packed_MemRef_call2307504.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call2307504.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %722 = shl i64 %721, 3
  %723 = add i64 %722, %379
  %scevgep510.us.1 = getelementptr i8, i8* %call, i64 %723
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
  %polly.access.add.Packed_MemRef_call2307499.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.2, %376
  %polly.access.Packed_MemRef_call2307500.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2307500.us.2, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.2 = add nsw i64 %375, 2400
  %polly.access.Packed_MemRef_call1305508.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call1305508.us.2, align 8
  %min.iters.check1428 = icmp ult i64 %367, 4
  br i1 %min.iters.check1428, label %polly.loop_header487.us.2.preheader, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %polly.loop_exit489.loopexit.us.1
  %bound01419 = icmp ult i8* %scevgep1412, %scevgep1418
  %bound11420 = icmp ult i8* %scevgep1416, %scevgep1415
  %found.conflict1421 = and i1 %bound01419, %bound11420
  br i1 %found.conflict1421, label %polly.loop_header487.us.2.preheader, label %vector.ph1429

vector.ph1429:                                    ; preds = %vector.memcheck1410
  %n.vec1431 = and i64 %367, -4
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1425

vector.body1425:                                  ; preds = %vector.body1425, %vector.ph1429
  %index1432 = phi i64 [ 0, %vector.ph1429 ], [ %index.next1433, %vector.body1425 ]
  %724 = add nuw nsw i64 %index1432, %345
  %725 = add nuw nsw i64 %index1432, 2400
  %726 = getelementptr double, double* %Packed_MemRef_call1305, i64 %725
  %727 = bitcast double* %726 to <4 x double>*
  %wide.load1436 = load <4 x double>, <4 x double>* %727, align 8, !alias.scope !169
  %728 = fmul fast <4 x double> %broadcast.splat1438, %wide.load1436
  %729 = add nuw nsw i64 %724, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %730 = getelementptr double, double* %Packed_MemRef_call2307, i64 %729
  %731 = bitcast double* %730 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %731, align 8
  %732 = fmul fast <4 x double> %broadcast.splat1441, %wide.load1439
  %733 = shl i64 %724, 3
  %734 = add i64 %733, %379
  %735 = getelementptr i8, i8* %call, i64 %734
  %736 = bitcast i8* %735 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %736, align 8, !alias.scope !172, !noalias !174
  %737 = fadd fast <4 x double> %732, %728
  %738 = fmul fast <4 x double> %737, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %739 = fadd fast <4 x double> %738, %wide.load1442
  %740 = bitcast i8* %735 to <4 x double>*
  store <4 x double> %739, <4 x double>* %740, align 8, !alias.scope !172, !noalias !174
  %index.next1433 = add i64 %index1432, 4
  %741 = icmp eq i64 %index.next1433, %n.vec1431
  br i1 %741, label %middle.block1423, label %vector.body1425, !llvm.loop !175

middle.block1423:                                 ; preds = %vector.body1425
  %cmp.n1435 = icmp eq i64 %367, %n.vec1431
  br i1 %cmp.n1435, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2.preheader

polly.loop_header487.us.2.preheader:              ; preds = %vector.memcheck1410, %polly.loop_exit489.loopexit.us.1, %middle.block1423
  %polly.indvar491.us.2.ph = phi i64 [ 0, %vector.memcheck1410 ], [ 0, %polly.loop_exit489.loopexit.us.1 ], [ %n.vec1431, %middle.block1423 ]
  br label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_header487.us.2.preheader, %polly.loop_header487.us.2
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_header487.us.2 ], [ %polly.indvar491.us.2.ph, %polly.loop_header487.us.2.preheader ]
  %742 = add nuw nsw i64 %polly.indvar491.us.2, %345
  %polly.access.add.Packed_MemRef_call1305495.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 2400
  %polly.access.Packed_MemRef_call1305496.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call1305496.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %polly.access.add.Packed_MemRef_call2307503.us.2 = add nuw nsw i64 %742, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %polly.access.Packed_MemRef_call2307504.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call2307504.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %743 = shl i64 %742, 3
  %744 = add i64 %743, %379
  %scevgep510.us.2 = getelementptr i8, i8* %call, i64 %744
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
  %polly.access.add.Packed_MemRef_call2307499.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.3, %376
  %polly.access.Packed_MemRef_call2307500.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2307500.us.3, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.3 = add nsw i64 %375, 3600
  %polly.access.Packed_MemRef_call1305508.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call1305508.us.3, align 8
  %min.iters.check1395 = icmp ult i64 %374, 4
  br i1 %min.iters.check1395, label %polly.loop_header487.us.3.preheader, label %vector.ph1396

vector.ph1396:                                    ; preds = %polly.loop_exit489.loopexit.us.2
  %n.vec1398 = and i64 %374, -4
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1400, %vector.body1390 ]
  %745 = add nuw nsw i64 %index1399, %345
  %746 = add nuw nsw i64 %index1399, 3600
  %747 = getelementptr double, double* %Packed_MemRef_call1305, i64 %746
  %748 = bitcast double* %747 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %748, align 8
  %749 = fmul fast <4 x double> %broadcast.splat1405, %wide.load1403
  %750 = add nuw nsw i64 %745, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %751 = getelementptr double, double* %Packed_MemRef_call2307, i64 %750
  %752 = bitcast double* %751 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %752, align 8
  %753 = fmul fast <4 x double> %broadcast.splat1408, %wide.load1406
  %754 = shl i64 %745, 3
  %755 = add i64 %754, %379
  %756 = getelementptr i8, i8* %call, i64 %755
  %757 = bitcast i8* %756 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %757, align 8, !alias.scope !92, !noalias !94
  %758 = fadd fast <4 x double> %753, %749
  %759 = fmul fast <4 x double> %758, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %760 = fadd fast <4 x double> %759, %wide.load1409
  %761 = bitcast i8* %756 to <4 x double>*
  store <4 x double> %760, <4 x double>* %761, align 8, !alias.scope !92, !noalias !94
  %index.next1400 = add i64 %index1399, 4
  %762 = icmp eq i64 %index.next1400, %n.vec1398
  br i1 %762, label %middle.block1388, label %vector.body1390, !llvm.loop !177

middle.block1388:                                 ; preds = %vector.body1390
  %cmp.n1402 = icmp eq i64 %374, %n.vec1398
  br i1 %cmp.n1402, label %polly.loop_exit482, label %polly.loop_header487.us.3.preheader

polly.loop_header487.us.3.preheader:              ; preds = %polly.loop_exit489.loopexit.us.2, %middle.block1388
  %polly.indvar491.us.3.ph = phi i64 [ 0, %polly.loop_exit489.loopexit.us.2 ], [ %n.vec1398, %middle.block1388 ]
  br label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_header487.us.3.preheader, %polly.loop_header487.us.3
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_header487.us.3 ], [ %polly.indvar491.us.3.ph, %polly.loop_header487.us.3.preheader ]
  %763 = add nuw nsw i64 %polly.indvar491.us.3, %345
  %polly.access.add.Packed_MemRef_call1305495.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 3600
  %polly.access.Packed_MemRef_call1305496.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call1305496.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %polly.access.add.Packed_MemRef_call2307503.us.3 = add nuw nsw i64 %763, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %polly.access.Packed_MemRef_call2307504.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call2307504.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %764 = shl i64 %763, 3
  %765 = add i64 %764, %379
  %scevgep510.us.3 = getelementptr i8, i8* %call, i64 %765
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
  %766 = add nuw nsw i64 %polly.indvar675.us.1, %510
  %polly.access.mul.call1679.us.1 = mul nsw i64 %766, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %451, %polly.access.mul.call1679.us.1
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
  %polly.access.add.call1688.us.1 = or i64 %542, 1
  %polly.access.call1689.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.1
  %polly.access.call1689.load.us.1 = load double, double* %polly.access.call1689.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.1 = add nsw i64 %540, 1200
  %polly.access.Packed_MemRef_call1518692.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.1
  store double %polly.access.call1689.load.us.1, double* %polly.access.Packed_MemRef_call1518692.us.1, align 8
  br label %polly.loop_header671.us.2.preheader

polly.loop_header671.us.2.preheader:              ; preds = %polly.then684.us.1, %polly.cond682.loopexit.us.1
  br label %polly.loop_header671.us.2

polly.loop_header671.us.2:                        ; preds = %polly.loop_header671.us.2.preheader, %polly.loop_header671.us.2
  %polly.indvar675.us.2 = phi i64 [ %polly.indvar_next676.us.2, %polly.loop_header671.us.2 ], [ 0, %polly.loop_header671.us.2.preheader ]
  %767 = add nuw nsw i64 %polly.indvar675.us.2, %510
  %polly.access.mul.call1679.us.2 = mul nsw i64 %767, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %452, %polly.access.mul.call1679.us.2
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
  %polly.access.add.call1688.us.2 = or i64 %542, 2
  %polly.access.call1689.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.2
  %polly.access.call1689.load.us.2 = load double, double* %polly.access.call1689.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.2 = add nsw i64 %540, 2400
  %polly.access.Packed_MemRef_call1518692.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.2
  store double %polly.access.call1689.load.us.2, double* %polly.access.Packed_MemRef_call1518692.us.2, align 8
  br label %polly.loop_header671.us.3.preheader

polly.loop_header671.us.3.preheader:              ; preds = %polly.then684.us.2, %polly.cond682.loopexit.us.2
  br label %polly.loop_header671.us.3

polly.loop_header671.us.3:                        ; preds = %polly.loop_header671.us.3.preheader, %polly.loop_header671.us.3
  %polly.indvar675.us.3 = phi i64 [ %polly.indvar_next676.us.3, %polly.loop_header671.us.3 ], [ 0, %polly.loop_header671.us.3.preheader ]
  %768 = add nuw nsw i64 %polly.indvar675.us.3, %510
  %polly.access.mul.call1679.us.3 = mul nsw i64 %768, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %453, %polly.access.mul.call1679.us.3
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
  %polly.access.add.call1688.us.3 = or i64 %542, 3
  %polly.access.call1689.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.3
  %polly.access.call1689.load.us.3 = load double, double* %polly.access.call1689.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.3 = add nsw i64 %540, 3600
  %polly.access.Packed_MemRef_call1518692.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.3
  store double %polly.access.call1689.load.us.3, double* %polly.access.Packed_MemRef_call1518692.us.3, align 8
  br label %polly.loop_header693.preheader

polly.loop_header700.us.1:                        ; preds = %polly.loop_header700.us.1.preheader, %polly.loop_header700.us.1
  %polly.indvar704.us.1 = phi i64 [ %polly.indvar_next705.us.1, %polly.loop_header700.us.1 ], [ %polly.indvar704.us.1.ph, %polly.loop_header700.us.1.preheader ]
  %769 = add nuw nsw i64 %polly.indvar704.us.1, %510
  %polly.access.add.Packed_MemRef_call1518708.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1200
  %polly.access.Packed_MemRef_call1518709.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1518709.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %polly.access.add.Packed_MemRef_call2520716.us.1 = add nuw nsw i64 %769, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %polly.access.Packed_MemRef_call2520717.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.1
  %_p_scalar_718.us.1 = load double, double* %polly.access.Packed_MemRef_call2520717.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_722.us.1, %_p_scalar_718.us.1
  %770 = shl i64 %769, 3
  %771 = add i64 %770, %544
  %scevgep723.us.1 = getelementptr i8, i8* %call, i64 %771
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
  %polly.access.add.Packed_MemRef_call2520712.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.2, %541
  %polly.access.Packed_MemRef_call2520713.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call2520713.us.2, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.2 = add nsw i64 %540, 2400
  %polly.access.Packed_MemRef_call1518721.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.2
  %_p_scalar_722.us.2 = load double, double* %polly.access.Packed_MemRef_call1518721.us.2, align 8
  %min.iters.check1282 = icmp ult i64 %532, 4
  br i1 %min.iters.check1282, label %polly.loop_header700.us.2.preheader, label %vector.memcheck1264

vector.memcheck1264:                              ; preds = %polly.loop_exit702.loopexit.us.1
  %bound01273 = icmp ult i8* %scevgep1266, %scevgep1272
  %bound11274 = icmp ult i8* %scevgep1270, %scevgep1269
  %found.conflict1275 = and i1 %bound01273, %bound11274
  br i1 %found.conflict1275, label %polly.loop_header700.us.2.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %vector.memcheck1264
  %n.vec1285 = and i64 %532, -4
  %broadcast.splatinsert1291 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1292 = shufflevector <4 x double> %broadcast.splatinsert1291, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x double> poison, double %_p_scalar_722.us.2, i32 0
  %broadcast.splat1295 = shufflevector <4 x double> %broadcast.splatinsert1294, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1279 ]
  %772 = add nuw nsw i64 %index1286, %510
  %773 = add nuw nsw i64 %index1286, 2400
  %774 = getelementptr double, double* %Packed_MemRef_call1518, i64 %773
  %775 = bitcast double* %774 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %775, align 8, !alias.scope !180
  %776 = fmul fast <4 x double> %broadcast.splat1292, %wide.load1290
  %777 = add nuw nsw i64 %772, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %778 = getelementptr double, double* %Packed_MemRef_call2520, i64 %777
  %779 = bitcast double* %778 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %779, align 8
  %780 = fmul fast <4 x double> %broadcast.splat1295, %wide.load1293
  %781 = shl i64 %772, 3
  %782 = add i64 %781, %544
  %783 = getelementptr i8, i8* %call, i64 %782
  %784 = bitcast i8* %783 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %784, align 8, !alias.scope !183, !noalias !185
  %785 = fadd fast <4 x double> %780, %776
  %786 = fmul fast <4 x double> %785, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %787 = fadd fast <4 x double> %786, %wide.load1296
  %788 = bitcast i8* %783 to <4 x double>*
  store <4 x double> %787, <4 x double>* %788, align 8, !alias.scope !183, !noalias !185
  %index.next1287 = add i64 %index1286, 4
  %789 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %789, label %middle.block1277, label %vector.body1279, !llvm.loop !186

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1289 = icmp eq i64 %532, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2.preheader

polly.loop_header700.us.2.preheader:              ; preds = %vector.memcheck1264, %polly.loop_exit702.loopexit.us.1, %middle.block1277
  %polly.indvar704.us.2.ph = phi i64 [ 0, %vector.memcheck1264 ], [ 0, %polly.loop_exit702.loopexit.us.1 ], [ %n.vec1285, %middle.block1277 ]
  br label %polly.loop_header700.us.2

polly.loop_header700.us.2:                        ; preds = %polly.loop_header700.us.2.preheader, %polly.loop_header700.us.2
  %polly.indvar704.us.2 = phi i64 [ %polly.indvar_next705.us.2, %polly.loop_header700.us.2 ], [ %polly.indvar704.us.2.ph, %polly.loop_header700.us.2.preheader ]
  %790 = add nuw nsw i64 %polly.indvar704.us.2, %510
  %polly.access.add.Packed_MemRef_call1518708.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 2400
  %polly.access.Packed_MemRef_call1518709.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1518709.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %polly.access.add.Packed_MemRef_call2520716.us.2 = add nuw nsw i64 %790, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %polly.access.Packed_MemRef_call2520717.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.2
  %_p_scalar_718.us.2 = load double, double* %polly.access.Packed_MemRef_call2520717.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_722.us.2, %_p_scalar_718.us.2
  %791 = shl i64 %790, 3
  %792 = add i64 %791, %544
  %scevgep723.us.2 = getelementptr i8, i8* %call, i64 %792
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
  %polly.access.add.Packed_MemRef_call2520712.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.3, %541
  %polly.access.Packed_MemRef_call2520713.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call2520713.us.3, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.3 = add nsw i64 %540, 3600
  %polly.access.Packed_MemRef_call1518721.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.3
  %_p_scalar_722.us.3 = load double, double* %polly.access.Packed_MemRef_call1518721.us.3, align 8
  %min.iters.check1249 = icmp ult i64 %539, 4
  br i1 %min.iters.check1249, label %polly.loop_header700.us.3.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_exit702.loopexit.us.2
  %n.vec1252 = and i64 %539, -4
  %broadcast.splatinsert1258 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1259 = shufflevector <4 x double> %broadcast.splatinsert1258, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1261 = insertelement <4 x double> poison, double %_p_scalar_722.us.3, i32 0
  %broadcast.splat1262 = shufflevector <4 x double> %broadcast.splatinsert1261, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1244 ]
  %793 = add nuw nsw i64 %index1253, %510
  %794 = add nuw nsw i64 %index1253, 3600
  %795 = getelementptr double, double* %Packed_MemRef_call1518, i64 %794
  %796 = bitcast double* %795 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %796, align 8
  %797 = fmul fast <4 x double> %broadcast.splat1259, %wide.load1257
  %798 = add nuw nsw i64 %793, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %799 = getelementptr double, double* %Packed_MemRef_call2520, i64 %798
  %800 = bitcast double* %799 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %800, align 8
  %801 = fmul fast <4 x double> %broadcast.splat1262, %wide.load1260
  %802 = shl i64 %793, 3
  %803 = add i64 %802, %544
  %804 = getelementptr i8, i8* %call, i64 %803
  %805 = bitcast i8* %804 to <4 x double>*
  %wide.load1263 = load <4 x double>, <4 x double>* %805, align 8, !alias.scope !118, !noalias !120
  %806 = fadd fast <4 x double> %801, %797
  %807 = fmul fast <4 x double> %806, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %808 = fadd fast <4 x double> %807, %wide.load1263
  %809 = bitcast i8* %804 to <4 x double>*
  store <4 x double> %808, <4 x double>* %809, align 8, !alias.scope !118, !noalias !120
  %index.next1254 = add i64 %index1253, 4
  %810 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %810, label %middle.block1242, label %vector.body1244, !llvm.loop !188

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1256 = icmp eq i64 %539, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit695, label %polly.loop_header700.us.3.preheader

polly.loop_header700.us.3.preheader:              ; preds = %polly.loop_exit702.loopexit.us.2, %middle.block1242
  %polly.indvar704.us.3.ph = phi i64 [ 0, %polly.loop_exit702.loopexit.us.2 ], [ %n.vec1252, %middle.block1242 ]
  br label %polly.loop_header700.us.3

polly.loop_header700.us.3:                        ; preds = %polly.loop_header700.us.3.preheader, %polly.loop_header700.us.3
  %polly.indvar704.us.3 = phi i64 [ %polly.indvar_next705.us.3, %polly.loop_header700.us.3 ], [ %polly.indvar704.us.3.ph, %polly.loop_header700.us.3.preheader ]
  %811 = add nuw nsw i64 %polly.indvar704.us.3, %510
  %polly.access.add.Packed_MemRef_call1518708.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 3600
  %polly.access.Packed_MemRef_call1518709.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1518709.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %polly.access.add.Packed_MemRef_call2520716.us.3 = add nuw nsw i64 %811, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %polly.access.Packed_MemRef_call2520717.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.3
  %_p_scalar_718.us.3 = load double, double* %polly.access.Packed_MemRef_call2520717.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_722.us.3, %_p_scalar_718.us.3
  %812 = shl i64 %811, 3
  %813 = add i64 %812, %544
  %scevgep723.us.3 = getelementptr i8, i8* %call, i64 %813
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
!26 = !{!"llvm.loop.tile.size", i32 80}
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
!49 = !{!"llvm.loop.tile.size", i32 64}
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
