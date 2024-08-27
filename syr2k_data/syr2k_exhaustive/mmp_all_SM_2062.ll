; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2062.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2062.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1157
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1222
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check1361 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1361, label %for.body3.i60.preheader1651, label %vector.ph1362

vector.ph1362:                                    ; preds = %for.body3.i60.preheader
  %n.vec1364 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1360 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1365
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %min.iters.check1507 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1507, label %for.body3.i99.preheader1650, label %vector.ph1508

vector.ph1508:                                    ; preds = %for.body3.i99.preheader
  %n.vec1510 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1508
  %index1511 = phi i64 [ 0, %vector.ph1508 ], [ %index.next1512, %vector.body1506 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1511
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %exitcond1057.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1520 = add i64 %indvar1519, 1
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
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1054.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
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
  %111 = mul nuw nsw i64 %polly.indvar219, 7
  %112 = add nuw nsw i64 %111, 6
  %pexp.p_div_q = udiv i64 %112, 25
  %113 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar219
  %.inv = icmp ult i64 %113, 23
  %114 = mul nsw i64 %polly.indvar219, -64
  %115 = icmp slt i64 %114, -1136
  %116 = select i1 %115, i64 %114, i64 -1136
  %117 = add nsw i64 %116, 1199
  %118 = shl nsw i64 %polly.indvar219, 6
  %.op = add nuw i64 %113, 2
  %119 = select i1 %.inv, i64 %.op, i64 24
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 64
  %exitcond1053.not = icmp eq i64 %polly.indvar_next220, 19
  br i1 %exitcond1053.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %120 = shl nsw i64 %polly.indvar225, 2
  %121 = or i64 %120, 1
  %122 = or i64 %120, 2
  %123 = or i64 %120, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %124 = or i64 %120, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %124, 1200
  %125 = or i64 %120, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %125, 1200
  %126 = or i64 %120, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %126, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1052.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %127 = mul i64 %polly.indvar231, 50
  %128 = add i64 %97, %127
  %smax1633 = call i64 @llvm.smax.i64(i64 %128, i64 0)
  %129 = mul i64 %polly.indvar231, -50
  %130 = add i64 %98, %129
  %131 = add i64 %smax1633, %130
  %132 = mul i64 %polly.indvar231, 400
  %133 = mul i64 %polly.indvar231, 50
  %134 = add i64 %100, %133
  %smax1619 = call i64 @llvm.smax.i64(i64 %134, i64 0)
  %135 = add nuw i64 %99, %smax1619
  %136 = mul i64 %135, 9600
  %137 = add i64 %132, %136
  %138 = or i64 %132, 8
  %139 = add i64 %138, %136
  %140 = mul i64 %polly.indvar231, -50
  %141 = add i64 %99, %140
  %142 = add i64 %smax1619, %141
  %143 = mul i64 %polly.indvar231, 50
  %144 = add i64 %101, %143
  %smax1601 = call i64 @llvm.smax.i64(i64 %144, i64 0)
  %145 = mul i64 %polly.indvar231, -50
  %146 = add i64 %102, %145
  %147 = add i64 %smax1601, %146
  %148 = mul i64 %polly.indvar231, 400
  %149 = mul i64 %polly.indvar231, 50
  %150 = add i64 %104, %149
  %smax1586 = call i64 @llvm.smax.i64(i64 %150, i64 0)
  %151 = add nuw i64 %103, %smax1586
  %152 = mul i64 %151, 9600
  %153 = add i64 %148, %152
  %154 = or i64 %148, 8
  %155 = add i64 %154, %152
  %156 = mul i64 %polly.indvar231, -50
  %157 = add i64 %103, %156
  %158 = add i64 %smax1586, %157
  %159 = mul i64 %polly.indvar231, 50
  %160 = add i64 %105, %159
  %smax1568 = call i64 @llvm.smax.i64(i64 %160, i64 0)
  %161 = mul i64 %polly.indvar231, -50
  %162 = add i64 %106, %161
  %163 = add i64 %smax1568, %162
  %164 = mul i64 %polly.indvar231, 400
  %165 = mul i64 %polly.indvar231, 50
  %166 = add i64 %108, %165
  %smax1553 = call i64 @llvm.smax.i64(i64 %166, i64 0)
  %167 = add nuw i64 %107, %smax1553
  %168 = mul i64 %167, 9600
  %169 = add i64 %164, %168
  %170 = or i64 %164, 8
  %171 = add i64 %170, %168
  %172 = mul i64 %polly.indvar231, -50
  %173 = add i64 %107, %172
  %174 = add i64 %smax1553, %173
  %175 = mul i64 %polly.indvar231, 50
  %176 = add i64 %109, %175
  %smax1533 = call i64 @llvm.smax.i64(i64 %176, i64 0)
  %177 = mul i64 %polly.indvar231, -50
  %178 = add i64 %110, %177
  %179 = add i64 %smax1533, %178
  %180 = mul nsw i64 %polly.indvar231, 50
  %181 = add nsw i64 %180, %114
  %182 = icmp sgt i64 %181, 0
  %183 = select i1 %182, i64 %181, i64 0
  %polly.loop_guard.not = icmp sgt i64 %183, %117
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1038, i64 0)
  %184 = add i64 %smax, %indvars.iv1042
  %185 = sub nsw i64 %118, %180
  %186 = add nuw nsw i64 %180, 50
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add i64 %indvars.iv1038, 50
  %indvars.iv.next1043 = add i64 %indvars.iv1042, -50
  %exitcond1051.not = icmp eq i64 %polly.indvar_next232, %119
  br i1 %exitcond1051.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1534 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1535, %polly.loop_exit267 ]
  %indvars.iv1044 = phi i64 [ %184, %polly.loop_header234.preheader ], [ %indvars.iv.next1045, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %183, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %187 = add i64 %131, %indvar1534
  %smin1634 = call i64 @llvm.smin.i64(i64 %187, i64 49)
  %188 = add nsw i64 %smin1634, 1
  %189 = mul i64 %indvar1534, 9600
  %190 = add i64 %137, %189
  %scevgep1620 = getelementptr i8, i8* %call, i64 %190
  %191 = add i64 %139, %189
  %scevgep1621 = getelementptr i8, i8* %call, i64 %191
  %192 = add i64 %142, %indvar1534
  %smin1622 = call i64 @llvm.smin.i64(i64 %192, i64 49)
  %193 = shl i64 %smin1622, 3
  %scevgep1623 = getelementptr i8, i8* %scevgep1621, i64 %193
  %scevgep1625 = getelementptr i8, i8* %scevgep1624, i64 %193
  %194 = add i64 %147, %indvar1534
  %smin1602 = call i64 @llvm.smin.i64(i64 %194, i64 49)
  %195 = add nsw i64 %smin1602, 1
  %196 = mul i64 %indvar1534, 9600
  %197 = add i64 %153, %196
  %scevgep1587 = getelementptr i8, i8* %call, i64 %197
  %198 = add i64 %155, %196
  %scevgep1588 = getelementptr i8, i8* %call, i64 %198
  %199 = add i64 %158, %indvar1534
  %smin1589 = call i64 @llvm.smin.i64(i64 %199, i64 49)
  %200 = shl i64 %smin1589, 3
  %scevgep1590 = getelementptr i8, i8* %scevgep1588, i64 %200
  %scevgep1593 = getelementptr i8, i8* %scevgep1592, i64 %200
  %201 = add i64 %163, %indvar1534
  %smin1569 = call i64 @llvm.smin.i64(i64 %201, i64 49)
  %202 = add nsw i64 %smin1569, 1
  %203 = mul i64 %indvar1534, 9600
  %204 = add i64 %169, %203
  %scevgep1554 = getelementptr i8, i8* %call, i64 %204
  %205 = add i64 %171, %203
  %scevgep1555 = getelementptr i8, i8* %call, i64 %205
  %206 = add i64 %174, %indvar1534
  %smin1556 = call i64 @llvm.smin.i64(i64 %206, i64 49)
  %207 = shl i64 %smin1556, 3
  %scevgep1557 = getelementptr i8, i8* %scevgep1555, i64 %207
  %scevgep1560 = getelementptr i8, i8* %scevgep1559, i64 %207
  %208 = add i64 %179, %indvar1534
  %smin1536 = call i64 @llvm.smin.i64(i64 %208, i64 49)
  %209 = add nsw i64 %smin1536, 1
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 49)
  %210 = add nsw i64 %polly.indvar237, %185
  %polly.loop_guard2501142 = icmp sgt i64 %210, -1
  %211 = add nuw nsw i64 %polly.indvar237, %118
  %.not = icmp ult i64 %211, %186
  %polly.access.mul.call1259 = mul nsw i64 %211, 1000
  %212 = add nuw i64 %polly.access.mul.call1259, %120
  br i1 %polly.loop_guard2501142, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %213 = add nuw nsw i64 %polly.indvar251.us, %180
  %polly.access.mul.call1255.us = mul nsw i64 %213, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %120, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar251.us, %smin1048
  br i1 %exitcond1046.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %212
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %210
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %212
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %210
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %212, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %212, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %212, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1530, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %117
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %indvar.next1535 = add i64 %indvar1534, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %214 = mul i64 %211, 9600
  br i1 %polly.loop_guard2501142, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %211
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %210
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1635 = icmp ult i64 %188, 4
  br i1 %min.iters.check1635, label %polly.loop_header272.us.preheader, label %vector.memcheck1618

vector.memcheck1618:                              ; preds = %polly.loop_header265.us.preheader
  %bound01626 = icmp ult i8* %scevgep1620, %scevgep1625
  %bound11627 = icmp ult i8* %malloccall, %scevgep1623
  %found.conflict1628 = and i1 %bound01626, %bound11627
  br i1 %found.conflict1628, label %polly.loop_header272.us.preheader, label %vector.ph1636

vector.ph1636:                                    ; preds = %vector.memcheck1618
  %n.vec1638 = and i64 %188, -4
  %broadcast.splatinsert1644 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1645 = shufflevector <4 x double> %broadcast.splatinsert1644, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1647 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1648 = shufflevector <4 x double> %broadcast.splatinsert1647, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1632

vector.body1632:                                  ; preds = %vector.body1632, %vector.ph1636
  %index1639 = phi i64 [ 0, %vector.ph1636 ], [ %index.next1640, %vector.body1632 ]
  %215 = add nuw nsw i64 %index1639, %180
  %216 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1639
  %217 = bitcast double* %216 to <4 x double>*
  %wide.load1643 = load <4 x double>, <4 x double>* %217, align 8, !alias.scope !77
  %218 = fmul fast <4 x double> %broadcast.splat1645, %wide.load1643
  %219 = add nuw nsw i64 %215, %polly.access.mul.Packed_MemRef_call2283.us
  %220 = getelementptr double, double* %Packed_MemRef_call2, i64 %219
  %221 = bitcast double* %220 to <4 x double>*
  %wide.load1646 = load <4 x double>, <4 x double>* %221, align 8
  %222 = fmul fast <4 x double> %broadcast.splat1648, %wide.load1646
  %223 = shl i64 %215, 3
  %224 = add i64 %223, %214
  %225 = getelementptr i8, i8* %call, i64 %224
  %226 = bitcast i8* %225 to <4 x double>*
  %wide.load1649 = load <4 x double>, <4 x double>* %226, align 8, !alias.scope !80, !noalias !82
  %227 = fadd fast <4 x double> %222, %218
  %228 = fmul fast <4 x double> %227, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %229 = fadd fast <4 x double> %228, %wide.load1649
  %230 = bitcast i8* %225 to <4 x double>*
  store <4 x double> %229, <4 x double>* %230, align 8, !alias.scope !80, !noalias !82
  %index.next1640 = add i64 %index1639, 4
  %231 = icmp eq i64 %index.next1640, %n.vec1638
  br i1 %231, label %middle.block1630, label %vector.body1632, !llvm.loop !83

middle.block1630:                                 ; preds = %vector.body1632
  %cmp.n1642 = icmp eq i64 %188, %n.vec1638
  br i1 %cmp.n1642, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1618, %polly.loop_header265.us.preheader, %middle.block1630
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1618 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1638, %middle.block1630 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %232 = add nuw nsw i64 %polly.indvar276.us, %180
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %233 = shl i64 %232, 3
  %234 = add i64 %233, %214
  %scevgep295.us = getelementptr i8, i8* %call, i64 %234
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar276.us, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1630
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %211
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1603 = icmp ult i64 %195, 4
  br i1 %min.iters.check1603, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1585

vector.memcheck1585:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01594 = icmp ult i8* %scevgep1587, %scevgep1593
  %bound11595 = icmp ult i8* %scevgep1591, %scevgep1590
  %found.conflict1596 = and i1 %bound01594, %bound11595
  br i1 %found.conflict1596, label %polly.loop_header272.us.1.preheader, label %vector.ph1604

vector.ph1604:                                    ; preds = %vector.memcheck1585
  %n.vec1606 = and i64 %195, -4
  %broadcast.splatinsert1612 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1613 = shufflevector <4 x double> %broadcast.splatinsert1612, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1615 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1616 = shufflevector <4 x double> %broadcast.splatinsert1615, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1600

vector.body1600:                                  ; preds = %vector.body1600, %vector.ph1604
  %index1607 = phi i64 [ 0, %vector.ph1604 ], [ %index.next1608, %vector.body1600 ]
  %235 = add nuw nsw i64 %index1607, %180
  %236 = add nuw nsw i64 %index1607, 1200
  %237 = getelementptr double, double* %Packed_MemRef_call1, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1611 = load <4 x double>, <4 x double>* %238, align 8, !alias.scope !85
  %239 = fmul fast <4 x double> %broadcast.splat1613, %wide.load1611
  %240 = add nuw nsw i64 %235, %polly.access.mul.Packed_MemRef_call2283.us.1
  %241 = getelementptr double, double* %Packed_MemRef_call2, i64 %240
  %242 = bitcast double* %241 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %242, align 8
  %243 = fmul fast <4 x double> %broadcast.splat1616, %wide.load1614
  %244 = shl i64 %235, 3
  %245 = add i64 %244, %214
  %246 = getelementptr i8, i8* %call, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  %wide.load1617 = load <4 x double>, <4 x double>* %247, align 8, !alias.scope !88, !noalias !90
  %248 = fadd fast <4 x double> %243, %239
  %249 = fmul fast <4 x double> %248, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %250 = fadd fast <4 x double> %249, %wide.load1617
  %251 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %250, <4 x double>* %251, align 8, !alias.scope !88, !noalias !90
  %index.next1608 = add i64 %index1607, 4
  %252 = icmp eq i64 %index.next1608, %n.vec1606
  br i1 %252, label %middle.block1598, label %vector.body1600, !llvm.loop !91

middle.block1598:                                 ; preds = %vector.body1600
  %cmp.n1610 = icmp eq i64 %195, %n.vec1606
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
  %253 = add i64 %indvar1373, 1
  %254 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %254
  %min.iters.check1375 = icmp ult i64 %253, 4
  br i1 %min.iters.check1375, label %polly.loop_header394.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header388
  %n.vec1378 = and i64 %253, -4
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1372 ]
  %255 = shl nuw nsw i64 %index1379, 3
  %256 = getelementptr i8, i8* %scevgep400, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %257, align 8, !alias.scope !92, !noalias !94
  %258 = fmul fast <4 x double> %wide.load1383, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %259 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %258, <4 x double>* %259, align 8, !alias.scope !92, !noalias !94
  %index.next1380 = add i64 %index1379, 4
  %260 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %260, label %middle.block1370, label %vector.body1372, !llvm.loop !99

middle.block1370:                                 ; preds = %vector.body1372
  %cmp.n1382 = icmp eq i64 %253, %n.vec1378
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
  %261 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %261
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
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1079.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit428
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %262 = mul nsw i64 %polly.indvar423, -64
  %263 = shl nuw nsw i64 %polly.indvar423, 6
  %264 = shl nuw nsw i64 %polly.indvar423, 6
  %265 = mul nsw i64 %polly.indvar423, -64
  %266 = mul nsw i64 %polly.indvar423, -64
  %267 = shl nuw nsw i64 %polly.indvar423, 6
  %268 = shl nuw nsw i64 %polly.indvar423, 6
  %269 = mul nsw i64 %polly.indvar423, -64
  %270 = mul nsw i64 %polly.indvar423, -64
  %271 = shl nuw nsw i64 %polly.indvar423, 6
  %272 = shl nuw nsw i64 %polly.indvar423, 6
  %273 = mul nsw i64 %polly.indvar423, -64
  %274 = mul nsw i64 %polly.indvar423, -64
  %275 = shl nuw nsw i64 %polly.indvar423, 6
  %276 = mul nuw nsw i64 %polly.indvar423, 7
  %277 = add nuw nsw i64 %276, 6
  %pexp.p_div_q432 = udiv i64 %277, 25
  %278 = add nuw nsw i64 %pexp.p_div_q432, %polly.indvar423
  %.inv926 = icmp ult i64 %278, 23
  %279 = mul nsw i64 %polly.indvar423, -64
  %280 = icmp slt i64 %279, -1136
  %281 = select i1 %280, i64 %279, i64 -1136
  %282 = add nsw i64 %281, 1199
  %283 = shl nsw i64 %polly.indvar423, 6
  %.op1143 = add nuw i64 %278, 2
  %284 = select i1 %.inv926, i64 %.op1143, i64 24
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -64
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 64
  %exitcond1078.not = icmp eq i64 %polly.indvar_next424, 19
  br i1 %exitcond1078.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %285 = shl nsw i64 %polly.indvar429, 2
  %286 = or i64 %285, 1
  %287 = or i64 %285, 2
  %288 = or i64 %285, 3
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nsw i64 %polly.indvar429, 4800
  %289 = or i64 %285, 1
  %polly.access.mul.Packed_MemRef_call2305494.us.1 = mul nuw nsw i64 %289, 1200
  %290 = or i64 %285, 2
  %polly.access.mul.Packed_MemRef_call2305494.us.2 = mul nuw nsw i64 %290, 1200
  %291 = or i64 %285, 3
  %polly.access.mul.Packed_MemRef_call2305494.us.3 = mul nuw nsw i64 %291, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1077.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit442 ], [ %indvars.iv1064, %polly.loop_header426 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit442 ], [ %indvars.iv1059, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %292 = mul i64 %polly.indvar436, 50
  %293 = add i64 %262, %292
  %smax1487 = call i64 @llvm.smax.i64(i64 %293, i64 0)
  %294 = mul i64 %polly.indvar436, -50
  %295 = add i64 %263, %294
  %296 = add i64 %smax1487, %295
  %297 = mul i64 %polly.indvar436, 400
  %298 = mul i64 %polly.indvar436, 50
  %299 = add i64 %265, %298
  %smax1473 = call i64 @llvm.smax.i64(i64 %299, i64 0)
  %300 = add nuw i64 %264, %smax1473
  %301 = mul i64 %300, 9600
  %302 = add i64 %297, %301
  %303 = or i64 %297, 8
  %304 = add i64 %303, %301
  %305 = mul i64 %polly.indvar436, -50
  %306 = add i64 %264, %305
  %307 = add i64 %smax1473, %306
  %308 = mul i64 %polly.indvar436, 50
  %309 = add i64 %266, %308
  %smax1455 = call i64 @llvm.smax.i64(i64 %309, i64 0)
  %310 = mul i64 %polly.indvar436, -50
  %311 = add i64 %267, %310
  %312 = add i64 %smax1455, %311
  %313 = mul i64 %polly.indvar436, 400
  %314 = mul i64 %polly.indvar436, 50
  %315 = add i64 %269, %314
  %smax1440 = call i64 @llvm.smax.i64(i64 %315, i64 0)
  %316 = add nuw i64 %268, %smax1440
  %317 = mul i64 %316, 9600
  %318 = add i64 %313, %317
  %319 = or i64 %313, 8
  %320 = add i64 %319, %317
  %321 = mul i64 %polly.indvar436, -50
  %322 = add i64 %268, %321
  %323 = add i64 %smax1440, %322
  %324 = mul i64 %polly.indvar436, 50
  %325 = add i64 %270, %324
  %smax1422 = call i64 @llvm.smax.i64(i64 %325, i64 0)
  %326 = mul i64 %polly.indvar436, -50
  %327 = add i64 %271, %326
  %328 = add i64 %smax1422, %327
  %329 = mul i64 %polly.indvar436, 400
  %330 = mul i64 %polly.indvar436, 50
  %331 = add i64 %273, %330
  %smax1407 = call i64 @llvm.smax.i64(i64 %331, i64 0)
  %332 = add nuw i64 %272, %smax1407
  %333 = mul i64 %332, 9600
  %334 = add i64 %329, %333
  %335 = or i64 %329, 8
  %336 = add i64 %335, %333
  %337 = mul i64 %polly.indvar436, -50
  %338 = add i64 %272, %337
  %339 = add i64 %smax1407, %338
  %340 = mul i64 %polly.indvar436, 50
  %341 = add i64 %274, %340
  %smax1387 = call i64 @llvm.smax.i64(i64 %341, i64 0)
  %342 = mul i64 %polly.indvar436, -50
  %343 = add i64 %275, %342
  %344 = add i64 %smax1387, %343
  %345 = mul nsw i64 %polly.indvar436, 50
  %346 = add nsw i64 %345, %279
  %347 = icmp sgt i64 %346, 0
  %348 = select i1 %347, i64 %346, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %348, %282
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1063 = call i64 @llvm.smax.i64(i64 %indvars.iv1061, i64 0)
  %349 = add i64 %smax1063, %indvars.iv1066
  %350 = sub nsw i64 %283, %345
  %351 = add nuw nsw i64 %345, 50
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw i64 %polly.indvar436, 1
  %indvars.iv.next1062 = add i64 %indvars.iv1061, 50
  %indvars.iv.next1067 = add i64 %indvars.iv1066, -50
  %exitcond1076.not = icmp eq i64 %polly.indvar_next437, %284
  br i1 %exitcond1076.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1388 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1389, %polly.loop_exit478 ]
  %indvars.iv1068 = phi i64 [ %349, %polly.loop_header440.preheader ], [ %indvars.iv.next1069, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %348, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %352 = add i64 %296, %indvar1388
  %smin1488 = call i64 @llvm.smin.i64(i64 %352, i64 49)
  %353 = add nsw i64 %smin1488, 1
  %354 = mul i64 %indvar1388, 9600
  %355 = add i64 %302, %354
  %scevgep1474 = getelementptr i8, i8* %call, i64 %355
  %356 = add i64 %304, %354
  %scevgep1475 = getelementptr i8, i8* %call, i64 %356
  %357 = add i64 %307, %indvar1388
  %smin1476 = call i64 @llvm.smin.i64(i64 %357, i64 49)
  %358 = shl i64 %smin1476, 3
  %scevgep1477 = getelementptr i8, i8* %scevgep1475, i64 %358
  %scevgep1479 = getelementptr i8, i8* %scevgep1478, i64 %358
  %359 = add i64 %312, %indvar1388
  %smin1456 = call i64 @llvm.smin.i64(i64 %359, i64 49)
  %360 = add nsw i64 %smin1456, 1
  %361 = mul i64 %indvar1388, 9600
  %362 = add i64 %318, %361
  %scevgep1441 = getelementptr i8, i8* %call, i64 %362
  %363 = add i64 %320, %361
  %scevgep1442 = getelementptr i8, i8* %call, i64 %363
  %364 = add i64 %323, %indvar1388
  %smin1443 = call i64 @llvm.smin.i64(i64 %364, i64 49)
  %365 = shl i64 %smin1443, 3
  %scevgep1444 = getelementptr i8, i8* %scevgep1442, i64 %365
  %scevgep1447 = getelementptr i8, i8* %scevgep1446, i64 %365
  %366 = add i64 %328, %indvar1388
  %smin1423 = call i64 @llvm.smin.i64(i64 %366, i64 49)
  %367 = add nsw i64 %smin1423, 1
  %368 = mul i64 %indvar1388, 9600
  %369 = add i64 %334, %368
  %scevgep1408 = getelementptr i8, i8* %call, i64 %369
  %370 = add i64 %336, %368
  %scevgep1409 = getelementptr i8, i8* %call, i64 %370
  %371 = add i64 %339, %indvar1388
  %smin1410 = call i64 @llvm.smin.i64(i64 %371, i64 49)
  %372 = shl i64 %smin1410, 3
  %scevgep1411 = getelementptr i8, i8* %scevgep1409, i64 %372
  %scevgep1414 = getelementptr i8, i8* %scevgep1413, i64 %372
  %373 = add i64 %344, %indvar1388
  %smin1390 = call i64 @llvm.smin.i64(i64 %373, i64 49)
  %374 = add nsw i64 %smin1390, 1
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 49)
  %375 = add nsw i64 %polly.indvar444, %350
  %polly.loop_guard4571144 = icmp sgt i64 %375, -1
  %376 = add nuw nsw i64 %polly.indvar444, %283
  %.not927 = icmp ult i64 %376, %351
  %polly.access.mul.call1470 = mul nsw i64 %376, 1000
  %377 = add nuw i64 %polly.access.mul.call1470, %285
  br i1 %polly.loop_guard4571144, label %polly.loop_header454.us, label %polly.loop_header440.split

polly.loop_header454.us:                          ; preds = %polly.loop_header440, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header440 ]
  %378 = add nuw nsw i64 %polly.indvar458.us, %345
  %polly.access.mul.call1462.us = mul nsw i64 %378, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %285, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar458.us, %smin1073
  br i1 %exitcond1071.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %377
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %375
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.loop_header454.us.1.preheader

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not927, label %polly.loop_header454.us.1.preheader, label %polly.then467.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not927, label %polly.loop_exit478, label %polly.loop_header447.preheader

polly.loop_header447.preheader:                   ; preds = %polly.loop_header440.split
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %377
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %375
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.access.add.call1471.1 = or i64 %377, 1
  %polly.access.call1472.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.1
  %polly.access.call1472.load.1 = load double, double* %polly.access.call1472.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.1 = add nsw i64 %375, 1200
  %polly.access.Packed_MemRef_call1303475.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.1
  store double %polly.access.call1472.load.1, double* %polly.access.Packed_MemRef_call1303475.1, align 8
  %polly.access.add.call1471.2 = or i64 %377, 2
  %polly.access.call1472.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.2
  %polly.access.call1472.load.2 = load double, double* %polly.access.call1472.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.2 = add nsw i64 %375, 2400
  %polly.access.Packed_MemRef_call1303475.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.2
  store double %polly.access.call1472.load.2, double* %polly.access.Packed_MemRef_call1303475.2, align 8
  %polly.access.add.call1471.3 = or i64 %377, 3
  %polly.access.call1472.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.3
  %polly.access.call1472.load.3 = load double, double* %polly.access.call1472.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.3 = add nsw i64 %375, 3600
  %polly.access.Packed_MemRef_call1303475.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.3
  store double %polly.access.call1472.load.3, double* %polly.access.Packed_MemRef_call1303475.3, align 8
  br label %polly.loop_exit478

polly.loop_exit478:                               ; preds = %polly.loop_header483.us.3, %middle.block1384, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %282
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.cond465.loopexit.us.3, %polly.then467.us.3
  %379 = mul i64 %376, 9600
  br i1 %polly.loop_guard4571144, label %polly.loop_header476.us.preheader, label %polly.loop_exit478

polly.loop_header476.us.preheader:                ; preds = %polly.loop_header476.preheader
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %376
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %375
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1489 = icmp ult i64 %353, 4
  br i1 %min.iters.check1489, label %polly.loop_header483.us.preheader, label %vector.memcheck1472

vector.memcheck1472:                              ; preds = %polly.loop_header476.us.preheader
  %bound01480 = icmp ult i8* %scevgep1474, %scevgep1479
  %bound11481 = icmp ult i8* %malloccall302, %scevgep1477
  %found.conflict1482 = and i1 %bound01480, %bound11481
  br i1 %found.conflict1482, label %polly.loop_header483.us.preheader, label %vector.ph1490

vector.ph1490:                                    ; preds = %vector.memcheck1472
  %n.vec1492 = and i64 %353, -4
  %broadcast.splatinsert1498 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1499 = shufflevector <4 x double> %broadcast.splatinsert1498, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1501 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1502 = shufflevector <4 x double> %broadcast.splatinsert1501, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1490
  %index1493 = phi i64 [ 0, %vector.ph1490 ], [ %index.next1494, %vector.body1486 ]
  %380 = add nuw nsw i64 %index1493, %345
  %381 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1493
  %382 = bitcast double* %381 to <4 x double>*
  %wide.load1497 = load <4 x double>, <4 x double>* %382, align 8, !alias.scope !103
  %383 = fmul fast <4 x double> %broadcast.splat1499, %wide.load1497
  %384 = add nuw nsw i64 %380, %polly.access.mul.Packed_MemRef_call2305494.us
  %385 = getelementptr double, double* %Packed_MemRef_call2305, i64 %384
  %386 = bitcast double* %385 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %386, align 8
  %387 = fmul fast <4 x double> %broadcast.splat1502, %wide.load1500
  %388 = shl i64 %380, 3
  %389 = add i64 %388, %379
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %391, align 8, !alias.scope !106, !noalias !108
  %392 = fadd fast <4 x double> %387, %383
  %393 = fmul fast <4 x double> %392, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %394 = fadd fast <4 x double> %393, %wide.load1503
  %395 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %394, <4 x double>* %395, align 8, !alias.scope !106, !noalias !108
  %index.next1494 = add i64 %index1493, 4
  %396 = icmp eq i64 %index.next1494, %n.vec1492
  br i1 %396, label %middle.block1484, label %vector.body1486, !llvm.loop !109

middle.block1484:                                 ; preds = %vector.body1486
  %cmp.n1496 = icmp eq i64 %353, %n.vec1492
  br i1 %cmp.n1496, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1472, %polly.loop_header476.us.preheader, %middle.block1484
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1472 ], [ 0, %polly.loop_header476.us.preheader ], [ %n.vec1492, %middle.block1484 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %397 = add nuw nsw i64 %polly.indvar487.us, %345
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar487.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %397, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %398 = shl i64 %397, 3
  %399 = add i64 %398, %379
  %scevgep506.us = getelementptr i8, i8* %call, i64 %399
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar487.us, %smin1073
  br i1 %exitcond1074.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !110

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1484
  %polly.access.add.Packed_MemRef_call2305495.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.1, %376
  %polly.access.Packed_MemRef_call2305496.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2305496.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.1 = add nsw i64 %375, 1200
  %polly.access.Packed_MemRef_call1303504.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1303504.us.1, align 8
  %min.iters.check1457 = icmp ult i64 %360, 4
  br i1 %min.iters.check1457, label %polly.loop_header483.us.1.preheader, label %vector.memcheck1439

vector.memcheck1439:                              ; preds = %polly.loop_exit485.loopexit.us
  %bound01448 = icmp ult i8* %scevgep1441, %scevgep1447
  %bound11449 = icmp ult i8* %scevgep1445, %scevgep1444
  %found.conflict1450 = and i1 %bound01448, %bound11449
  br i1 %found.conflict1450, label %polly.loop_header483.us.1.preheader, label %vector.ph1458

vector.ph1458:                                    ; preds = %vector.memcheck1439
  %n.vec1460 = and i64 %360, -4
  %broadcast.splatinsert1466 = insertelement <4 x double> poison, double %_p_scalar_497.us.1, i32 0
  %broadcast.splat1467 = shufflevector <4 x double> %broadcast.splatinsert1466, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1469 = insertelement <4 x double> poison, double %_p_scalar_505.us.1, i32 0
  %broadcast.splat1470 = shufflevector <4 x double> %broadcast.splatinsert1469, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1458
  %index1461 = phi i64 [ 0, %vector.ph1458 ], [ %index.next1462, %vector.body1454 ]
  %400 = add nuw nsw i64 %index1461, %345
  %401 = add nuw nsw i64 %index1461, 1200
  %402 = getelementptr double, double* %Packed_MemRef_call1303, i64 %401
  %403 = bitcast double* %402 to <4 x double>*
  %wide.load1465 = load <4 x double>, <4 x double>* %403, align 8, !alias.scope !111
  %404 = fmul fast <4 x double> %broadcast.splat1467, %wide.load1465
  %405 = add nuw nsw i64 %400, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %406 = getelementptr double, double* %Packed_MemRef_call2305, i64 %405
  %407 = bitcast double* %406 to <4 x double>*
  %wide.load1468 = load <4 x double>, <4 x double>* %407, align 8
  %408 = fmul fast <4 x double> %broadcast.splat1470, %wide.load1468
  %409 = shl i64 %400, 3
  %410 = add i64 %409, %379
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %412, align 8, !alias.scope !114, !noalias !116
  %413 = fadd fast <4 x double> %408, %404
  %414 = fmul fast <4 x double> %413, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %415 = fadd fast <4 x double> %414, %wide.load1471
  %416 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %415, <4 x double>* %416, align 8, !alias.scope !114, !noalias !116
  %index.next1462 = add i64 %index1461, 4
  %417 = icmp eq i64 %index.next1462, %n.vec1460
  br i1 %417, label %middle.block1452, label %vector.body1454, !llvm.loop !117

middle.block1452:                                 ; preds = %vector.body1454
  %cmp.n1464 = icmp eq i64 %360, %n.vec1460
  br i1 %cmp.n1464, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1.preheader

polly.loop_header483.us.1.preheader:              ; preds = %vector.memcheck1439, %polly.loop_exit485.loopexit.us, %middle.block1452
  %polly.indvar487.us.1.ph = phi i64 [ 0, %vector.memcheck1439 ], [ 0, %polly.loop_exit485.loopexit.us ], [ %n.vec1460, %middle.block1452 ]
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
  %418 = add i64 %indvar, 1
  %419 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %419
  %min.iters.check1229 = icmp ult i64 %418, 4
  br i1 %min.iters.check1229, label %polly.loop_header605.preheader, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header599
  %n.vec1232 = and i64 %418, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1228 ]
  %420 = shl nuw nsw i64 %index1233, 3
  %421 = getelementptr i8, i8* %scevgep611, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  %wide.load1237 = load <4 x double>, <4 x double>* %422, align 8, !alias.scope !118, !noalias !120
  %423 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %424 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %423, <4 x double>* %424, align 8, !alias.scope !118, !noalias !120
  %index.next1234 = add i64 %index1233, 4
  %425 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %425, label %middle.block1226, label %vector.body1228, !llvm.loop !125

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %418, %n.vec1232
  br i1 %cmp.n1236, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1226
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1232, %middle.block1226 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1226
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1107.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %426 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %426
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1106.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !126

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1105.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %scevgep1266 = getelementptr i8, i8* %malloccall513, i64 19200
  %scevgep1267 = getelementptr i8, i8* %malloccall513, i64 19208
  %scevgep1299 = getelementptr i8, i8* %malloccall513, i64 9600
  %scevgep1300 = getelementptr i8, i8* %malloccall513, i64 9608
  %scevgep1332 = getelementptr i8, i8* %malloccall513, i64 8
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
  %exitcond1104.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1104.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %427 = mul nsw i64 %polly.indvar634, -64
  %428 = shl nuw nsw i64 %polly.indvar634, 6
  %429 = shl nuw nsw i64 %polly.indvar634, 6
  %430 = mul nsw i64 %polly.indvar634, -64
  %431 = mul nsw i64 %polly.indvar634, -64
  %432 = shl nuw nsw i64 %polly.indvar634, 6
  %433 = shl nuw nsw i64 %polly.indvar634, 6
  %434 = mul nsw i64 %polly.indvar634, -64
  %435 = mul nsw i64 %polly.indvar634, -64
  %436 = shl nuw nsw i64 %polly.indvar634, 6
  %437 = shl nuw nsw i64 %polly.indvar634, 6
  %438 = mul nsw i64 %polly.indvar634, -64
  %439 = mul nsw i64 %polly.indvar634, -64
  %440 = shl nuw nsw i64 %polly.indvar634, 6
  %441 = mul nuw nsw i64 %polly.indvar634, 7
  %442 = add nuw nsw i64 %441, 6
  %pexp.p_div_q643 = udiv i64 %442, 25
  %443 = add nuw nsw i64 %pexp.p_div_q643, %polly.indvar634
  %.inv928 = icmp ult i64 %443, 23
  %444 = mul nsw i64 %polly.indvar634, -64
  %445 = icmp slt i64 %444, -1136
  %446 = select i1 %445, i64 %444, i64 -1136
  %447 = add nsw i64 %446, 1199
  %448 = shl nsw i64 %polly.indvar634, 6
  %.op1145 = add nuw i64 %443, 2
  %449 = select i1 %.inv928, i64 %.op1145, i64 24
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -64
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 64
  %exitcond1103.not = icmp eq i64 %polly.indvar_next635, 19
  br i1 %exitcond1103.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %450 = shl nsw i64 %polly.indvar640, 2
  %451 = or i64 %450, 1
  %452 = or i64 %450, 2
  %453 = or i64 %450, 3
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nsw i64 %polly.indvar640, 4800
  %454 = or i64 %450, 1
  %polly.access.mul.Packed_MemRef_call2516705.us.1 = mul nuw nsw i64 %454, 1200
  %455 = or i64 %450, 2
  %polly.access.mul.Packed_MemRef_call2516705.us.2 = mul nuw nsw i64 %455, 1200
  %456 = or i64 %450, 3
  %polly.access.mul.Packed_MemRef_call2516705.us.3 = mul nuw nsw i64 %456, 1200
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next641, 250
  br i1 %exitcond1102.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit653 ], [ %indvars.iv1089, %polly.loop_header637 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit653 ], [ %indvars.iv1084, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %457 = mul i64 %polly.indvar647, 50
  %458 = add i64 %427, %457
  %smax1341 = call i64 @llvm.smax.i64(i64 %458, i64 0)
  %459 = mul i64 %polly.indvar647, -50
  %460 = add i64 %428, %459
  %461 = add i64 %smax1341, %460
  %462 = mul i64 %polly.indvar647, 400
  %463 = mul i64 %polly.indvar647, 50
  %464 = add i64 %430, %463
  %smax1327 = call i64 @llvm.smax.i64(i64 %464, i64 0)
  %465 = add nuw i64 %429, %smax1327
  %466 = mul i64 %465, 9600
  %467 = add i64 %462, %466
  %468 = or i64 %462, 8
  %469 = add i64 %468, %466
  %470 = mul i64 %polly.indvar647, -50
  %471 = add i64 %429, %470
  %472 = add i64 %smax1327, %471
  %473 = mul i64 %polly.indvar647, 50
  %474 = add i64 %431, %473
  %smax1309 = call i64 @llvm.smax.i64(i64 %474, i64 0)
  %475 = mul i64 %polly.indvar647, -50
  %476 = add i64 %432, %475
  %477 = add i64 %smax1309, %476
  %478 = mul i64 %polly.indvar647, 400
  %479 = mul i64 %polly.indvar647, 50
  %480 = add i64 %434, %479
  %smax1294 = call i64 @llvm.smax.i64(i64 %480, i64 0)
  %481 = add nuw i64 %433, %smax1294
  %482 = mul i64 %481, 9600
  %483 = add i64 %478, %482
  %484 = or i64 %478, 8
  %485 = add i64 %484, %482
  %486 = mul i64 %polly.indvar647, -50
  %487 = add i64 %433, %486
  %488 = add i64 %smax1294, %487
  %489 = mul i64 %polly.indvar647, 50
  %490 = add i64 %435, %489
  %smax1276 = call i64 @llvm.smax.i64(i64 %490, i64 0)
  %491 = mul i64 %polly.indvar647, -50
  %492 = add i64 %436, %491
  %493 = add i64 %smax1276, %492
  %494 = mul i64 %polly.indvar647, 400
  %495 = mul i64 %polly.indvar647, 50
  %496 = add i64 %438, %495
  %smax1261 = call i64 @llvm.smax.i64(i64 %496, i64 0)
  %497 = add nuw i64 %437, %smax1261
  %498 = mul i64 %497, 9600
  %499 = add i64 %494, %498
  %500 = or i64 %494, 8
  %501 = add i64 %500, %498
  %502 = mul i64 %polly.indvar647, -50
  %503 = add i64 %437, %502
  %504 = add i64 %smax1261, %503
  %505 = mul i64 %polly.indvar647, 50
  %506 = add i64 %439, %505
  %smax1241 = call i64 @llvm.smax.i64(i64 %506, i64 0)
  %507 = mul i64 %polly.indvar647, -50
  %508 = add i64 %440, %507
  %509 = add i64 %smax1241, %508
  %510 = mul nsw i64 %polly.indvar647, 50
  %511 = add nsw i64 %510, %444
  %512 = icmp sgt i64 %511, 0
  %513 = select i1 %512, i64 %511, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %513, %447
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1088 = call i64 @llvm.smax.i64(i64 %indvars.iv1086, i64 0)
  %514 = add i64 %smax1088, %indvars.iv1091
  %515 = sub nsw i64 %448, %510
  %516 = add nuw nsw i64 %510, 50
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw i64 %polly.indvar647, 1
  %indvars.iv.next1087 = add i64 %indvars.iv1086, 50
  %indvars.iv.next1092 = add i64 %indvars.iv1091, -50
  %exitcond1101.not = icmp eq i64 %polly.indvar_next648, %449
  br i1 %exitcond1101.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1242 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1243, %polly.loop_exit689 ]
  %indvars.iv1093 = phi i64 [ %514, %polly.loop_header651.preheader ], [ %indvars.iv.next1094, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %513, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %517 = add i64 %461, %indvar1242
  %smin1342 = call i64 @llvm.smin.i64(i64 %517, i64 49)
  %518 = add nsw i64 %smin1342, 1
  %519 = mul i64 %indvar1242, 9600
  %520 = add i64 %467, %519
  %scevgep1328 = getelementptr i8, i8* %call, i64 %520
  %521 = add i64 %469, %519
  %scevgep1329 = getelementptr i8, i8* %call, i64 %521
  %522 = add i64 %472, %indvar1242
  %smin1330 = call i64 @llvm.smin.i64(i64 %522, i64 49)
  %523 = shl i64 %smin1330, 3
  %scevgep1331 = getelementptr i8, i8* %scevgep1329, i64 %523
  %scevgep1333 = getelementptr i8, i8* %scevgep1332, i64 %523
  %524 = add i64 %477, %indvar1242
  %smin1310 = call i64 @llvm.smin.i64(i64 %524, i64 49)
  %525 = add nsw i64 %smin1310, 1
  %526 = mul i64 %indvar1242, 9600
  %527 = add i64 %483, %526
  %scevgep1295 = getelementptr i8, i8* %call, i64 %527
  %528 = add i64 %485, %526
  %scevgep1296 = getelementptr i8, i8* %call, i64 %528
  %529 = add i64 %488, %indvar1242
  %smin1297 = call i64 @llvm.smin.i64(i64 %529, i64 49)
  %530 = shl i64 %smin1297, 3
  %scevgep1298 = getelementptr i8, i8* %scevgep1296, i64 %530
  %scevgep1301 = getelementptr i8, i8* %scevgep1300, i64 %530
  %531 = add i64 %493, %indvar1242
  %smin1277 = call i64 @llvm.smin.i64(i64 %531, i64 49)
  %532 = add nsw i64 %smin1277, 1
  %533 = mul i64 %indvar1242, 9600
  %534 = add i64 %499, %533
  %scevgep1262 = getelementptr i8, i8* %call, i64 %534
  %535 = add i64 %501, %533
  %scevgep1263 = getelementptr i8, i8* %call, i64 %535
  %536 = add i64 %504, %indvar1242
  %smin1264 = call i64 @llvm.smin.i64(i64 %536, i64 49)
  %537 = shl i64 %smin1264, 3
  %scevgep1265 = getelementptr i8, i8* %scevgep1263, i64 %537
  %scevgep1268 = getelementptr i8, i8* %scevgep1267, i64 %537
  %538 = add i64 %509, %indvar1242
  %smin1244 = call i64 @llvm.smin.i64(i64 %538, i64 49)
  %539 = add nsw i64 %smin1244, 1
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 49)
  %540 = add nsw i64 %polly.indvar655, %515
  %polly.loop_guard6681146 = icmp sgt i64 %540, -1
  %541 = add nuw nsw i64 %polly.indvar655, %448
  %.not929 = icmp ult i64 %541, %516
  %polly.access.mul.call1681 = mul nsw i64 %541, 1000
  %542 = add nuw i64 %polly.access.mul.call1681, %450
  br i1 %polly.loop_guard6681146, label %polly.loop_header665.us, label %polly.loop_header651.split

polly.loop_header665.us:                          ; preds = %polly.loop_header651, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header651 ]
  %543 = add nuw nsw i64 %polly.indvar669.us, %510
  %polly.access.mul.call1673.us = mul nsw i64 %543, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %450, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar669.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar669.us, %smin1098
  br i1 %exitcond1096.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %542
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %540
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.loop_header665.us.1.preheader

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not929, label %polly.loop_header665.us.1.preheader, label %polly.then678.us

polly.loop_header665.us.1.preheader:              ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  br label %polly.loop_header665.us.1

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not929, label %polly.loop_exit689, label %polly.loop_header658.preheader

polly.loop_header658.preheader:                   ; preds = %polly.loop_header651.split
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %542
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %540
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.access.add.call1682.1 = or i64 %542, 1
  %polly.access.call1683.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.1
  %polly.access.call1683.load.1 = load double, double* %polly.access.call1683.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.1 = add nsw i64 %540, 1200
  %polly.access.Packed_MemRef_call1514686.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.1
  store double %polly.access.call1683.load.1, double* %polly.access.Packed_MemRef_call1514686.1, align 8
  %polly.access.add.call1682.2 = or i64 %542, 2
  %polly.access.call1683.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.2
  %polly.access.call1683.load.2 = load double, double* %polly.access.call1683.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.2 = add nsw i64 %540, 2400
  %polly.access.Packed_MemRef_call1514686.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.2
  store double %polly.access.call1683.load.2, double* %polly.access.Packed_MemRef_call1514686.2, align 8
  %polly.access.add.call1682.3 = or i64 %542, 3
  %polly.access.call1683.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.3
  %polly.access.call1683.load.3 = load double, double* %polly.access.call1683.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.3 = add nsw i64 %540, 3600
  %polly.access.Packed_MemRef_call1514686.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.3
  store double %polly.access.call1683.load.3, double* %polly.access.Packed_MemRef_call1514686.3, align 8
  br label %polly.loop_exit689

polly.loop_exit689:                               ; preds = %polly.loop_header694.us.3, %middle.block1238, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %447
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 1
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.cond676.loopexit.us.3, %polly.then678.us.3
  %544 = mul i64 %541, 9600
  br i1 %polly.loop_guard6681146, label %polly.loop_header687.us.preheader, label %polly.loop_exit689

polly.loop_header687.us.preheader:                ; preds = %polly.loop_header687.preheader
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %541
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %540
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1343 = icmp ult i64 %518, 4
  br i1 %min.iters.check1343, label %polly.loop_header694.us.preheader, label %vector.memcheck1326

vector.memcheck1326:                              ; preds = %polly.loop_header687.us.preheader
  %bound01334 = icmp ult i8* %scevgep1328, %scevgep1333
  %bound11335 = icmp ult i8* %malloccall513, %scevgep1331
  %found.conflict1336 = and i1 %bound01334, %bound11335
  br i1 %found.conflict1336, label %polly.loop_header694.us.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %vector.memcheck1326
  %n.vec1346 = and i64 %518, -4
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1340 ]
  %545 = add nuw nsw i64 %index1347, %510
  %546 = getelementptr double, double* %Packed_MemRef_call1514, i64 %index1347
  %547 = bitcast double* %546 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %547, align 8, !alias.scope !129
  %548 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %549 = add nuw nsw i64 %545, %polly.access.mul.Packed_MemRef_call2516705.us
  %550 = getelementptr double, double* %Packed_MemRef_call2516, i64 %549
  %551 = bitcast double* %550 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %551, align 8
  %552 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %553 = shl i64 %545, 3
  %554 = add i64 %553, %544
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %556, align 8, !alias.scope !132, !noalias !134
  %557 = fadd fast <4 x double> %552, %548
  %558 = fmul fast <4 x double> %557, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %559 = fadd fast <4 x double> %558, %wide.load1357
  %560 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %559, <4 x double>* %560, align 8, !alias.scope !132, !noalias !134
  %index.next1348 = add i64 %index1347, 4
  %561 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %561, label %middle.block1338, label %vector.body1340, !llvm.loop !135

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1350 = icmp eq i64 %518, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1326, %polly.loop_header687.us.preheader, %middle.block1338
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1326 ], [ 0, %polly.loop_header687.us.preheader ], [ %n.vec1346, %middle.block1338 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %562 = add nuw nsw i64 %polly.indvar698.us, %510
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar698.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %562, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %563 = shl i64 %562, 3
  %564 = add i64 %563, %544
  %scevgep717.us = getelementptr i8, i8* %call, i64 %564
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar698.us, %smin1098
  br i1 %exitcond1099.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !136

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1338
  %polly.access.add.Packed_MemRef_call2516706.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.1, %541
  %polly.access.Packed_MemRef_call2516707.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call2516707.us.1, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.1 = add nsw i64 %540, 1200
  %polly.access.Packed_MemRef_call1514715.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call1514715.us.1, align 8
  %min.iters.check1311 = icmp ult i64 %525, 4
  br i1 %min.iters.check1311, label %polly.loop_header694.us.1.preheader, label %vector.memcheck1293

vector.memcheck1293:                              ; preds = %polly.loop_exit696.loopexit.us
  %bound01302 = icmp ult i8* %scevgep1295, %scevgep1301
  %bound11303 = icmp ult i8* %scevgep1299, %scevgep1298
  %found.conflict1304 = and i1 %bound01302, %bound11303
  br i1 %found.conflict1304, label %polly.loop_header694.us.1.preheader, label %vector.ph1312

vector.ph1312:                                    ; preds = %vector.memcheck1293
  %n.vec1314 = and i64 %525, -4
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1308 ]
  %565 = add nuw nsw i64 %index1315, %510
  %566 = add nuw nsw i64 %index1315, 1200
  %567 = getelementptr double, double* %Packed_MemRef_call1514, i64 %566
  %568 = bitcast double* %567 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !137
  %569 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %570 = add nuw nsw i64 %565, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %571 = getelementptr double, double* %Packed_MemRef_call2516, i64 %570
  %572 = bitcast double* %571 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %572, align 8
  %573 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %574 = shl i64 %565, 3
  %575 = add i64 %574, %544
  %576 = getelementptr i8, i8* %call, i64 %575
  %577 = bitcast i8* %576 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %577, align 8, !alias.scope !140, !noalias !142
  %578 = fadd fast <4 x double> %573, %569
  %579 = fmul fast <4 x double> %578, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %580 = fadd fast <4 x double> %579, %wide.load1325
  %581 = bitcast i8* %576 to <4 x double>*
  store <4 x double> %580, <4 x double>* %581, align 8, !alias.scope !140, !noalias !142
  %index.next1316 = add i64 %index1315, 4
  %582 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %582, label %middle.block1306, label %vector.body1308, !llvm.loop !143

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1318 = icmp eq i64 %525, %n.vec1314
  br i1 %cmp.n1318, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1.preheader

polly.loop_header694.us.1.preheader:              ; preds = %vector.memcheck1293, %polly.loop_exit696.loopexit.us, %middle.block1306
  %polly.indvar698.us.1.ph = phi i64 [ 0, %vector.memcheck1293 ], [ 0, %polly.loop_exit696.loopexit.us ], [ %n.vec1314, %middle.block1306 ]
  br label %polly.loop_header694.us.1

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %583 = shl nsw i64 %polly.indvar849, 5
  %584 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1137.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %585 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %585, i64 -1168)
  %586 = add nsw i64 %smin, 1200
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %587 = shl nsw i64 %polly.indvar855, 5
  %588 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1136.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1136.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %589 = add nuw nsw i64 %polly.indvar861, %583
  %590 = trunc i64 %589 to i32
  %591 = mul nuw nsw i64 %589, 9600
  %min.iters.check = icmp eq i64 %586, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1168

vector.ph1168:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1175 = insertelement <4 x i64> poison, i64 %587, i32 0
  %broadcast.splat1176 = shufflevector <4 x i64> %broadcast.splatinsert1175, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %590, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1168
  %index1169 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1168 ], [ %vec.ind.next1174, %vector.body1167 ]
  %592 = add nuw nsw <4 x i64> %vec.ind1173, %broadcast.splat1176
  %593 = trunc <4 x i64> %592 to <4 x i32>
  %594 = mul <4 x i32> %broadcast.splat1178, %593
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
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %604 = icmp eq i64 %index.next1170, %586
  br i1 %604, label %polly.loop_exit866, label %vector.body1167, !llvm.loop !149

polly.loop_exit866:                               ; preds = %vector.body1167, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar861, %584
  br i1 %exitcond1135.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %605 = add nuw nsw i64 %polly.indvar867, %587
  %606 = trunc i64 %605 to i32
  %607 = mul i32 %606, %590
  %608 = add i32 %607, 3
  %609 = urem i32 %608, 1200
  %p_conv31.i = sitofp i32 %609 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %610 = shl i64 %605, 3
  %611 = add nuw nsw i64 %610, %591
  %scevgep870 = getelementptr i8, i8* %call, i64 %611
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar867, %588
  br i1 %exitcond1131.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !150

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -1168)
  %612 = shl nsw i64 %polly.indvar876, 5
  %613 = add nsw i64 %smin1124, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1127.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %614 = mul nsw i64 %polly.indvar882, -32
  %smin1182 = call i64 @llvm.smin.i64(i64 %614, i64 -968)
  %615 = add nsw i64 %smin1182, 1000
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -968)
  %616 = shl nsw i64 %polly.indvar882, 5
  %617 = add nsw i64 %smin1120, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1126.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1126.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %618 = add nuw nsw i64 %polly.indvar888, %612
  %619 = trunc i64 %618 to i32
  %620 = mul nuw nsw i64 %618, 8000
  %min.iters.check1183 = icmp eq i64 %615, 0
  br i1 %min.iters.check1183, label %polly.loop_header891, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1193 = insertelement <4 x i64> poison, i64 %616, i32 0
  %broadcast.splat1194 = shufflevector <4 x i64> %broadcast.splatinsert1193, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %619, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1181 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1184 ], [ %vec.ind.next1192, %vector.body1181 ]
  %621 = add nuw nsw <4 x i64> %vec.ind1191, %broadcast.splat1194
  %622 = trunc <4 x i64> %621 to <4 x i32>
  %623 = mul <4 x i32> %broadcast.splat1196, %622
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
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %633 = icmp eq i64 %index.next1188, %615
  br i1 %633, label %polly.loop_exit893, label %vector.body1181, !llvm.loop !152

polly.loop_exit893:                               ; preds = %vector.body1181, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar888, %613
  br i1 %exitcond1125.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %634 = add nuw nsw i64 %polly.indvar894, %616
  %635 = trunc i64 %634 to i32
  %636 = mul i32 %635, %619
  %637 = add i32 %636, 2
  %638 = urem i32 %637, 1000
  %p_conv10.i = sitofp i32 %638 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %639 = shl i64 %634, 3
  %640 = add nuw nsw i64 %639, %620
  %scevgep897 = getelementptr i8, i8* %call2, i64 %640
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar894, %617
  br i1 %exitcond1121.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !153

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -1168)
  %641 = shl nsw i64 %polly.indvar902, 5
  %642 = add nsw i64 %smin1114, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1117.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %643 = mul nsw i64 %polly.indvar908, -32
  %smin1200 = call i64 @llvm.smin.i64(i64 %643, i64 -968)
  %644 = add nsw i64 %smin1200, 1000
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -968)
  %645 = shl nsw i64 %polly.indvar908, 5
  %646 = add nsw i64 %smin1110, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1116.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %647 = add nuw nsw i64 %polly.indvar914, %641
  %648 = trunc i64 %647 to i32
  %649 = mul nuw nsw i64 %647, 8000
  %min.iters.check1201 = icmp eq i64 %644, 0
  br i1 %min.iters.check1201, label %polly.loop_header917, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %645, i32 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %648, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1199 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1210, %vector.body1199 ]
  %650 = add nuw nsw <4 x i64> %vec.ind1209, %broadcast.splat1212
  %651 = trunc <4 x i64> %650 to <4 x i32>
  %652 = mul <4 x i32> %broadcast.splat1214, %651
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
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %662 = icmp eq i64 %index.next1206, %644
  br i1 %662, label %polly.loop_exit919, label %vector.body1199, !llvm.loop !155

polly.loop_exit919:                               ; preds = %vector.body1199, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar914, %642
  br i1 %exitcond1115.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %663 = add nuw nsw i64 %polly.indvar920, %645
  %664 = trunc i64 %663 to i32
  %665 = mul i32 %664, %648
  %666 = add i32 %665, 1
  %667 = urem i32 %666, 1200
  %p_conv.i = sitofp i32 %667 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %668 = shl i64 %663, 3
  %669 = add nuw nsw i64 %668, %649
  %scevgep924 = getelementptr i8, i8* %call1, i64 %669
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar920, %646
  br i1 %exitcond1111.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %670 = add nuw nsw i64 %polly.indvar251.us.1, %180
  %polly.access.mul.call1255.us.1 = mul nsw i64 %670, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %121, %polly.access.mul.call1255.us.1
  %polly.access.call1257.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us.1
  %polly.access.call1257.load.us.1 = load double, double* %polly.access.call1257.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1257.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond1046.1.not = icmp eq i64 %polly.indvar251.us.1, %smin1048
  br i1 %exitcond1046.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header247.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header247.us.1
  br i1 %.not, label %polly.loop_header247.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1260.us.1 = or i64 %212, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %671 = add nuw nsw i64 %polly.indvar251.us.2, %180
  %polly.access.mul.call1255.us.2 = mul nsw i64 %671, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %122, %polly.access.mul.call1255.us.2
  %polly.access.call1257.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us.2
  %polly.access.call1257.load.us.2 = load double, double* %polly.access.call1257.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar251.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1257.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next252.us.2 = add nuw nsw i64 %polly.indvar251.us.2, 1
  %exitcond1046.2.not = icmp eq i64 %polly.indvar251.us.2, %smin1048
  br i1 %exitcond1046.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header247.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header247.us.2
  br i1 %.not, label %polly.loop_header247.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1260.us.2 = or i64 %212, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %672 = add nuw nsw i64 %polly.indvar251.us.3, %180
  %polly.access.mul.call1255.us.3 = mul nsw i64 %672, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %123, %polly.access.mul.call1255.us.3
  %polly.access.call1257.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us.3
  %polly.access.call1257.load.us.3 = load double, double* %polly.access.call1257.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar251.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1257.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next252.us.3 = add nuw nsw i64 %polly.indvar251.us.3, 1
  %exitcond1046.3.not = icmp eq i64 %polly.indvar251.us.3, %smin1048
  br i1 %exitcond1046.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header247.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header247.us.3
  br i1 %.not, label %polly.loop_header265.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1260.us.3 = or i64 %212, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %673 = add nuw nsw i64 %polly.indvar276.us.1, %180
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %673, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %674 = shl i64 %673, 3
  %675 = add i64 %674, %214
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %675
  %scevgep295296.us.1 = bitcast i8* %scevgep295.us.1 to double*
  %_p_scalar_297.us.1 = load double, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_297.us.1
  store double %p_add42.i118.us.1, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %exitcond1049.1.not = icmp eq i64 %polly.indvar276.us.1, %smin1048
  br i1 %exitcond1049.1.not, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1, !llvm.loop !157

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1598
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %211
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1570 = icmp ult i64 %202, 4
  br i1 %min.iters.check1570, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1552

vector.memcheck1552:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01561 = icmp ult i8* %scevgep1554, %scevgep1560
  %bound11562 = icmp ult i8* %scevgep1558, %scevgep1557
  %found.conflict1563 = and i1 %bound01561, %bound11562
  br i1 %found.conflict1563, label %polly.loop_header272.us.2.preheader, label %vector.ph1571

vector.ph1571:                                    ; preds = %vector.memcheck1552
  %n.vec1573 = and i64 %202, -4
  %broadcast.splatinsert1579 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1580 = shufflevector <4 x double> %broadcast.splatinsert1579, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1582 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1583 = shufflevector <4 x double> %broadcast.splatinsert1582, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.body1567, %vector.ph1571
  %index1574 = phi i64 [ 0, %vector.ph1571 ], [ %index.next1575, %vector.body1567 ]
  %676 = add nuw nsw i64 %index1574, %180
  %677 = add nuw nsw i64 %index1574, 2400
  %678 = getelementptr double, double* %Packed_MemRef_call1, i64 %677
  %679 = bitcast double* %678 to <4 x double>*
  %wide.load1578 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !158
  %680 = fmul fast <4 x double> %broadcast.splat1580, %wide.load1578
  %681 = add nuw nsw i64 %676, %polly.access.mul.Packed_MemRef_call2283.us.2
  %682 = getelementptr double, double* %Packed_MemRef_call2, i64 %681
  %683 = bitcast double* %682 to <4 x double>*
  %wide.load1581 = load <4 x double>, <4 x double>* %683, align 8
  %684 = fmul fast <4 x double> %broadcast.splat1583, %wide.load1581
  %685 = shl i64 %676, 3
  %686 = add i64 %685, %214
  %687 = getelementptr i8, i8* %call, i64 %686
  %688 = bitcast i8* %687 to <4 x double>*
  %wide.load1584 = load <4 x double>, <4 x double>* %688, align 8, !alias.scope !161, !noalias !163
  %689 = fadd fast <4 x double> %684, %680
  %690 = fmul fast <4 x double> %689, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %691 = fadd fast <4 x double> %690, %wide.load1584
  %692 = bitcast i8* %687 to <4 x double>*
  store <4 x double> %691, <4 x double>* %692, align 8, !alias.scope !161, !noalias !163
  %index.next1575 = add i64 %index1574, 4
  %693 = icmp eq i64 %index.next1575, %n.vec1573
  br i1 %693, label %middle.block1565, label %vector.body1567, !llvm.loop !164

middle.block1565:                                 ; preds = %vector.body1567
  %cmp.n1577 = icmp eq i64 %202, %n.vec1573
  br i1 %cmp.n1577, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1552, %polly.loop_exit274.loopexit.us.1, %middle.block1565
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1552 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1573, %middle.block1565 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %694 = add nuw nsw i64 %polly.indvar276.us.2, %180
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %694, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %695 = shl i64 %694, 3
  %696 = add i64 %695, %214
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %696
  %scevgep295296.us.2 = bitcast i8* %scevgep295.us.2 to double*
  %_p_scalar_297.us.2 = load double, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_297.us.2
  store double %p_add42.i118.us.2, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %exitcond1049.2.not = icmp eq i64 %polly.indvar276.us.2, %smin1048
  br i1 %exitcond1049.2.not, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2, !llvm.loop !165

polly.loop_exit274.loopexit.us.2:                 ; preds = %polly.loop_header272.us.2, %middle.block1565
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %211
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1537 = icmp ult i64 %209, 4
  br i1 %min.iters.check1537, label %polly.loop_header272.us.3.preheader, label %vector.ph1538

vector.ph1538:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1540 = and i64 %209, -4
  %broadcast.splatinsert1546 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1547 = shufflevector <4 x double> %broadcast.splatinsert1546, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1549 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1550 = shufflevector <4 x double> %broadcast.splatinsert1549, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1542, %vector.body1532 ]
  %697 = add nuw nsw i64 %index1541, %180
  %698 = add nuw nsw i64 %index1541, 3600
  %699 = getelementptr double, double* %Packed_MemRef_call1, i64 %698
  %700 = bitcast double* %699 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %700, align 8
  %701 = fmul fast <4 x double> %broadcast.splat1547, %wide.load1545
  %702 = add nuw nsw i64 %697, %polly.access.mul.Packed_MemRef_call2283.us.3
  %703 = getelementptr double, double* %Packed_MemRef_call2, i64 %702
  %704 = bitcast double* %703 to <4 x double>*
  %wide.load1548 = load <4 x double>, <4 x double>* %704, align 8
  %705 = fmul fast <4 x double> %broadcast.splat1550, %wide.load1548
  %706 = shl i64 %697, 3
  %707 = add i64 %706, %214
  %708 = getelementptr i8, i8* %call, i64 %707
  %709 = bitcast i8* %708 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %709, align 8, !alias.scope !65, !noalias !67
  %710 = fadd fast <4 x double> %705, %701
  %711 = fmul fast <4 x double> %710, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %712 = fadd fast <4 x double> %711, %wide.load1551
  %713 = bitcast i8* %708 to <4 x double>*
  store <4 x double> %712, <4 x double>* %713, align 8, !alias.scope !65, !noalias !67
  %index.next1542 = add i64 %index1541, 4
  %714 = icmp eq i64 %index.next1542, %n.vec1540
  br i1 %714, label %middle.block1530, label %vector.body1532, !llvm.loop !166

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1544 = icmp eq i64 %209, %n.vec1540
  br i1 %cmp.n1544, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1530
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1540, %middle.block1530 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %715 = add nuw nsw i64 %polly.indvar276.us.3, %180
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %715, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %716 = shl i64 %715, 3
  %717 = add i64 %716, %214
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %717
  %scevgep295296.us.3 = bitcast i8* %scevgep295.us.3 to double*
  %_p_scalar_297.us.3 = load double, double* %scevgep295296.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_297.us.3
  store double %p_add42.i118.us.3, double* %scevgep295296.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %exitcond1049.3.not = icmp eq i64 %polly.indvar276.us.3, %smin1048
  br i1 %exitcond1049.3.not, label %polly.loop_exit267, label %polly.loop_header272.us.3, !llvm.loop !167

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1.preheader, %polly.loop_header454.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header454.us.1 ], [ 0, %polly.loop_header454.us.1.preheader ]
  %718 = add nuw nsw i64 %polly.indvar458.us.1, %345
  %polly.access.mul.call1462.us.1 = mul nsw i64 %718, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %286, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1
  %exitcond1071.1.not = icmp eq i64 %polly.indvar458.us.1, %smin1073
  br i1 %exitcond1071.1.not, label %polly.cond465.loopexit.us.1, label %polly.loop_header454.us.1

polly.cond465.loopexit.us.1:                      ; preds = %polly.loop_header454.us.1
  br i1 %.not927, label %polly.loop_header454.us.2.preheader, label %polly.then467.us.1

polly.then467.us.1:                               ; preds = %polly.cond465.loopexit.us.1
  %polly.access.add.call1471.us.1 = or i64 %377, 1
  %polly.access.call1472.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.1
  %polly.access.call1472.load.us.1 = load double, double* %polly.access.call1472.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.1 = add nsw i64 %375, 1200
  %polly.access.Packed_MemRef_call1303475.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.1
  store double %polly.access.call1472.load.us.1, double* %polly.access.Packed_MemRef_call1303475.us.1, align 8
  br label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.then467.us.1, %polly.cond465.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %719 = add nuw nsw i64 %polly.indvar458.us.2, %345
  %polly.access.mul.call1462.us.2 = mul nsw i64 %719, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %287, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1303.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1303.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 1
  %exitcond1071.2.not = icmp eq i64 %polly.indvar458.us.2, %smin1073
  br i1 %exitcond1071.2.not, label %polly.cond465.loopexit.us.2, label %polly.loop_header454.us.2

polly.cond465.loopexit.us.2:                      ; preds = %polly.loop_header454.us.2
  br i1 %.not927, label %polly.loop_header454.us.3.preheader, label %polly.then467.us.2

polly.then467.us.2:                               ; preds = %polly.cond465.loopexit.us.2
  %polly.access.add.call1471.us.2 = or i64 %377, 2
  %polly.access.call1472.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.2
  %polly.access.call1472.load.us.2 = load double, double* %polly.access.call1472.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.2 = add nsw i64 %375, 2400
  %polly.access.Packed_MemRef_call1303475.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.2
  store double %polly.access.call1472.load.us.2, double* %polly.access.Packed_MemRef_call1303475.us.2, align 8
  br label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.then467.us.2, %polly.cond465.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %720 = add nuw nsw i64 %polly.indvar458.us.3, %345
  %polly.access.mul.call1462.us.3 = mul nsw i64 %720, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %288, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1303.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1303.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 1
  %exitcond1071.3.not = icmp eq i64 %polly.indvar458.us.3, %smin1073
  br i1 %exitcond1071.3.not, label %polly.cond465.loopexit.us.3, label %polly.loop_header454.us.3

polly.cond465.loopexit.us.3:                      ; preds = %polly.loop_header454.us.3
  br i1 %.not927, label %polly.loop_header476.preheader, label %polly.then467.us.3

polly.then467.us.3:                               ; preds = %polly.cond465.loopexit.us.3
  %polly.access.add.call1471.us.3 = or i64 %377, 3
  %polly.access.call1472.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.3
  %polly.access.call1472.load.us.3 = load double, double* %polly.access.call1472.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.3 = add nsw i64 %375, 3600
  %polly.access.Packed_MemRef_call1303475.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.3
  store double %polly.access.call1472.load.us.3, double* %polly.access.Packed_MemRef_call1303475.us.3, align 8
  br label %polly.loop_header476.preheader

polly.loop_header483.us.1:                        ; preds = %polly.loop_header483.us.1.preheader, %polly.loop_header483.us.1
  %polly.indvar487.us.1 = phi i64 [ %polly.indvar_next488.us.1, %polly.loop_header483.us.1 ], [ %polly.indvar487.us.1.ph, %polly.loop_header483.us.1.preheader ]
  %721 = add nuw nsw i64 %polly.indvar487.us.1, %345
  %polly.access.add.Packed_MemRef_call1303491.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1200
  %polly.access.Packed_MemRef_call1303492.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call1303492.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_497.us.1, %_p_scalar_493.us.1
  %polly.access.add.Packed_MemRef_call2305499.us.1 = add nuw nsw i64 %721, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %polly.access.Packed_MemRef_call2305500.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2305500.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_505.us.1, %_p_scalar_501.us.1
  %722 = shl i64 %721, 3
  %723 = add i64 %722, %379
  %scevgep506.us.1 = getelementptr i8, i8* %call, i64 %723
  %scevgep506507.us.1 = bitcast i8* %scevgep506.us.1 to double*
  %_p_scalar_508.us.1 = load double, double* %scevgep506507.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_508.us.1
  store double %p_add42.i79.us.1, double* %scevgep506507.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1
  %exitcond1074.1.not = icmp eq i64 %polly.indvar487.us.1, %smin1073
  br i1 %exitcond1074.1.not, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1, !llvm.loop !168

polly.loop_exit485.loopexit.us.1:                 ; preds = %polly.loop_header483.us.1, %middle.block1452
  %polly.access.add.Packed_MemRef_call2305495.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.2, %376
  %polly.access.Packed_MemRef_call2305496.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2305496.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.2 = add nsw i64 %375, 2400
  %polly.access.Packed_MemRef_call1303504.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1303504.us.2, align 8
  %min.iters.check1424 = icmp ult i64 %367, 4
  br i1 %min.iters.check1424, label %polly.loop_header483.us.2.preheader, label %vector.memcheck1406

vector.memcheck1406:                              ; preds = %polly.loop_exit485.loopexit.us.1
  %bound01415 = icmp ult i8* %scevgep1408, %scevgep1414
  %bound11416 = icmp ult i8* %scevgep1412, %scevgep1411
  %found.conflict1417 = and i1 %bound01415, %bound11416
  br i1 %found.conflict1417, label %polly.loop_header483.us.2.preheader, label %vector.ph1425

vector.ph1425:                                    ; preds = %vector.memcheck1406
  %n.vec1427 = and i64 %367, -4
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_497.us.2, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_505.us.2, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1421 ]
  %724 = add nuw nsw i64 %index1428, %345
  %725 = add nuw nsw i64 %index1428, 2400
  %726 = getelementptr double, double* %Packed_MemRef_call1303, i64 %725
  %727 = bitcast double* %726 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %727, align 8, !alias.scope !169
  %728 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %729 = add nuw nsw i64 %724, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %730 = getelementptr double, double* %Packed_MemRef_call2305, i64 %729
  %731 = bitcast double* %730 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %731, align 8
  %732 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %733 = shl i64 %724, 3
  %734 = add i64 %733, %379
  %735 = getelementptr i8, i8* %call, i64 %734
  %736 = bitcast i8* %735 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %736, align 8, !alias.scope !172, !noalias !174
  %737 = fadd fast <4 x double> %732, %728
  %738 = fmul fast <4 x double> %737, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %739 = fadd fast <4 x double> %738, %wide.load1438
  %740 = bitcast i8* %735 to <4 x double>*
  store <4 x double> %739, <4 x double>* %740, align 8, !alias.scope !172, !noalias !174
  %index.next1429 = add i64 %index1428, 4
  %741 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %741, label %middle.block1419, label %vector.body1421, !llvm.loop !175

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1431 = icmp eq i64 %367, %n.vec1427
  br i1 %cmp.n1431, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2.preheader

polly.loop_header483.us.2.preheader:              ; preds = %vector.memcheck1406, %polly.loop_exit485.loopexit.us.1, %middle.block1419
  %polly.indvar487.us.2.ph = phi i64 [ 0, %vector.memcheck1406 ], [ 0, %polly.loop_exit485.loopexit.us.1 ], [ %n.vec1427, %middle.block1419 ]
  br label %polly.loop_header483.us.2

polly.loop_header483.us.2:                        ; preds = %polly.loop_header483.us.2.preheader, %polly.loop_header483.us.2
  %polly.indvar487.us.2 = phi i64 [ %polly.indvar_next488.us.2, %polly.loop_header483.us.2 ], [ %polly.indvar487.us.2.ph, %polly.loop_header483.us.2.preheader ]
  %742 = add nuw nsw i64 %polly.indvar487.us.2, %345
  %polly.access.add.Packed_MemRef_call1303491.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 2400
  %polly.access.Packed_MemRef_call1303492.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call1303492.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_497.us.2, %_p_scalar_493.us.2
  %polly.access.add.Packed_MemRef_call2305499.us.2 = add nuw nsw i64 %742, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %polly.access.Packed_MemRef_call2305500.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2305500.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_505.us.2, %_p_scalar_501.us.2
  %743 = shl i64 %742, 3
  %744 = add i64 %743, %379
  %scevgep506.us.2 = getelementptr i8, i8* %call, i64 %744
  %scevgep506507.us.2 = bitcast i8* %scevgep506.us.2 to double*
  %_p_scalar_508.us.2 = load double, double* %scevgep506507.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_508.us.2
  store double %p_add42.i79.us.2, double* %scevgep506507.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next488.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 1
  %exitcond1074.2.not = icmp eq i64 %polly.indvar487.us.2, %smin1073
  br i1 %exitcond1074.2.not, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2, !llvm.loop !176

polly.loop_exit485.loopexit.us.2:                 ; preds = %polly.loop_header483.us.2, %middle.block1419
  %polly.access.add.Packed_MemRef_call2305495.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.3, %376
  %polly.access.Packed_MemRef_call2305496.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2305496.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.3 = add nsw i64 %375, 3600
  %polly.access.Packed_MemRef_call1303504.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1303504.us.3, align 8
  %min.iters.check1391 = icmp ult i64 %374, 4
  br i1 %min.iters.check1391, label %polly.loop_header483.us.3.preheader, label %vector.ph1392

vector.ph1392:                                    ; preds = %polly.loop_exit485.loopexit.us.2
  %n.vec1394 = and i64 %374, -4
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_497.us.3, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1403 = insertelement <4 x double> poison, double %_p_scalar_505.us.3, i32 0
  %broadcast.splat1404 = shufflevector <4 x double> %broadcast.splatinsert1403, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1392
  %index1395 = phi i64 [ 0, %vector.ph1392 ], [ %index.next1396, %vector.body1386 ]
  %745 = add nuw nsw i64 %index1395, %345
  %746 = add nuw nsw i64 %index1395, 3600
  %747 = getelementptr double, double* %Packed_MemRef_call1303, i64 %746
  %748 = bitcast double* %747 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %748, align 8
  %749 = fmul fast <4 x double> %broadcast.splat1401, %wide.load1399
  %750 = add nuw nsw i64 %745, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %751 = getelementptr double, double* %Packed_MemRef_call2305, i64 %750
  %752 = bitcast double* %751 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %752, align 8
  %753 = fmul fast <4 x double> %broadcast.splat1404, %wide.load1402
  %754 = shl i64 %745, 3
  %755 = add i64 %754, %379
  %756 = getelementptr i8, i8* %call, i64 %755
  %757 = bitcast i8* %756 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %757, align 8, !alias.scope !92, !noalias !94
  %758 = fadd fast <4 x double> %753, %749
  %759 = fmul fast <4 x double> %758, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %760 = fadd fast <4 x double> %759, %wide.load1405
  %761 = bitcast i8* %756 to <4 x double>*
  store <4 x double> %760, <4 x double>* %761, align 8, !alias.scope !92, !noalias !94
  %index.next1396 = add i64 %index1395, 4
  %762 = icmp eq i64 %index.next1396, %n.vec1394
  br i1 %762, label %middle.block1384, label %vector.body1386, !llvm.loop !177

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1398 = icmp eq i64 %374, %n.vec1394
  br i1 %cmp.n1398, label %polly.loop_exit478, label %polly.loop_header483.us.3.preheader

polly.loop_header483.us.3.preheader:              ; preds = %polly.loop_exit485.loopexit.us.2, %middle.block1384
  %polly.indvar487.us.3.ph = phi i64 [ 0, %polly.loop_exit485.loopexit.us.2 ], [ %n.vec1394, %middle.block1384 ]
  br label %polly.loop_header483.us.3

polly.loop_header483.us.3:                        ; preds = %polly.loop_header483.us.3.preheader, %polly.loop_header483.us.3
  %polly.indvar487.us.3 = phi i64 [ %polly.indvar_next488.us.3, %polly.loop_header483.us.3 ], [ %polly.indvar487.us.3.ph, %polly.loop_header483.us.3.preheader ]
  %763 = add nuw nsw i64 %polly.indvar487.us.3, %345
  %polly.access.add.Packed_MemRef_call1303491.us.3 = add nuw nsw i64 %polly.indvar487.us.3, 3600
  %polly.access.Packed_MemRef_call1303492.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call1303492.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_497.us.3, %_p_scalar_493.us.3
  %polly.access.add.Packed_MemRef_call2305499.us.3 = add nuw nsw i64 %763, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %polly.access.Packed_MemRef_call2305500.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2305500.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_505.us.3, %_p_scalar_501.us.3
  %764 = shl i64 %763, 3
  %765 = add i64 %764, %379
  %scevgep506.us.3 = getelementptr i8, i8* %call, i64 %765
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
  %766 = add nuw nsw i64 %polly.indvar669.us.1, %510
  %polly.access.mul.call1673.us.1 = mul nsw i64 %766, 1000
  %polly.access.add.call1674.us.1 = add nuw nsw i64 %451, %polly.access.mul.call1673.us.1
  %polly.access.call1675.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.1
  %polly.access.call1675.load.us.1 = load double, double* %polly.access.call1675.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.1 = add nuw nsw i64 %polly.indvar669.us.1, 1200
  %polly.access.Packed_MemRef_call1514.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.1
  store double %polly.access.call1675.load.us.1, double* %polly.access.Packed_MemRef_call1514.us.1, align 8
  %polly.indvar_next670.us.1 = add nuw nsw i64 %polly.indvar669.us.1, 1
  %exitcond1096.1.not = icmp eq i64 %polly.indvar669.us.1, %smin1098
  br i1 %exitcond1096.1.not, label %polly.cond676.loopexit.us.1, label %polly.loop_header665.us.1

polly.cond676.loopexit.us.1:                      ; preds = %polly.loop_header665.us.1
  br i1 %.not929, label %polly.loop_header665.us.2.preheader, label %polly.then678.us.1

polly.then678.us.1:                               ; preds = %polly.cond676.loopexit.us.1
  %polly.access.add.call1682.us.1 = or i64 %542, 1
  %polly.access.call1683.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.1
  %polly.access.call1683.load.us.1 = load double, double* %polly.access.call1683.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.1 = add nsw i64 %540, 1200
  %polly.access.Packed_MemRef_call1514686.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.1
  store double %polly.access.call1683.load.us.1, double* %polly.access.Packed_MemRef_call1514686.us.1, align 8
  br label %polly.loop_header665.us.2.preheader

polly.loop_header665.us.2.preheader:              ; preds = %polly.then678.us.1, %polly.cond676.loopexit.us.1
  br label %polly.loop_header665.us.2

polly.loop_header665.us.2:                        ; preds = %polly.loop_header665.us.2.preheader, %polly.loop_header665.us.2
  %polly.indvar669.us.2 = phi i64 [ %polly.indvar_next670.us.2, %polly.loop_header665.us.2 ], [ 0, %polly.loop_header665.us.2.preheader ]
  %767 = add nuw nsw i64 %polly.indvar669.us.2, %510
  %polly.access.mul.call1673.us.2 = mul nsw i64 %767, 1000
  %polly.access.add.call1674.us.2 = add nuw nsw i64 %452, %polly.access.mul.call1673.us.2
  %polly.access.call1675.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.2
  %polly.access.call1675.load.us.2 = load double, double* %polly.access.call1675.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.2 = add nuw nsw i64 %polly.indvar669.us.2, 2400
  %polly.access.Packed_MemRef_call1514.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.2
  store double %polly.access.call1675.load.us.2, double* %polly.access.Packed_MemRef_call1514.us.2, align 8
  %polly.indvar_next670.us.2 = add nuw nsw i64 %polly.indvar669.us.2, 1
  %exitcond1096.2.not = icmp eq i64 %polly.indvar669.us.2, %smin1098
  br i1 %exitcond1096.2.not, label %polly.cond676.loopexit.us.2, label %polly.loop_header665.us.2

polly.cond676.loopexit.us.2:                      ; preds = %polly.loop_header665.us.2
  br i1 %.not929, label %polly.loop_header665.us.3.preheader, label %polly.then678.us.2

polly.then678.us.2:                               ; preds = %polly.cond676.loopexit.us.2
  %polly.access.add.call1682.us.2 = or i64 %542, 2
  %polly.access.call1683.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.2
  %polly.access.call1683.load.us.2 = load double, double* %polly.access.call1683.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.2 = add nsw i64 %540, 2400
  %polly.access.Packed_MemRef_call1514686.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.2
  store double %polly.access.call1683.load.us.2, double* %polly.access.Packed_MemRef_call1514686.us.2, align 8
  br label %polly.loop_header665.us.3.preheader

polly.loop_header665.us.3.preheader:              ; preds = %polly.then678.us.2, %polly.cond676.loopexit.us.2
  br label %polly.loop_header665.us.3

polly.loop_header665.us.3:                        ; preds = %polly.loop_header665.us.3.preheader, %polly.loop_header665.us.3
  %polly.indvar669.us.3 = phi i64 [ %polly.indvar_next670.us.3, %polly.loop_header665.us.3 ], [ 0, %polly.loop_header665.us.3.preheader ]
  %768 = add nuw nsw i64 %polly.indvar669.us.3, %510
  %polly.access.mul.call1673.us.3 = mul nsw i64 %768, 1000
  %polly.access.add.call1674.us.3 = add nuw nsw i64 %453, %polly.access.mul.call1673.us.3
  %polly.access.call1675.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us.3
  %polly.access.call1675.load.us.3 = load double, double* %polly.access.call1675.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514.us.3 = add nuw nsw i64 %polly.indvar669.us.3, 3600
  %polly.access.Packed_MemRef_call1514.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us.3
  store double %polly.access.call1675.load.us.3, double* %polly.access.Packed_MemRef_call1514.us.3, align 8
  %polly.indvar_next670.us.3 = add nuw nsw i64 %polly.indvar669.us.3, 1
  %exitcond1096.3.not = icmp eq i64 %polly.indvar669.us.3, %smin1098
  br i1 %exitcond1096.3.not, label %polly.cond676.loopexit.us.3, label %polly.loop_header665.us.3

polly.cond676.loopexit.us.3:                      ; preds = %polly.loop_header665.us.3
  br i1 %.not929, label %polly.loop_header687.preheader, label %polly.then678.us.3

polly.then678.us.3:                               ; preds = %polly.cond676.loopexit.us.3
  %polly.access.add.call1682.us.3 = or i64 %542, 3
  %polly.access.call1683.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.3
  %polly.access.call1683.load.us.3 = load double, double* %polly.access.call1683.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.3 = add nsw i64 %540, 3600
  %polly.access.Packed_MemRef_call1514686.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.3
  store double %polly.access.call1683.load.us.3, double* %polly.access.Packed_MemRef_call1514686.us.3, align 8
  br label %polly.loop_header687.preheader

polly.loop_header694.us.1:                        ; preds = %polly.loop_header694.us.1.preheader, %polly.loop_header694.us.1
  %polly.indvar698.us.1 = phi i64 [ %polly.indvar_next699.us.1, %polly.loop_header694.us.1 ], [ %polly.indvar698.us.1.ph, %polly.loop_header694.us.1.preheader ]
  %769 = add nuw nsw i64 %polly.indvar698.us.1, %510
  %polly.access.add.Packed_MemRef_call1514702.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1200
  %polly.access.Packed_MemRef_call1514703.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call1514703.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %polly.access.add.Packed_MemRef_call2516710.us.1 = add nuw nsw i64 %769, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %polly.access.Packed_MemRef_call2516711.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call2516711.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %770 = shl i64 %769, 3
  %771 = add i64 %770, %544
  %scevgep717.us.1 = getelementptr i8, i8* %call, i64 %771
  %scevgep717718.us.1 = bitcast i8* %scevgep717.us.1 to double*
  %_p_scalar_719.us.1 = load double, double* %scevgep717718.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_719.us.1
  store double %p_add42.i.us.1, double* %scevgep717718.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1
  %exitcond1099.1.not = icmp eq i64 %polly.indvar698.us.1, %smin1098
  br i1 %exitcond1099.1.not, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1, !llvm.loop !179

polly.loop_exit696.loopexit.us.1:                 ; preds = %polly.loop_header694.us.1, %middle.block1306
  %polly.access.add.Packed_MemRef_call2516706.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.2, %541
  %polly.access.Packed_MemRef_call2516707.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call2516707.us.2, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.2 = add nsw i64 %540, 2400
  %polly.access.Packed_MemRef_call1514715.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call1514715.us.2, align 8
  %min.iters.check1278 = icmp ult i64 %532, 4
  br i1 %min.iters.check1278, label %polly.loop_header694.us.2.preheader, label %vector.memcheck1260

vector.memcheck1260:                              ; preds = %polly.loop_exit696.loopexit.us.1
  %bound01269 = icmp ult i8* %scevgep1262, %scevgep1268
  %bound11270 = icmp ult i8* %scevgep1266, %scevgep1265
  %found.conflict1271 = and i1 %bound01269, %bound11270
  br i1 %found.conflict1271, label %polly.loop_header694.us.2.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %vector.memcheck1260
  %n.vec1281 = and i64 %532, -4
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1275 ]
  %772 = add nuw nsw i64 %index1282, %510
  %773 = add nuw nsw i64 %index1282, 2400
  %774 = getelementptr double, double* %Packed_MemRef_call1514, i64 %773
  %775 = bitcast double* %774 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %775, align 8, !alias.scope !180
  %776 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %777 = add nuw nsw i64 %772, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %778 = getelementptr double, double* %Packed_MemRef_call2516, i64 %777
  %779 = bitcast double* %778 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %779, align 8
  %780 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %781 = shl i64 %772, 3
  %782 = add i64 %781, %544
  %783 = getelementptr i8, i8* %call, i64 %782
  %784 = bitcast i8* %783 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %784, align 8, !alias.scope !183, !noalias !185
  %785 = fadd fast <4 x double> %780, %776
  %786 = fmul fast <4 x double> %785, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %787 = fadd fast <4 x double> %786, %wide.load1292
  %788 = bitcast i8* %783 to <4 x double>*
  store <4 x double> %787, <4 x double>* %788, align 8, !alias.scope !183, !noalias !185
  %index.next1283 = add i64 %index1282, 4
  %789 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %789, label %middle.block1273, label %vector.body1275, !llvm.loop !186

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1285 = icmp eq i64 %532, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2.preheader

polly.loop_header694.us.2.preheader:              ; preds = %vector.memcheck1260, %polly.loop_exit696.loopexit.us.1, %middle.block1273
  %polly.indvar698.us.2.ph = phi i64 [ 0, %vector.memcheck1260 ], [ 0, %polly.loop_exit696.loopexit.us.1 ], [ %n.vec1281, %middle.block1273 ]
  br label %polly.loop_header694.us.2

polly.loop_header694.us.2:                        ; preds = %polly.loop_header694.us.2.preheader, %polly.loop_header694.us.2
  %polly.indvar698.us.2 = phi i64 [ %polly.indvar_next699.us.2, %polly.loop_header694.us.2 ], [ %polly.indvar698.us.2.ph, %polly.loop_header694.us.2.preheader ]
  %790 = add nuw nsw i64 %polly.indvar698.us.2, %510
  %polly.access.add.Packed_MemRef_call1514702.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 2400
  %polly.access.Packed_MemRef_call1514703.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call1514703.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %polly.access.add.Packed_MemRef_call2516710.us.2 = add nuw nsw i64 %790, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %polly.access.Packed_MemRef_call2516711.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call2516711.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %791 = shl i64 %790, 3
  %792 = add i64 %791, %544
  %scevgep717.us.2 = getelementptr i8, i8* %call, i64 %792
  %scevgep717718.us.2 = bitcast i8* %scevgep717.us.2 to double*
  %_p_scalar_719.us.2 = load double, double* %scevgep717718.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_719.us.2
  store double %p_add42.i.us.2, double* %scevgep717718.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 1
  %exitcond1099.2.not = icmp eq i64 %polly.indvar698.us.2, %smin1098
  br i1 %exitcond1099.2.not, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2, !llvm.loop !187

polly.loop_exit696.loopexit.us.2:                 ; preds = %polly.loop_header694.us.2, %middle.block1273
  %polly.access.add.Packed_MemRef_call2516706.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.3, %541
  %polly.access.Packed_MemRef_call2516707.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call2516707.us.3, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.3 = add nsw i64 %540, 3600
  %polly.access.Packed_MemRef_call1514715.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call1514715.us.3, align 8
  %min.iters.check1245 = icmp ult i64 %539, 4
  br i1 %min.iters.check1245, label %polly.loop_header694.us.3.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_exit696.loopexit.us.2
  %n.vec1248 = and i64 %539, -4
  %broadcast.splatinsert1254 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1255 = shufflevector <4 x double> %broadcast.splatinsert1254, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1257 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1258 = shufflevector <4 x double> %broadcast.splatinsert1257, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1240 ]
  %793 = add nuw nsw i64 %index1249, %510
  %794 = add nuw nsw i64 %index1249, 3600
  %795 = getelementptr double, double* %Packed_MemRef_call1514, i64 %794
  %796 = bitcast double* %795 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %796, align 8
  %797 = fmul fast <4 x double> %broadcast.splat1255, %wide.load1253
  %798 = add nuw nsw i64 %793, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %799 = getelementptr double, double* %Packed_MemRef_call2516, i64 %798
  %800 = bitcast double* %799 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %800, align 8
  %801 = fmul fast <4 x double> %broadcast.splat1258, %wide.load1256
  %802 = shl i64 %793, 3
  %803 = add i64 %802, %544
  %804 = getelementptr i8, i8* %call, i64 %803
  %805 = bitcast i8* %804 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %805, align 8, !alias.scope !118, !noalias !120
  %806 = fadd fast <4 x double> %801, %797
  %807 = fmul fast <4 x double> %806, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %808 = fadd fast <4 x double> %807, %wide.load1259
  %809 = bitcast i8* %804 to <4 x double>*
  store <4 x double> %808, <4 x double>* %809, align 8, !alias.scope !118, !noalias !120
  %index.next1250 = add i64 %index1249, 4
  %810 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %810, label %middle.block1238, label %vector.body1240, !llvm.loop !188

middle.block1238:                                 ; preds = %vector.body1240
  %cmp.n1252 = icmp eq i64 %539, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit689, label %polly.loop_header694.us.3.preheader

polly.loop_header694.us.3.preheader:              ; preds = %polly.loop_exit696.loopexit.us.2, %middle.block1238
  %polly.indvar698.us.3.ph = phi i64 [ 0, %polly.loop_exit696.loopexit.us.2 ], [ %n.vec1248, %middle.block1238 ]
  br label %polly.loop_header694.us.3

polly.loop_header694.us.3:                        ; preds = %polly.loop_header694.us.3.preheader, %polly.loop_header694.us.3
  %polly.indvar698.us.3 = phi i64 [ %polly.indvar_next699.us.3, %polly.loop_header694.us.3 ], [ %polly.indvar698.us.3.ph, %polly.loop_header694.us.3.preheader ]
  %811 = add nuw nsw i64 %polly.indvar698.us.3, %510
  %polly.access.add.Packed_MemRef_call1514702.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 3600
  %polly.access.Packed_MemRef_call1514703.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call1514703.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %polly.access.add.Packed_MemRef_call2516710.us.3 = add nuw nsw i64 %811, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %polly.access.Packed_MemRef_call2516711.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call2516711.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %812 = shl i64 %811, 3
  %813 = add i64 %812, %544
  %scevgep717.us.3 = getelementptr i8, i8* %call, i64 %813
  %scevgep717718.us.3 = bitcast i8* %scevgep717.us.3 to double*
  %_p_scalar_719.us.3 = load double, double* %scevgep717718.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_719.us.3
  store double %p_add42.i.us.3, double* %scevgep717718.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next699.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 1
  %exitcond1099.3.not = icmp eq i64 %polly.indvar698.us.3, %smin1098
  br i1 %exitcond1099.3.not, label %polly.loop_exit689, label %polly.loop_header694.us.3, !llvm.loop !189
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
