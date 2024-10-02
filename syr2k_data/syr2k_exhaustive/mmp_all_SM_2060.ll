; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2060.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2060.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1161
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1226
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check1365 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1365, label %for.body3.i60.preheader1655, label %vector.ph1366

vector.ph1366:                                    ; preds = %for.body3.i60.preheader
  %n.vec1368 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1370, %vector.body1364 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1369
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %min.iters.check1511 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1511, label %for.body3.i99.preheader1654, label %vector.ph1512

vector.ph1512:                                    ; preds = %for.body3.i99.preheader
  %n.vec1514 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1510

vector.body1510:                                  ; preds = %vector.body1510, %vector.ph1512
  %index1515 = phi i64 [ 0, %vector.ph1512 ], [ %index.next1516, %vector.body1510 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1515
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %exitcond1057.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1524 = add i64 %indvar1523, 1
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
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1054.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
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
  %111 = udiv i64 %polly.indvar219, 5
  %112 = add nuw i64 %indvars.iv1049, %111
  %umin = call i64 @llvm.umin.i64(i64 %112, i64 56)
  %113 = mul nsw i64 %polly.indvar219, -64
  %114 = icmp slt i64 %113, -1136
  %115 = select i1 %114, i64 %113, i64 -1136
  %116 = add nsw i64 %115, 1199
  %117 = shl nsw i64 %polly.indvar219, 6
  %118 = add nuw nsw i64 %umin, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 64
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 3
  %exitcond1053.not = icmp eq i64 %polly.indvar_next220, 19
  br i1 %exitcond1053.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %119 = shl nsw i64 %polly.indvar225, 2
  %120 = or i64 %119, 1
  %121 = or i64 %119, 2
  %122 = or i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %123 = or i64 %119, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %123, 1200
  %124 = or i64 %119, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %124, 1200
  %125 = or i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %125, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1052.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit236 ], [ %indvars.iv1038, %polly.loop_header222 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %126 = mul nuw nsw i64 %polly.indvar231, 20
  %127 = add i64 %97, %126
  %smax1637 = call i64 @llvm.smax.i64(i64 %127, i64 0)
  %128 = mul nsw i64 %polly.indvar231, -20
  %129 = add i64 %98, %128
  %130 = add i64 %smax1637, %129
  %131 = mul nuw nsw i64 %polly.indvar231, 160
  %132 = mul nuw nsw i64 %polly.indvar231, 20
  %133 = add i64 %100, %132
  %smax1623 = call i64 @llvm.smax.i64(i64 %133, i64 0)
  %134 = add nuw i64 %99, %smax1623
  %135 = mul nsw i64 %134, 9600
  %136 = add i64 %131, %135
  %137 = or i64 %131, 8
  %138 = add i64 %137, %135
  %139 = mul nsw i64 %polly.indvar231, -20
  %140 = add i64 %99, %139
  %141 = add i64 %smax1623, %140
  %142 = mul nuw nsw i64 %polly.indvar231, 20
  %143 = add i64 %101, %142
  %smax1605 = call i64 @llvm.smax.i64(i64 %143, i64 0)
  %144 = mul nsw i64 %polly.indvar231, -20
  %145 = add i64 %102, %144
  %146 = add i64 %smax1605, %145
  %147 = mul nuw nsw i64 %polly.indvar231, 160
  %148 = mul nuw nsw i64 %polly.indvar231, 20
  %149 = add i64 %104, %148
  %smax1590 = call i64 @llvm.smax.i64(i64 %149, i64 0)
  %150 = add nuw i64 %103, %smax1590
  %151 = mul nsw i64 %150, 9600
  %152 = add i64 %147, %151
  %153 = or i64 %147, 8
  %154 = add i64 %153, %151
  %155 = mul nsw i64 %polly.indvar231, -20
  %156 = add i64 %103, %155
  %157 = add i64 %smax1590, %156
  %158 = mul nuw nsw i64 %polly.indvar231, 20
  %159 = add i64 %105, %158
  %smax1572 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = mul nsw i64 %polly.indvar231, -20
  %161 = add i64 %106, %160
  %162 = add i64 %smax1572, %161
  %163 = mul nuw nsw i64 %polly.indvar231, 160
  %164 = mul nuw nsw i64 %polly.indvar231, 20
  %165 = add i64 %108, %164
  %smax1557 = call i64 @llvm.smax.i64(i64 %165, i64 0)
  %166 = add nuw i64 %107, %smax1557
  %167 = mul nsw i64 %166, 9600
  %168 = add i64 %163, %167
  %169 = or i64 %163, 8
  %170 = add i64 %169, %167
  %171 = mul nsw i64 %polly.indvar231, -20
  %172 = add i64 %107, %171
  %173 = add i64 %smax1557, %172
  %174 = mul nuw nsw i64 %polly.indvar231, 20
  %175 = add i64 %109, %174
  %smax1537 = call i64 @llvm.smax.i64(i64 %175, i64 0)
  %176 = mul nsw i64 %polly.indvar231, -20
  %177 = add i64 %110, %176
  %178 = add i64 %smax1537, %177
  %179 = mul nuw nsw i64 %polly.indvar231, 20
  %180 = add nsw i64 %179, %113
  %181 = icmp sgt i64 %180, 0
  %182 = select i1 %181, i64 %180, i64 0
  %polly.loop_guard.not = icmp sgt i64 %182, %116
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %183 = add i64 %smax, %indvars.iv1040
  %184 = sub nsw i64 %117, %179
  %185 = add nuw nsw i64 %179, 20
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 20
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -20
  %exitcond1051.not = icmp eq i64 %polly.indvar231, %118
  br i1 %exitcond1051.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1538 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1539, %polly.loop_exit267 ]
  %indvars.iv1042 = phi i64 [ %183, %polly.loop_header234.preheader ], [ %indvars.iv.next1043, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %182, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %186 = add i64 %130, %indvar1538
  %smin1638 = call i64 @llvm.smin.i64(i64 %186, i64 19)
  %187 = add nsw i64 %smin1638, 1
  %188 = mul i64 %indvar1538, 9600
  %189 = add i64 %136, %188
  %scevgep1624 = getelementptr i8, i8* %call, i64 %189
  %190 = add i64 %138, %188
  %scevgep1625 = getelementptr i8, i8* %call, i64 %190
  %191 = add i64 %141, %indvar1538
  %smin1626 = call i64 @llvm.smin.i64(i64 %191, i64 19)
  %192 = shl i64 %smin1626, 3
  %scevgep1627 = getelementptr i8, i8* %scevgep1625, i64 %192
  %scevgep1629 = getelementptr i8, i8* %scevgep1628, i64 %192
  %193 = add i64 %146, %indvar1538
  %smin1606 = call i64 @llvm.smin.i64(i64 %193, i64 19)
  %194 = add nsw i64 %smin1606, 1
  %195 = mul i64 %indvar1538, 9600
  %196 = add i64 %152, %195
  %scevgep1591 = getelementptr i8, i8* %call, i64 %196
  %197 = add i64 %154, %195
  %scevgep1592 = getelementptr i8, i8* %call, i64 %197
  %198 = add i64 %157, %indvar1538
  %smin1593 = call i64 @llvm.smin.i64(i64 %198, i64 19)
  %199 = shl i64 %smin1593, 3
  %scevgep1594 = getelementptr i8, i8* %scevgep1592, i64 %199
  %scevgep1597 = getelementptr i8, i8* %scevgep1596, i64 %199
  %200 = add i64 %162, %indvar1538
  %smin1573 = call i64 @llvm.smin.i64(i64 %200, i64 19)
  %201 = add nsw i64 %smin1573, 1
  %202 = mul i64 %indvar1538, 9600
  %203 = add i64 %168, %202
  %scevgep1558 = getelementptr i8, i8* %call, i64 %203
  %204 = add i64 %170, %202
  %scevgep1559 = getelementptr i8, i8* %call, i64 %204
  %205 = add i64 %173, %indvar1538
  %smin1560 = call i64 @llvm.smin.i64(i64 %205, i64 19)
  %206 = shl i64 %smin1560, 3
  %scevgep1561 = getelementptr i8, i8* %scevgep1559, i64 %206
  %scevgep1564 = getelementptr i8, i8* %scevgep1563, i64 %206
  %207 = add i64 %178, %indvar1538
  %smin1540 = call i64 @llvm.smin.i64(i64 %207, i64 19)
  %208 = add nsw i64 %smin1540, 1
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 19)
  %209 = add nsw i64 %polly.indvar237, %184
  %polly.loop_guard2501148 = icmp sgt i64 %209, -1
  %210 = add nuw nsw i64 %polly.indvar237, %117
  %.not = icmp ult i64 %210, %185
  %polly.access.mul.call1259 = mul nsw i64 %210, 1000
  %211 = add nuw i64 %polly.access.mul.call1259, %119
  br i1 %polly.loop_guard2501148, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %212 = add nuw nsw i64 %polly.indvar251.us, %179
  %polly.access.mul.call1255.us = mul nuw nsw i64 %212, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %119, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar251.us, %smin1046
  br i1 %exitcond1044.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %211
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %211
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %211, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %211, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %211, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1534, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %116
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %indvar.next1539 = add i64 %indvar1538, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %213 = mul i64 %210, 9600
  br i1 %polly.loop_guard2501148, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %210
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1639 = icmp ult i64 %187, 4
  br i1 %min.iters.check1639, label %polly.loop_header272.us.preheader, label %vector.memcheck1622

vector.memcheck1622:                              ; preds = %polly.loop_header265.us.preheader
  %bound01630 = icmp ult i8* %scevgep1624, %scevgep1629
  %bound11631 = icmp ult i8* %malloccall, %scevgep1627
  %found.conflict1632 = and i1 %bound01630, %bound11631
  br i1 %found.conflict1632, label %polly.loop_header272.us.preheader, label %vector.ph1640

vector.ph1640:                                    ; preds = %vector.memcheck1622
  %n.vec1642 = and i64 %187, -4
  %broadcast.splatinsert1648 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1649 = shufflevector <4 x double> %broadcast.splatinsert1648, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1651 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1652 = shufflevector <4 x double> %broadcast.splatinsert1651, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1636

vector.body1636:                                  ; preds = %vector.body1636, %vector.ph1640
  %index1643 = phi i64 [ 0, %vector.ph1640 ], [ %index.next1644, %vector.body1636 ]
  %214 = add nuw nsw i64 %index1643, %179
  %215 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1643
  %216 = bitcast double* %215 to <4 x double>*
  %wide.load1647 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !77
  %217 = fmul fast <4 x double> %broadcast.splat1649, %wide.load1647
  %218 = add nuw nsw i64 %214, %polly.access.mul.Packed_MemRef_call2283.us
  %219 = getelementptr double, double* %Packed_MemRef_call2, i64 %218
  %220 = bitcast double* %219 to <4 x double>*
  %wide.load1650 = load <4 x double>, <4 x double>* %220, align 8
  %221 = fmul fast <4 x double> %broadcast.splat1652, %wide.load1650
  %222 = shl i64 %214, 3
  %223 = add i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  %wide.load1653 = load <4 x double>, <4 x double>* %225, align 8, !alias.scope !80, !noalias !82
  %226 = fadd fast <4 x double> %221, %217
  %227 = fmul fast <4 x double> %226, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %228 = fadd fast <4 x double> %227, %wide.load1653
  %229 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %228, <4 x double>* %229, align 8, !alias.scope !80, !noalias !82
  %index.next1644 = add i64 %index1643, 4
  %230 = icmp eq i64 %index.next1644, %n.vec1642
  br i1 %230, label %middle.block1634, label %vector.body1636, !llvm.loop !83

middle.block1634:                                 ; preds = %vector.body1636
  %cmp.n1646 = icmp eq i64 %187, %n.vec1642
  br i1 %cmp.n1646, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1622, %polly.loop_header265.us.preheader, %middle.block1634
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1622 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1642, %middle.block1634 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %231 = add nuw nsw i64 %polly.indvar276.us, %179
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %232 = shl i64 %231, 3
  %233 = add i64 %232, %213
  %scevgep295.us = getelementptr i8, i8* %call, i64 %233
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar276.us, %smin1046
  br i1 %exitcond1047.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1634
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %210
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1607 = icmp ult i64 %194, 4
  br i1 %min.iters.check1607, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1589

vector.memcheck1589:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01598 = icmp ult i8* %scevgep1591, %scevgep1597
  %bound11599 = icmp ult i8* %scevgep1595, %scevgep1594
  %found.conflict1600 = and i1 %bound01598, %bound11599
  br i1 %found.conflict1600, label %polly.loop_header272.us.1.preheader, label %vector.ph1608

vector.ph1608:                                    ; preds = %vector.memcheck1589
  %n.vec1610 = and i64 %194, -4
  %broadcast.splatinsert1616 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1617 = shufflevector <4 x double> %broadcast.splatinsert1616, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1619 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1620 = shufflevector <4 x double> %broadcast.splatinsert1619, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1604

vector.body1604:                                  ; preds = %vector.body1604, %vector.ph1608
  %index1611 = phi i64 [ 0, %vector.ph1608 ], [ %index.next1612, %vector.body1604 ]
  %234 = add nuw nsw i64 %index1611, %179
  %235 = add nuw nsw i64 %index1611, 1200
  %236 = getelementptr double, double* %Packed_MemRef_call1, i64 %235
  %237 = bitcast double* %236 to <4 x double>*
  %wide.load1615 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !85
  %238 = fmul fast <4 x double> %broadcast.splat1617, %wide.load1615
  %239 = add nuw nsw i64 %234, %polly.access.mul.Packed_MemRef_call2283.us.1
  %240 = getelementptr double, double* %Packed_MemRef_call2, i64 %239
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1618 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1620, %wide.load1618
  %243 = shl i64 %234, 3
  %244 = add i64 %243, %213
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1621 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !88, !noalias !90
  %247 = fadd fast <4 x double> %242, %238
  %248 = fmul fast <4 x double> %247, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %249 = fadd fast <4 x double> %248, %wide.load1621
  %250 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !88, !noalias !90
  %index.next1612 = add i64 %index1611, 4
  %251 = icmp eq i64 %index.next1612, %n.vec1610
  br i1 %251, label %middle.block1602, label %vector.body1604, !llvm.loop !91

middle.block1602:                                 ; preds = %vector.body1604
  %cmp.n1614 = icmp eq i64 %194, %n.vec1610
  br i1 %cmp.n1614, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1.preheader

polly.loop_header272.us.1.preheader:              ; preds = %vector.memcheck1589, %polly.loop_exit274.loopexit.us, %middle.block1602
  %polly.indvar276.us.1.ph = phi i64 [ 0, %vector.memcheck1589 ], [ 0, %polly.loop_exit274.loopexit.us ], [ %n.vec1610, %middle.block1602 ]
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
  %indvar1377 = phi i64 [ %indvar.next1378, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %252 = add i64 %indvar1377, 1
  %253 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %253
  %min.iters.check1379 = icmp ult i64 %252, 4
  br i1 %min.iters.check1379, label %polly.loop_header394.preheader, label %vector.ph1380

vector.ph1380:                                    ; preds = %polly.loop_header388
  %n.vec1382 = and i64 %252, -4
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1384, %vector.body1376 ]
  %254 = shl nuw nsw i64 %index1383, 3
  %255 = getelementptr i8, i8* %scevgep400, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %257 = fmul fast <4 x double> %wide.load1387, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %258 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !92, !noalias !94
  %index.next1384 = add i64 %index1383, 4
  %259 = icmp eq i64 %index.next1384, %n.vec1382
  br i1 %259, label %middle.block1374, label %vector.body1376, !llvm.loop !99

middle.block1374:                                 ; preds = %vector.body1376
  %cmp.n1386 = icmp eq i64 %252, %n.vec1382
  br i1 %cmp.n1386, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1374
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1382, %middle.block1374 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1374
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1378 = add i64 %indvar1377, 1
  br i1 %exitcond1085.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %260 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %260
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1084.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !100

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1083.not, label %polly.loop_header420.preheader, label %polly.loop_header404

polly.loop_header420.preheader:                   ; preds = %polly.loop_exit412
  %scevgep1416 = getelementptr i8, i8* %malloccall302, i64 19200
  %scevgep1417 = getelementptr i8, i8* %malloccall302, i64 19208
  %scevgep1449 = getelementptr i8, i8* %malloccall302, i64 9600
  %scevgep1450 = getelementptr i8, i8* %malloccall302, i64 9608
  %scevgep1482 = getelementptr i8, i8* %malloccall302, i64 8
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
  %exitcond1082.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1082.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit428
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %261 = mul nsw i64 %polly.indvar423, -64
  %262 = shl nuw nsw i64 %polly.indvar423, 6
  %263 = shl nuw nsw i64 %polly.indvar423, 6
  %264 = mul nsw i64 %polly.indvar423, -64
  %265 = mul nsw i64 %polly.indvar423, -64
  %266 = shl nuw nsw i64 %polly.indvar423, 6
  %267 = shl nuw nsw i64 %polly.indvar423, 6
  %268 = mul nsw i64 %polly.indvar423, -64
  %269 = mul nsw i64 %polly.indvar423, -64
  %270 = shl nuw nsw i64 %polly.indvar423, 6
  %271 = shl nuw nsw i64 %polly.indvar423, 6
  %272 = mul nsw i64 %polly.indvar423, -64
  %273 = mul nsw i64 %polly.indvar423, -64
  %274 = shl nuw nsw i64 %polly.indvar423, 6
  %275 = udiv i64 %polly.indvar423, 5
  %276 = add nuw i64 %indvars.iv1076, %275
  %umin1078 = call i64 @llvm.umin.i64(i64 %276, i64 56)
  %277 = mul nsw i64 %polly.indvar423, -64
  %278 = icmp slt i64 %277, -1136
  %279 = select i1 %278, i64 %277, i64 -1136
  %280 = add nsw i64 %279, 1199
  %281 = shl nsw i64 %polly.indvar423, 6
  %282 = add nuw nsw i64 %umin1078, 3
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -64
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 64
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 3
  %exitcond1081.not = icmp eq i64 %polly.indvar_next424, 19
  br i1 %exitcond1081.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %283 = shl nsw i64 %polly.indvar429, 2
  %284 = or i64 %283, 1
  %285 = or i64 %283, 2
  %286 = or i64 %283, 3
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nsw i64 %polly.indvar429, 4800
  %287 = or i64 %283, 1
  %polly.access.mul.Packed_MemRef_call2305494.us.1 = mul nuw nsw i64 %287, 1200
  %288 = or i64 %283, 2
  %polly.access.mul.Packed_MemRef_call2305494.us.2 = mul nuw nsw i64 %288, 1200
  %289 = or i64 %283, 3
  %polly.access.mul.Packed_MemRef_call2305494.us.3 = mul nuw nsw i64 %289, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1080.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit442 ], [ %indvars.iv1064, %polly.loop_header426 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit442 ], [ %indvars.iv1059, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %290 = mul nuw nsw i64 %polly.indvar436, 20
  %291 = add i64 %261, %290
  %smax1491 = call i64 @llvm.smax.i64(i64 %291, i64 0)
  %292 = mul nsw i64 %polly.indvar436, -20
  %293 = add i64 %262, %292
  %294 = add i64 %smax1491, %293
  %295 = mul nuw nsw i64 %polly.indvar436, 160
  %296 = mul nuw nsw i64 %polly.indvar436, 20
  %297 = add i64 %264, %296
  %smax1477 = call i64 @llvm.smax.i64(i64 %297, i64 0)
  %298 = add nuw i64 %263, %smax1477
  %299 = mul nsw i64 %298, 9600
  %300 = add i64 %295, %299
  %301 = or i64 %295, 8
  %302 = add i64 %301, %299
  %303 = mul nsw i64 %polly.indvar436, -20
  %304 = add i64 %263, %303
  %305 = add i64 %smax1477, %304
  %306 = mul nuw nsw i64 %polly.indvar436, 20
  %307 = add i64 %265, %306
  %smax1459 = call i64 @llvm.smax.i64(i64 %307, i64 0)
  %308 = mul nsw i64 %polly.indvar436, -20
  %309 = add i64 %266, %308
  %310 = add i64 %smax1459, %309
  %311 = mul nuw nsw i64 %polly.indvar436, 160
  %312 = mul nuw nsw i64 %polly.indvar436, 20
  %313 = add i64 %268, %312
  %smax1444 = call i64 @llvm.smax.i64(i64 %313, i64 0)
  %314 = add nuw i64 %267, %smax1444
  %315 = mul nsw i64 %314, 9600
  %316 = add i64 %311, %315
  %317 = or i64 %311, 8
  %318 = add i64 %317, %315
  %319 = mul nsw i64 %polly.indvar436, -20
  %320 = add i64 %267, %319
  %321 = add i64 %smax1444, %320
  %322 = mul nuw nsw i64 %polly.indvar436, 20
  %323 = add i64 %269, %322
  %smax1426 = call i64 @llvm.smax.i64(i64 %323, i64 0)
  %324 = mul nsw i64 %polly.indvar436, -20
  %325 = add i64 %270, %324
  %326 = add i64 %smax1426, %325
  %327 = mul nuw nsw i64 %polly.indvar436, 160
  %328 = mul nuw nsw i64 %polly.indvar436, 20
  %329 = add i64 %272, %328
  %smax1411 = call i64 @llvm.smax.i64(i64 %329, i64 0)
  %330 = add nuw i64 %271, %smax1411
  %331 = mul nsw i64 %330, 9600
  %332 = add i64 %327, %331
  %333 = or i64 %327, 8
  %334 = add i64 %333, %331
  %335 = mul nsw i64 %polly.indvar436, -20
  %336 = add i64 %271, %335
  %337 = add i64 %smax1411, %336
  %338 = mul nuw nsw i64 %polly.indvar436, 20
  %339 = add i64 %273, %338
  %smax1391 = call i64 @llvm.smax.i64(i64 %339, i64 0)
  %340 = mul nsw i64 %polly.indvar436, -20
  %341 = add i64 %274, %340
  %342 = add i64 %smax1391, %341
  %343 = mul nuw nsw i64 %polly.indvar436, 20
  %344 = add nsw i64 %343, %277
  %345 = icmp sgt i64 %344, 0
  %346 = select i1 %345, i64 %344, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %346, %280
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1063 = call i64 @llvm.smax.i64(i64 %indvars.iv1061, i64 0)
  %347 = add i64 %smax1063, %indvars.iv1066
  %348 = sub nsw i64 %281, %343
  %349 = add nuw nsw i64 %343, 20
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 20
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, -20
  %exitcond1079.not = icmp eq i64 %polly.indvar436, %282
  br i1 %exitcond1079.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1392 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1393, %polly.loop_exit478 ]
  %indvars.iv1068 = phi i64 [ %347, %polly.loop_header440.preheader ], [ %indvars.iv.next1069, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %346, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %350 = add i64 %294, %indvar1392
  %smin1492 = call i64 @llvm.smin.i64(i64 %350, i64 19)
  %351 = add nsw i64 %smin1492, 1
  %352 = mul i64 %indvar1392, 9600
  %353 = add i64 %300, %352
  %scevgep1478 = getelementptr i8, i8* %call, i64 %353
  %354 = add i64 %302, %352
  %scevgep1479 = getelementptr i8, i8* %call, i64 %354
  %355 = add i64 %305, %indvar1392
  %smin1480 = call i64 @llvm.smin.i64(i64 %355, i64 19)
  %356 = shl i64 %smin1480, 3
  %scevgep1481 = getelementptr i8, i8* %scevgep1479, i64 %356
  %scevgep1483 = getelementptr i8, i8* %scevgep1482, i64 %356
  %357 = add i64 %310, %indvar1392
  %smin1460 = call i64 @llvm.smin.i64(i64 %357, i64 19)
  %358 = add nsw i64 %smin1460, 1
  %359 = mul i64 %indvar1392, 9600
  %360 = add i64 %316, %359
  %scevgep1445 = getelementptr i8, i8* %call, i64 %360
  %361 = add i64 %318, %359
  %scevgep1446 = getelementptr i8, i8* %call, i64 %361
  %362 = add i64 %321, %indvar1392
  %smin1447 = call i64 @llvm.smin.i64(i64 %362, i64 19)
  %363 = shl i64 %smin1447, 3
  %scevgep1448 = getelementptr i8, i8* %scevgep1446, i64 %363
  %scevgep1451 = getelementptr i8, i8* %scevgep1450, i64 %363
  %364 = add i64 %326, %indvar1392
  %smin1427 = call i64 @llvm.smin.i64(i64 %364, i64 19)
  %365 = add nsw i64 %smin1427, 1
  %366 = mul i64 %indvar1392, 9600
  %367 = add i64 %332, %366
  %scevgep1412 = getelementptr i8, i8* %call, i64 %367
  %368 = add i64 %334, %366
  %scevgep1413 = getelementptr i8, i8* %call, i64 %368
  %369 = add i64 %337, %indvar1392
  %smin1414 = call i64 @llvm.smin.i64(i64 %369, i64 19)
  %370 = shl i64 %smin1414, 3
  %scevgep1415 = getelementptr i8, i8* %scevgep1413, i64 %370
  %scevgep1418 = getelementptr i8, i8* %scevgep1417, i64 %370
  %371 = add i64 %342, %indvar1392
  %smin1394 = call i64 @llvm.smin.i64(i64 %371, i64 19)
  %372 = add nsw i64 %smin1394, 1
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 19)
  %373 = add nsw i64 %polly.indvar444, %348
  %polly.loop_guard4571149 = icmp sgt i64 %373, -1
  %374 = add nuw nsw i64 %polly.indvar444, %281
  %.not926 = icmp ult i64 %374, %349
  %polly.access.mul.call1470 = mul nsw i64 %374, 1000
  %375 = add nuw i64 %polly.access.mul.call1470, %283
  br i1 %polly.loop_guard4571149, label %polly.loop_header454.us, label %polly.loop_header440.split

polly.loop_header454.us:                          ; preds = %polly.loop_header440, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header440 ]
  %376 = add nuw nsw i64 %polly.indvar458.us, %343
  %polly.access.mul.call1462.us = mul nuw nsw i64 %376, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %283, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar458.us, %smin1073
  br i1 %exitcond1071.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %375
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %373
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.loop_header454.us.1.preheader

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.loop_header454.us.1.preheader, label %polly.then467.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447.preheader

polly.loop_header447.preheader:                   ; preds = %polly.loop_header440.split
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %375
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %373
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.access.add.call1471.1 = or i64 %375, 1
  %polly.access.call1472.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.1
  %polly.access.call1472.load.1 = load double, double* %polly.access.call1472.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1303475.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.1
  store double %polly.access.call1472.load.1, double* %polly.access.Packed_MemRef_call1303475.1, align 8
  %polly.access.add.call1471.2 = or i64 %375, 2
  %polly.access.call1472.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.2
  %polly.access.call1472.load.2 = load double, double* %polly.access.call1472.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1303475.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.2
  store double %polly.access.call1472.load.2, double* %polly.access.Packed_MemRef_call1303475.2, align 8
  %polly.access.add.call1471.3 = or i64 %375, 3
  %polly.access.call1472.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.3
  %polly.access.call1472.load.3 = load double, double* %polly.access.call1472.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1303475.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.3
  store double %polly.access.call1472.load.3, double* %polly.access.Packed_MemRef_call1303475.3, align 8
  br label %polly.loop_exit478

polly.loop_exit478:                               ; preds = %polly.loop_header483.us.3, %middle.block1388, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %280
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %indvar.next1393 = add i64 %indvar1392, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.cond465.loopexit.us.3, %polly.then467.us.3
  %377 = mul i64 %374, 9600
  br i1 %polly.loop_guard4571149, label %polly.loop_header476.us.preheader, label %polly.loop_exit478

polly.loop_header476.us.preheader:                ; preds = %polly.loop_header476.preheader
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %374
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %373
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1493 = icmp ult i64 %351, 4
  br i1 %min.iters.check1493, label %polly.loop_header483.us.preheader, label %vector.memcheck1476

vector.memcheck1476:                              ; preds = %polly.loop_header476.us.preheader
  %bound01484 = icmp ult i8* %scevgep1478, %scevgep1483
  %bound11485 = icmp ult i8* %malloccall302, %scevgep1481
  %found.conflict1486 = and i1 %bound01484, %bound11485
  br i1 %found.conflict1486, label %polly.loop_header483.us.preheader, label %vector.ph1494

vector.ph1494:                                    ; preds = %vector.memcheck1476
  %n.vec1496 = and i64 %351, -4
  %broadcast.splatinsert1502 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1503 = shufflevector <4 x double> %broadcast.splatinsert1502, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1505 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1506 = shufflevector <4 x double> %broadcast.splatinsert1505, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1494
  %index1497 = phi i64 [ 0, %vector.ph1494 ], [ %index.next1498, %vector.body1490 ]
  %378 = add nuw nsw i64 %index1497, %343
  %379 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1497
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %380, align 8, !alias.scope !103
  %381 = fmul fast <4 x double> %broadcast.splat1503, %wide.load1501
  %382 = add nuw nsw i64 %378, %polly.access.mul.Packed_MemRef_call2305494.us
  %383 = getelementptr double, double* %Packed_MemRef_call2305, i64 %382
  %384 = bitcast double* %383 to <4 x double>*
  %wide.load1504 = load <4 x double>, <4 x double>* %384, align 8
  %385 = fmul fast <4 x double> %broadcast.splat1506, %wide.load1504
  %386 = shl i64 %378, 3
  %387 = add i64 %386, %377
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %389, align 8, !alias.scope !106, !noalias !108
  %390 = fadd fast <4 x double> %385, %381
  %391 = fmul fast <4 x double> %390, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %392 = fadd fast <4 x double> %391, %wide.load1507
  %393 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %392, <4 x double>* %393, align 8, !alias.scope !106, !noalias !108
  %index.next1498 = add i64 %index1497, 4
  %394 = icmp eq i64 %index.next1498, %n.vec1496
  br i1 %394, label %middle.block1488, label %vector.body1490, !llvm.loop !109

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1500 = icmp eq i64 %351, %n.vec1496
  br i1 %cmp.n1500, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1476, %polly.loop_header476.us.preheader, %middle.block1488
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1476 ], [ 0, %polly.loop_header476.us.preheader ], [ %n.vec1496, %middle.block1488 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %395 = add nuw nsw i64 %polly.indvar487.us, %343
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar487.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %395, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %396 = shl i64 %395, 3
  %397 = add i64 %396, %377
  %scevgep506.us = getelementptr i8, i8* %call, i64 %397
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar487.us, %smin1073
  br i1 %exitcond1074.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !110

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1488
  %polly.access.add.Packed_MemRef_call2305495.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.1, %374
  %polly.access.Packed_MemRef_call2305496.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2305496.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1303504.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1303504.us.1, align 8
  %min.iters.check1461 = icmp ult i64 %358, 4
  br i1 %min.iters.check1461, label %polly.loop_header483.us.1.preheader, label %vector.memcheck1443

vector.memcheck1443:                              ; preds = %polly.loop_exit485.loopexit.us
  %bound01452 = icmp ult i8* %scevgep1445, %scevgep1451
  %bound11453 = icmp ult i8* %scevgep1449, %scevgep1448
  %found.conflict1454 = and i1 %bound01452, %bound11453
  br i1 %found.conflict1454, label %polly.loop_header483.us.1.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %vector.memcheck1443
  %n.vec1464 = and i64 %358, -4
  %broadcast.splatinsert1470 = insertelement <4 x double> poison, double %_p_scalar_497.us.1, i32 0
  %broadcast.splat1471 = shufflevector <4 x double> %broadcast.splatinsert1470, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1473 = insertelement <4 x double> poison, double %_p_scalar_505.us.1, i32 0
  %broadcast.splat1474 = shufflevector <4 x double> %broadcast.splatinsert1473, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1466, %vector.body1458 ]
  %398 = add nuw nsw i64 %index1465, %343
  %399 = add nuw nsw i64 %index1465, 1200
  %400 = getelementptr double, double* %Packed_MemRef_call1303, i64 %399
  %401 = bitcast double* %400 to <4 x double>*
  %wide.load1469 = load <4 x double>, <4 x double>* %401, align 8, !alias.scope !111
  %402 = fmul fast <4 x double> %broadcast.splat1471, %wide.load1469
  %403 = add nuw nsw i64 %398, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %404 = getelementptr double, double* %Packed_MemRef_call2305, i64 %403
  %405 = bitcast double* %404 to <4 x double>*
  %wide.load1472 = load <4 x double>, <4 x double>* %405, align 8
  %406 = fmul fast <4 x double> %broadcast.splat1474, %wide.load1472
  %407 = shl i64 %398, 3
  %408 = add i64 %407, %377
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %410, align 8, !alias.scope !114, !noalias !116
  %411 = fadd fast <4 x double> %406, %402
  %412 = fmul fast <4 x double> %411, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %413 = fadd fast <4 x double> %412, %wide.load1475
  %414 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %413, <4 x double>* %414, align 8, !alias.scope !114, !noalias !116
  %index.next1466 = add i64 %index1465, 4
  %415 = icmp eq i64 %index.next1466, %n.vec1464
  br i1 %415, label %middle.block1456, label %vector.body1458, !llvm.loop !117

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1468 = icmp eq i64 %358, %n.vec1464
  br i1 %cmp.n1468, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1.preheader

polly.loop_header483.us.1.preheader:              ; preds = %vector.memcheck1443, %polly.loop_exit485.loopexit.us, %middle.block1456
  %polly.indvar487.us.1.ph = phi i64 [ 0, %vector.memcheck1443 ], [ 0, %polly.loop_exit485.loopexit.us ], [ %n.vec1464, %middle.block1456 ]
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
  %416 = add i64 %indvar, 1
  %417 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %417
  %min.iters.check1233 = icmp ult i64 %416, 4
  br i1 %min.iters.check1233, label %polly.loop_header605.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header599
  %n.vec1236 = and i64 %416, -4
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1232 ]
  %418 = shl nuw nsw i64 %index1237, 3
  %419 = getelementptr i8, i8* %scevgep611, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %420, align 8, !alias.scope !118, !noalias !120
  %421 = fmul fast <4 x double> %wide.load1241, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %422 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %421, <4 x double>* %422, align 8, !alias.scope !118, !noalias !120
  %index.next1238 = add i64 %index1237, 4
  %423 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %423, label %middle.block1230, label %vector.body1232, !llvm.loop !125

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %416, %n.vec1236
  br i1 %cmp.n1240, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1230
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1236, %middle.block1230 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1230
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1113.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %424 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %424
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1112.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !126

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1111.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %scevgep1270 = getelementptr i8, i8* %malloccall513, i64 19200
  %scevgep1271 = getelementptr i8, i8* %malloccall513, i64 19208
  %scevgep1303 = getelementptr i8, i8* %malloccall513, i64 9600
  %scevgep1304 = getelementptr i8, i8* %malloccall513, i64 9608
  %scevgep1336 = getelementptr i8, i8* %malloccall513, i64 8
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
  %exitcond1110.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1110.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %425 = mul nsw i64 %polly.indvar634, -64
  %426 = shl nuw nsw i64 %polly.indvar634, 6
  %427 = shl nuw nsw i64 %polly.indvar634, 6
  %428 = mul nsw i64 %polly.indvar634, -64
  %429 = mul nsw i64 %polly.indvar634, -64
  %430 = shl nuw nsw i64 %polly.indvar634, 6
  %431 = shl nuw nsw i64 %polly.indvar634, 6
  %432 = mul nsw i64 %polly.indvar634, -64
  %433 = mul nsw i64 %polly.indvar634, -64
  %434 = shl nuw nsw i64 %polly.indvar634, 6
  %435 = shl nuw nsw i64 %polly.indvar634, 6
  %436 = mul nsw i64 %polly.indvar634, -64
  %437 = mul nsw i64 %polly.indvar634, -64
  %438 = shl nuw nsw i64 %polly.indvar634, 6
  %439 = udiv i64 %polly.indvar634, 5
  %440 = add nuw i64 %indvars.iv1104, %439
  %umin1106 = call i64 @llvm.umin.i64(i64 %440, i64 56)
  %441 = mul nsw i64 %polly.indvar634, -64
  %442 = icmp slt i64 %441, -1136
  %443 = select i1 %442, i64 %441, i64 -1136
  %444 = add nsw i64 %443, 1199
  %445 = shl nsw i64 %polly.indvar634, 6
  %446 = add nuw nsw i64 %umin1106, 3
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, -64
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 64
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 3
  %exitcond1109.not = icmp eq i64 %polly.indvar_next635, 19
  br i1 %exitcond1109.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %447 = shl nsw i64 %polly.indvar640, 2
  %448 = or i64 %447, 1
  %449 = or i64 %447, 2
  %450 = or i64 %447, 3
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nsw i64 %polly.indvar640, 4800
  %451 = or i64 %447, 1
  %polly.access.mul.Packed_MemRef_call2516705.us.1 = mul nuw nsw i64 %451, 1200
  %452 = or i64 %447, 2
  %polly.access.mul.Packed_MemRef_call2516705.us.2 = mul nuw nsw i64 %452, 1200
  %453 = or i64 %447, 3
  %polly.access.mul.Packed_MemRef_call2516705.us.3 = mul nuw nsw i64 %453, 1200
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next641, 250
  br i1 %exitcond1108.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit653 ], [ %indvars.iv1092, %polly.loop_header637 ]
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit653 ], [ %indvars.iv1087, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %454 = mul nuw nsw i64 %polly.indvar647, 20
  %455 = add i64 %425, %454
  %smax1345 = call i64 @llvm.smax.i64(i64 %455, i64 0)
  %456 = mul nsw i64 %polly.indvar647, -20
  %457 = add i64 %426, %456
  %458 = add i64 %smax1345, %457
  %459 = mul nuw nsw i64 %polly.indvar647, 160
  %460 = mul nuw nsw i64 %polly.indvar647, 20
  %461 = add i64 %428, %460
  %smax1331 = call i64 @llvm.smax.i64(i64 %461, i64 0)
  %462 = add nuw i64 %427, %smax1331
  %463 = mul nsw i64 %462, 9600
  %464 = add i64 %459, %463
  %465 = or i64 %459, 8
  %466 = add i64 %465, %463
  %467 = mul nsw i64 %polly.indvar647, -20
  %468 = add i64 %427, %467
  %469 = add i64 %smax1331, %468
  %470 = mul nuw nsw i64 %polly.indvar647, 20
  %471 = add i64 %429, %470
  %smax1313 = call i64 @llvm.smax.i64(i64 %471, i64 0)
  %472 = mul nsw i64 %polly.indvar647, -20
  %473 = add i64 %430, %472
  %474 = add i64 %smax1313, %473
  %475 = mul nuw nsw i64 %polly.indvar647, 160
  %476 = mul nuw nsw i64 %polly.indvar647, 20
  %477 = add i64 %432, %476
  %smax1298 = call i64 @llvm.smax.i64(i64 %477, i64 0)
  %478 = add nuw i64 %431, %smax1298
  %479 = mul nsw i64 %478, 9600
  %480 = add i64 %475, %479
  %481 = or i64 %475, 8
  %482 = add i64 %481, %479
  %483 = mul nsw i64 %polly.indvar647, -20
  %484 = add i64 %431, %483
  %485 = add i64 %smax1298, %484
  %486 = mul nuw nsw i64 %polly.indvar647, 20
  %487 = add i64 %433, %486
  %smax1280 = call i64 @llvm.smax.i64(i64 %487, i64 0)
  %488 = mul nsw i64 %polly.indvar647, -20
  %489 = add i64 %434, %488
  %490 = add i64 %smax1280, %489
  %491 = mul nuw nsw i64 %polly.indvar647, 160
  %492 = mul nuw nsw i64 %polly.indvar647, 20
  %493 = add i64 %436, %492
  %smax1265 = call i64 @llvm.smax.i64(i64 %493, i64 0)
  %494 = add nuw i64 %435, %smax1265
  %495 = mul nsw i64 %494, 9600
  %496 = add i64 %491, %495
  %497 = or i64 %491, 8
  %498 = add i64 %497, %495
  %499 = mul nsw i64 %polly.indvar647, -20
  %500 = add i64 %435, %499
  %501 = add i64 %smax1265, %500
  %502 = mul nuw nsw i64 %polly.indvar647, 20
  %503 = add i64 %437, %502
  %smax1245 = call i64 @llvm.smax.i64(i64 %503, i64 0)
  %504 = mul nsw i64 %polly.indvar647, -20
  %505 = add i64 %438, %504
  %506 = add i64 %smax1245, %505
  %507 = mul nuw nsw i64 %polly.indvar647, 20
  %508 = add nsw i64 %507, %441
  %509 = icmp sgt i64 %508, 0
  %510 = select i1 %509, i64 %508, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %510, %444
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1091 = call i64 @llvm.smax.i64(i64 %indvars.iv1089, i64 0)
  %511 = add i64 %smax1091, %indvars.iv1094
  %512 = sub nsw i64 %445, %507
  %513 = add nuw nsw i64 %507, 20
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, 20
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -20
  %exitcond1107.not = icmp eq i64 %polly.indvar647, %446
  br i1 %exitcond1107.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1246 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1247, %polly.loop_exit689 ]
  %indvars.iv1096 = phi i64 [ %511, %polly.loop_header651.preheader ], [ %indvars.iv.next1097, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %510, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %514 = add i64 %458, %indvar1246
  %smin1346 = call i64 @llvm.smin.i64(i64 %514, i64 19)
  %515 = add nsw i64 %smin1346, 1
  %516 = mul i64 %indvar1246, 9600
  %517 = add i64 %464, %516
  %scevgep1332 = getelementptr i8, i8* %call, i64 %517
  %518 = add i64 %466, %516
  %scevgep1333 = getelementptr i8, i8* %call, i64 %518
  %519 = add i64 %469, %indvar1246
  %smin1334 = call i64 @llvm.smin.i64(i64 %519, i64 19)
  %520 = shl i64 %smin1334, 3
  %scevgep1335 = getelementptr i8, i8* %scevgep1333, i64 %520
  %scevgep1337 = getelementptr i8, i8* %scevgep1336, i64 %520
  %521 = add i64 %474, %indvar1246
  %smin1314 = call i64 @llvm.smin.i64(i64 %521, i64 19)
  %522 = add nsw i64 %smin1314, 1
  %523 = mul i64 %indvar1246, 9600
  %524 = add i64 %480, %523
  %scevgep1299 = getelementptr i8, i8* %call, i64 %524
  %525 = add i64 %482, %523
  %scevgep1300 = getelementptr i8, i8* %call, i64 %525
  %526 = add i64 %485, %indvar1246
  %smin1301 = call i64 @llvm.smin.i64(i64 %526, i64 19)
  %527 = shl i64 %smin1301, 3
  %scevgep1302 = getelementptr i8, i8* %scevgep1300, i64 %527
  %scevgep1305 = getelementptr i8, i8* %scevgep1304, i64 %527
  %528 = add i64 %490, %indvar1246
  %smin1281 = call i64 @llvm.smin.i64(i64 %528, i64 19)
  %529 = add nsw i64 %smin1281, 1
  %530 = mul i64 %indvar1246, 9600
  %531 = add i64 %496, %530
  %scevgep1266 = getelementptr i8, i8* %call, i64 %531
  %532 = add i64 %498, %530
  %scevgep1267 = getelementptr i8, i8* %call, i64 %532
  %533 = add i64 %501, %indvar1246
  %smin1268 = call i64 @llvm.smin.i64(i64 %533, i64 19)
  %534 = shl i64 %smin1268, 3
  %scevgep1269 = getelementptr i8, i8* %scevgep1267, i64 %534
  %scevgep1272 = getelementptr i8, i8* %scevgep1271, i64 %534
  %535 = add i64 %506, %indvar1246
  %smin1248 = call i64 @llvm.smin.i64(i64 %535, i64 19)
  %536 = add nsw i64 %smin1248, 1
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 19)
  %537 = add nsw i64 %polly.indvar655, %512
  %polly.loop_guard6681150 = icmp sgt i64 %537, -1
  %538 = add nuw nsw i64 %polly.indvar655, %445
  %.not927 = icmp ult i64 %538, %513
  %polly.access.mul.call1681 = mul nsw i64 %538, 1000
  %539 = add nuw i64 %polly.access.mul.call1681, %447
  br i1 %polly.loop_guard6681150, label %polly.loop_header665.us, label %polly.loop_header651.split

polly.loop_header665.us:                          ; preds = %polly.loop_header651, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header651 ]
  %540 = add nuw nsw i64 %polly.indvar669.us, %507
  %polly.access.mul.call1673.us = mul nuw nsw i64 %540, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %447, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar669.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar669.us, %smin1101
  br i1 %exitcond1099.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %539
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %537
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.loop_header665.us.1.preheader

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.loop_header665.us.1.preheader, label %polly.then678.us

polly.loop_header665.us.1.preheader:              ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  br label %polly.loop_header665.us.1

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658.preheader

polly.loop_header658.preheader:                   ; preds = %polly.loop_header651.split
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %539
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %537
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.access.add.call1682.1 = or i64 %539, 1
  %polly.access.call1683.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.1
  %polly.access.call1683.load.1 = load double, double* %polly.access.call1683.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1514686.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.1
  store double %polly.access.call1683.load.1, double* %polly.access.Packed_MemRef_call1514686.1, align 8
  %polly.access.add.call1682.2 = or i64 %539, 2
  %polly.access.call1683.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.2
  %polly.access.call1683.load.2 = load double, double* %polly.access.call1683.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1514686.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.2
  store double %polly.access.call1683.load.2, double* %polly.access.Packed_MemRef_call1514686.2, align 8
  %polly.access.add.call1682.3 = or i64 %539, 3
  %polly.access.call1683.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.3
  %polly.access.call1683.load.3 = load double, double* %polly.access.call1683.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1514686.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.3
  store double %polly.access.call1683.load.3, double* %polly.access.Packed_MemRef_call1514686.3, align 8
  br label %polly.loop_exit689

polly.loop_exit689:                               ; preds = %polly.loop_header694.us.3, %middle.block1242, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %444
  %indvars.iv.next1097 = add i64 %indvars.iv1096, 1
  %indvar.next1247 = add i64 %indvar1246, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.cond676.loopexit.us.3, %polly.then678.us.3
  %541 = mul i64 %538, 9600
  br i1 %polly.loop_guard6681150, label %polly.loop_header687.us.preheader, label %polly.loop_exit689

polly.loop_header687.us.preheader:                ; preds = %polly.loop_header687.preheader
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %538
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %537
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1347 = icmp ult i64 %515, 4
  br i1 %min.iters.check1347, label %polly.loop_header694.us.preheader, label %vector.memcheck1330

vector.memcheck1330:                              ; preds = %polly.loop_header687.us.preheader
  %bound01338 = icmp ult i8* %scevgep1332, %scevgep1337
  %bound11339 = icmp ult i8* %malloccall513, %scevgep1335
  %found.conflict1340 = and i1 %bound01338, %bound11339
  br i1 %found.conflict1340, label %polly.loop_header694.us.preheader, label %vector.ph1348

vector.ph1348:                                    ; preds = %vector.memcheck1330
  %n.vec1350 = and i64 %515, -4
  %broadcast.splatinsert1356 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1357 = shufflevector <4 x double> %broadcast.splatinsert1356, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1360 = shufflevector <4 x double> %broadcast.splatinsert1359, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1352, %vector.body1344 ]
  %542 = add nuw nsw i64 %index1351, %507
  %543 = getelementptr double, double* %Packed_MemRef_call1514, i64 %index1351
  %544 = bitcast double* %543 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %544, align 8, !alias.scope !129
  %545 = fmul fast <4 x double> %broadcast.splat1357, %wide.load1355
  %546 = add nuw nsw i64 %542, %polly.access.mul.Packed_MemRef_call2516705.us
  %547 = getelementptr double, double* %Packed_MemRef_call2516, i64 %546
  %548 = bitcast double* %547 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %548, align 8
  %549 = fmul fast <4 x double> %broadcast.splat1360, %wide.load1358
  %550 = shl i64 %542, 3
  %551 = add i64 %550, %541
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %553, align 8, !alias.scope !132, !noalias !134
  %554 = fadd fast <4 x double> %549, %545
  %555 = fmul fast <4 x double> %554, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %556 = fadd fast <4 x double> %555, %wide.load1361
  %557 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %556, <4 x double>* %557, align 8, !alias.scope !132, !noalias !134
  %index.next1352 = add i64 %index1351, 4
  %558 = icmp eq i64 %index.next1352, %n.vec1350
  br i1 %558, label %middle.block1342, label %vector.body1344, !llvm.loop !135

middle.block1342:                                 ; preds = %vector.body1344
  %cmp.n1354 = icmp eq i64 %515, %n.vec1350
  br i1 %cmp.n1354, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1330, %polly.loop_header687.us.preheader, %middle.block1342
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1330 ], [ 0, %polly.loop_header687.us.preheader ], [ %n.vec1350, %middle.block1342 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %559 = add nuw nsw i64 %polly.indvar698.us, %507
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar698.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %559, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %560 = shl i64 %559, 3
  %561 = add i64 %560, %541
  %scevgep717.us = getelementptr i8, i8* %call, i64 %561
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar698.us, %smin1101
  br i1 %exitcond1102.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !136

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1342
  %polly.access.add.Packed_MemRef_call2516706.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.1, %538
  %polly.access.Packed_MemRef_call2516707.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call2516707.us.1, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1514715.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call1514715.us.1, align 8
  %min.iters.check1315 = icmp ult i64 %522, 4
  br i1 %min.iters.check1315, label %polly.loop_header694.us.1.preheader, label %vector.memcheck1297

vector.memcheck1297:                              ; preds = %polly.loop_exit696.loopexit.us
  %bound01306 = icmp ult i8* %scevgep1299, %scevgep1305
  %bound11307 = icmp ult i8* %scevgep1303, %scevgep1302
  %found.conflict1308 = and i1 %bound01306, %bound11307
  br i1 %found.conflict1308, label %polly.loop_header694.us.1.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %vector.memcheck1297
  %n.vec1318 = and i64 %522, -4
  %broadcast.splatinsert1324 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1325 = shufflevector <4 x double> %broadcast.splatinsert1324, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1327 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1328 = shufflevector <4 x double> %broadcast.splatinsert1327, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1312 ]
  %562 = add nuw nsw i64 %index1319, %507
  %563 = add nuw nsw i64 %index1319, 1200
  %564 = getelementptr double, double* %Packed_MemRef_call1514, i64 %563
  %565 = bitcast double* %564 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %565, align 8, !alias.scope !137
  %566 = fmul fast <4 x double> %broadcast.splat1325, %wide.load1323
  %567 = add nuw nsw i64 %562, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %568 = getelementptr double, double* %Packed_MemRef_call2516, i64 %567
  %569 = bitcast double* %568 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %569, align 8
  %570 = fmul fast <4 x double> %broadcast.splat1328, %wide.load1326
  %571 = shl i64 %562, 3
  %572 = add i64 %571, %541
  %573 = getelementptr i8, i8* %call, i64 %572
  %574 = bitcast i8* %573 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %574, align 8, !alias.scope !140, !noalias !142
  %575 = fadd fast <4 x double> %570, %566
  %576 = fmul fast <4 x double> %575, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %577 = fadd fast <4 x double> %576, %wide.load1329
  %578 = bitcast i8* %573 to <4 x double>*
  store <4 x double> %577, <4 x double>* %578, align 8, !alias.scope !140, !noalias !142
  %index.next1320 = add i64 %index1319, 4
  %579 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %579, label %middle.block1310, label %vector.body1312, !llvm.loop !143

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1322 = icmp eq i64 %522, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1.preheader

polly.loop_header694.us.1.preheader:              ; preds = %vector.memcheck1297, %polly.loop_exit696.loopexit.us, %middle.block1310
  %polly.indvar698.us.1.ph = phi i64 [ 0, %vector.memcheck1297 ], [ 0, %polly.loop_exit696.loopexit.us ], [ %n.vec1318, %middle.block1310 ]
  br label %polly.loop_header694.us.1

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %580 = shl nsw i64 %polly.indvar849, 5
  %581 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1143.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %582 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %582, i64 -1168)
  %583 = add nsw i64 %smin, 1200
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -1168)
  %584 = shl nsw i64 %polly.indvar855, 5
  %585 = add nsw i64 %smin1136, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1142.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %586 = add nuw nsw i64 %polly.indvar861, %580
  %587 = trunc i64 %586 to i32
  %588 = mul nuw nsw i64 %586, 9600
  %min.iters.check = icmp eq i64 %583, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1172

vector.ph1172:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1179 = insertelement <4 x i64> poison, i64 %584, i32 0
  %broadcast.splat1180 = shufflevector <4 x i64> %broadcast.splatinsert1179, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %587, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1172
  %index1173 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1177 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1172 ], [ %vec.ind.next1178, %vector.body1171 ]
  %589 = add nuw nsw <4 x i64> %vec.ind1177, %broadcast.splat1180
  %590 = trunc <4 x i64> %589 to <4 x i32>
  %591 = mul <4 x i32> %broadcast.splat1182, %590
  %592 = add <4 x i32> %591, <i32 3, i32 3, i32 3, i32 3>
  %593 = urem <4 x i32> %592, <i32 1200, i32 1200, i32 1200, i32 1200>
  %594 = sitofp <4 x i32> %593 to <4 x double>
  %595 = fmul fast <4 x double> %594, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %596 = extractelement <4 x i64> %589, i32 0
  %597 = shl i64 %596, 3
  %598 = add nuw nsw i64 %597, %588
  %599 = getelementptr i8, i8* %call, i64 %598
  %600 = bitcast i8* %599 to <4 x double>*
  store <4 x double> %595, <4 x double>* %600, align 8, !alias.scope !144, !noalias !146
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1178 = add <4 x i64> %vec.ind1177, <i64 4, i64 4, i64 4, i64 4>
  %601 = icmp eq i64 %index.next1174, %583
  br i1 %601, label %polly.loop_exit866, label %vector.body1171, !llvm.loop !149

polly.loop_exit866:                               ; preds = %vector.body1171, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar861, %581
  br i1 %exitcond1141.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %602 = add nuw nsw i64 %polly.indvar867, %584
  %603 = trunc i64 %602 to i32
  %604 = mul i32 %603, %587
  %605 = add i32 %604, 3
  %606 = urem i32 %605, 1200
  %p_conv31.i = sitofp i32 %606 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %607 = shl i64 %602, 3
  %608 = add nuw nsw i64 %607, %588
  %scevgep870 = getelementptr i8, i8* %call, i64 %608
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar867, %585
  br i1 %exitcond1137.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !150

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %609 = shl nsw i64 %polly.indvar876, 5
  %610 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1133.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %611 = mul nsw i64 %polly.indvar882, -32
  %smin1186 = call i64 @llvm.smin.i64(i64 %611, i64 -968)
  %612 = add nsw i64 %smin1186, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %613 = shl nsw i64 %polly.indvar882, 5
  %614 = add nsw i64 %smin1126, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1132.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %615 = add nuw nsw i64 %polly.indvar888, %609
  %616 = trunc i64 %615 to i32
  %617 = mul nuw nsw i64 %615, 8000
  %min.iters.check1187 = icmp eq i64 %612, 0
  br i1 %min.iters.check1187, label %polly.loop_header891, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1197 = insertelement <4 x i64> poison, i64 %613, i32 0
  %broadcast.splat1198 = shufflevector <4 x i64> %broadcast.splatinsert1197, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %616, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1185 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1188 ], [ %vec.ind.next1196, %vector.body1185 ]
  %618 = add nuw nsw <4 x i64> %vec.ind1195, %broadcast.splat1198
  %619 = trunc <4 x i64> %618 to <4 x i32>
  %620 = mul <4 x i32> %broadcast.splat1200, %619
  %621 = add <4 x i32> %620, <i32 2, i32 2, i32 2, i32 2>
  %622 = urem <4 x i32> %621, <i32 1000, i32 1000, i32 1000, i32 1000>
  %623 = sitofp <4 x i32> %622 to <4 x double>
  %624 = fmul fast <4 x double> %623, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %625 = extractelement <4 x i64> %618, i32 0
  %626 = shl i64 %625, 3
  %627 = add nuw nsw i64 %626, %617
  %628 = getelementptr i8, i8* %call2, i64 %627
  %629 = bitcast i8* %628 to <4 x double>*
  store <4 x double> %624, <4 x double>* %629, align 8, !alias.scope !148, !noalias !151
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %630 = icmp eq i64 %index.next1192, %612
  br i1 %630, label %polly.loop_exit893, label %vector.body1185, !llvm.loop !152

polly.loop_exit893:                               ; preds = %vector.body1185, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar888, %610
  br i1 %exitcond1131.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %631 = add nuw nsw i64 %polly.indvar894, %613
  %632 = trunc i64 %631 to i32
  %633 = mul i32 %632, %616
  %634 = add i32 %633, 2
  %635 = urem i32 %634, 1000
  %p_conv10.i = sitofp i32 %635 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %636 = shl i64 %631, 3
  %637 = add nuw nsw i64 %636, %617
  %scevgep897 = getelementptr i8, i8* %call2, i64 %637
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar894, %614
  br i1 %exitcond1127.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !153

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -1168)
  %638 = shl nsw i64 %polly.indvar902, 5
  %639 = add nsw i64 %smin1120, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1123.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %640 = mul nsw i64 %polly.indvar908, -32
  %smin1204 = call i64 @llvm.smin.i64(i64 %640, i64 -968)
  %641 = add nsw i64 %smin1204, 1000
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -968)
  %642 = shl nsw i64 %polly.indvar908, 5
  %643 = add nsw i64 %smin1116, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1122.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %644 = add nuw nsw i64 %polly.indvar914, %638
  %645 = trunc i64 %644 to i32
  %646 = mul nuw nsw i64 %644, 8000
  %min.iters.check1205 = icmp eq i64 %641, 0
  br i1 %min.iters.check1205, label %polly.loop_header917, label %vector.ph1206

vector.ph1206:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1215 = insertelement <4 x i64> poison, i64 %642, i32 0
  %broadcast.splat1216 = shufflevector <4 x i64> %broadcast.splatinsert1215, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %645, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1203 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1206 ], [ %vec.ind.next1214, %vector.body1203 ]
  %647 = add nuw nsw <4 x i64> %vec.ind1213, %broadcast.splat1216
  %648 = trunc <4 x i64> %647 to <4 x i32>
  %649 = mul <4 x i32> %broadcast.splat1218, %648
  %650 = add <4 x i32> %649, <i32 1, i32 1, i32 1, i32 1>
  %651 = urem <4 x i32> %650, <i32 1200, i32 1200, i32 1200, i32 1200>
  %652 = sitofp <4 x i32> %651 to <4 x double>
  %653 = fmul fast <4 x double> %652, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %654 = extractelement <4 x i64> %647, i32 0
  %655 = shl i64 %654, 3
  %656 = add nuw nsw i64 %655, %646
  %657 = getelementptr i8, i8* %call1, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %653, <4 x double>* %658, align 8, !alias.scope !147, !noalias !154
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %659 = icmp eq i64 %index.next1210, %641
  br i1 %659, label %polly.loop_exit919, label %vector.body1203, !llvm.loop !155

polly.loop_exit919:                               ; preds = %vector.body1203, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar914, %639
  br i1 %exitcond1121.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %660 = add nuw nsw i64 %polly.indvar920, %642
  %661 = trunc i64 %660 to i32
  %662 = mul i32 %661, %645
  %663 = add i32 %662, 1
  %664 = urem i32 %663, 1200
  %p_conv.i = sitofp i32 %664 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %665 = shl i64 %660, 3
  %666 = add nuw nsw i64 %665, %646
  %scevgep924 = getelementptr i8, i8* %call1, i64 %666
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar920, %643
  br i1 %exitcond1117.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %667 = add nuw nsw i64 %polly.indvar251.us.1, %179
  %polly.access.mul.call1255.us.1 = mul nuw nsw i64 %667, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %120, %polly.access.mul.call1255.us.1
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
  %polly.access.add.call1260.us.1 = or i64 %211, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %668 = add nuw nsw i64 %polly.indvar251.us.2, %179
  %polly.access.mul.call1255.us.2 = mul nuw nsw i64 %668, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %121, %polly.access.mul.call1255.us.2
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
  %polly.access.add.call1260.us.2 = or i64 %211, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %669 = add nuw nsw i64 %polly.indvar251.us.3, %179
  %polly.access.mul.call1255.us.3 = mul nuw nsw i64 %669, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %122, %polly.access.mul.call1255.us.3
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
  %polly.access.add.call1260.us.3 = or i64 %211, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %670 = add nuw nsw i64 %polly.indvar276.us.1, %179
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %670, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %671 = shl i64 %670, 3
  %672 = add i64 %671, %213
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %672
  %scevgep295296.us.1 = bitcast i8* %scevgep295.us.1 to double*
  %_p_scalar_297.us.1 = load double, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_297.us.1
  store double %p_add42.i118.us.1, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %exitcond1047.1.not = icmp eq i64 %polly.indvar276.us.1, %smin1046
  br i1 %exitcond1047.1.not, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1, !llvm.loop !157

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1602
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %210
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1574 = icmp ult i64 %201, 4
  br i1 %min.iters.check1574, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1556

vector.memcheck1556:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01565 = icmp ult i8* %scevgep1558, %scevgep1564
  %bound11566 = icmp ult i8* %scevgep1562, %scevgep1561
  %found.conflict1567 = and i1 %bound01565, %bound11566
  br i1 %found.conflict1567, label %polly.loop_header272.us.2.preheader, label %vector.ph1575

vector.ph1575:                                    ; preds = %vector.memcheck1556
  %n.vec1577 = and i64 %201, -4
  %broadcast.splatinsert1583 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1584 = shufflevector <4 x double> %broadcast.splatinsert1583, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1586 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1587 = shufflevector <4 x double> %broadcast.splatinsert1586, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1575
  %index1578 = phi i64 [ 0, %vector.ph1575 ], [ %index.next1579, %vector.body1571 ]
  %673 = add nuw nsw i64 %index1578, %179
  %674 = add nuw nsw i64 %index1578, 2400
  %675 = getelementptr double, double* %Packed_MemRef_call1, i64 %674
  %676 = bitcast double* %675 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %676, align 8, !alias.scope !158
  %677 = fmul fast <4 x double> %broadcast.splat1584, %wide.load1582
  %678 = add nuw nsw i64 %673, %polly.access.mul.Packed_MemRef_call2283.us.2
  %679 = getelementptr double, double* %Packed_MemRef_call2, i64 %678
  %680 = bitcast double* %679 to <4 x double>*
  %wide.load1585 = load <4 x double>, <4 x double>* %680, align 8
  %681 = fmul fast <4 x double> %broadcast.splat1587, %wide.load1585
  %682 = shl i64 %673, 3
  %683 = add i64 %682, %213
  %684 = getelementptr i8, i8* %call, i64 %683
  %685 = bitcast i8* %684 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %685, align 8, !alias.scope !161, !noalias !163
  %686 = fadd fast <4 x double> %681, %677
  %687 = fmul fast <4 x double> %686, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %688 = fadd fast <4 x double> %687, %wide.load1588
  %689 = bitcast i8* %684 to <4 x double>*
  store <4 x double> %688, <4 x double>* %689, align 8, !alias.scope !161, !noalias !163
  %index.next1579 = add i64 %index1578, 4
  %690 = icmp eq i64 %index.next1579, %n.vec1577
  br i1 %690, label %middle.block1569, label %vector.body1571, !llvm.loop !164

middle.block1569:                                 ; preds = %vector.body1571
  %cmp.n1581 = icmp eq i64 %201, %n.vec1577
  br i1 %cmp.n1581, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1556, %polly.loop_exit274.loopexit.us.1, %middle.block1569
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1556 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1577, %middle.block1569 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %691 = add nuw nsw i64 %polly.indvar276.us.2, %179
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %691, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %692 = shl i64 %691, 3
  %693 = add i64 %692, %213
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %693
  %scevgep295296.us.2 = bitcast i8* %scevgep295.us.2 to double*
  %_p_scalar_297.us.2 = load double, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_297.us.2
  store double %p_add42.i118.us.2, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %exitcond1047.2.not = icmp eq i64 %polly.indvar276.us.2, %smin1046
  br i1 %exitcond1047.2.not, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2, !llvm.loop !165

polly.loop_exit274.loopexit.us.2:                 ; preds = %polly.loop_header272.us.2, %middle.block1569
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %210
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1541 = icmp ult i64 %208, 4
  br i1 %min.iters.check1541, label %polly.loop_header272.us.3.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1544 = and i64 %208, -4
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1546, %vector.body1536 ]
  %694 = add nuw nsw i64 %index1545, %179
  %695 = add nuw nsw i64 %index1545, 3600
  %696 = getelementptr double, double* %Packed_MemRef_call1, i64 %695
  %697 = bitcast double* %696 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %697, align 8
  %698 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %699 = add nuw nsw i64 %694, %polly.access.mul.Packed_MemRef_call2283.us.3
  %700 = getelementptr double, double* %Packed_MemRef_call2, i64 %699
  %701 = bitcast double* %700 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %701, align 8
  %702 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %703 = shl i64 %694, 3
  %704 = add i64 %703, %213
  %705 = getelementptr i8, i8* %call, i64 %704
  %706 = bitcast i8* %705 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %706, align 8, !alias.scope !65, !noalias !67
  %707 = fadd fast <4 x double> %702, %698
  %708 = fmul fast <4 x double> %707, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %709 = fadd fast <4 x double> %708, %wide.load1555
  %710 = bitcast i8* %705 to <4 x double>*
  store <4 x double> %709, <4 x double>* %710, align 8, !alias.scope !65, !noalias !67
  %index.next1546 = add i64 %index1545, 4
  %711 = icmp eq i64 %index.next1546, %n.vec1544
  br i1 %711, label %middle.block1534, label %vector.body1536, !llvm.loop !166

middle.block1534:                                 ; preds = %vector.body1536
  %cmp.n1548 = icmp eq i64 %208, %n.vec1544
  br i1 %cmp.n1548, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1534
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1544, %middle.block1534 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %712 = add nuw nsw i64 %polly.indvar276.us.3, %179
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %712, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %713 = shl i64 %712, 3
  %714 = add i64 %713, %213
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %714
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
  %715 = add nuw nsw i64 %polly.indvar458.us.1, %343
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %715, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %284, %polly.access.mul.call1462.us.1
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
  %polly.access.add.call1471.us.1 = or i64 %375, 1
  %polly.access.call1472.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.1
  %polly.access.call1472.load.us.1 = load double, double* %polly.access.call1472.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1303475.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.1
  store double %polly.access.call1472.load.us.1, double* %polly.access.Packed_MemRef_call1303475.us.1, align 8
  br label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.then467.us.1, %polly.cond465.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %716 = add nuw nsw i64 %polly.indvar458.us.2, %343
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %716, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %285, %polly.access.mul.call1462.us.2
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
  %polly.access.add.call1471.us.2 = or i64 %375, 2
  %polly.access.call1472.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.2
  %polly.access.call1472.load.us.2 = load double, double* %polly.access.call1472.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1303475.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.2
  store double %polly.access.call1472.load.us.2, double* %polly.access.Packed_MemRef_call1303475.us.2, align 8
  br label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.then467.us.2, %polly.cond465.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %717 = add nuw nsw i64 %polly.indvar458.us.3, %343
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %717, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %286, %polly.access.mul.call1462.us.3
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
  %polly.access.add.call1471.us.3 = or i64 %375, 3
  %polly.access.call1472.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.3
  %polly.access.call1472.load.us.3 = load double, double* %polly.access.call1472.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1303475.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.3
  store double %polly.access.call1472.load.us.3, double* %polly.access.Packed_MemRef_call1303475.us.3, align 8
  br label %polly.loop_header476.preheader

polly.loop_header483.us.1:                        ; preds = %polly.loop_header483.us.1.preheader, %polly.loop_header483.us.1
  %polly.indvar487.us.1 = phi i64 [ %polly.indvar_next488.us.1, %polly.loop_header483.us.1 ], [ %polly.indvar487.us.1.ph, %polly.loop_header483.us.1.preheader ]
  %718 = add nuw nsw i64 %polly.indvar487.us.1, %343
  %polly.access.add.Packed_MemRef_call1303491.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1200
  %polly.access.Packed_MemRef_call1303492.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call1303492.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_497.us.1, %_p_scalar_493.us.1
  %polly.access.add.Packed_MemRef_call2305499.us.1 = add nuw nsw i64 %718, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %polly.access.Packed_MemRef_call2305500.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2305500.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_505.us.1, %_p_scalar_501.us.1
  %719 = shl i64 %718, 3
  %720 = add i64 %719, %377
  %scevgep506.us.1 = getelementptr i8, i8* %call, i64 %720
  %scevgep506507.us.1 = bitcast i8* %scevgep506.us.1 to double*
  %_p_scalar_508.us.1 = load double, double* %scevgep506507.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_508.us.1
  store double %p_add42.i79.us.1, double* %scevgep506507.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1
  %exitcond1074.1.not = icmp eq i64 %polly.indvar487.us.1, %smin1073
  br i1 %exitcond1074.1.not, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1, !llvm.loop !168

polly.loop_exit485.loopexit.us.1:                 ; preds = %polly.loop_header483.us.1, %middle.block1456
  %polly.access.add.Packed_MemRef_call2305495.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.2, %374
  %polly.access.Packed_MemRef_call2305496.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2305496.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1303504.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1303504.us.2, align 8
  %min.iters.check1428 = icmp ult i64 %365, 4
  br i1 %min.iters.check1428, label %polly.loop_header483.us.2.preheader, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %polly.loop_exit485.loopexit.us.1
  %bound01419 = icmp ult i8* %scevgep1412, %scevgep1418
  %bound11420 = icmp ult i8* %scevgep1416, %scevgep1415
  %found.conflict1421 = and i1 %bound01419, %bound11420
  br i1 %found.conflict1421, label %polly.loop_header483.us.2.preheader, label %vector.ph1429

vector.ph1429:                                    ; preds = %vector.memcheck1410
  %n.vec1431 = and i64 %365, -4
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_497.us.2, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_505.us.2, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1425

vector.body1425:                                  ; preds = %vector.body1425, %vector.ph1429
  %index1432 = phi i64 [ 0, %vector.ph1429 ], [ %index.next1433, %vector.body1425 ]
  %721 = add nuw nsw i64 %index1432, %343
  %722 = add nuw nsw i64 %index1432, 2400
  %723 = getelementptr double, double* %Packed_MemRef_call1303, i64 %722
  %724 = bitcast double* %723 to <4 x double>*
  %wide.load1436 = load <4 x double>, <4 x double>* %724, align 8, !alias.scope !169
  %725 = fmul fast <4 x double> %broadcast.splat1438, %wide.load1436
  %726 = add nuw nsw i64 %721, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %727 = getelementptr double, double* %Packed_MemRef_call2305, i64 %726
  %728 = bitcast double* %727 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %728, align 8
  %729 = fmul fast <4 x double> %broadcast.splat1441, %wide.load1439
  %730 = shl i64 %721, 3
  %731 = add i64 %730, %377
  %732 = getelementptr i8, i8* %call, i64 %731
  %733 = bitcast i8* %732 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %733, align 8, !alias.scope !172, !noalias !174
  %734 = fadd fast <4 x double> %729, %725
  %735 = fmul fast <4 x double> %734, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %736 = fadd fast <4 x double> %735, %wide.load1442
  %737 = bitcast i8* %732 to <4 x double>*
  store <4 x double> %736, <4 x double>* %737, align 8, !alias.scope !172, !noalias !174
  %index.next1433 = add i64 %index1432, 4
  %738 = icmp eq i64 %index.next1433, %n.vec1431
  br i1 %738, label %middle.block1423, label %vector.body1425, !llvm.loop !175

middle.block1423:                                 ; preds = %vector.body1425
  %cmp.n1435 = icmp eq i64 %365, %n.vec1431
  br i1 %cmp.n1435, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2.preheader

polly.loop_header483.us.2.preheader:              ; preds = %vector.memcheck1410, %polly.loop_exit485.loopexit.us.1, %middle.block1423
  %polly.indvar487.us.2.ph = phi i64 [ 0, %vector.memcheck1410 ], [ 0, %polly.loop_exit485.loopexit.us.1 ], [ %n.vec1431, %middle.block1423 ]
  br label %polly.loop_header483.us.2

polly.loop_header483.us.2:                        ; preds = %polly.loop_header483.us.2.preheader, %polly.loop_header483.us.2
  %polly.indvar487.us.2 = phi i64 [ %polly.indvar_next488.us.2, %polly.loop_header483.us.2 ], [ %polly.indvar487.us.2.ph, %polly.loop_header483.us.2.preheader ]
  %739 = add nuw nsw i64 %polly.indvar487.us.2, %343
  %polly.access.add.Packed_MemRef_call1303491.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 2400
  %polly.access.Packed_MemRef_call1303492.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call1303492.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_497.us.2, %_p_scalar_493.us.2
  %polly.access.add.Packed_MemRef_call2305499.us.2 = add nuw nsw i64 %739, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %polly.access.Packed_MemRef_call2305500.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2305500.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_505.us.2, %_p_scalar_501.us.2
  %740 = shl i64 %739, 3
  %741 = add i64 %740, %377
  %scevgep506.us.2 = getelementptr i8, i8* %call, i64 %741
  %scevgep506507.us.2 = bitcast i8* %scevgep506.us.2 to double*
  %_p_scalar_508.us.2 = load double, double* %scevgep506507.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_508.us.2
  store double %p_add42.i79.us.2, double* %scevgep506507.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 1
  %exitcond1074.2.not = icmp eq i64 %polly.indvar487.us.2, %smin1073
  br i1 %exitcond1074.2.not, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2, !llvm.loop !176

polly.loop_exit485.loopexit.us.2:                 ; preds = %polly.loop_header483.us.2, %middle.block1423
  %polly.access.add.Packed_MemRef_call2305495.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.3, %374
  %polly.access.Packed_MemRef_call2305496.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2305496.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1303504.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1303504.us.3, align 8
  %min.iters.check1395 = icmp ult i64 %372, 4
  br i1 %min.iters.check1395, label %polly.loop_header483.us.3.preheader, label %vector.ph1396

vector.ph1396:                                    ; preds = %polly.loop_exit485.loopexit.us.2
  %n.vec1398 = and i64 %372, -4
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_497.us.3, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %_p_scalar_505.us.3, i32 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1400, %vector.body1390 ]
  %742 = add nuw nsw i64 %index1399, %343
  %743 = add nuw nsw i64 %index1399, 3600
  %744 = getelementptr double, double* %Packed_MemRef_call1303, i64 %743
  %745 = bitcast double* %744 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %745, align 8
  %746 = fmul fast <4 x double> %broadcast.splat1405, %wide.load1403
  %747 = add nuw nsw i64 %742, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %748 = getelementptr double, double* %Packed_MemRef_call2305, i64 %747
  %749 = bitcast double* %748 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %749, align 8
  %750 = fmul fast <4 x double> %broadcast.splat1408, %wide.load1406
  %751 = shl i64 %742, 3
  %752 = add i64 %751, %377
  %753 = getelementptr i8, i8* %call, i64 %752
  %754 = bitcast i8* %753 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %754, align 8, !alias.scope !92, !noalias !94
  %755 = fadd fast <4 x double> %750, %746
  %756 = fmul fast <4 x double> %755, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %757 = fadd fast <4 x double> %756, %wide.load1409
  %758 = bitcast i8* %753 to <4 x double>*
  store <4 x double> %757, <4 x double>* %758, align 8, !alias.scope !92, !noalias !94
  %index.next1400 = add i64 %index1399, 4
  %759 = icmp eq i64 %index.next1400, %n.vec1398
  br i1 %759, label %middle.block1388, label %vector.body1390, !llvm.loop !177

middle.block1388:                                 ; preds = %vector.body1390
  %cmp.n1402 = icmp eq i64 %372, %n.vec1398
  br i1 %cmp.n1402, label %polly.loop_exit478, label %polly.loop_header483.us.3.preheader

polly.loop_header483.us.3.preheader:              ; preds = %polly.loop_exit485.loopexit.us.2, %middle.block1388
  %polly.indvar487.us.3.ph = phi i64 [ 0, %polly.loop_exit485.loopexit.us.2 ], [ %n.vec1398, %middle.block1388 ]
  br label %polly.loop_header483.us.3

polly.loop_header483.us.3:                        ; preds = %polly.loop_header483.us.3.preheader, %polly.loop_header483.us.3
  %polly.indvar487.us.3 = phi i64 [ %polly.indvar_next488.us.3, %polly.loop_header483.us.3 ], [ %polly.indvar487.us.3.ph, %polly.loop_header483.us.3.preheader ]
  %760 = add nuw nsw i64 %polly.indvar487.us.3, %343
  %polly.access.add.Packed_MemRef_call1303491.us.3 = add nuw nsw i64 %polly.indvar487.us.3, 3600
  %polly.access.Packed_MemRef_call1303492.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call1303492.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_497.us.3, %_p_scalar_493.us.3
  %polly.access.add.Packed_MemRef_call2305499.us.3 = add nuw nsw i64 %760, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %polly.access.Packed_MemRef_call2305500.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2305500.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_505.us.3, %_p_scalar_501.us.3
  %761 = shl i64 %760, 3
  %762 = add i64 %761, %377
  %scevgep506.us.3 = getelementptr i8, i8* %call, i64 %762
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
  %763 = add nuw nsw i64 %polly.indvar669.us.1, %507
  %polly.access.mul.call1673.us.1 = mul nuw nsw i64 %763, 1000
  %polly.access.add.call1674.us.1 = add nuw nsw i64 %448, %polly.access.mul.call1673.us.1
  %polly.access.call1675.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.1
  %polly.access.call1675.load.us.1 = load double, double* %polly.access.call1675.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.1 = add nuw nsw i64 %polly.indvar669.us.1, 1200
  %polly.access.Packed_MemRef_call1514.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.1
  store double %polly.access.call1675.load.us.1, double* %polly.access.Packed_MemRef_call1514.us.1, align 8
  %polly.indvar_next670.us.1 = add nuw nsw i64 %polly.indvar669.us.1, 1
  %exitcond1099.1.not = icmp eq i64 %polly.indvar669.us.1, %smin1101
  br i1 %exitcond1099.1.not, label %polly.cond676.loopexit.us.1, label %polly.loop_header665.us.1

polly.cond676.loopexit.us.1:                      ; preds = %polly.loop_header665.us.1
  br i1 %.not927, label %polly.loop_header665.us.2.preheader, label %polly.then678.us.1

polly.then678.us.1:                               ; preds = %polly.cond676.loopexit.us.1
  %polly.access.add.call1682.us.1 = or i64 %539, 1
  %polly.access.call1683.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.1
  %polly.access.call1683.load.us.1 = load double, double* %polly.access.call1683.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1514686.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.1
  store double %polly.access.call1683.load.us.1, double* %polly.access.Packed_MemRef_call1514686.us.1, align 8
  br label %polly.loop_header665.us.2.preheader

polly.loop_header665.us.2.preheader:              ; preds = %polly.then678.us.1, %polly.cond676.loopexit.us.1
  br label %polly.loop_header665.us.2

polly.loop_header665.us.2:                        ; preds = %polly.loop_header665.us.2.preheader, %polly.loop_header665.us.2
  %polly.indvar669.us.2 = phi i64 [ %polly.indvar_next670.us.2, %polly.loop_header665.us.2 ], [ 0, %polly.loop_header665.us.2.preheader ]
  %764 = add nuw nsw i64 %polly.indvar669.us.2, %507
  %polly.access.mul.call1673.us.2 = mul nuw nsw i64 %764, 1000
  %polly.access.add.call1674.us.2 = add nuw nsw i64 %449, %polly.access.mul.call1673.us.2
  %polly.access.call1675.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.2
  %polly.access.call1675.load.us.2 = load double, double* %polly.access.call1675.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.2 = add nuw nsw i64 %polly.indvar669.us.2, 2400
  %polly.access.Packed_MemRef_call1514.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.2
  store double %polly.access.call1675.load.us.2, double* %polly.access.Packed_MemRef_call1514.us.2, align 8
  %polly.indvar_next670.us.2 = add nuw nsw i64 %polly.indvar669.us.2, 1
  %exitcond1099.2.not = icmp eq i64 %polly.indvar669.us.2, %smin1101
  br i1 %exitcond1099.2.not, label %polly.cond676.loopexit.us.2, label %polly.loop_header665.us.2

polly.cond676.loopexit.us.2:                      ; preds = %polly.loop_header665.us.2
  br i1 %.not927, label %polly.loop_header665.us.3.preheader, label %polly.then678.us.2

polly.then678.us.2:                               ; preds = %polly.cond676.loopexit.us.2
  %polly.access.add.call1682.us.2 = or i64 %539, 2
  %polly.access.call1683.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.2
  %polly.access.call1683.load.us.2 = load double, double* %polly.access.call1683.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1514686.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.2
  store double %polly.access.call1683.load.us.2, double* %polly.access.Packed_MemRef_call1514686.us.2, align 8
  br label %polly.loop_header665.us.3.preheader

polly.loop_header665.us.3.preheader:              ; preds = %polly.then678.us.2, %polly.cond676.loopexit.us.2
  br label %polly.loop_header665.us.3

polly.loop_header665.us.3:                        ; preds = %polly.loop_header665.us.3.preheader, %polly.loop_header665.us.3
  %polly.indvar669.us.3 = phi i64 [ %polly.indvar_next670.us.3, %polly.loop_header665.us.3 ], [ 0, %polly.loop_header665.us.3.preheader ]
  %765 = add nuw nsw i64 %polly.indvar669.us.3, %507
  %polly.access.mul.call1673.us.3 = mul nuw nsw i64 %765, 1000
  %polly.access.add.call1674.us.3 = add nuw nsw i64 %450, %polly.access.mul.call1673.us.3
  %polly.access.call1675.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.3
  %polly.access.call1675.load.us.3 = load double, double* %polly.access.call1675.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.3 = add nuw nsw i64 %polly.indvar669.us.3, 3600
  %polly.access.Packed_MemRef_call1514.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.3
  store double %polly.access.call1675.load.us.3, double* %polly.access.Packed_MemRef_call1514.us.3, align 8
  %polly.indvar_next670.us.3 = add nuw nsw i64 %polly.indvar669.us.3, 1
  %exitcond1099.3.not = icmp eq i64 %polly.indvar669.us.3, %smin1101
  br i1 %exitcond1099.3.not, label %polly.cond676.loopexit.us.3, label %polly.loop_header665.us.3

polly.cond676.loopexit.us.3:                      ; preds = %polly.loop_header665.us.3
  br i1 %.not927, label %polly.loop_header687.preheader, label %polly.then678.us.3

polly.then678.us.3:                               ; preds = %polly.cond676.loopexit.us.3
  %polly.access.add.call1682.us.3 = or i64 %539, 3
  %polly.access.call1683.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.3
  %polly.access.call1683.load.us.3 = load double, double* %polly.access.call1683.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1514686.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.3
  store double %polly.access.call1683.load.us.3, double* %polly.access.Packed_MemRef_call1514686.us.3, align 8
  br label %polly.loop_header687.preheader

polly.loop_header694.us.1:                        ; preds = %polly.loop_header694.us.1.preheader, %polly.loop_header694.us.1
  %polly.indvar698.us.1 = phi i64 [ %polly.indvar_next699.us.1, %polly.loop_header694.us.1 ], [ %polly.indvar698.us.1.ph, %polly.loop_header694.us.1.preheader ]
  %766 = add nuw nsw i64 %polly.indvar698.us.1, %507
  %polly.access.add.Packed_MemRef_call1514702.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1200
  %polly.access.Packed_MemRef_call1514703.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call1514703.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %polly.access.add.Packed_MemRef_call2516710.us.1 = add nuw nsw i64 %766, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %polly.access.Packed_MemRef_call2516711.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call2516711.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %767 = shl i64 %766, 3
  %768 = add i64 %767, %541
  %scevgep717.us.1 = getelementptr i8, i8* %call, i64 %768
  %scevgep717718.us.1 = bitcast i8* %scevgep717.us.1 to double*
  %_p_scalar_719.us.1 = load double, double* %scevgep717718.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_719.us.1
  store double %p_add42.i.us.1, double* %scevgep717718.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1
  %exitcond1102.1.not = icmp eq i64 %polly.indvar698.us.1, %smin1101
  br i1 %exitcond1102.1.not, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1, !llvm.loop !179

polly.loop_exit696.loopexit.us.1:                 ; preds = %polly.loop_header694.us.1, %middle.block1310
  %polly.access.add.Packed_MemRef_call2516706.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.2, %538
  %polly.access.Packed_MemRef_call2516707.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call2516707.us.2, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1514715.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call1514715.us.2, align 8
  %min.iters.check1282 = icmp ult i64 %529, 4
  br i1 %min.iters.check1282, label %polly.loop_header694.us.2.preheader, label %vector.memcheck1264

vector.memcheck1264:                              ; preds = %polly.loop_exit696.loopexit.us.1
  %bound01273 = icmp ult i8* %scevgep1266, %scevgep1272
  %bound11274 = icmp ult i8* %scevgep1270, %scevgep1269
  %found.conflict1275 = and i1 %bound01273, %bound11274
  br i1 %found.conflict1275, label %polly.loop_header694.us.2.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %vector.memcheck1264
  %n.vec1285 = and i64 %529, -4
  %broadcast.splatinsert1291 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1292 = shufflevector <4 x double> %broadcast.splatinsert1291, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1295 = shufflevector <4 x double> %broadcast.splatinsert1294, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1279 ]
  %769 = add nuw nsw i64 %index1286, %507
  %770 = add nuw nsw i64 %index1286, 2400
  %771 = getelementptr double, double* %Packed_MemRef_call1514, i64 %770
  %772 = bitcast double* %771 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %772, align 8, !alias.scope !180
  %773 = fmul fast <4 x double> %broadcast.splat1292, %wide.load1290
  %774 = add nuw nsw i64 %769, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %775 = getelementptr double, double* %Packed_MemRef_call2516, i64 %774
  %776 = bitcast double* %775 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %776, align 8
  %777 = fmul fast <4 x double> %broadcast.splat1295, %wide.load1293
  %778 = shl i64 %769, 3
  %779 = add i64 %778, %541
  %780 = getelementptr i8, i8* %call, i64 %779
  %781 = bitcast i8* %780 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %781, align 8, !alias.scope !183, !noalias !185
  %782 = fadd fast <4 x double> %777, %773
  %783 = fmul fast <4 x double> %782, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %784 = fadd fast <4 x double> %783, %wide.load1296
  %785 = bitcast i8* %780 to <4 x double>*
  store <4 x double> %784, <4 x double>* %785, align 8, !alias.scope !183, !noalias !185
  %index.next1287 = add i64 %index1286, 4
  %786 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %786, label %middle.block1277, label %vector.body1279, !llvm.loop !186

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1289 = icmp eq i64 %529, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2.preheader

polly.loop_header694.us.2.preheader:              ; preds = %vector.memcheck1264, %polly.loop_exit696.loopexit.us.1, %middle.block1277
  %polly.indvar698.us.2.ph = phi i64 [ 0, %vector.memcheck1264 ], [ 0, %polly.loop_exit696.loopexit.us.1 ], [ %n.vec1285, %middle.block1277 ]
  br label %polly.loop_header694.us.2

polly.loop_header694.us.2:                        ; preds = %polly.loop_header694.us.2.preheader, %polly.loop_header694.us.2
  %polly.indvar698.us.2 = phi i64 [ %polly.indvar_next699.us.2, %polly.loop_header694.us.2 ], [ %polly.indvar698.us.2.ph, %polly.loop_header694.us.2.preheader ]
  %787 = add nuw nsw i64 %polly.indvar698.us.2, %507
  %polly.access.add.Packed_MemRef_call1514702.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 2400
  %polly.access.Packed_MemRef_call1514703.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call1514703.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %polly.access.add.Packed_MemRef_call2516710.us.2 = add nuw nsw i64 %787, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %polly.access.Packed_MemRef_call2516711.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call2516711.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %788 = shl i64 %787, 3
  %789 = add i64 %788, %541
  %scevgep717.us.2 = getelementptr i8, i8* %call, i64 %789
  %scevgep717718.us.2 = bitcast i8* %scevgep717.us.2 to double*
  %_p_scalar_719.us.2 = load double, double* %scevgep717718.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_719.us.2
  store double %p_add42.i.us.2, double* %scevgep717718.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 1
  %exitcond1102.2.not = icmp eq i64 %polly.indvar698.us.2, %smin1101
  br i1 %exitcond1102.2.not, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2, !llvm.loop !187

polly.loop_exit696.loopexit.us.2:                 ; preds = %polly.loop_header694.us.2, %middle.block1277
  %polly.access.add.Packed_MemRef_call2516706.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.3, %538
  %polly.access.Packed_MemRef_call2516707.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call2516707.us.3, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1514715.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call1514715.us.3, align 8
  %min.iters.check1249 = icmp ult i64 %536, 4
  br i1 %min.iters.check1249, label %polly.loop_header694.us.3.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %polly.loop_exit696.loopexit.us.2
  %n.vec1252 = and i64 %536, -4
  %broadcast.splatinsert1258 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1259 = shufflevector <4 x double> %broadcast.splatinsert1258, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1261 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1262 = shufflevector <4 x double> %broadcast.splatinsert1261, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1244 ]
  %790 = add nuw nsw i64 %index1253, %507
  %791 = add nuw nsw i64 %index1253, 3600
  %792 = getelementptr double, double* %Packed_MemRef_call1514, i64 %791
  %793 = bitcast double* %792 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %793, align 8
  %794 = fmul fast <4 x double> %broadcast.splat1259, %wide.load1257
  %795 = add nuw nsw i64 %790, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %796 = getelementptr double, double* %Packed_MemRef_call2516, i64 %795
  %797 = bitcast double* %796 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %797, align 8
  %798 = fmul fast <4 x double> %broadcast.splat1262, %wide.load1260
  %799 = shl i64 %790, 3
  %800 = add i64 %799, %541
  %801 = getelementptr i8, i8* %call, i64 %800
  %802 = bitcast i8* %801 to <4 x double>*
  %wide.load1263 = load <4 x double>, <4 x double>* %802, align 8, !alias.scope !118, !noalias !120
  %803 = fadd fast <4 x double> %798, %794
  %804 = fmul fast <4 x double> %803, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %805 = fadd fast <4 x double> %804, %wide.load1263
  %806 = bitcast i8* %801 to <4 x double>*
  store <4 x double> %805, <4 x double>* %806, align 8, !alias.scope !118, !noalias !120
  %index.next1254 = add i64 %index1253, 4
  %807 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %807, label %middle.block1242, label %vector.body1244, !llvm.loop !188

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1256 = icmp eq i64 %536, %n.vec1252
  br i1 %cmp.n1256, label %polly.loop_exit689, label %polly.loop_header694.us.3.preheader

polly.loop_header694.us.3.preheader:              ; preds = %polly.loop_exit696.loopexit.us.2, %middle.block1242
  %polly.indvar698.us.3.ph = phi i64 [ 0, %polly.loop_exit696.loopexit.us.2 ], [ %n.vec1252, %middle.block1242 ]
  br label %polly.loop_header694.us.3

polly.loop_header694.us.3:                        ; preds = %polly.loop_header694.us.3.preheader, %polly.loop_header694.us.3
  %polly.indvar698.us.3 = phi i64 [ %polly.indvar_next699.us.3, %polly.loop_header694.us.3 ], [ %polly.indvar698.us.3.ph, %polly.loop_header694.us.3.preheader ]
  %808 = add nuw nsw i64 %polly.indvar698.us.3, %507
  %polly.access.add.Packed_MemRef_call1514702.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 3600
  %polly.access.Packed_MemRef_call1514703.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call1514703.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %polly.access.add.Packed_MemRef_call2516710.us.3 = add nuw nsw i64 %808, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %polly.access.Packed_MemRef_call2516711.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call2516711.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %809 = shl i64 %808, 3
  %810 = add i64 %809, %541
  %scevgep717.us.3 = getelementptr i8, i8* %call, i64 %810
  %scevgep717718.us.3 = bitcast i8* %scevgep717.us.3 to double*
  %_p_scalar_719.us.3 = load double, double* %scevgep717718.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_719.us.3
  store double %p_add42.i.us.3, double* %scevgep717718.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 1
  %exitcond1102.3.not = icmp eq i64 %polly.indvar698.us.3, %smin1101
  br i1 %exitcond1102.3.not, label %polly.loop_exit689, label %polly.loop_header694.us.3, !llvm.loop !189
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 20}
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
