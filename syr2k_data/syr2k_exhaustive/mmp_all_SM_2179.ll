; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2179.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2179.c"
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
  %scevgep1152 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1151 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1150 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1149 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1149, %scevgep1152
  %bound1 = icmp ult i8* %scevgep1151, %scevgep1150
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
  br i1 %exitcond18.not.i, label %vector.ph1156, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1156:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1163 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1164 = shufflevector <4 x i64> %broadcast.splatinsert1163, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1156
  %index1157 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1156 ], [ %vec.ind.next1162, %vector.body1155 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1161, %broadcast.splat1164
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1157
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1158, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1155, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1155
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1156, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1218 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1218, label %for.body3.i46.preheader1652, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i46.preheader
  %n.vec1221 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1222
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %46 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %46, label %middle.block1215, label %vector.body1217, !llvm.loop !18

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i, %n.vec1221
  br i1 %cmp.n1225, label %for.inc6.i, label %for.body3.i46.preheader1652

for.body3.i46.preheader1652:                      ; preds = %for.body3.i46.preheader, %middle.block1215
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1221, %middle.block1215 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1652, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1652 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1215, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1361 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1361, label %for.body3.i60.preheader1651, label %vector.ph1362

vector.ph1362:                                    ; preds = %for.body3.i60.preheader
  %n.vec1364 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1360 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1365
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1369, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1366 = add i64 %index1365, 4
  %57 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %57, label %middle.block1358, label %vector.body1360, !llvm.loop !57

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1368 = icmp eq i64 %indvars.iv21.i52, %n.vec1364
  br i1 %cmp.n1368, label %for.inc6.i63, label %for.body3.i60.preheader1651

for.body3.i60.preheader1651:                      ; preds = %for.body3.i60.preheader, %middle.block1358
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1364, %middle.block1358 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1651, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1651 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1358, %for.cond1.preheader.i54
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
  %min.iters.check1507 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1507, label %for.body3.i99.preheader1650, label %vector.ph1508

vector.ph1508:                                    ; preds = %for.body3.i99.preheader
  %n.vec1510 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1508
  %index1511 = phi i64 [ 0, %vector.ph1508 ], [ %index.next1512, %vector.body1506 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1511
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1515 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1515, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1512 = add i64 %index1511, 4
  %68 = icmp eq i64 %index.next1512, %n.vec1510
  br i1 %68, label %middle.block1504, label %vector.body1506, !llvm.loop !59

middle.block1504:                                 ; preds = %vector.body1506
  %cmp.n1514 = icmp eq i64 %indvars.iv21.i91, %n.vec1510
  br i1 %cmp.n1514, label %for.inc6.i102, label %for.body3.i99.preheader1650

for.body3.i99.preheader1650:                      ; preds = %for.body3.i99.preheader, %middle.block1504
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1510, %middle.block1504 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1650, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1650 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1504, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1519 = phi i64 [ %indvar.next1520, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1519, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1521 = icmp ult i64 %88, 4
  br i1 %min.iters.check1521, label %polly.loop_header192.preheader, label %vector.ph1522

vector.ph1522:                                    ; preds = %polly.loop_header
  %n.vec1524 = and i64 %88, -4
  br label %vector.body1518

vector.body1518:                                  ; preds = %vector.body1518, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1526, %vector.body1518 ]
  %90 = shl nuw nsw i64 %index1525, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1529, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1526 = add i64 %index1525, 4
  %95 = icmp eq i64 %index.next1526, %n.vec1524
  br i1 %95, label %middle.block1516, label %vector.body1518, !llvm.loop !72

middle.block1516:                                 ; preds = %vector.body1518
  %cmp.n1528 = icmp eq i64 %88, %n.vec1524
  br i1 %cmp.n1528, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1516
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1524, %middle.block1516 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1516
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1520 = add i64 %indvar1519, 1
  br i1 %exitcond1055.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1054.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1054.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1053.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1558 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1559 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1591 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1592 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1624 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1052.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit224 ], [ 10, %polly.loop_header216.preheader ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nsw i64 %polly.indvar219, -80
  %98 = mul nuw nsw i64 %polly.indvar219, 80
  %99 = mul nuw nsw i64 %polly.indvar219, 80
  %100 = mul nsw i64 %polly.indvar219, -80
  %101 = mul nsw i64 %polly.indvar219, -80
  %102 = mul nuw nsw i64 %polly.indvar219, 80
  %103 = mul nuw nsw i64 %polly.indvar219, 80
  %104 = mul nsw i64 %polly.indvar219, -80
  %105 = mul nsw i64 %polly.indvar219, -80
  %106 = mul nuw nsw i64 %polly.indvar219, 80
  %107 = mul nuw nsw i64 %polly.indvar219, 80
  %108 = mul nsw i64 %polly.indvar219, -80
  %109 = mul nsw i64 %polly.indvar219, -80
  %110 = mul nuw nsw i64 %polly.indvar219, 80
  %111 = mul nsw i64 %polly.indvar219, -80
  %112 = mul nuw nsw i64 %polly.indvar219, 80
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 80
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 10
  %exitcond1051.not = icmp eq i64 %polly.indvar_next220, 15
  br i1 %exitcond1051.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %113 = shl nsw i64 %polly.indvar225, 2
  %114 = or i64 %113, 1
  %115 = or i64 %113, 2
  %116 = or i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %117 = or i64 %113, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %117, 1200
  %118 = or i64 %113, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %118, 1200
  %119 = or i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %119, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1050.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv1036, %polly.loop_header222 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %120 = shl nuw nsw i64 %polly.indvar231, 3
  %121 = add i64 %97, %120
  %smax1633 = call i64 @llvm.smax.i64(i64 %121, i64 0)
  %122 = mul nsw i64 %polly.indvar231, -8
  %123 = add i64 %98, %122
  %124 = add i64 %smax1633, %123
  %125 = shl nuw nsw i64 %polly.indvar231, 6
  %126 = shl nuw nsw i64 %polly.indvar231, 3
  %127 = add i64 %100, %126
  %smax1619 = call i64 @llvm.smax.i64(i64 %127, i64 0)
  %128 = add nuw i64 %99, %smax1619
  %129 = mul nsw i64 %128, 9600
  %130 = add i64 %125, %129
  %131 = or i64 %125, 8
  %132 = add i64 %131, %129
  %133 = mul nsw i64 %polly.indvar231, -8
  %134 = add i64 %99, %133
  %135 = add i64 %smax1619, %134
  %136 = shl nuw nsw i64 %polly.indvar231, 3
  %137 = add i64 %101, %136
  %smax1601 = call i64 @llvm.smax.i64(i64 %137, i64 0)
  %138 = mul nsw i64 %polly.indvar231, -8
  %139 = add i64 %102, %138
  %140 = add i64 %smax1601, %139
  %141 = shl nuw nsw i64 %polly.indvar231, 6
  %142 = shl nuw nsw i64 %polly.indvar231, 3
  %143 = add i64 %104, %142
  %smax1586 = call i64 @llvm.smax.i64(i64 %143, i64 0)
  %144 = add nuw i64 %103, %smax1586
  %145 = mul nsw i64 %144, 9600
  %146 = add i64 %141, %145
  %147 = or i64 %141, 8
  %148 = add i64 %147, %145
  %149 = mul nsw i64 %polly.indvar231, -8
  %150 = add i64 %103, %149
  %151 = add i64 %smax1586, %150
  %152 = shl nuw nsw i64 %polly.indvar231, 3
  %153 = add i64 %105, %152
  %smax1568 = call i64 @llvm.smax.i64(i64 %153, i64 0)
  %154 = mul nsw i64 %polly.indvar231, -8
  %155 = add i64 %106, %154
  %156 = add i64 %smax1568, %155
  %157 = shl nuw nsw i64 %polly.indvar231, 6
  %158 = shl nuw nsw i64 %polly.indvar231, 3
  %159 = add i64 %108, %158
  %smax1553 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = add nuw i64 %107, %smax1553
  %161 = mul nsw i64 %160, 9600
  %162 = add i64 %157, %161
  %163 = or i64 %157, 8
  %164 = add i64 %163, %161
  %165 = mul nsw i64 %polly.indvar231, -8
  %166 = add i64 %107, %165
  %167 = add i64 %smax1553, %166
  %168 = shl nuw nsw i64 %polly.indvar231, 3
  %169 = add i64 %109, %168
  %smax1533 = call i64 @llvm.smax.i64(i64 %169, i64 0)
  %170 = mul nsw i64 %polly.indvar231, -8
  %171 = add i64 %110, %170
  %172 = add i64 %smax1533, %171
  %173 = shl nsw i64 %polly.indvar231, 3
  %174 = add nsw i64 %173, %111
  %175 = icmp sgt i64 %174, 0
  %176 = select i1 %175, i64 %174, i64 0
  %polly.loop_guard = icmp slt i64 %176, 80
  br i1 %polly.loop_guard, label %polly.loop_header234.preheader, label %polly.loop_exit236

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1034, i64 0)
  %177 = add i64 %smax, %indvars.iv1038
  %178 = sub nsw i64 %112, %173
  %179 = add nuw nsw i64 %173, 8
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, 8
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -8
  %exitcond1049.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1047
  br i1 %exitcond1049.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1534 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1535, %polly.loop_exit267 ]
  %indvars.iv1040 = phi i64 [ %177, %polly.loop_header234.preheader ], [ %indvars.iv.next1041, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %176, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %180 = add i64 %124, %indvar1534
  %smin1634 = call i64 @llvm.smin.i64(i64 %180, i64 7)
  %181 = add nsw i64 %smin1634, 1
  %182 = mul nuw nsw i64 %indvar1534, 9600
  %183 = add i64 %130, %182
  %scevgep1620 = getelementptr i8, i8* %call, i64 %183
  %184 = add i64 %132, %182
  %scevgep1621 = getelementptr i8, i8* %call, i64 %184
  %185 = add i64 %135, %indvar1534
  %smin1622 = call i64 @llvm.smin.i64(i64 %185, i64 7)
  %186 = shl nsw i64 %smin1622, 3
  %scevgep1623 = getelementptr i8, i8* %scevgep1621, i64 %186
  %scevgep1625 = getelementptr i8, i8* %scevgep1624, i64 %186
  %187 = add i64 %140, %indvar1534
  %smin1602 = call i64 @llvm.smin.i64(i64 %187, i64 7)
  %188 = add nsw i64 %smin1602, 1
  %189 = mul nuw nsw i64 %indvar1534, 9600
  %190 = add i64 %146, %189
  %scevgep1587 = getelementptr i8, i8* %call, i64 %190
  %191 = add i64 %148, %189
  %scevgep1588 = getelementptr i8, i8* %call, i64 %191
  %192 = add i64 %151, %indvar1534
  %smin1589 = call i64 @llvm.smin.i64(i64 %192, i64 7)
  %193 = shl nsw i64 %smin1589, 3
  %scevgep1590 = getelementptr i8, i8* %scevgep1588, i64 %193
  %scevgep1593 = getelementptr i8, i8* %scevgep1592, i64 %193
  %194 = add i64 %156, %indvar1534
  %smin1569 = call i64 @llvm.smin.i64(i64 %194, i64 7)
  %195 = add nsw i64 %smin1569, 1
  %196 = mul nuw nsw i64 %indvar1534, 9600
  %197 = add i64 %162, %196
  %scevgep1554 = getelementptr i8, i8* %call, i64 %197
  %198 = add i64 %164, %196
  %scevgep1555 = getelementptr i8, i8* %call, i64 %198
  %199 = add i64 %167, %indvar1534
  %smin1556 = call i64 @llvm.smin.i64(i64 %199, i64 7)
  %200 = shl nsw i64 %smin1556, 3
  %scevgep1557 = getelementptr i8, i8* %scevgep1555, i64 %200
  %scevgep1560 = getelementptr i8, i8* %scevgep1559, i64 %200
  %201 = add i64 %172, %indvar1534
  %smin1536 = call i64 @llvm.smin.i64(i64 %201, i64 7)
  %202 = add nsw i64 %smin1536, 1
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 7)
  %203 = add nsw i64 %polly.indvar237, %178
  %polly.loop_guard2501144 = icmp sgt i64 %203, -1
  %204 = add nuw nsw i64 %polly.indvar237, %112
  %.not = icmp ult i64 %204, %179
  %polly.access.mul.call1259 = mul nsw i64 %204, 1000
  %205 = add nuw i64 %polly.access.mul.call1259, %113
  br i1 %polly.loop_guard2501144, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %206 = add nuw nsw i64 %polly.indvar251.us, %173
  %polly.access.mul.call1255.us = mul nuw nsw i64 %206, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %113, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar251.us, %smin1044
  br i1 %exitcond1042.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1722, i64 %205
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %203
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1722, i64 %205
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %203
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %205, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %203, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %205, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %203, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %205, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %203, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1530, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239 = icmp ult i64 %polly.indvar237, 79
  %indvars.iv.next1041 = add i64 %indvars.iv1040, 1
  %indvar.next1535 = add i64 %indvar1534, 1
  br i1 %polly.loop_cond239, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %207 = mul i64 %204, 9600
  br i1 %polly.loop_guard2501144, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %204
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %203
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1635 = icmp ult i64 %181, 4
  br i1 %min.iters.check1635, label %polly.loop_header272.us.preheader, label %vector.memcheck1618

vector.memcheck1618:                              ; preds = %polly.loop_header265.us.preheader
  %bound01626 = icmp ult i8* %scevgep1620, %scevgep1625
  %bound11627 = icmp ult i8* %malloccall, %scevgep1623
  %found.conflict1628 = and i1 %bound01626, %bound11627
  br i1 %found.conflict1628, label %polly.loop_header272.us.preheader, label %vector.ph1636

vector.ph1636:                                    ; preds = %vector.memcheck1618
  %n.vec1638 = and i64 %181, -4
  %broadcast.splatinsert1644 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1645 = shufflevector <4 x double> %broadcast.splatinsert1644, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1647 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1648 = shufflevector <4 x double> %broadcast.splatinsert1647, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1632

vector.body1632:                                  ; preds = %vector.body1632, %vector.ph1636
  %index1639 = phi i64 [ 0, %vector.ph1636 ], [ %index.next1640, %vector.body1632 ]
  %208 = add nuw nsw i64 %index1639, %173
  %209 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1639
  %210 = bitcast double* %209 to <4 x double>*
  %wide.load1643 = load <4 x double>, <4 x double>* %210, align 8, !alias.scope !77
  %211 = fmul fast <4 x double> %broadcast.splat1645, %wide.load1643
  %212 = add nuw nsw i64 %208, %polly.access.mul.Packed_MemRef_call2283.us
  %213 = getelementptr double, double* %Packed_MemRef_call2, i64 %212
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1646 = load <4 x double>, <4 x double>* %214, align 8
  %215 = fmul fast <4 x double> %broadcast.splat1648, %wide.load1646
  %216 = shl i64 %208, 3
  %217 = add i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  %wide.load1649 = load <4 x double>, <4 x double>* %219, align 8, !alias.scope !80, !noalias !82
  %220 = fadd fast <4 x double> %215, %211
  %221 = fmul fast <4 x double> %220, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %222 = fadd fast <4 x double> %221, %wide.load1649
  %223 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %222, <4 x double>* %223, align 8, !alias.scope !80, !noalias !82
  %index.next1640 = add i64 %index1639, 4
  %224 = icmp eq i64 %index.next1640, %n.vec1638
  br i1 %224, label %middle.block1630, label %vector.body1632, !llvm.loop !83

middle.block1630:                                 ; preds = %vector.body1632
  %cmp.n1642 = icmp eq i64 %181, %n.vec1638
  br i1 %cmp.n1642, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1618, %polly.loop_header265.us.preheader, %middle.block1630
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1618 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1638, %middle.block1630 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %225 = add nuw nsw i64 %polly.indvar276.us, %173
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %225, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %226 = shl i64 %225, 3
  %227 = add i64 %226, %207
  %scevgep295.us = getelementptr i8, i8* %call, i64 %227
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar276.us, %smin1044
  br i1 %exitcond1045.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1630
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %204
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %203, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1603 = icmp ult i64 %188, 4
  br i1 %min.iters.check1603, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1585

vector.memcheck1585:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01594 = icmp ult i8* %scevgep1587, %scevgep1593
  %bound11595 = icmp ult i8* %scevgep1591, %scevgep1590
  %found.conflict1596 = and i1 %bound01594, %bound11595
  br i1 %found.conflict1596, label %polly.loop_header272.us.1.preheader, label %vector.ph1604

vector.ph1604:                                    ; preds = %vector.memcheck1585
  %n.vec1606 = and i64 %188, -4
  %broadcast.splatinsert1612 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1613 = shufflevector <4 x double> %broadcast.splatinsert1612, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1615 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1616 = shufflevector <4 x double> %broadcast.splatinsert1615, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1600

vector.body1600:                                  ; preds = %vector.body1600, %vector.ph1604
  %index1607 = phi i64 [ 0, %vector.ph1604 ], [ %index.next1608, %vector.body1600 ]
  %228 = add nuw nsw i64 %index1607, %173
  %229 = add nuw nsw i64 %index1607, 1200
  %230 = getelementptr double, double* %Packed_MemRef_call1, i64 %229
  %231 = bitcast double* %230 to <4 x double>*
  %wide.load1611 = load <4 x double>, <4 x double>* %231, align 8, !alias.scope !85
  %232 = fmul fast <4 x double> %broadcast.splat1613, %wide.load1611
  %233 = add nuw nsw i64 %228, %polly.access.mul.Packed_MemRef_call2283.us.1
  %234 = getelementptr double, double* %Packed_MemRef_call2, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %235, align 8
  %236 = fmul fast <4 x double> %broadcast.splat1616, %wide.load1614
  %237 = shl i64 %228, 3
  %238 = add i64 %237, %207
  %239 = getelementptr i8, i8* %call, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  %wide.load1617 = load <4 x double>, <4 x double>* %240, align 8, !alias.scope !88, !noalias !90
  %241 = fadd fast <4 x double> %236, %232
  %242 = fmul fast <4 x double> %241, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %243 = fadd fast <4 x double> %242, %wide.load1617
  %244 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %243, <4 x double>* %244, align 8, !alias.scope !88, !noalias !90
  %index.next1608 = add i64 %index1607, 4
  %245 = icmp eq i64 %index.next1608, %n.vec1606
  br i1 %245, label %middle.block1598, label %vector.body1600, !llvm.loop !91

middle.block1598:                                 ; preds = %vector.body1600
  %cmp.n1610 = icmp eq i64 %188, %n.vec1606
  br i1 %cmp.n1610, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1.preheader

polly.loop_header272.us.1.preheader:              ; preds = %vector.memcheck1585, %polly.loop_exit274.loopexit.us, %middle.block1598
  %polly.indvar276.us.1.ph = phi i64 [ 0, %vector.memcheck1585 ], [ 0, %polly.loop_exit274.loopexit.us ], [ %n.vec1606, %middle.block1598 ]
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
  %indvar1373 = phi i64 [ %indvar.next1374, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %246 = add i64 %indvar1373, 1
  %247 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %247
  %min.iters.check1375 = icmp ult i64 %246, 4
  br i1 %min.iters.check1375, label %polly.loop_header394.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header388
  %n.vec1378 = and i64 %246, -4
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1372 ]
  %248 = shl nuw nsw i64 %index1379, 3
  %249 = getelementptr i8, i8* %scevgep400, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %250, align 8, !alias.scope !92, !noalias !94
  %251 = fmul fast <4 x double> %wide.load1383, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %252 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %251, <4 x double>* %252, align 8, !alias.scope !92, !noalias !94
  %index.next1380 = add i64 %index1379, 4
  %253 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %253, label %middle.block1370, label %vector.body1372, !llvm.loop !99

middle.block1370:                                 ; preds = %vector.body1372
  %cmp.n1382 = icmp eq i64 %246, %n.vec1378
  br i1 %cmp.n1382, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1370
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1378, %middle.block1370 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1370
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1374 = add i64 %indvar1373, 1
  br i1 %exitcond1082.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %254 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %254
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1081.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !100

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1080.not, label %polly.loop_header420.preheader, label %polly.loop_header404

polly.loop_header420.preheader:                   ; preds = %polly.loop_exit412
  %scevgep1412 = getelementptr i8, i8* %malloccall302, i64 19200
  %scevgep1413 = getelementptr i8, i8* %malloccall302, i64 19208
  %scevgep1445 = getelementptr i8, i8* %malloccall302, i64 9600
  %scevgep1446 = getelementptr i8, i8* %malloccall302, i64 9608
  %scevgep1478 = getelementptr i8, i8* %malloccall302, i64 8
  br label %polly.loop_header420

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1079.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit428
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit428 ], [ 10, %polly.loop_header420.preheader ]
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %255 = mul nsw i64 %polly.indvar423, -80
  %256 = mul nuw nsw i64 %polly.indvar423, 80
  %257 = mul nuw nsw i64 %polly.indvar423, 80
  %258 = mul nsw i64 %polly.indvar423, -80
  %259 = mul nsw i64 %polly.indvar423, -80
  %260 = mul nuw nsw i64 %polly.indvar423, 80
  %261 = mul nuw nsw i64 %polly.indvar423, 80
  %262 = mul nsw i64 %polly.indvar423, -80
  %263 = mul nsw i64 %polly.indvar423, -80
  %264 = mul nuw nsw i64 %polly.indvar423, 80
  %265 = mul nuw nsw i64 %polly.indvar423, 80
  %266 = mul nsw i64 %polly.indvar423, -80
  %267 = mul nsw i64 %polly.indvar423, -80
  %268 = mul nuw nsw i64 %polly.indvar423, 80
  %269 = mul nsw i64 %polly.indvar423, -80
  %270 = mul nuw nsw i64 %polly.indvar423, 80
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -80
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 80
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 10
  %exitcond1078.not = icmp eq i64 %polly.indvar_next424, 15
  br i1 %exitcond1078.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %271 = shl nsw i64 %polly.indvar429, 2
  %272 = or i64 %271, 1
  %273 = or i64 %271, 2
  %274 = or i64 %271, 3
  %polly.access.mul.Packed_MemRef_call2305493.us = mul nsw i64 %polly.indvar429, 4800
  %275 = or i64 %271, 1
  %polly.access.mul.Packed_MemRef_call2305493.us.1 = mul nuw nsw i64 %275, 1200
  %276 = or i64 %271, 2
  %polly.access.mul.Packed_MemRef_call2305493.us.2 = mul nuw nsw i64 %276, 1200
  %277 = or i64 %271, 3
  %polly.access.mul.Packed_MemRef_call2305493.us.3 = mul nuw nsw i64 %277, 1200
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit441
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1077.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_exit441, %polly.loop_header426
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit441 ], [ %indvars.iv1062, %polly.loop_header426 ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit441 ], [ %indvars.iv1057, %polly.loop_header426 ]
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit441 ], [ 0, %polly.loop_header426 ]
  %278 = shl nuw nsw i64 %polly.indvar435, 3
  %279 = add i64 %255, %278
  %smax1487 = call i64 @llvm.smax.i64(i64 %279, i64 0)
  %280 = mul nsw i64 %polly.indvar435, -8
  %281 = add i64 %256, %280
  %282 = add i64 %smax1487, %281
  %283 = shl nuw nsw i64 %polly.indvar435, 6
  %284 = shl nuw nsw i64 %polly.indvar435, 3
  %285 = add i64 %258, %284
  %smax1473 = call i64 @llvm.smax.i64(i64 %285, i64 0)
  %286 = add nuw i64 %257, %smax1473
  %287 = mul nsw i64 %286, 9600
  %288 = add i64 %283, %287
  %289 = or i64 %283, 8
  %290 = add i64 %289, %287
  %291 = mul nsw i64 %polly.indvar435, -8
  %292 = add i64 %257, %291
  %293 = add i64 %smax1473, %292
  %294 = shl nuw nsw i64 %polly.indvar435, 3
  %295 = add i64 %259, %294
  %smax1455 = call i64 @llvm.smax.i64(i64 %295, i64 0)
  %296 = mul nsw i64 %polly.indvar435, -8
  %297 = add i64 %260, %296
  %298 = add i64 %smax1455, %297
  %299 = shl nuw nsw i64 %polly.indvar435, 6
  %300 = shl nuw nsw i64 %polly.indvar435, 3
  %301 = add i64 %262, %300
  %smax1440 = call i64 @llvm.smax.i64(i64 %301, i64 0)
  %302 = add nuw i64 %261, %smax1440
  %303 = mul nsw i64 %302, 9600
  %304 = add i64 %299, %303
  %305 = or i64 %299, 8
  %306 = add i64 %305, %303
  %307 = mul nsw i64 %polly.indvar435, -8
  %308 = add i64 %261, %307
  %309 = add i64 %smax1440, %308
  %310 = shl nuw nsw i64 %polly.indvar435, 3
  %311 = add i64 %263, %310
  %smax1422 = call i64 @llvm.smax.i64(i64 %311, i64 0)
  %312 = mul nsw i64 %polly.indvar435, -8
  %313 = add i64 %264, %312
  %314 = add i64 %smax1422, %313
  %315 = shl nuw nsw i64 %polly.indvar435, 6
  %316 = shl nuw nsw i64 %polly.indvar435, 3
  %317 = add i64 %266, %316
  %smax1407 = call i64 @llvm.smax.i64(i64 %317, i64 0)
  %318 = add nuw i64 %265, %smax1407
  %319 = mul nsw i64 %318, 9600
  %320 = add i64 %315, %319
  %321 = or i64 %315, 8
  %322 = add i64 %321, %319
  %323 = mul nsw i64 %polly.indvar435, -8
  %324 = add i64 %265, %323
  %325 = add i64 %smax1407, %324
  %326 = shl nuw nsw i64 %polly.indvar435, 3
  %327 = add i64 %267, %326
  %smax1387 = call i64 @llvm.smax.i64(i64 %327, i64 0)
  %328 = mul nsw i64 %polly.indvar435, -8
  %329 = add i64 %268, %328
  %330 = add i64 %smax1387, %329
  %331 = shl nsw i64 %polly.indvar435, 3
  %332 = add nsw i64 %331, %269
  %333 = icmp sgt i64 %332, 0
  %334 = select i1 %333, i64 %332, i64 0
  %polly.loop_guard442 = icmp slt i64 %334, 80
  br i1 %polly.loop_guard442, label %polly.loop_header439.preheader, label %polly.loop_exit441

polly.loop_header439.preheader:                   ; preds = %polly.loop_header432
  %smax1061 = call i64 @llvm.smax.i64(i64 %indvars.iv1059, i64 0)
  %335 = add i64 %smax1061, %indvars.iv1064
  %336 = sub nsw i64 %270, %331
  %337 = add nuw nsw i64 %331, 8
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit477, %polly.loop_header432
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, 8
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -8
  %exitcond1076.not = icmp eq i64 %polly.indvar_next436, %indvars.iv1074
  br i1 %exitcond1076.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header439:                             ; preds = %polly.loop_header439.preheader, %polly.loop_exit477
  %indvar1388 = phi i64 [ 0, %polly.loop_header439.preheader ], [ %indvar.next1389, %polly.loop_exit477 ]
  %indvars.iv1066 = phi i64 [ %335, %polly.loop_header439.preheader ], [ %indvars.iv.next1067, %polly.loop_exit477 ]
  %polly.indvar443 = phi i64 [ %334, %polly.loop_header439.preheader ], [ %polly.indvar_next444, %polly.loop_exit477 ]
  %338 = add i64 %282, %indvar1388
  %smin1488 = call i64 @llvm.smin.i64(i64 %338, i64 7)
  %339 = add nsw i64 %smin1488, 1
  %340 = mul nuw nsw i64 %indvar1388, 9600
  %341 = add i64 %288, %340
  %scevgep1474 = getelementptr i8, i8* %call, i64 %341
  %342 = add i64 %290, %340
  %scevgep1475 = getelementptr i8, i8* %call, i64 %342
  %343 = add i64 %293, %indvar1388
  %smin1476 = call i64 @llvm.smin.i64(i64 %343, i64 7)
  %344 = shl nsw i64 %smin1476, 3
  %scevgep1477 = getelementptr i8, i8* %scevgep1475, i64 %344
  %scevgep1479 = getelementptr i8, i8* %scevgep1478, i64 %344
  %345 = add i64 %298, %indvar1388
  %smin1456 = call i64 @llvm.smin.i64(i64 %345, i64 7)
  %346 = add nsw i64 %smin1456, 1
  %347 = mul nuw nsw i64 %indvar1388, 9600
  %348 = add i64 %304, %347
  %scevgep1441 = getelementptr i8, i8* %call, i64 %348
  %349 = add i64 %306, %347
  %scevgep1442 = getelementptr i8, i8* %call, i64 %349
  %350 = add i64 %309, %indvar1388
  %smin1443 = call i64 @llvm.smin.i64(i64 %350, i64 7)
  %351 = shl nsw i64 %smin1443, 3
  %scevgep1444 = getelementptr i8, i8* %scevgep1442, i64 %351
  %scevgep1447 = getelementptr i8, i8* %scevgep1446, i64 %351
  %352 = add i64 %314, %indvar1388
  %smin1423 = call i64 @llvm.smin.i64(i64 %352, i64 7)
  %353 = add nsw i64 %smin1423, 1
  %354 = mul nuw nsw i64 %indvar1388, 9600
  %355 = add i64 %320, %354
  %scevgep1408 = getelementptr i8, i8* %call, i64 %355
  %356 = add i64 %322, %354
  %scevgep1409 = getelementptr i8, i8* %call, i64 %356
  %357 = add i64 %325, %indvar1388
  %smin1410 = call i64 @llvm.smin.i64(i64 %357, i64 7)
  %358 = shl nsw i64 %smin1410, 3
  %scevgep1411 = getelementptr i8, i8* %scevgep1409, i64 %358
  %scevgep1414 = getelementptr i8, i8* %scevgep1413, i64 %358
  %359 = add i64 %330, %indvar1388
  %smin1390 = call i64 @llvm.smin.i64(i64 %359, i64 7)
  %360 = add nsw i64 %smin1390, 1
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1066, i64 7)
  %361 = add nsw i64 %polly.indvar443, %336
  %polly.loop_guard4561145 = icmp sgt i64 %361, -1
  %362 = add nuw nsw i64 %polly.indvar443, %270
  %.not924 = icmp ult i64 %362, %337
  %polly.access.mul.call1469 = mul nsw i64 %362, 1000
  %363 = add nuw i64 %polly.access.mul.call1469, %271
  br i1 %polly.loop_guard4561145, label %polly.loop_header453.us, label %polly.loop_header439.split

polly.loop_header453.us:                          ; preds = %polly.loop_header439, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header439 ]
  %364 = add nuw nsw i64 %polly.indvar457.us, %331
  %polly.access.mul.call1461.us = mul nuw nsw i64 %364, 1000
  %polly.access.add.call1462.us = add nuw nsw i64 %271, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar457.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar457.us, %smin1071
  br i1 %exitcond1069.not, label %polly.cond464.loopexit.us, label %polly.loop_header453.us

polly.then466.us:                                 ; preds = %polly.cond464.loopexit.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1722, i64 %363
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303474.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %361
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1303474.us, align 8
  br label %polly.loop_header453.us.1.preheader

polly.cond464.loopexit.us:                        ; preds = %polly.loop_header453.us
  br i1 %.not924, label %polly.loop_header453.us.1.preheader, label %polly.then466.us

polly.loop_header453.us.1.preheader:              ; preds = %polly.then466.us, %polly.cond464.loopexit.us
  br label %polly.loop_header453.us.1

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %.not924, label %polly.loop_exit477, label %polly.loop_header446.preheader

polly.loop_header446.preheader:                   ; preds = %polly.loop_header439.split
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1722, i64 %363
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303474 = getelementptr double, double* %Packed_MemRef_call1303, i64 %361
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1303474, align 8
  %polly.access.add.call1470.1 = or i64 %363, 1
  %polly.access.call1471.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.1
  %polly.access.call1471.load.1 = load double, double* %polly.access.call1471.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.1 = add nsw i64 %361, 1200
  %polly.access.Packed_MemRef_call1303474.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.1
  store double %polly.access.call1471.load.1, double* %polly.access.Packed_MemRef_call1303474.1, align 8
  %polly.access.add.call1470.2 = or i64 %363, 2
  %polly.access.call1471.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.2
  %polly.access.call1471.load.2 = load double, double* %polly.access.call1471.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.2 = add nsw i64 %361, 2400
  %polly.access.Packed_MemRef_call1303474.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.2
  store double %polly.access.call1471.load.2, double* %polly.access.Packed_MemRef_call1303474.2, align 8
  %polly.access.add.call1470.3 = or i64 %363, 3
  %polly.access.call1471.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.3
  %polly.access.call1471.load.3 = load double, double* %polly.access.call1471.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.3 = add nsw i64 %361, 3600
  %polly.access.Packed_MemRef_call1303474.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.3
  store double %polly.access.call1471.load.3, double* %polly.access.Packed_MemRef_call1303474.3, align 8
  br label %polly.loop_exit477

polly.loop_exit477:                               ; preds = %polly.loop_header482.us.3, %middle.block1384, %polly.loop_header439.split, %polly.loop_header446.preheader, %polly.loop_header475.preheader
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %polly.loop_cond445 = icmp ult i64 %polly.indvar443, 79
  %indvars.iv.next1067 = add i64 %indvars.iv1066, 1
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %polly.loop_cond445, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header475.preheader:                   ; preds = %polly.cond464.loopexit.us.3, %polly.then466.us.3
  %365 = mul i64 %362, 9600
  br i1 %polly.loop_guard4561145, label %polly.loop_header475.us.preheader, label %polly.loop_exit477

polly.loop_header475.us.preheader:                ; preds = %polly.loop_header475.preheader
  %polly.access.add.Packed_MemRef_call2305494.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us, %362
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %361
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %min.iters.check1489 = icmp ult i64 %339, 4
  br i1 %min.iters.check1489, label %polly.loop_header482.us.preheader, label %vector.memcheck1472

vector.memcheck1472:                              ; preds = %polly.loop_header475.us.preheader
  %bound01480 = icmp ult i8* %scevgep1474, %scevgep1479
  %bound11481 = icmp ult i8* %malloccall302, %scevgep1477
  %found.conflict1482 = and i1 %bound01480, %bound11481
  br i1 %found.conflict1482, label %polly.loop_header482.us.preheader, label %vector.ph1490

vector.ph1490:                                    ; preds = %vector.memcheck1472
  %n.vec1492 = and i64 %339, -4
  %broadcast.splatinsert1498 = insertelement <4 x double> poison, double %_p_scalar_496.us, i32 0
  %broadcast.splat1499 = shufflevector <4 x double> %broadcast.splatinsert1498, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1501 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1502 = shufflevector <4 x double> %broadcast.splatinsert1501, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1490
  %index1493 = phi i64 [ 0, %vector.ph1490 ], [ %index.next1494, %vector.body1486 ]
  %366 = add nuw nsw i64 %index1493, %331
  %367 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1493
  %368 = bitcast double* %367 to <4 x double>*
  %wide.load1497 = load <4 x double>, <4 x double>* %368, align 8, !alias.scope !103
  %369 = fmul fast <4 x double> %broadcast.splat1499, %wide.load1497
  %370 = add nuw nsw i64 %366, %polly.access.mul.Packed_MemRef_call2305493.us
  %371 = getelementptr double, double* %Packed_MemRef_call2305, i64 %370
  %372 = bitcast double* %371 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %372, align 8
  %373 = fmul fast <4 x double> %broadcast.splat1502, %wide.load1500
  %374 = shl i64 %366, 3
  %375 = add i64 %374, %365
  %376 = getelementptr i8, i8* %call, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %377, align 8, !alias.scope !106, !noalias !108
  %378 = fadd fast <4 x double> %373, %369
  %379 = fmul fast <4 x double> %378, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %380 = fadd fast <4 x double> %379, %wide.load1503
  %381 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %380, <4 x double>* %381, align 8, !alias.scope !106, !noalias !108
  %index.next1494 = add i64 %index1493, 4
  %382 = icmp eq i64 %index.next1494, %n.vec1492
  br i1 %382, label %middle.block1484, label %vector.body1486, !llvm.loop !109

middle.block1484:                                 ; preds = %vector.body1486
  %cmp.n1496 = icmp eq i64 %339, %n.vec1492
  br i1 %cmp.n1496, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us.preheader

polly.loop_header482.us.preheader:                ; preds = %vector.memcheck1472, %polly.loop_header475.us.preheader, %middle.block1484
  %polly.indvar486.us.ph = phi i64 [ 0, %vector.memcheck1472 ], [ 0, %polly.loop_header475.us.preheader ], [ %n.vec1492, %middle.block1484 ]
  br label %polly.loop_header482.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.us.preheader, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %polly.indvar486.us.ph, %polly.loop_header482.us.preheader ]
  %383 = add nuw nsw i64 %polly.indvar486.us, %331
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar486.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %polly.access.add.Packed_MemRef_call2305498.us = add nuw nsw i64 %383, %polly.access.mul.Packed_MemRef_call2305493.us
  %polly.access.Packed_MemRef_call2305499.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call2305499.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %365
  %scevgep505.us = getelementptr i8, i8* %call, i64 %385
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar486.us, %smin1071
  br i1 %exitcond1072.not, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us, !llvm.loop !110

polly.loop_exit484.loopexit.us:                   ; preds = %polly.loop_header482.us, %middle.block1484
  %polly.access.add.Packed_MemRef_call2305494.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.1, %362
  %polly.access.Packed_MemRef_call2305495.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.1
  %_p_scalar_496.us.1 = load double, double* %polly.access.Packed_MemRef_call2305495.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.1 = add nsw i64 %361, 1200
  %polly.access.Packed_MemRef_call1303503.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.1
  %_p_scalar_504.us.1 = load double, double* %polly.access.Packed_MemRef_call1303503.us.1, align 8
  %min.iters.check1457 = icmp ult i64 %346, 4
  br i1 %min.iters.check1457, label %polly.loop_header482.us.1.preheader, label %vector.memcheck1439

vector.memcheck1439:                              ; preds = %polly.loop_exit484.loopexit.us
  %bound01448 = icmp ult i8* %scevgep1441, %scevgep1447
  %bound11449 = icmp ult i8* %scevgep1445, %scevgep1444
  %found.conflict1450 = and i1 %bound01448, %bound11449
  br i1 %found.conflict1450, label %polly.loop_header482.us.1.preheader, label %vector.ph1458

vector.ph1458:                                    ; preds = %vector.memcheck1439
  %n.vec1460 = and i64 %346, -4
  %broadcast.splatinsert1466 = insertelement <4 x double> poison, double %_p_scalar_496.us.1, i32 0
  %broadcast.splat1467 = shufflevector <4 x double> %broadcast.splatinsert1466, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1469 = insertelement <4 x double> poison, double %_p_scalar_504.us.1, i32 0
  %broadcast.splat1470 = shufflevector <4 x double> %broadcast.splatinsert1469, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1458
  %index1461 = phi i64 [ 0, %vector.ph1458 ], [ %index.next1462, %vector.body1454 ]
  %386 = add nuw nsw i64 %index1461, %331
  %387 = add nuw nsw i64 %index1461, 1200
  %388 = getelementptr double, double* %Packed_MemRef_call1303, i64 %387
  %389 = bitcast double* %388 to <4 x double>*
  %wide.load1465 = load <4 x double>, <4 x double>* %389, align 8, !alias.scope !111
  %390 = fmul fast <4 x double> %broadcast.splat1467, %wide.load1465
  %391 = add nuw nsw i64 %386, %polly.access.mul.Packed_MemRef_call2305493.us.1
  %392 = getelementptr double, double* %Packed_MemRef_call2305, i64 %391
  %393 = bitcast double* %392 to <4 x double>*
  %wide.load1468 = load <4 x double>, <4 x double>* %393, align 8
  %394 = fmul fast <4 x double> %broadcast.splat1470, %wide.load1468
  %395 = shl i64 %386, 3
  %396 = add i64 %395, %365
  %397 = getelementptr i8, i8* %call, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %398, align 8, !alias.scope !114, !noalias !116
  %399 = fadd fast <4 x double> %394, %390
  %400 = fmul fast <4 x double> %399, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %401 = fadd fast <4 x double> %400, %wide.load1471
  %402 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %401, <4 x double>* %402, align 8, !alias.scope !114, !noalias !116
  %index.next1462 = add i64 %index1461, 4
  %403 = icmp eq i64 %index.next1462, %n.vec1460
  br i1 %403, label %middle.block1452, label %vector.body1454, !llvm.loop !117

middle.block1452:                                 ; preds = %vector.body1454
  %cmp.n1464 = icmp eq i64 %346, %n.vec1460
  br i1 %cmp.n1464, label %polly.loop_exit484.loopexit.us.1, label %polly.loop_header482.us.1.preheader

polly.loop_header482.us.1.preheader:              ; preds = %vector.memcheck1439, %polly.loop_exit484.loopexit.us, %middle.block1452
  %polly.indvar486.us.1.ph = phi i64 [ 0, %vector.memcheck1439 ], [ 0, %polly.loop_exit484.loopexit.us ], [ %n.vec1460, %middle.block1452 ]
  br label %polly.loop_header482.us.1

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall514 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit638
  tail call void @free(i8* %malloccall512)
  tail call void @free(i8* %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %404 = add i64 %indvar, 1
  %405 = mul nuw nsw i64 %polly.indvar601, 9600
  %scevgep610 = getelementptr i8, i8* %call, i64 %405
  %min.iters.check1229 = icmp ult i64 %404, 4
  br i1 %min.iters.check1229, label %polly.loop_header604.preheader, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header598
  %n.vec1232 = and i64 %404, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1228 ]
  %406 = shl nuw nsw i64 %index1233, 3
  %407 = getelementptr i8, i8* %scevgep610, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  %wide.load1237 = load <4 x double>, <4 x double>* %408, align 8, !alias.scope !118, !noalias !120
  %409 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %410 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %409, <4 x double>* %410, align 8, !alias.scope !118, !noalias !120
  %index.next1234 = add i64 %index1233, 4
  %411 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %411, label %middle.block1226, label %vector.body1228, !llvm.loop !125

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %404, %n.vec1232
  br i1 %cmp.n1236, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1226
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1232, %middle.block1226 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1226
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next602, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1109.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %412 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %412
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1108.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !126

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar617, 1200
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next618, 1000
  br i1 %exitcond1107.not, label %polly.loop_header630.preheader, label %polly.loop_header614

polly.loop_header630.preheader:                   ; preds = %polly.loop_exit622
  %scevgep1266 = getelementptr i8, i8* %malloccall512, i64 19200
  %scevgep1267 = getelementptr i8, i8* %malloccall512, i64 19208
  %scevgep1299 = getelementptr i8, i8* %malloccall512, i64 9600
  %scevgep1300 = getelementptr i8, i8* %malloccall512, i64 9608
  %scevgep1332 = getelementptr i8, i8* %malloccall512, i64 8
  br label %polly.loop_header630

polly.loop_header620:                             ; preds = %polly.loop_header620, %polly.loop_header614
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header614 ], [ %polly.indvar_next624, %polly.loop_header620 ]
  %polly.access.mul.call2627 = mul nuw nsw i64 %polly.indvar623, 1000
  %polly.access.add.call2628 = add nuw nsw i64 %polly.access.mul.call2627, %polly.indvar617
  %polly.access.call2629 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2628
  %polly.access.call2629.load = load double, double* %polly.access.call2629, align 8, !alias.scope !122, !noalias !127
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar623, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2629.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next624, 1200
  br i1 %exitcond1106.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header630:                             ; preds = %polly.loop_header630.preheader, %polly.loop_exit638
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit638 ], [ 10, %polly.loop_header630.preheader ]
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit638 ], [ 0, %polly.loop_header630.preheader ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit638 ], [ 0, %polly.loop_header630.preheader ]
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit638 ], [ 0, %polly.loop_header630.preheader ]
  %413 = mul nsw i64 %polly.indvar633, -80
  %414 = mul nuw nsw i64 %polly.indvar633, 80
  %415 = mul nuw nsw i64 %polly.indvar633, 80
  %416 = mul nsw i64 %polly.indvar633, -80
  %417 = mul nsw i64 %polly.indvar633, -80
  %418 = mul nuw nsw i64 %polly.indvar633, 80
  %419 = mul nuw nsw i64 %polly.indvar633, 80
  %420 = mul nsw i64 %polly.indvar633, -80
  %421 = mul nsw i64 %polly.indvar633, -80
  %422 = mul nuw nsw i64 %polly.indvar633, 80
  %423 = mul nuw nsw i64 %polly.indvar633, 80
  %424 = mul nsw i64 %polly.indvar633, -80
  %425 = mul nsw i64 %polly.indvar633, -80
  %426 = mul nuw nsw i64 %polly.indvar633, 80
  %427 = mul nsw i64 %polly.indvar633, -80
  %428 = mul nuw nsw i64 %polly.indvar633, 80
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_exit644
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -80
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 80
  %indvars.iv.next1102 = add nuw nsw i64 %indvars.iv1101, 10
  %exitcond1105.not = icmp eq i64 %polly.indvar_next634, 15
  br i1 %exitcond1105.not, label %polly.exiting511, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_exit644, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_exit644 ]
  %429 = shl nsw i64 %polly.indvar639, 2
  %430 = or i64 %429, 1
  %431 = or i64 %429, 2
  %432 = or i64 %429, 3
  %polly.access.mul.Packed_MemRef_call2515703.us = mul nsw i64 %polly.indvar639, 4800
  %433 = or i64 %429, 1
  %polly.access.mul.Packed_MemRef_call2515703.us.1 = mul nuw nsw i64 %433, 1200
  %434 = or i64 %429, 2
  %polly.access.mul.Packed_MemRef_call2515703.us.2 = mul nuw nsw i64 %434, 1200
  %435 = or i64 %429, 3
  %polly.access.mul.Packed_MemRef_call2515703.us.3 = mul nuw nsw i64 %435, 1200
  br label %polly.loop_header642

polly.loop_exit644:                               ; preds = %polly.loop_exit651
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next640, 250
  br i1 %exitcond1104.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header642:                             ; preds = %polly.loop_exit651, %polly.loop_header636
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit651 ], [ %indvars.iv1089, %polly.loop_header636 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit651 ], [ %indvars.iv1084, %polly.loop_header636 ]
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_exit651 ], [ 0, %polly.loop_header636 ]
  %436 = shl nuw nsw i64 %polly.indvar645, 3
  %437 = add i64 %413, %436
  %smax1341 = call i64 @llvm.smax.i64(i64 %437, i64 0)
  %438 = mul nsw i64 %polly.indvar645, -8
  %439 = add i64 %414, %438
  %440 = add i64 %smax1341, %439
  %441 = shl nuw nsw i64 %polly.indvar645, 6
  %442 = shl nuw nsw i64 %polly.indvar645, 3
  %443 = add i64 %416, %442
  %smax1327 = call i64 @llvm.smax.i64(i64 %443, i64 0)
  %444 = add nuw i64 %415, %smax1327
  %445 = mul nsw i64 %444, 9600
  %446 = add i64 %441, %445
  %447 = or i64 %441, 8
  %448 = add i64 %447, %445
  %449 = mul nsw i64 %polly.indvar645, -8
  %450 = add i64 %415, %449
  %451 = add i64 %smax1327, %450
  %452 = shl nuw nsw i64 %polly.indvar645, 3
  %453 = add i64 %417, %452
  %smax1309 = call i64 @llvm.smax.i64(i64 %453, i64 0)
  %454 = mul nsw i64 %polly.indvar645, -8
  %455 = add i64 %418, %454
  %456 = add i64 %smax1309, %455
  %457 = shl nuw nsw i64 %polly.indvar645, 6
  %458 = shl nuw nsw i64 %polly.indvar645, 3
  %459 = add i64 %420, %458
  %smax1294 = call i64 @llvm.smax.i64(i64 %459, i64 0)
  %460 = add nuw i64 %419, %smax1294
  %461 = mul nsw i64 %460, 9600
  %462 = add i64 %457, %461
  %463 = or i64 %457, 8
  %464 = add i64 %463, %461
  %465 = mul nsw i64 %polly.indvar645, -8
  %466 = add i64 %419, %465
  %467 = add i64 %smax1294, %466
  %468 = shl nuw nsw i64 %polly.indvar645, 3
  %469 = add i64 %421, %468
  %smax1276 = call i64 @llvm.smax.i64(i64 %469, i64 0)
  %470 = mul nsw i64 %polly.indvar645, -8
  %471 = add i64 %422, %470
  %472 = add i64 %smax1276, %471
  %473 = shl nuw nsw i64 %polly.indvar645, 6
  %474 = shl nuw nsw i64 %polly.indvar645, 3
  %475 = add i64 %424, %474
  %smax1261 = call i64 @llvm.smax.i64(i64 %475, i64 0)
  %476 = add nuw i64 %423, %smax1261
  %477 = mul nsw i64 %476, 9600
  %478 = add i64 %473, %477
  %479 = or i64 %473, 8
  %480 = add i64 %479, %477
  %481 = mul nsw i64 %polly.indvar645, -8
  %482 = add i64 %423, %481
  %483 = add i64 %smax1261, %482
  %484 = shl nuw nsw i64 %polly.indvar645, 3
  %485 = add i64 %425, %484
  %smax1241 = call i64 @llvm.smax.i64(i64 %485, i64 0)
  %486 = mul nsw i64 %polly.indvar645, -8
  %487 = add i64 %426, %486
  %488 = add i64 %smax1241, %487
  %489 = shl nsw i64 %polly.indvar645, 3
  %490 = add nsw i64 %489, %427
  %491 = icmp sgt i64 %490, 0
  %492 = select i1 %491, i64 %490, i64 0
  %polly.loop_guard652 = icmp slt i64 %492, 80
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header642
  %smax1088 = call i64 @llvm.smax.i64(i64 %indvars.iv1086, i64 0)
  %493 = add i64 %smax1088, %indvars.iv1091
  %494 = sub nsw i64 %428, %489
  %495 = add nuw nsw i64 %489, 8
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit687, %polly.loop_header642
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, 8
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -8
  %exitcond1103.not = icmp eq i64 %polly.indvar_next646, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit687
  %indvar1242 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvar.next1243, %polly.loop_exit687 ]
  %indvars.iv1093 = phi i64 [ %493, %polly.loop_header649.preheader ], [ %indvars.iv.next1094, %polly.loop_exit687 ]
  %polly.indvar653 = phi i64 [ %492, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit687 ]
  %496 = add i64 %440, %indvar1242
  %smin1342 = call i64 @llvm.smin.i64(i64 %496, i64 7)
  %497 = add nsw i64 %smin1342, 1
  %498 = mul nuw nsw i64 %indvar1242, 9600
  %499 = add i64 %446, %498
  %scevgep1328 = getelementptr i8, i8* %call, i64 %499
  %500 = add i64 %448, %498
  %scevgep1329 = getelementptr i8, i8* %call, i64 %500
  %501 = add i64 %451, %indvar1242
  %smin1330 = call i64 @llvm.smin.i64(i64 %501, i64 7)
  %502 = shl nsw i64 %smin1330, 3
  %scevgep1331 = getelementptr i8, i8* %scevgep1329, i64 %502
  %scevgep1333 = getelementptr i8, i8* %scevgep1332, i64 %502
  %503 = add i64 %456, %indvar1242
  %smin1310 = call i64 @llvm.smin.i64(i64 %503, i64 7)
  %504 = add nsw i64 %smin1310, 1
  %505 = mul nuw nsw i64 %indvar1242, 9600
  %506 = add i64 %462, %505
  %scevgep1295 = getelementptr i8, i8* %call, i64 %506
  %507 = add i64 %464, %505
  %scevgep1296 = getelementptr i8, i8* %call, i64 %507
  %508 = add i64 %467, %indvar1242
  %smin1297 = call i64 @llvm.smin.i64(i64 %508, i64 7)
  %509 = shl nsw i64 %smin1297, 3
  %scevgep1298 = getelementptr i8, i8* %scevgep1296, i64 %509
  %scevgep1301 = getelementptr i8, i8* %scevgep1300, i64 %509
  %510 = add i64 %472, %indvar1242
  %smin1277 = call i64 @llvm.smin.i64(i64 %510, i64 7)
  %511 = add nsw i64 %smin1277, 1
  %512 = mul nuw nsw i64 %indvar1242, 9600
  %513 = add i64 %478, %512
  %scevgep1262 = getelementptr i8, i8* %call, i64 %513
  %514 = add i64 %480, %512
  %scevgep1263 = getelementptr i8, i8* %call, i64 %514
  %515 = add i64 %483, %indvar1242
  %smin1264 = call i64 @llvm.smin.i64(i64 %515, i64 7)
  %516 = shl nsw i64 %smin1264, 3
  %scevgep1265 = getelementptr i8, i8* %scevgep1263, i64 %516
  %scevgep1268 = getelementptr i8, i8* %scevgep1267, i64 %516
  %517 = add i64 %488, %indvar1242
  %smin1244 = call i64 @llvm.smin.i64(i64 %517, i64 7)
  %518 = add nsw i64 %smin1244, 1
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 7)
  %519 = add nsw i64 %polly.indvar653, %494
  %polly.loop_guard6661146 = icmp sgt i64 %519, -1
  %520 = add nuw nsw i64 %polly.indvar653, %428
  %.not925 = icmp ult i64 %520, %495
  %polly.access.mul.call1679 = mul nsw i64 %520, 1000
  %521 = add nuw i64 %polly.access.mul.call1679, %429
  br i1 %polly.loop_guard6661146, label %polly.loop_header663.us, label %polly.loop_header649.split

polly.loop_header663.us:                          ; preds = %polly.loop_header649, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header649 ]
  %522 = add nuw nsw i64 %polly.indvar667.us, %489
  %polly.access.mul.call1671.us = mul nuw nsw i64 %522, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %429, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.indvar667.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar667.us, %smin1098
  br i1 %exitcond1096.not, label %polly.cond674.loopexit.us, label %polly.loop_header663.us

polly.then676.us:                                 ; preds = %polly.cond674.loopexit.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1722, i64 %521
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1513684.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %519
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1513684.us, align 8
  br label %polly.loop_header663.us.1.preheader

polly.cond674.loopexit.us:                        ; preds = %polly.loop_header663.us
  br i1 %.not925, label %polly.loop_header663.us.1.preheader, label %polly.then676.us

polly.loop_header663.us.1.preheader:              ; preds = %polly.then676.us, %polly.cond674.loopexit.us
  br label %polly.loop_header663.us.1

polly.loop_header649.split:                       ; preds = %polly.loop_header649
  br i1 %.not925, label %polly.loop_exit687, label %polly.loop_header656.preheader

polly.loop_header656.preheader:                   ; preds = %polly.loop_header649.split
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1722, i64 %521
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1513684 = getelementptr double, double* %Packed_MemRef_call1513, i64 %519
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1513684, align 8
  %polly.access.add.call1680.1 = or i64 %521, 1
  %polly.access.call1681.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.1
  %polly.access.call1681.load.1 = load double, double* %polly.access.call1681.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.1 = add nsw i64 %519, 1200
  %polly.access.Packed_MemRef_call1513684.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.1
  store double %polly.access.call1681.load.1, double* %polly.access.Packed_MemRef_call1513684.1, align 8
  %polly.access.add.call1680.2 = or i64 %521, 2
  %polly.access.call1681.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.2
  %polly.access.call1681.load.2 = load double, double* %polly.access.call1681.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.2 = add nsw i64 %519, 2400
  %polly.access.Packed_MemRef_call1513684.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.2
  store double %polly.access.call1681.load.2, double* %polly.access.Packed_MemRef_call1513684.2, align 8
  %polly.access.add.call1680.3 = or i64 %521, 3
  %polly.access.call1681.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.3
  %polly.access.call1681.load.3 = load double, double* %polly.access.call1681.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.3 = add nsw i64 %519, 3600
  %polly.access.Packed_MemRef_call1513684.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.3
  store double %polly.access.call1681.load.3, double* %polly.access.Packed_MemRef_call1513684.3, align 8
  br label %polly.loop_exit687

polly.loop_exit687:                               ; preds = %polly.loop_header692.us.3, %middle.block1238, %polly.loop_header649.split, %polly.loop_header656.preheader, %polly.loop_header685.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655 = icmp ult i64 %polly.indvar653, 79
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 1
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %polly.loop_cond655, label %polly.loop_header649, label %polly.loop_exit651

polly.loop_header685.preheader:                   ; preds = %polly.cond674.loopexit.us.3, %polly.then676.us.3
  %523 = mul i64 %520, 9600
  br i1 %polly.loop_guard6661146, label %polly.loop_header685.us.preheader, label %polly.loop_exit687

polly.loop_header685.us.preheader:                ; preds = %polly.loop_header685.preheader
  %polly.access.add.Packed_MemRef_call2515704.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us, %520
  %polly.access.Packed_MemRef_call2515705.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2515705.us, align 8
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %519
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %min.iters.check1343 = icmp ult i64 %497, 4
  br i1 %min.iters.check1343, label %polly.loop_header692.us.preheader, label %vector.memcheck1326

vector.memcheck1326:                              ; preds = %polly.loop_header685.us.preheader
  %bound01334 = icmp ult i8* %scevgep1328, %scevgep1333
  %bound11335 = icmp ult i8* %malloccall512, %scevgep1331
  %found.conflict1336 = and i1 %bound01334, %bound11335
  br i1 %found.conflict1336, label %polly.loop_header692.us.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %vector.memcheck1326
  %n.vec1346 = and i64 %497, -4
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1340 ]
  %524 = add nuw nsw i64 %index1347, %489
  %525 = getelementptr double, double* %Packed_MemRef_call1513, i64 %index1347
  %526 = bitcast double* %525 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %526, align 8, !alias.scope !129
  %527 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %528 = add nuw nsw i64 %524, %polly.access.mul.Packed_MemRef_call2515703.us
  %529 = getelementptr double, double* %Packed_MemRef_call2515, i64 %528
  %530 = bitcast double* %529 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %530, align 8
  %531 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %532 = shl i64 %524, 3
  %533 = add i64 %532, %523
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %535, align 8, !alias.scope !132, !noalias !134
  %536 = fadd fast <4 x double> %531, %527
  %537 = fmul fast <4 x double> %536, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %538 = fadd fast <4 x double> %537, %wide.load1357
  %539 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %538, <4 x double>* %539, align 8, !alias.scope !132, !noalias !134
  %index.next1348 = add i64 %index1347, 4
  %540 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %540, label %middle.block1338, label %vector.body1340, !llvm.loop !135

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1350 = icmp eq i64 %497, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %vector.memcheck1326, %polly.loop_header685.us.preheader, %middle.block1338
  %polly.indvar696.us.ph = phi i64 [ 0, %vector.memcheck1326 ], [ 0, %polly.loop_header685.us.preheader ], [ %n.vec1346, %middle.block1338 ]
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %541 = add nuw nsw i64 %polly.indvar696.us, %489
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.indvar696.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.add.Packed_MemRef_call2515708.us = add nuw nsw i64 %541, %polly.access.mul.Packed_MemRef_call2515703.us
  %polly.access.Packed_MemRef_call2515709.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2515709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %542 = shl i64 %541, 3
  %543 = add i64 %542, %523
  %scevgep715.us = getelementptr i8, i8* %call, i64 %543
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar696.us, %smin1098
  br i1 %exitcond1099.not, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us, !llvm.loop !136

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_header692.us, %middle.block1338
  %polly.access.add.Packed_MemRef_call2515704.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.1, %520
  %polly.access.Packed_MemRef_call2515705.us.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.1
  %_p_scalar_706.us.1 = load double, double* %polly.access.Packed_MemRef_call2515705.us.1, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.1 = add nsw i64 %519, 1200
  %polly.access.Packed_MemRef_call1513713.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call1513713.us.1, align 8
  %min.iters.check1311 = icmp ult i64 %504, 4
  br i1 %min.iters.check1311, label %polly.loop_header692.us.1.preheader, label %vector.memcheck1293

vector.memcheck1293:                              ; preds = %polly.loop_exit694.loopexit.us
  %bound01302 = icmp ult i8* %scevgep1295, %scevgep1301
  %bound11303 = icmp ult i8* %scevgep1299, %scevgep1298
  %found.conflict1304 = and i1 %bound01302, %bound11303
  br i1 %found.conflict1304, label %polly.loop_header692.us.1.preheader, label %vector.ph1312

vector.ph1312:                                    ; preds = %vector.memcheck1293
  %n.vec1314 = and i64 %504, -4
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_706.us.1, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1308 ]
  %544 = add nuw nsw i64 %index1315, %489
  %545 = add nuw nsw i64 %index1315, 1200
  %546 = getelementptr double, double* %Packed_MemRef_call1513, i64 %545
  %547 = bitcast double* %546 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %547, align 8, !alias.scope !137
  %548 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %549 = add nuw nsw i64 %544, %polly.access.mul.Packed_MemRef_call2515703.us.1
  %550 = getelementptr double, double* %Packed_MemRef_call2515, i64 %549
  %551 = bitcast double* %550 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %551, align 8
  %552 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %553 = shl i64 %544, 3
  %554 = add i64 %553, %523
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %556, align 8, !alias.scope !140, !noalias !142
  %557 = fadd fast <4 x double> %552, %548
  %558 = fmul fast <4 x double> %557, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %559 = fadd fast <4 x double> %558, %wide.load1325
  %560 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %559, <4 x double>* %560, align 8, !alias.scope !140, !noalias !142
  %index.next1316 = add i64 %index1315, 4
  %561 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %561, label %middle.block1306, label %vector.body1308, !llvm.loop !143

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1318 = icmp eq i64 %504, %n.vec1314
  br i1 %cmp.n1318, label %polly.loop_exit694.loopexit.us.1, label %polly.loop_header692.us.1.preheader

polly.loop_header692.us.1.preheader:              ; preds = %vector.memcheck1293, %polly.loop_exit694.loopexit.us, %middle.block1306
  %polly.indvar696.us.1.ph = phi i64 [ 0, %vector.memcheck1293 ], [ 0, %polly.loop_exit694.loopexit.us ], [ %n.vec1314, %middle.block1306 ]
  br label %polly.loop_header692.us.1

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -1168)
  %562 = shl nsw i64 %polly.indvar847, 5
  %563 = add nsw i64 %smin1136, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1139.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1139.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %564 = mul nsw i64 %polly.indvar853, -32
  %smin = call i64 @llvm.smin.i64(i64 %564, i64 -1168)
  %565 = add nsw i64 %smin, 1200
  %smin1132 = call i64 @llvm.smin.i64(i64 %indvars.iv1130, i64 -1168)
  %566 = shl nsw i64 %polly.indvar853, 5
  %567 = add nsw i64 %smin1132, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -32
  %exitcond1138.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1138.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %568 = add nuw nsw i64 %polly.indvar859, %562
  %569 = trunc i64 %568 to i32
  %570 = mul nuw nsw i64 %568, 9600
  %min.iters.check = icmp eq i64 %565, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1168

vector.ph1168:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1175 = insertelement <4 x i64> poison, i64 %566, i32 0
  %broadcast.splat1176 = shufflevector <4 x i64> %broadcast.splatinsert1175, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %569, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1168
  %index1169 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1168 ], [ %vec.ind.next1174, %vector.body1167 ]
  %571 = add nuw nsw <4 x i64> %vec.ind1173, %broadcast.splat1176
  %572 = trunc <4 x i64> %571 to <4 x i32>
  %573 = mul <4 x i32> %broadcast.splat1178, %572
  %574 = add <4 x i32> %573, <i32 3, i32 3, i32 3, i32 3>
  %575 = urem <4 x i32> %574, <i32 1200, i32 1200, i32 1200, i32 1200>
  %576 = sitofp <4 x i32> %575 to <4 x double>
  %577 = fmul fast <4 x double> %576, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %578 = extractelement <4 x i64> %571, i32 0
  %579 = shl i64 %578, 3
  %580 = add nuw nsw i64 %579, %570
  %581 = getelementptr i8, i8* %call, i64 %580
  %582 = bitcast i8* %581 to <4 x double>*
  store <4 x double> %577, <4 x double>* %582, align 8, !alias.scope !144, !noalias !146
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %583 = icmp eq i64 %index.next1170, %565
  br i1 %583, label %polly.loop_exit864, label %vector.body1167, !llvm.loop !149

polly.loop_exit864:                               ; preds = %vector.body1167, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar859, %563
  br i1 %exitcond1137.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %584 = add nuw nsw i64 %polly.indvar865, %566
  %585 = trunc i64 %584 to i32
  %586 = mul i32 %585, %569
  %587 = add i32 %586, 3
  %588 = urem i32 %587, 1200
  %p_conv31.i = sitofp i32 %588 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %589 = shl i64 %584, 3
  %590 = add nuw nsw i64 %589, %570
  %scevgep868 = getelementptr i8, i8* %call, i64 %590
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar865, %567
  br i1 %exitcond1133.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !150

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -1168)
  %591 = shl nsw i64 %polly.indvar874, 5
  %592 = add nsw i64 %smin1126, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1129.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1129.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %593 = mul nsw i64 %polly.indvar880, -32
  %smin1182 = call i64 @llvm.smin.i64(i64 %593, i64 -968)
  %594 = add nsw i64 %smin1182, 1000
  %smin1122 = call i64 @llvm.smin.i64(i64 %indvars.iv1120, i64 -968)
  %595 = shl nsw i64 %polly.indvar880, 5
  %596 = add nsw i64 %smin1122, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1128.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %597 = add nuw nsw i64 %polly.indvar886, %591
  %598 = trunc i64 %597 to i32
  %599 = mul nuw nsw i64 %597, 8000
  %min.iters.check1183 = icmp eq i64 %594, 0
  br i1 %min.iters.check1183, label %polly.loop_header889, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1193 = insertelement <4 x i64> poison, i64 %595, i32 0
  %broadcast.splat1194 = shufflevector <4 x i64> %broadcast.splatinsert1193, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %598, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1181 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1184 ], [ %vec.ind.next1192, %vector.body1181 ]
  %600 = add nuw nsw <4 x i64> %vec.ind1191, %broadcast.splat1194
  %601 = trunc <4 x i64> %600 to <4 x i32>
  %602 = mul <4 x i32> %broadcast.splat1196, %601
  %603 = add <4 x i32> %602, <i32 2, i32 2, i32 2, i32 2>
  %604 = urem <4 x i32> %603, <i32 1000, i32 1000, i32 1000, i32 1000>
  %605 = sitofp <4 x i32> %604 to <4 x double>
  %606 = fmul fast <4 x double> %605, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %607 = extractelement <4 x i64> %600, i32 0
  %608 = shl i64 %607, 3
  %609 = add nuw nsw i64 %608, %599
  %610 = getelementptr i8, i8* %call2, i64 %609
  %611 = bitcast i8* %610 to <4 x double>*
  store <4 x double> %606, <4 x double>* %611, align 8, !alias.scope !148, !noalias !151
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %612 = icmp eq i64 %index.next1188, %594
  br i1 %612, label %polly.loop_exit891, label %vector.body1181, !llvm.loop !152

polly.loop_exit891:                               ; preds = %vector.body1181, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar886, %592
  br i1 %exitcond1127.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %613 = add nuw nsw i64 %polly.indvar892, %595
  %614 = trunc i64 %613 to i32
  %615 = mul i32 %614, %598
  %616 = add i32 %615, 2
  %617 = urem i32 %616, 1000
  %p_conv10.i = sitofp i32 %617 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %618 = shl i64 %613, 3
  %619 = add nuw nsw i64 %618, %599
  %scevgep895 = getelementptr i8, i8* %call2, i64 %619
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar892, %596
  br i1 %exitcond1123.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !153

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -1168)
  %620 = shl nsw i64 %polly.indvar900, 5
  %621 = add nsw i64 %smin1116, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1119.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1119.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %622 = mul nsw i64 %polly.indvar906, -32
  %smin1200 = call i64 @llvm.smin.i64(i64 %622, i64 -968)
  %623 = add nsw i64 %smin1200, 1000
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -968)
  %624 = shl nsw i64 %polly.indvar906, 5
  %625 = add nsw i64 %smin1112, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1118.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %626 = add nuw nsw i64 %polly.indvar912, %620
  %627 = trunc i64 %626 to i32
  %628 = mul nuw nsw i64 %626, 8000
  %min.iters.check1201 = icmp eq i64 %623, 0
  br i1 %min.iters.check1201, label %polly.loop_header915, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %624, i32 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %627, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1199 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1210, %vector.body1199 ]
  %629 = add nuw nsw <4 x i64> %vec.ind1209, %broadcast.splat1212
  %630 = trunc <4 x i64> %629 to <4 x i32>
  %631 = mul <4 x i32> %broadcast.splat1214, %630
  %632 = add <4 x i32> %631, <i32 1, i32 1, i32 1, i32 1>
  %633 = urem <4 x i32> %632, <i32 1200, i32 1200, i32 1200, i32 1200>
  %634 = sitofp <4 x i32> %633 to <4 x double>
  %635 = fmul fast <4 x double> %634, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %636 = extractelement <4 x i64> %629, i32 0
  %637 = shl i64 %636, 3
  %638 = add nuw nsw i64 %637, %628
  %639 = getelementptr i8, i8* %call1, i64 %638
  %640 = bitcast i8* %639 to <4 x double>*
  store <4 x double> %635, <4 x double>* %640, align 8, !alias.scope !147, !noalias !154
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %641 = icmp eq i64 %index.next1206, %623
  br i1 %641, label %polly.loop_exit917, label %vector.body1199, !llvm.loop !155

polly.loop_exit917:                               ; preds = %vector.body1199, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar912, %621
  br i1 %exitcond1117.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %642 = add nuw nsw i64 %polly.indvar918, %624
  %643 = trunc i64 %642 to i32
  %644 = mul i32 %643, %627
  %645 = add i32 %644, 1
  %646 = urem i32 %645, 1200
  %p_conv.i = sitofp i32 %646 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %647 = shl i64 %642, 3
  %648 = add nuw nsw i64 %647, %628
  %scevgep922 = getelementptr i8, i8* %call1, i64 %648
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar918, %625
  br i1 %exitcond1113.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %649 = add nuw nsw i64 %polly.indvar251.us.1, %173
  %polly.access.mul.call1255.us.1 = mul nuw nsw i64 %649, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %114, %polly.access.mul.call1255.us.1
  %polly.access.call1257.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us.1
  %polly.access.call1257.load.us.1 = load double, double* %polly.access.call1257.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1257.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond1042.1.not = icmp eq i64 %polly.indvar251.us.1, %smin1044
  br i1 %exitcond1042.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header247.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header247.us.1
  br i1 %.not, label %polly.loop_header247.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1260.us.1 = or i64 %205, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %203, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %650 = add nuw nsw i64 %polly.indvar251.us.2, %173
  %polly.access.mul.call1255.us.2 = mul nuw nsw i64 %650, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %115, %polly.access.mul.call1255.us.2
  %polly.access.call1257.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us.2
  %polly.access.call1257.load.us.2 = load double, double* %polly.access.call1257.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar251.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1257.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next252.us.2 = add nuw nsw i64 %polly.indvar251.us.2, 1
  %exitcond1042.2.not = icmp eq i64 %polly.indvar251.us.2, %smin1044
  br i1 %exitcond1042.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header247.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header247.us.2
  br i1 %.not, label %polly.loop_header247.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1260.us.2 = or i64 %205, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %203, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %651 = add nuw nsw i64 %polly.indvar251.us.3, %173
  %polly.access.mul.call1255.us.3 = mul nuw nsw i64 %651, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %116, %polly.access.mul.call1255.us.3
  %polly.access.call1257.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us.3
  %polly.access.call1257.load.us.3 = load double, double* %polly.access.call1257.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar251.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1257.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next252.us.3 = add nuw nsw i64 %polly.indvar251.us.3, 1
  %exitcond1042.3.not = icmp eq i64 %polly.indvar251.us.3, %smin1044
  br i1 %exitcond1042.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header247.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header247.us.3
  br i1 %.not, label %polly.loop_header265.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1260.us.3 = or i64 %205, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %203, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %652 = add nuw nsw i64 %polly.indvar276.us.1, %173
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %652, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %653 = shl i64 %652, 3
  %654 = add i64 %653, %207
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %654
  %scevgep295296.us.1 = bitcast i8* %scevgep295.us.1 to double*
  %_p_scalar_297.us.1 = load double, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_297.us.1
  store double %p_add42.i118.us.1, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %exitcond1045.1.not = icmp eq i64 %polly.indvar276.us.1, %smin1044
  br i1 %exitcond1045.1.not, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1, !llvm.loop !157

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1598
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %204
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %203, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1570 = icmp ult i64 %195, 4
  br i1 %min.iters.check1570, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1552

vector.memcheck1552:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01561 = icmp ult i8* %scevgep1554, %scevgep1560
  %bound11562 = icmp ult i8* %scevgep1558, %scevgep1557
  %found.conflict1563 = and i1 %bound01561, %bound11562
  br i1 %found.conflict1563, label %polly.loop_header272.us.2.preheader, label %vector.ph1571

vector.ph1571:                                    ; preds = %vector.memcheck1552
  %n.vec1573 = and i64 %195, -4
  %broadcast.splatinsert1579 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1580 = shufflevector <4 x double> %broadcast.splatinsert1579, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1582 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1583 = shufflevector <4 x double> %broadcast.splatinsert1582, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.body1567, %vector.ph1571
  %index1574 = phi i64 [ 0, %vector.ph1571 ], [ %index.next1575, %vector.body1567 ]
  %655 = add nuw nsw i64 %index1574, %173
  %656 = add nuw nsw i64 %index1574, 2400
  %657 = getelementptr double, double* %Packed_MemRef_call1, i64 %656
  %658 = bitcast double* %657 to <4 x double>*
  %wide.load1578 = load <4 x double>, <4 x double>* %658, align 8, !alias.scope !158
  %659 = fmul fast <4 x double> %broadcast.splat1580, %wide.load1578
  %660 = add nuw nsw i64 %655, %polly.access.mul.Packed_MemRef_call2283.us.2
  %661 = getelementptr double, double* %Packed_MemRef_call2, i64 %660
  %662 = bitcast double* %661 to <4 x double>*
  %wide.load1581 = load <4 x double>, <4 x double>* %662, align 8
  %663 = fmul fast <4 x double> %broadcast.splat1583, %wide.load1581
  %664 = shl i64 %655, 3
  %665 = add i64 %664, %207
  %666 = getelementptr i8, i8* %call, i64 %665
  %667 = bitcast i8* %666 to <4 x double>*
  %wide.load1584 = load <4 x double>, <4 x double>* %667, align 8, !alias.scope !161, !noalias !163
  %668 = fadd fast <4 x double> %663, %659
  %669 = fmul fast <4 x double> %668, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %670 = fadd fast <4 x double> %669, %wide.load1584
  %671 = bitcast i8* %666 to <4 x double>*
  store <4 x double> %670, <4 x double>* %671, align 8, !alias.scope !161, !noalias !163
  %index.next1575 = add i64 %index1574, 4
  %672 = icmp eq i64 %index.next1575, %n.vec1573
  br i1 %672, label %middle.block1565, label %vector.body1567, !llvm.loop !164

middle.block1565:                                 ; preds = %vector.body1567
  %cmp.n1577 = icmp eq i64 %195, %n.vec1573
  br i1 %cmp.n1577, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1552, %polly.loop_exit274.loopexit.us.1, %middle.block1565
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1552 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1573, %middle.block1565 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %673 = add nuw nsw i64 %polly.indvar276.us.2, %173
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %673, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %674 = shl i64 %673, 3
  %675 = add i64 %674, %207
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %675
  %scevgep295296.us.2 = bitcast i8* %scevgep295.us.2 to double*
  %_p_scalar_297.us.2 = load double, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_297.us.2
  store double %p_add42.i118.us.2, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %exitcond1045.2.not = icmp eq i64 %polly.indvar276.us.2, %smin1044
  br i1 %exitcond1045.2.not, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2, !llvm.loop !165

polly.loop_exit274.loopexit.us.2:                 ; preds = %polly.loop_header272.us.2, %middle.block1565
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %204
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %203, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1537 = icmp ult i64 %202, 4
  br i1 %min.iters.check1537, label %polly.loop_header272.us.3.preheader, label %vector.ph1538

vector.ph1538:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1540 = and i64 %202, -4
  %broadcast.splatinsert1546 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1547 = shufflevector <4 x double> %broadcast.splatinsert1546, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1549 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1550 = shufflevector <4 x double> %broadcast.splatinsert1549, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1542, %vector.body1532 ]
  %676 = add nuw nsw i64 %index1541, %173
  %677 = add nuw nsw i64 %index1541, 3600
  %678 = getelementptr double, double* %Packed_MemRef_call1, i64 %677
  %679 = bitcast double* %678 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %679, align 8
  %680 = fmul fast <4 x double> %broadcast.splat1547, %wide.load1545
  %681 = add nuw nsw i64 %676, %polly.access.mul.Packed_MemRef_call2283.us.3
  %682 = getelementptr double, double* %Packed_MemRef_call2, i64 %681
  %683 = bitcast double* %682 to <4 x double>*
  %wide.load1548 = load <4 x double>, <4 x double>* %683, align 8
  %684 = fmul fast <4 x double> %broadcast.splat1550, %wide.load1548
  %685 = shl i64 %676, 3
  %686 = add i64 %685, %207
  %687 = getelementptr i8, i8* %call, i64 %686
  %688 = bitcast i8* %687 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %688, align 8, !alias.scope !65, !noalias !67
  %689 = fadd fast <4 x double> %684, %680
  %690 = fmul fast <4 x double> %689, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %691 = fadd fast <4 x double> %690, %wide.load1551
  %692 = bitcast i8* %687 to <4 x double>*
  store <4 x double> %691, <4 x double>* %692, align 8, !alias.scope !65, !noalias !67
  %index.next1542 = add i64 %index1541, 4
  %693 = icmp eq i64 %index.next1542, %n.vec1540
  br i1 %693, label %middle.block1530, label %vector.body1532, !llvm.loop !166

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1544 = icmp eq i64 %202, %n.vec1540
  br i1 %cmp.n1544, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1530
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1540, %middle.block1530 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %694 = add nuw nsw i64 %polly.indvar276.us.3, %173
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %694, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %695 = shl i64 %694, 3
  %696 = add i64 %695, %207
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %696
  %scevgep295296.us.3 = bitcast i8* %scevgep295.us.3 to double*
  %_p_scalar_297.us.3 = load double, double* %scevgep295296.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_297.us.3
  store double %p_add42.i118.us.3, double* %scevgep295296.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %exitcond1045.3.not = icmp eq i64 %polly.indvar276.us.3, %smin1044
  br i1 %exitcond1045.3.not, label %polly.loop_exit267, label %polly.loop_header272.us.3, !llvm.loop !167

polly.loop_header453.us.1:                        ; preds = %polly.loop_header453.us.1.preheader, %polly.loop_header453.us.1
  %polly.indvar457.us.1 = phi i64 [ %polly.indvar_next458.us.1, %polly.loop_header453.us.1 ], [ 0, %polly.loop_header453.us.1.preheader ]
  %697 = add nuw nsw i64 %polly.indvar457.us.1, %331
  %polly.access.mul.call1461.us.1 = mul nuw nsw i64 %697, 1000
  %polly.access.add.call1462.us.1 = add nuw nsw i64 %272, %polly.access.mul.call1461.us.1
  %polly.access.call1463.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.1
  %polly.access.call1463.load.us.1 = load double, double* %polly.access.call1463.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.1 = add nuw nsw i64 %polly.indvar457.us.1, 1200
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1463.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.indvar_next458.us.1 = add nuw nsw i64 %polly.indvar457.us.1, 1
  %exitcond1069.1.not = icmp eq i64 %polly.indvar457.us.1, %smin1071
  br i1 %exitcond1069.1.not, label %polly.cond464.loopexit.us.1, label %polly.loop_header453.us.1

polly.cond464.loopexit.us.1:                      ; preds = %polly.loop_header453.us.1
  br i1 %.not924, label %polly.loop_header453.us.2.preheader, label %polly.then466.us.1

polly.then466.us.1:                               ; preds = %polly.cond464.loopexit.us.1
  %polly.access.add.call1470.us.1 = or i64 %363, 1
  %polly.access.call1471.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.1
  %polly.access.call1471.load.us.1 = load double, double* %polly.access.call1471.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.us.1 = add nsw i64 %361, 1200
  %polly.access.Packed_MemRef_call1303474.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.1
  store double %polly.access.call1471.load.us.1, double* %polly.access.Packed_MemRef_call1303474.us.1, align 8
  br label %polly.loop_header453.us.2.preheader

polly.loop_header453.us.2.preheader:              ; preds = %polly.then466.us.1, %polly.cond464.loopexit.us.1
  br label %polly.loop_header453.us.2

polly.loop_header453.us.2:                        ; preds = %polly.loop_header453.us.2.preheader, %polly.loop_header453.us.2
  %polly.indvar457.us.2 = phi i64 [ %polly.indvar_next458.us.2, %polly.loop_header453.us.2 ], [ 0, %polly.loop_header453.us.2.preheader ]
  %698 = add nuw nsw i64 %polly.indvar457.us.2, %331
  %polly.access.mul.call1461.us.2 = mul nuw nsw i64 %698, 1000
  %polly.access.add.call1462.us.2 = add nuw nsw i64 %273, %polly.access.mul.call1461.us.2
  %polly.access.call1463.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.2
  %polly.access.call1463.load.us.2 = load double, double* %polly.access.call1463.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.2 = add nuw nsw i64 %polly.indvar457.us.2, 2400
  %polly.access.Packed_MemRef_call1303.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.2
  store double %polly.access.call1463.load.us.2, double* %polly.access.Packed_MemRef_call1303.us.2, align 8
  %polly.indvar_next458.us.2 = add nuw nsw i64 %polly.indvar457.us.2, 1
  %exitcond1069.2.not = icmp eq i64 %polly.indvar457.us.2, %smin1071
  br i1 %exitcond1069.2.not, label %polly.cond464.loopexit.us.2, label %polly.loop_header453.us.2

polly.cond464.loopexit.us.2:                      ; preds = %polly.loop_header453.us.2
  br i1 %.not924, label %polly.loop_header453.us.3.preheader, label %polly.then466.us.2

polly.then466.us.2:                               ; preds = %polly.cond464.loopexit.us.2
  %polly.access.add.call1470.us.2 = or i64 %363, 2
  %polly.access.call1471.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.2
  %polly.access.call1471.load.us.2 = load double, double* %polly.access.call1471.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.us.2 = add nsw i64 %361, 2400
  %polly.access.Packed_MemRef_call1303474.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.2
  store double %polly.access.call1471.load.us.2, double* %polly.access.Packed_MemRef_call1303474.us.2, align 8
  br label %polly.loop_header453.us.3.preheader

polly.loop_header453.us.3.preheader:              ; preds = %polly.then466.us.2, %polly.cond464.loopexit.us.2
  br label %polly.loop_header453.us.3

polly.loop_header453.us.3:                        ; preds = %polly.loop_header453.us.3.preheader, %polly.loop_header453.us.3
  %polly.indvar457.us.3 = phi i64 [ %polly.indvar_next458.us.3, %polly.loop_header453.us.3 ], [ 0, %polly.loop_header453.us.3.preheader ]
  %699 = add nuw nsw i64 %polly.indvar457.us.3, %331
  %polly.access.mul.call1461.us.3 = mul nuw nsw i64 %699, 1000
  %polly.access.add.call1462.us.3 = add nuw nsw i64 %274, %polly.access.mul.call1461.us.3
  %polly.access.call1463.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.3
  %polly.access.call1463.load.us.3 = load double, double* %polly.access.call1463.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.3 = add nuw nsw i64 %polly.indvar457.us.3, 3600
  %polly.access.Packed_MemRef_call1303.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.3
  store double %polly.access.call1463.load.us.3, double* %polly.access.Packed_MemRef_call1303.us.3, align 8
  %polly.indvar_next458.us.3 = add nuw nsw i64 %polly.indvar457.us.3, 1
  %exitcond1069.3.not = icmp eq i64 %polly.indvar457.us.3, %smin1071
  br i1 %exitcond1069.3.not, label %polly.cond464.loopexit.us.3, label %polly.loop_header453.us.3

polly.cond464.loopexit.us.3:                      ; preds = %polly.loop_header453.us.3
  br i1 %.not924, label %polly.loop_header475.preheader, label %polly.then466.us.3

polly.then466.us.3:                               ; preds = %polly.cond464.loopexit.us.3
  %polly.access.add.call1470.us.3 = or i64 %363, 3
  %polly.access.call1471.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.3
  %polly.access.call1471.load.us.3 = load double, double* %polly.access.call1471.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.us.3 = add nsw i64 %361, 3600
  %polly.access.Packed_MemRef_call1303474.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.3
  store double %polly.access.call1471.load.us.3, double* %polly.access.Packed_MemRef_call1303474.us.3, align 8
  br label %polly.loop_header475.preheader

polly.loop_header482.us.1:                        ; preds = %polly.loop_header482.us.1.preheader, %polly.loop_header482.us.1
  %polly.indvar486.us.1 = phi i64 [ %polly.indvar_next487.us.1, %polly.loop_header482.us.1 ], [ %polly.indvar486.us.1.ph, %polly.loop_header482.us.1.preheader ]
  %700 = add nuw nsw i64 %polly.indvar486.us.1, %331
  %polly.access.add.Packed_MemRef_call1303490.us.1 = add nuw nsw i64 %polly.indvar486.us.1, 1200
  %polly.access.Packed_MemRef_call1303491.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.1
  %_p_scalar_492.us.1 = load double, double* %polly.access.Packed_MemRef_call1303491.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_496.us.1, %_p_scalar_492.us.1
  %polly.access.add.Packed_MemRef_call2305498.us.1 = add nuw nsw i64 %700, %polly.access.mul.Packed_MemRef_call2305493.us.1
  %polly.access.Packed_MemRef_call2305499.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call2305499.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_504.us.1, %_p_scalar_500.us.1
  %701 = shl i64 %700, 3
  %702 = add i64 %701, %365
  %scevgep505.us.1 = getelementptr i8, i8* %call, i64 %702
  %scevgep505506.us.1 = bitcast i8* %scevgep505.us.1 to double*
  %_p_scalar_507.us.1 = load double, double* %scevgep505506.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_507.us.1
  store double %p_add42.i79.us.1, double* %scevgep505506.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us.1 = add nuw nsw i64 %polly.indvar486.us.1, 1
  %exitcond1072.1.not = icmp eq i64 %polly.indvar486.us.1, %smin1071
  br i1 %exitcond1072.1.not, label %polly.loop_exit484.loopexit.us.1, label %polly.loop_header482.us.1, !llvm.loop !168

polly.loop_exit484.loopexit.us.1:                 ; preds = %polly.loop_header482.us.1, %middle.block1452
  %polly.access.add.Packed_MemRef_call2305494.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.2, %362
  %polly.access.Packed_MemRef_call2305495.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.2
  %_p_scalar_496.us.2 = load double, double* %polly.access.Packed_MemRef_call2305495.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.2 = add nsw i64 %361, 2400
  %polly.access.Packed_MemRef_call1303503.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.2
  %_p_scalar_504.us.2 = load double, double* %polly.access.Packed_MemRef_call1303503.us.2, align 8
  %min.iters.check1424 = icmp ult i64 %353, 4
  br i1 %min.iters.check1424, label %polly.loop_header482.us.2.preheader, label %vector.memcheck1406

vector.memcheck1406:                              ; preds = %polly.loop_exit484.loopexit.us.1
  %bound01415 = icmp ult i8* %scevgep1408, %scevgep1414
  %bound11416 = icmp ult i8* %scevgep1412, %scevgep1411
  %found.conflict1417 = and i1 %bound01415, %bound11416
  br i1 %found.conflict1417, label %polly.loop_header482.us.2.preheader, label %vector.ph1425

vector.ph1425:                                    ; preds = %vector.memcheck1406
  %n.vec1427 = and i64 %353, -4
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_496.us.2, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_504.us.2, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1421 ]
  %703 = add nuw nsw i64 %index1428, %331
  %704 = add nuw nsw i64 %index1428, 2400
  %705 = getelementptr double, double* %Packed_MemRef_call1303, i64 %704
  %706 = bitcast double* %705 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %706, align 8, !alias.scope !169
  %707 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %708 = add nuw nsw i64 %703, %polly.access.mul.Packed_MemRef_call2305493.us.2
  %709 = getelementptr double, double* %Packed_MemRef_call2305, i64 %708
  %710 = bitcast double* %709 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %710, align 8
  %711 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %712 = shl i64 %703, 3
  %713 = add i64 %712, %365
  %714 = getelementptr i8, i8* %call, i64 %713
  %715 = bitcast i8* %714 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %715, align 8, !alias.scope !172, !noalias !174
  %716 = fadd fast <4 x double> %711, %707
  %717 = fmul fast <4 x double> %716, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %718 = fadd fast <4 x double> %717, %wide.load1438
  %719 = bitcast i8* %714 to <4 x double>*
  store <4 x double> %718, <4 x double>* %719, align 8, !alias.scope !172, !noalias !174
  %index.next1429 = add i64 %index1428, 4
  %720 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %720, label %middle.block1419, label %vector.body1421, !llvm.loop !175

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1431 = icmp eq i64 %353, %n.vec1427
  br i1 %cmp.n1431, label %polly.loop_exit484.loopexit.us.2, label %polly.loop_header482.us.2.preheader

polly.loop_header482.us.2.preheader:              ; preds = %vector.memcheck1406, %polly.loop_exit484.loopexit.us.1, %middle.block1419
  %polly.indvar486.us.2.ph = phi i64 [ 0, %vector.memcheck1406 ], [ 0, %polly.loop_exit484.loopexit.us.1 ], [ %n.vec1427, %middle.block1419 ]
  br label %polly.loop_header482.us.2

polly.loop_header482.us.2:                        ; preds = %polly.loop_header482.us.2.preheader, %polly.loop_header482.us.2
  %polly.indvar486.us.2 = phi i64 [ %polly.indvar_next487.us.2, %polly.loop_header482.us.2 ], [ %polly.indvar486.us.2.ph, %polly.loop_header482.us.2.preheader ]
  %721 = add nuw nsw i64 %polly.indvar486.us.2, %331
  %polly.access.add.Packed_MemRef_call1303490.us.2 = add nuw nsw i64 %polly.indvar486.us.2, 2400
  %polly.access.Packed_MemRef_call1303491.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.2
  %_p_scalar_492.us.2 = load double, double* %polly.access.Packed_MemRef_call1303491.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_496.us.2, %_p_scalar_492.us.2
  %polly.access.add.Packed_MemRef_call2305498.us.2 = add nuw nsw i64 %721, %polly.access.mul.Packed_MemRef_call2305493.us.2
  %polly.access.Packed_MemRef_call2305499.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call2305499.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_504.us.2, %_p_scalar_500.us.2
  %722 = shl i64 %721, 3
  %723 = add i64 %722, %365
  %scevgep505.us.2 = getelementptr i8, i8* %call, i64 %723
  %scevgep505506.us.2 = bitcast i8* %scevgep505.us.2 to double*
  %_p_scalar_507.us.2 = load double, double* %scevgep505506.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_507.us.2
  store double %p_add42.i79.us.2, double* %scevgep505506.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us.2 = add nuw nsw i64 %polly.indvar486.us.2, 1
  %exitcond1072.2.not = icmp eq i64 %polly.indvar486.us.2, %smin1071
  br i1 %exitcond1072.2.not, label %polly.loop_exit484.loopexit.us.2, label %polly.loop_header482.us.2, !llvm.loop !176

polly.loop_exit484.loopexit.us.2:                 ; preds = %polly.loop_header482.us.2, %middle.block1419
  %polly.access.add.Packed_MemRef_call2305494.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.3, %362
  %polly.access.Packed_MemRef_call2305495.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.3
  %_p_scalar_496.us.3 = load double, double* %polly.access.Packed_MemRef_call2305495.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.3 = add nsw i64 %361, 3600
  %polly.access.Packed_MemRef_call1303503.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.3
  %_p_scalar_504.us.3 = load double, double* %polly.access.Packed_MemRef_call1303503.us.3, align 8
  %min.iters.check1391 = icmp ult i64 %360, 4
  br i1 %min.iters.check1391, label %polly.loop_header482.us.3.preheader, label %vector.ph1392

vector.ph1392:                                    ; preds = %polly.loop_exit484.loopexit.us.2
  %n.vec1394 = and i64 %360, -4
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_496.us.3, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1403 = insertelement <4 x double> poison, double %_p_scalar_504.us.3, i32 0
  %broadcast.splat1404 = shufflevector <4 x double> %broadcast.splatinsert1403, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1392
  %index1395 = phi i64 [ 0, %vector.ph1392 ], [ %index.next1396, %vector.body1386 ]
  %724 = add nuw nsw i64 %index1395, %331
  %725 = add nuw nsw i64 %index1395, 3600
  %726 = getelementptr double, double* %Packed_MemRef_call1303, i64 %725
  %727 = bitcast double* %726 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %727, align 8
  %728 = fmul fast <4 x double> %broadcast.splat1401, %wide.load1399
  %729 = add nuw nsw i64 %724, %polly.access.mul.Packed_MemRef_call2305493.us.3
  %730 = getelementptr double, double* %Packed_MemRef_call2305, i64 %729
  %731 = bitcast double* %730 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %731, align 8
  %732 = fmul fast <4 x double> %broadcast.splat1404, %wide.load1402
  %733 = shl i64 %724, 3
  %734 = add i64 %733, %365
  %735 = getelementptr i8, i8* %call, i64 %734
  %736 = bitcast i8* %735 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %736, align 8, !alias.scope !92, !noalias !94
  %737 = fadd fast <4 x double> %732, %728
  %738 = fmul fast <4 x double> %737, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %739 = fadd fast <4 x double> %738, %wide.load1405
  %740 = bitcast i8* %735 to <4 x double>*
  store <4 x double> %739, <4 x double>* %740, align 8, !alias.scope !92, !noalias !94
  %index.next1396 = add i64 %index1395, 4
  %741 = icmp eq i64 %index.next1396, %n.vec1394
  br i1 %741, label %middle.block1384, label %vector.body1386, !llvm.loop !177

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1398 = icmp eq i64 %360, %n.vec1394
  br i1 %cmp.n1398, label %polly.loop_exit477, label %polly.loop_header482.us.3.preheader

polly.loop_header482.us.3.preheader:              ; preds = %polly.loop_exit484.loopexit.us.2, %middle.block1384
  %polly.indvar486.us.3.ph = phi i64 [ 0, %polly.loop_exit484.loopexit.us.2 ], [ %n.vec1394, %middle.block1384 ]
  br label %polly.loop_header482.us.3

polly.loop_header482.us.3:                        ; preds = %polly.loop_header482.us.3.preheader, %polly.loop_header482.us.3
  %polly.indvar486.us.3 = phi i64 [ %polly.indvar_next487.us.3, %polly.loop_header482.us.3 ], [ %polly.indvar486.us.3.ph, %polly.loop_header482.us.3.preheader ]
  %742 = add nuw nsw i64 %polly.indvar486.us.3, %331
  %polly.access.add.Packed_MemRef_call1303490.us.3 = add nuw nsw i64 %polly.indvar486.us.3, 3600
  %polly.access.Packed_MemRef_call1303491.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.3
  %_p_scalar_492.us.3 = load double, double* %polly.access.Packed_MemRef_call1303491.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_496.us.3, %_p_scalar_492.us.3
  %polly.access.add.Packed_MemRef_call2305498.us.3 = add nuw nsw i64 %742, %polly.access.mul.Packed_MemRef_call2305493.us.3
  %polly.access.Packed_MemRef_call2305499.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call2305499.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_504.us.3, %_p_scalar_500.us.3
  %743 = shl i64 %742, 3
  %744 = add i64 %743, %365
  %scevgep505.us.3 = getelementptr i8, i8* %call, i64 %744
  %scevgep505506.us.3 = bitcast i8* %scevgep505.us.3 to double*
  %_p_scalar_507.us.3 = load double, double* %scevgep505506.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_507.us.3
  store double %p_add42.i79.us.3, double* %scevgep505506.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us.3 = add nuw nsw i64 %polly.indvar486.us.3, 1
  %exitcond1072.3.not = icmp eq i64 %polly.indvar486.us.3, %smin1071
  br i1 %exitcond1072.3.not, label %polly.loop_exit477, label %polly.loop_header482.us.3, !llvm.loop !178

polly.loop_header663.us.1:                        ; preds = %polly.loop_header663.us.1.preheader, %polly.loop_header663.us.1
  %polly.indvar667.us.1 = phi i64 [ %polly.indvar_next668.us.1, %polly.loop_header663.us.1 ], [ 0, %polly.loop_header663.us.1.preheader ]
  %745 = add nuw nsw i64 %polly.indvar667.us.1, %489
  %polly.access.mul.call1671.us.1 = mul nuw nsw i64 %745, 1000
  %polly.access.add.call1672.us.1 = add nuw nsw i64 %430, %polly.access.mul.call1671.us.1
  %polly.access.call1673.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.1
  %polly.access.call1673.load.us.1 = load double, double* %polly.access.call1673.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1200
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.1
  store double %polly.access.call1673.load.us.1, double* %polly.access.Packed_MemRef_call1513.us.1, align 8
  %polly.indvar_next668.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1
  %exitcond1096.1.not = icmp eq i64 %polly.indvar667.us.1, %smin1098
  br i1 %exitcond1096.1.not, label %polly.cond674.loopexit.us.1, label %polly.loop_header663.us.1

polly.cond674.loopexit.us.1:                      ; preds = %polly.loop_header663.us.1
  br i1 %.not925, label %polly.loop_header663.us.2.preheader, label %polly.then676.us.1

polly.then676.us.1:                               ; preds = %polly.cond674.loopexit.us.1
  %polly.access.add.call1680.us.1 = or i64 %521, 1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.us.1 = add nsw i64 %519, 1200
  %polly.access.Packed_MemRef_call1513684.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1513684.us.1, align 8
  br label %polly.loop_header663.us.2.preheader

polly.loop_header663.us.2.preheader:              ; preds = %polly.then676.us.1, %polly.cond674.loopexit.us.1
  br label %polly.loop_header663.us.2

polly.loop_header663.us.2:                        ; preds = %polly.loop_header663.us.2.preheader, %polly.loop_header663.us.2
  %polly.indvar667.us.2 = phi i64 [ %polly.indvar_next668.us.2, %polly.loop_header663.us.2 ], [ 0, %polly.loop_header663.us.2.preheader ]
  %746 = add nuw nsw i64 %polly.indvar667.us.2, %489
  %polly.access.mul.call1671.us.2 = mul nuw nsw i64 %746, 1000
  %polly.access.add.call1672.us.2 = add nuw nsw i64 %431, %polly.access.mul.call1671.us.2
  %polly.access.call1673.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.2
  %polly.access.call1673.load.us.2 = load double, double* %polly.access.call1673.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 2400
  %polly.access.Packed_MemRef_call1513.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.2
  store double %polly.access.call1673.load.us.2, double* %polly.access.Packed_MemRef_call1513.us.2, align 8
  %polly.indvar_next668.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 1
  %exitcond1096.2.not = icmp eq i64 %polly.indvar667.us.2, %smin1098
  br i1 %exitcond1096.2.not, label %polly.cond674.loopexit.us.2, label %polly.loop_header663.us.2

polly.cond674.loopexit.us.2:                      ; preds = %polly.loop_header663.us.2
  br i1 %.not925, label %polly.loop_header663.us.3.preheader, label %polly.then676.us.2

polly.then676.us.2:                               ; preds = %polly.cond674.loopexit.us.2
  %polly.access.add.call1680.us.2 = or i64 %521, 2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.us.2 = add nsw i64 %519, 2400
  %polly.access.Packed_MemRef_call1513684.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1513684.us.2, align 8
  br label %polly.loop_header663.us.3.preheader

polly.loop_header663.us.3.preheader:              ; preds = %polly.then676.us.2, %polly.cond674.loopexit.us.2
  br label %polly.loop_header663.us.3

polly.loop_header663.us.3:                        ; preds = %polly.loop_header663.us.3.preheader, %polly.loop_header663.us.3
  %polly.indvar667.us.3 = phi i64 [ %polly.indvar_next668.us.3, %polly.loop_header663.us.3 ], [ 0, %polly.loop_header663.us.3.preheader ]
  %747 = add nuw nsw i64 %polly.indvar667.us.3, %489
  %polly.access.mul.call1671.us.3 = mul nuw nsw i64 %747, 1000
  %polly.access.add.call1672.us.3 = add nuw nsw i64 %432, %polly.access.mul.call1671.us.3
  %polly.access.call1673.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.3
  %polly.access.call1673.load.us.3 = load double, double* %polly.access.call1673.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 3600
  %polly.access.Packed_MemRef_call1513.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.3
  store double %polly.access.call1673.load.us.3, double* %polly.access.Packed_MemRef_call1513.us.3, align 8
  %polly.indvar_next668.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 1
  %exitcond1096.3.not = icmp eq i64 %polly.indvar667.us.3, %smin1098
  br i1 %exitcond1096.3.not, label %polly.cond674.loopexit.us.3, label %polly.loop_header663.us.3

polly.cond674.loopexit.us.3:                      ; preds = %polly.loop_header663.us.3
  br i1 %.not925, label %polly.loop_header685.preheader, label %polly.then676.us.3

polly.then676.us.3:                               ; preds = %polly.cond674.loopexit.us.3
  %polly.access.add.call1680.us.3 = or i64 %521, 3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.us.3 = add nsw i64 %519, 3600
  %polly.access.Packed_MemRef_call1513684.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1513684.us.3, align 8
  br label %polly.loop_header685.preheader

polly.loop_header692.us.1:                        ; preds = %polly.loop_header692.us.1.preheader, %polly.loop_header692.us.1
  %polly.indvar696.us.1 = phi i64 [ %polly.indvar_next697.us.1, %polly.loop_header692.us.1 ], [ %polly.indvar696.us.1.ph, %polly.loop_header692.us.1.preheader ]
  %748 = add nuw nsw i64 %polly.indvar696.us.1, %489
  %polly.access.add.Packed_MemRef_call1513700.us.1 = add nuw nsw i64 %polly.indvar696.us.1, 1200
  %polly.access.Packed_MemRef_call1513701.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.1
  %_p_scalar_702.us.1 = load double, double* %polly.access.Packed_MemRef_call1513701.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_706.us.1, %_p_scalar_702.us.1
  %polly.access.add.Packed_MemRef_call2515708.us.1 = add nuw nsw i64 %748, %polly.access.mul.Packed_MemRef_call2515703.us.1
  %polly.access.Packed_MemRef_call2515709.us.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call2515709.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %749 = shl i64 %748, 3
  %750 = add i64 %749, %523
  %scevgep715.us.1 = getelementptr i8, i8* %call, i64 %750
  %scevgep715716.us.1 = bitcast i8* %scevgep715.us.1 to double*
  %_p_scalar_717.us.1 = load double, double* %scevgep715716.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_717.us.1
  store double %p_add42.i.us.1, double* %scevgep715716.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us.1 = add nuw nsw i64 %polly.indvar696.us.1, 1
  %exitcond1099.1.not = icmp eq i64 %polly.indvar696.us.1, %smin1098
  br i1 %exitcond1099.1.not, label %polly.loop_exit694.loopexit.us.1, label %polly.loop_header692.us.1, !llvm.loop !179

polly.loop_exit694.loopexit.us.1:                 ; preds = %polly.loop_header692.us.1, %middle.block1306
  %polly.access.add.Packed_MemRef_call2515704.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.2, %520
  %polly.access.Packed_MemRef_call2515705.us.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.2
  %_p_scalar_706.us.2 = load double, double* %polly.access.Packed_MemRef_call2515705.us.2, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.2 = add nsw i64 %519, 2400
  %polly.access.Packed_MemRef_call1513713.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call1513713.us.2, align 8
  %min.iters.check1278 = icmp ult i64 %511, 4
  br i1 %min.iters.check1278, label %polly.loop_header692.us.2.preheader, label %vector.memcheck1260

vector.memcheck1260:                              ; preds = %polly.loop_exit694.loopexit.us.1
  %bound01269 = icmp ult i8* %scevgep1262, %scevgep1268
  %bound11270 = icmp ult i8* %scevgep1266, %scevgep1265
  %found.conflict1271 = and i1 %bound01269, %bound11270
  br i1 %found.conflict1271, label %polly.loop_header692.us.2.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %vector.memcheck1260
  %n.vec1281 = and i64 %511, -4
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_706.us.2, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1275 ]
  %751 = add nuw nsw i64 %index1282, %489
  %752 = add nuw nsw i64 %index1282, 2400
  %753 = getelementptr double, double* %Packed_MemRef_call1513, i64 %752
  %754 = bitcast double* %753 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %754, align 8, !alias.scope !180
  %755 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %756 = add nuw nsw i64 %751, %polly.access.mul.Packed_MemRef_call2515703.us.2
  %757 = getelementptr double, double* %Packed_MemRef_call2515, i64 %756
  %758 = bitcast double* %757 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %758, align 8
  %759 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %760 = shl i64 %751, 3
  %761 = add i64 %760, %523
  %762 = getelementptr i8, i8* %call, i64 %761
  %763 = bitcast i8* %762 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %763, align 8, !alias.scope !183, !noalias !185
  %764 = fadd fast <4 x double> %759, %755
  %765 = fmul fast <4 x double> %764, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %766 = fadd fast <4 x double> %765, %wide.load1292
  %767 = bitcast i8* %762 to <4 x double>*
  store <4 x double> %766, <4 x double>* %767, align 8, !alias.scope !183, !noalias !185
  %index.next1283 = add i64 %index1282, 4
  %768 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %768, label %middle.block1273, label %vector.body1275, !llvm.loop !186

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1285 = icmp eq i64 %511, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit694.loopexit.us.2, label %polly.loop_header692.us.2.preheader

polly.loop_header692.us.2.preheader:              ; preds = %vector.memcheck1260, %polly.loop_exit694.loopexit.us.1, %middle.block1273
  %polly.indvar696.us.2.ph = phi i64 [ 0, %vector.memcheck1260 ], [ 0, %polly.loop_exit694.loopexit.us.1 ], [ %n.vec1281, %middle.block1273 ]
  br label %polly.loop_header692.us.2

polly.loop_header692.us.2:                        ; preds = %polly.loop_header692.us.2.preheader, %polly.loop_header692.us.2
  %polly.indvar696.us.2 = phi i64 [ %polly.indvar_next697.us.2, %polly.loop_header692.us.2 ], [ %polly.indvar696.us.2.ph, %polly.loop_header692.us.2.preheader ]
  %769 = add nuw nsw i64 %polly.indvar696.us.2, %489
  %polly.access.add.Packed_MemRef_call1513700.us.2 = add nuw nsw i64 %polly.indvar696.us.2, 2400
  %polly.access.Packed_MemRef_call1513701.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.2
  %_p_scalar_702.us.2 = load double, double* %polly.access.Packed_MemRef_call1513701.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_706.us.2, %_p_scalar_702.us.2
  %polly.access.add.Packed_MemRef_call2515708.us.2 = add nuw nsw i64 %769, %polly.access.mul.Packed_MemRef_call2515703.us.2
  %polly.access.Packed_MemRef_call2515709.us.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call2515709.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %770 = shl i64 %769, 3
  %771 = add i64 %770, %523
  %scevgep715.us.2 = getelementptr i8, i8* %call, i64 %771
  %scevgep715716.us.2 = bitcast i8* %scevgep715.us.2 to double*
  %_p_scalar_717.us.2 = load double, double* %scevgep715716.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_717.us.2
  store double %p_add42.i.us.2, double* %scevgep715716.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us.2 = add nuw nsw i64 %polly.indvar696.us.2, 1
  %exitcond1099.2.not = icmp eq i64 %polly.indvar696.us.2, %smin1098
  br i1 %exitcond1099.2.not, label %polly.loop_exit694.loopexit.us.2, label %polly.loop_header692.us.2, !llvm.loop !187

polly.loop_exit694.loopexit.us.2:                 ; preds = %polly.loop_header692.us.2, %middle.block1273
  %polly.access.add.Packed_MemRef_call2515704.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.3, %520
  %polly.access.Packed_MemRef_call2515705.us.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.3
  %_p_scalar_706.us.3 = load double, double* %polly.access.Packed_MemRef_call2515705.us.3, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.3 = add nsw i64 %519, 3600
  %polly.access.Packed_MemRef_call1513713.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call1513713.us.3, align 8
  %min.iters.check1245 = icmp ult i64 %518, 4
  br i1 %min.iters.check1245, label %polly.loop_header692.us.3.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_exit694.loopexit.us.2
  %n.vec1248 = and i64 %518, -4
  %broadcast.splatinsert1254 = insertelement <4 x double> poison, double %_p_scalar_706.us.3, i32 0
  %broadcast.splat1255 = shufflevector <4 x double> %broadcast.splatinsert1254, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1257 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1258 = shufflevector <4 x double> %broadcast.splatinsert1257, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1240 ]
  %772 = add nuw nsw i64 %index1249, %489
  %773 = add nuw nsw i64 %index1249, 3600
  %774 = getelementptr double, double* %Packed_MemRef_call1513, i64 %773
  %775 = bitcast double* %774 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %775, align 8
  %776 = fmul fast <4 x double> %broadcast.splat1255, %wide.load1253
  %777 = add nuw nsw i64 %772, %polly.access.mul.Packed_MemRef_call2515703.us.3
  %778 = getelementptr double, double* %Packed_MemRef_call2515, i64 %777
  %779 = bitcast double* %778 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %779, align 8
  %780 = fmul fast <4 x double> %broadcast.splat1258, %wide.load1256
  %781 = shl i64 %772, 3
  %782 = add i64 %781, %523
  %783 = getelementptr i8, i8* %call, i64 %782
  %784 = bitcast i8* %783 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %784, align 8, !alias.scope !118, !noalias !120
  %785 = fadd fast <4 x double> %780, %776
  %786 = fmul fast <4 x double> %785, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %787 = fadd fast <4 x double> %786, %wide.load1259
  %788 = bitcast i8* %783 to <4 x double>*
  store <4 x double> %787, <4 x double>* %788, align 8, !alias.scope !118, !noalias !120
  %index.next1250 = add i64 %index1249, 4
  %789 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %789, label %middle.block1238, label %vector.body1240, !llvm.loop !188

middle.block1238:                                 ; preds = %vector.body1240
  %cmp.n1252 = icmp eq i64 %518, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit687, label %polly.loop_header692.us.3.preheader

polly.loop_header692.us.3.preheader:              ; preds = %polly.loop_exit694.loopexit.us.2, %middle.block1238
  %polly.indvar696.us.3.ph = phi i64 [ 0, %polly.loop_exit694.loopexit.us.2 ], [ %n.vec1248, %middle.block1238 ]
  br label %polly.loop_header692.us.3

polly.loop_header692.us.3:                        ; preds = %polly.loop_header692.us.3.preheader, %polly.loop_header692.us.3
  %polly.indvar696.us.3 = phi i64 [ %polly.indvar_next697.us.3, %polly.loop_header692.us.3 ], [ %polly.indvar696.us.3.ph, %polly.loop_header692.us.3.preheader ]
  %790 = add nuw nsw i64 %polly.indvar696.us.3, %489
  %polly.access.add.Packed_MemRef_call1513700.us.3 = add nuw nsw i64 %polly.indvar696.us.3, 3600
  %polly.access.Packed_MemRef_call1513701.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.3
  %_p_scalar_702.us.3 = load double, double* %polly.access.Packed_MemRef_call1513701.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_706.us.3, %_p_scalar_702.us.3
  %polly.access.add.Packed_MemRef_call2515708.us.3 = add nuw nsw i64 %790, %polly.access.mul.Packed_MemRef_call2515703.us.3
  %polly.access.Packed_MemRef_call2515709.us.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call2515709.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %791 = shl i64 %790, 3
  %792 = add i64 %791, %523
  %scevgep715.us.3 = getelementptr i8, i8* %call, i64 %792
  %scevgep715716.us.3 = bitcast i8* %scevgep715.us.3 to double*
  %_p_scalar_717.us.3 = load double, double* %scevgep715716.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_717.us.3
  store double %p_add42.i.us.3, double* %scevgep715716.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us.3 = add nuw nsw i64 %polly.indvar696.us.3, 1
  %exitcond1099.3.not = icmp eq i64 %polly.indvar696.us.3, %smin1098
  br i1 %exitcond1099.3.not, label %polly.loop_exit687, label %polly.loop_header692.us.3, !llvm.loop !189
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
!26 = !{!"llvm.loop.tile.size", i32 8}
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
!49 = !{!"llvm.loop.tile.size", i32 80}
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
