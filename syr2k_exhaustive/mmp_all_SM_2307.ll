; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2307.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2307.c"
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
  %scevgep1148 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1147 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1146 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1145 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1145, %scevgep1148
  %bound1 = icmp ult i8* %scevgep1147, %scevgep1146
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
  br i1 %exitcond18.not.i, label %vector.ph1152, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1152:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1159 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1160 = shufflevector <4 x i64> %broadcast.splatinsert1159, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1152
  %index1153 = phi i64 [ 0, %vector.ph1152 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1152 ], [ %vec.ind.next1158, %vector.body1151 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1157, %broadcast.splat1160
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1153
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1154, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1151, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1151
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1152, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1214 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1214, label %for.body3.i46.preheader1648, label %vector.ph1215

vector.ph1215:                                    ; preds = %for.body3.i46.preheader
  %n.vec1217 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1218
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1219 = add i64 %index1218, 4
  %46 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %46, label %middle.block1211, label %vector.body1213, !llvm.loop !18

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %indvars.iv21.i, %n.vec1217
  br i1 %cmp.n1221, label %for.inc6.i, label %for.body3.i46.preheader1648

for.body3.i46.preheader1648:                      ; preds = %for.body3.i46.preheader, %middle.block1211
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1217, %middle.block1211 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1648, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1648 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1211, %for.cond1.preheader.i45
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
  %min.iters.check1357 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1357, label %for.body3.i60.preheader1647, label %vector.ph1358

vector.ph1358:                                    ; preds = %for.body3.i60.preheader
  %n.vec1360 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1356 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1361
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1362 = add i64 %index1361, 4
  %57 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %57, label %middle.block1354, label %vector.body1356, !llvm.loop !57

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1364 = icmp eq i64 %indvars.iv21.i52, %n.vec1360
  br i1 %cmp.n1364, label %for.inc6.i63, label %for.body3.i60.preheader1647

for.body3.i60.preheader1647:                      ; preds = %for.body3.i60.preheader, %middle.block1354
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1360, %middle.block1354 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1647, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1647 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1354, %for.cond1.preheader.i54
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
  %min.iters.check1503 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1503, label %for.body3.i99.preheader1646, label %vector.ph1504

vector.ph1504:                                    ; preds = %for.body3.i99.preheader
  %n.vec1506 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1502

vector.body1502:                                  ; preds = %vector.body1502, %vector.ph1504
  %index1507 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1508, %vector.body1502 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1507
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1511, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1508 = add i64 %index1507, 4
  %68 = icmp eq i64 %index.next1508, %n.vec1506
  br i1 %68, label %middle.block1500, label %vector.body1502, !llvm.loop !59

middle.block1500:                                 ; preds = %vector.body1502
  %cmp.n1510 = icmp eq i64 %indvars.iv21.i91, %n.vec1506
  br i1 %cmp.n1510, label %for.inc6.i102, label %for.body3.i99.preheader1646

for.body3.i99.preheader1646:                      ; preds = %for.body3.i99.preheader, %middle.block1500
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1506, %middle.block1500 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1646, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1646 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1500, %for.cond1.preheader.i93
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
  %indvar1515 = phi i64 [ %indvar.next1516, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1515, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1517 = icmp ult i64 %88, 4
  br i1 %min.iters.check1517, label %polly.loop_header192.preheader, label %vector.ph1518

vector.ph1518:                                    ; preds = %polly.loop_header
  %n.vec1520 = and i64 %88, -4
  br label %vector.body1514

vector.body1514:                                  ; preds = %vector.body1514, %vector.ph1518
  %index1521 = phi i64 [ 0, %vector.ph1518 ], [ %index.next1522, %vector.body1514 ]
  %90 = shl nuw nsw i64 %index1521, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1525, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1522 = add i64 %index1521, 4
  %95 = icmp eq i64 %index.next1522, %n.vec1520
  br i1 %95, label %middle.block1512, label %vector.body1514, !llvm.loop !72

middle.block1512:                                 ; preds = %vector.body1514
  %cmp.n1524 = icmp eq i64 %88, %n.vec1520
  br i1 %cmp.n1524, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1512
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1520, %middle.block1512 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1512
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1516 = add i64 %indvar1515, 1
  br i1 %exitcond1053.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1052.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1052.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1051.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1554 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1555 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1587 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1588 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1620 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1050.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1050.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
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
  %umin = call i64 @llvm.umin.i64(i64 %polly.indvar219, i64 11)
  %111 = mul nsw i64 %polly.indvar219, -96
  %112 = icmp slt i64 %111, -1104
  %113 = select i1 %112, i64 %111, i64 -1104
  %114 = add nsw i64 %113, 1199
  %115 = mul nuw nsw i64 %polly.indvar219, 96
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 96
  %exitcond1049.not = icmp eq i64 %polly.indvar_next220, 13
  br i1 %exitcond1049.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %116 = shl nsw i64 %polly.indvar225, 2
  %117 = or i64 %116, 1
  %118 = or i64 %116, 2
  %119 = or i64 %116, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %120 = or i64 %116, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %120, 1200
  %121 = or i64 %116, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %121, 1200
  %122 = or i64 %116, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %122, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1048.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv1036, %polly.loop_header222 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %123 = mul nuw nsw i64 %polly.indvar231, 100
  %124 = add i64 %97, %123
  %smax1629 = call i64 @llvm.smax.i64(i64 %124, i64 0)
  %125 = mul nsw i64 %polly.indvar231, -100
  %126 = add i64 %98, %125
  %127 = add i64 %smax1629, %126
  %128 = mul nuw nsw i64 %polly.indvar231, 800
  %129 = mul nuw nsw i64 %polly.indvar231, 100
  %130 = add i64 %100, %129
  %smax1615 = call i64 @llvm.smax.i64(i64 %130, i64 0)
  %131 = add nuw i64 %99, %smax1615
  %132 = mul nsw i64 %131, 9600
  %133 = add i64 %128, %132
  %134 = or i64 %128, 8
  %135 = add i64 %134, %132
  %136 = mul nsw i64 %polly.indvar231, -100
  %137 = add i64 %99, %136
  %138 = add i64 %smax1615, %137
  %139 = mul nuw nsw i64 %polly.indvar231, 100
  %140 = add i64 %101, %139
  %smax1597 = call i64 @llvm.smax.i64(i64 %140, i64 0)
  %141 = mul nsw i64 %polly.indvar231, -100
  %142 = add i64 %102, %141
  %143 = add i64 %smax1597, %142
  %144 = mul nuw nsw i64 %polly.indvar231, 800
  %145 = mul nuw nsw i64 %polly.indvar231, 100
  %146 = add i64 %104, %145
  %smax1582 = call i64 @llvm.smax.i64(i64 %146, i64 0)
  %147 = add nuw i64 %103, %smax1582
  %148 = mul nsw i64 %147, 9600
  %149 = add i64 %144, %148
  %150 = or i64 %144, 8
  %151 = add i64 %150, %148
  %152 = mul nsw i64 %polly.indvar231, -100
  %153 = add i64 %103, %152
  %154 = add i64 %smax1582, %153
  %155 = mul nuw nsw i64 %polly.indvar231, 100
  %156 = add i64 %105, %155
  %smax1564 = call i64 @llvm.smax.i64(i64 %156, i64 0)
  %157 = mul nsw i64 %polly.indvar231, -100
  %158 = add i64 %106, %157
  %159 = add i64 %smax1564, %158
  %160 = mul nuw nsw i64 %polly.indvar231, 800
  %161 = mul nuw nsw i64 %polly.indvar231, 100
  %162 = add i64 %108, %161
  %smax1549 = call i64 @llvm.smax.i64(i64 %162, i64 0)
  %163 = add nuw i64 %107, %smax1549
  %164 = mul nsw i64 %163, 9600
  %165 = add i64 %160, %164
  %166 = or i64 %160, 8
  %167 = add i64 %166, %164
  %168 = mul nsw i64 %polly.indvar231, -100
  %169 = add i64 %107, %168
  %170 = add i64 %smax1549, %169
  %171 = mul nuw nsw i64 %polly.indvar231, 100
  %172 = add i64 %109, %171
  %smax1529 = call i64 @llvm.smax.i64(i64 %172, i64 0)
  %173 = mul nsw i64 %polly.indvar231, -100
  %174 = add i64 %110, %173
  %175 = add i64 %smax1529, %174
  %176 = mul nuw nsw i64 %polly.indvar231, 100
  %177 = add nsw i64 %176, %111
  %178 = icmp sgt i64 %177, 0
  %179 = select i1 %178, i64 %177, i64 0
  %polly.loop_guard.not = icmp sgt i64 %179, %114
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1034, i64 0)
  %180 = add i64 %smax, %indvars.iv1038
  %181 = sub nsw i64 %115, %176
  %182 = add nuw nsw i64 %176, 100
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, 100
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -100
  %exitcond1047.not = icmp eq i64 %polly.indvar231, %umin
  br i1 %exitcond1047.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1530 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1531, %polly.loop_exit267 ]
  %indvars.iv1040 = phi i64 [ %180, %polly.loop_header234.preheader ], [ %indvars.iv.next1041, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %179, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %183 = add i64 %127, %indvar1530
  %smin1630 = call i64 @llvm.smin.i64(i64 %183, i64 99)
  %184 = add nsw i64 %smin1630, 1
  %185 = mul i64 %indvar1530, 9600
  %186 = add i64 %133, %185
  %scevgep1616 = getelementptr i8, i8* %call, i64 %186
  %187 = add i64 %135, %185
  %scevgep1617 = getelementptr i8, i8* %call, i64 %187
  %188 = add i64 %138, %indvar1530
  %smin1618 = call i64 @llvm.smin.i64(i64 %188, i64 99)
  %189 = shl i64 %smin1618, 3
  %scevgep1619 = getelementptr i8, i8* %scevgep1617, i64 %189
  %scevgep1621 = getelementptr i8, i8* %scevgep1620, i64 %189
  %190 = add i64 %143, %indvar1530
  %smin1598 = call i64 @llvm.smin.i64(i64 %190, i64 99)
  %191 = add nsw i64 %smin1598, 1
  %192 = mul i64 %indvar1530, 9600
  %193 = add i64 %149, %192
  %scevgep1583 = getelementptr i8, i8* %call, i64 %193
  %194 = add i64 %151, %192
  %scevgep1584 = getelementptr i8, i8* %call, i64 %194
  %195 = add i64 %154, %indvar1530
  %smin1585 = call i64 @llvm.smin.i64(i64 %195, i64 99)
  %196 = shl i64 %smin1585, 3
  %scevgep1586 = getelementptr i8, i8* %scevgep1584, i64 %196
  %scevgep1589 = getelementptr i8, i8* %scevgep1588, i64 %196
  %197 = add i64 %159, %indvar1530
  %smin1565 = call i64 @llvm.smin.i64(i64 %197, i64 99)
  %198 = add nsw i64 %smin1565, 1
  %199 = mul i64 %indvar1530, 9600
  %200 = add i64 %165, %199
  %scevgep1550 = getelementptr i8, i8* %call, i64 %200
  %201 = add i64 %167, %199
  %scevgep1551 = getelementptr i8, i8* %call, i64 %201
  %202 = add i64 %170, %indvar1530
  %smin1552 = call i64 @llvm.smin.i64(i64 %202, i64 99)
  %203 = shl i64 %smin1552, 3
  %scevgep1553 = getelementptr i8, i8* %scevgep1551, i64 %203
  %scevgep1556 = getelementptr i8, i8* %scevgep1555, i64 %203
  %204 = add i64 %175, %indvar1530
  %smin1532 = call i64 @llvm.smin.i64(i64 %204, i64 99)
  %205 = add nsw i64 %smin1532, 1
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 99)
  %206 = add nsw i64 %polly.indvar237, %181
  %polly.loop_guard2501140 = icmp sgt i64 %206, -1
  %207 = add nuw nsw i64 %polly.indvar237, %115
  %.not = icmp ult i64 %207, %182
  %polly.access.mul.call1259 = mul nsw i64 %207, 1000
  %208 = add nuw i64 %polly.access.mul.call1259, %116
  br i1 %polly.loop_guard2501140, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %209 = add nuw nsw i64 %polly.indvar251.us, %176
  %polly.access.mul.call1255.us = mul nuw nsw i64 %209, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %116, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar251.us, %smin1044
  br i1 %exitcond1042.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1722, i64 %208
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %206
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1722, i64 %208
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %206
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %208, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %206, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %208, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %206, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %208, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %206, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1526, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %114
  %indvars.iv.next1041 = add i64 %indvars.iv1040, 1
  %indvar.next1531 = add i64 %indvar1530, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %210 = mul i64 %207, 9600
  br i1 %polly.loop_guard2501140, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %207
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %206
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1631 = icmp ult i64 %184, 4
  br i1 %min.iters.check1631, label %polly.loop_header272.us.preheader, label %vector.memcheck1614

vector.memcheck1614:                              ; preds = %polly.loop_header265.us.preheader
  %bound01622 = icmp ult i8* %scevgep1616, %scevgep1621
  %bound11623 = icmp ult i8* %malloccall, %scevgep1619
  %found.conflict1624 = and i1 %bound01622, %bound11623
  br i1 %found.conflict1624, label %polly.loop_header272.us.preheader, label %vector.ph1632

vector.ph1632:                                    ; preds = %vector.memcheck1614
  %n.vec1634 = and i64 %184, -4
  %broadcast.splatinsert1640 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1641 = shufflevector <4 x double> %broadcast.splatinsert1640, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1643 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1644 = shufflevector <4 x double> %broadcast.splatinsert1643, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1628

vector.body1628:                                  ; preds = %vector.body1628, %vector.ph1632
  %index1635 = phi i64 [ 0, %vector.ph1632 ], [ %index.next1636, %vector.body1628 ]
  %211 = add nuw nsw i64 %index1635, %176
  %212 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1635
  %213 = bitcast double* %212 to <4 x double>*
  %wide.load1639 = load <4 x double>, <4 x double>* %213, align 8, !alias.scope !77
  %214 = fmul fast <4 x double> %broadcast.splat1641, %wide.load1639
  %215 = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2283.us
  %216 = getelementptr double, double* %Packed_MemRef_call2, i64 %215
  %217 = bitcast double* %216 to <4 x double>*
  %wide.load1642 = load <4 x double>, <4 x double>* %217, align 8
  %218 = fmul fast <4 x double> %broadcast.splat1644, %wide.load1642
  %219 = shl i64 %211, 3
  %220 = add i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %222, align 8, !alias.scope !80, !noalias !82
  %223 = fadd fast <4 x double> %218, %214
  %224 = fmul fast <4 x double> %223, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %225 = fadd fast <4 x double> %224, %wide.load1645
  %226 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %225, <4 x double>* %226, align 8, !alias.scope !80, !noalias !82
  %index.next1636 = add i64 %index1635, 4
  %227 = icmp eq i64 %index.next1636, %n.vec1634
  br i1 %227, label %middle.block1626, label %vector.body1628, !llvm.loop !83

middle.block1626:                                 ; preds = %vector.body1628
  %cmp.n1638 = icmp eq i64 %184, %n.vec1634
  br i1 %cmp.n1638, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1614, %polly.loop_header265.us.preheader, %middle.block1626
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1614 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1634, %middle.block1626 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %228 = add nuw nsw i64 %polly.indvar276.us, %176
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %228, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %229 = shl i64 %228, 3
  %230 = add i64 %229, %210
  %scevgep295.us = getelementptr i8, i8* %call, i64 %230
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar276.us, %smin1044
  br i1 %exitcond1045.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1626
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %207
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %206, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1599 = icmp ult i64 %191, 4
  br i1 %min.iters.check1599, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1581

vector.memcheck1581:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01590 = icmp ult i8* %scevgep1583, %scevgep1589
  %bound11591 = icmp ult i8* %scevgep1587, %scevgep1586
  %found.conflict1592 = and i1 %bound01590, %bound11591
  br i1 %found.conflict1592, label %polly.loop_header272.us.1.preheader, label %vector.ph1600

vector.ph1600:                                    ; preds = %vector.memcheck1581
  %n.vec1602 = and i64 %191, -4
  %broadcast.splatinsert1608 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1609 = shufflevector <4 x double> %broadcast.splatinsert1608, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1611 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1612 = shufflevector <4 x double> %broadcast.splatinsert1611, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1596

vector.body1596:                                  ; preds = %vector.body1596, %vector.ph1600
  %index1603 = phi i64 [ 0, %vector.ph1600 ], [ %index.next1604, %vector.body1596 ]
  %231 = add nuw nsw i64 %index1603, %176
  %232 = add nuw nsw i64 %index1603, 1200
  %233 = getelementptr double, double* %Packed_MemRef_call1, i64 %232
  %234 = bitcast double* %233 to <4 x double>*
  %wide.load1607 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !85
  %235 = fmul fast <4 x double> %broadcast.splat1609, %wide.load1607
  %236 = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call2283.us.1
  %237 = getelementptr double, double* %Packed_MemRef_call2, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1610 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1612, %wide.load1610
  %240 = shl i64 %231, 3
  %241 = add i64 %240, %210
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  %wide.load1613 = load <4 x double>, <4 x double>* %243, align 8, !alias.scope !88, !noalias !90
  %244 = fadd fast <4 x double> %239, %235
  %245 = fmul fast <4 x double> %244, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %246 = fadd fast <4 x double> %245, %wide.load1613
  %247 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %246, <4 x double>* %247, align 8, !alias.scope !88, !noalias !90
  %index.next1604 = add i64 %index1603, 4
  %248 = icmp eq i64 %index.next1604, %n.vec1602
  br i1 %248, label %middle.block1594, label %vector.body1596, !llvm.loop !91

middle.block1594:                                 ; preds = %vector.body1596
  %cmp.n1606 = icmp eq i64 %191, %n.vec1602
  br i1 %cmp.n1606, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1.preheader

polly.loop_header272.us.1.preheader:              ; preds = %vector.memcheck1581, %polly.loop_exit274.loopexit.us, %middle.block1594
  %polly.indvar276.us.1.ph = phi i64 [ 0, %vector.memcheck1581 ], [ 0, %polly.loop_exit274.loopexit.us ], [ %n.vec1602, %middle.block1594 ]
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
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %249 = add i64 %indvar1369, 1
  %250 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %250
  %min.iters.check1371 = icmp ult i64 %249, 4
  br i1 %min.iters.check1371, label %polly.loop_header394.preheader, label %vector.ph1372

vector.ph1372:                                    ; preds = %polly.loop_header388
  %n.vec1374 = and i64 %249, -4
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1376, %vector.body1368 ]
  %251 = shl nuw nsw i64 %index1375, 3
  %252 = getelementptr i8, i8* %scevgep400, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  %wide.load1379 = load <4 x double>, <4 x double>* %253, align 8, !alias.scope !92, !noalias !94
  %254 = fmul fast <4 x double> %wide.load1379, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %255 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %254, <4 x double>* %255, align 8, !alias.scope !92, !noalias !94
  %index.next1376 = add i64 %index1375, 4
  %256 = icmp eq i64 %index.next1376, %n.vec1374
  br i1 %256, label %middle.block1366, label %vector.body1368, !llvm.loop !99

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1378 = icmp eq i64 %249, %n.vec1374
  br i1 %cmp.n1378, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1366
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1374, %middle.block1366 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1366
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %exitcond1079.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %257 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %257
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1078.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !100

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1077.not, label %polly.loop_header420.preheader, label %polly.loop_header404

polly.loop_header420.preheader:                   ; preds = %polly.loop_exit412
  %scevgep1408 = getelementptr i8, i8* %malloccall302, i64 19200
  %scevgep1409 = getelementptr i8, i8* %malloccall302, i64 19208
  %scevgep1441 = getelementptr i8, i8* %malloccall302, i64 9600
  %scevgep1442 = getelementptr i8, i8* %malloccall302, i64 9608
  %scevgep1474 = getelementptr i8, i8* %malloccall302, i64 8
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
  %exitcond1076.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1076.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit428
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %258 = mul nsw i64 %polly.indvar423, -96
  %259 = mul nuw nsw i64 %polly.indvar423, 96
  %260 = mul nuw nsw i64 %polly.indvar423, 96
  %261 = mul nsw i64 %polly.indvar423, -96
  %262 = mul nsw i64 %polly.indvar423, -96
  %263 = mul nuw nsw i64 %polly.indvar423, 96
  %264 = mul nuw nsw i64 %polly.indvar423, 96
  %265 = mul nsw i64 %polly.indvar423, -96
  %266 = mul nsw i64 %polly.indvar423, -96
  %267 = mul nuw nsw i64 %polly.indvar423, 96
  %268 = mul nuw nsw i64 %polly.indvar423, 96
  %269 = mul nsw i64 %polly.indvar423, -96
  %270 = mul nsw i64 %polly.indvar423, -96
  %271 = mul nuw nsw i64 %polly.indvar423, 96
  %umin1072 = call i64 @llvm.umin.i64(i64 %polly.indvar423, i64 11)
  %272 = mul nsw i64 %polly.indvar423, -96
  %273 = icmp slt i64 %272, -1104
  %274 = select i1 %273, i64 %272, i64 -1104
  %275 = add nsw i64 %274, 1199
  %276 = mul nuw nsw i64 %polly.indvar423, 96
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, -96
  %indvars.iv.next1061 = add nuw nsw i64 %indvars.iv1060, 96
  %exitcond1075.not = icmp eq i64 %polly.indvar_next424, 13
  br i1 %exitcond1075.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %277 = shl nsw i64 %polly.indvar429, 2
  %278 = or i64 %277, 1
  %279 = or i64 %277, 2
  %280 = or i64 %277, 3
  %polly.access.mul.Packed_MemRef_call2305493.us = mul nsw i64 %polly.indvar429, 4800
  %281 = or i64 %277, 1
  %polly.access.mul.Packed_MemRef_call2305493.us.1 = mul nuw nsw i64 %281, 1200
  %282 = or i64 %277, 2
  %polly.access.mul.Packed_MemRef_call2305493.us.2 = mul nuw nsw i64 %282, 1200
  %283 = or i64 %277, 3
  %polly.access.mul.Packed_MemRef_call2305493.us.3 = mul nuw nsw i64 %283, 1200
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit441
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1074.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_exit441, %polly.loop_header426
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit441 ], [ %indvars.iv1060, %polly.loop_header426 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit441 ], [ %indvars.iv1055, %polly.loop_header426 ]
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit441 ], [ 0, %polly.loop_header426 ]
  %284 = mul nuw nsw i64 %polly.indvar435, 100
  %285 = add i64 %258, %284
  %smax1483 = call i64 @llvm.smax.i64(i64 %285, i64 0)
  %286 = mul nsw i64 %polly.indvar435, -100
  %287 = add i64 %259, %286
  %288 = add i64 %smax1483, %287
  %289 = mul nuw nsw i64 %polly.indvar435, 800
  %290 = mul nuw nsw i64 %polly.indvar435, 100
  %291 = add i64 %261, %290
  %smax1469 = call i64 @llvm.smax.i64(i64 %291, i64 0)
  %292 = add nuw i64 %260, %smax1469
  %293 = mul nsw i64 %292, 9600
  %294 = add i64 %289, %293
  %295 = or i64 %289, 8
  %296 = add i64 %295, %293
  %297 = mul nsw i64 %polly.indvar435, -100
  %298 = add i64 %260, %297
  %299 = add i64 %smax1469, %298
  %300 = mul nuw nsw i64 %polly.indvar435, 100
  %301 = add i64 %262, %300
  %smax1451 = call i64 @llvm.smax.i64(i64 %301, i64 0)
  %302 = mul nsw i64 %polly.indvar435, -100
  %303 = add i64 %263, %302
  %304 = add i64 %smax1451, %303
  %305 = mul nuw nsw i64 %polly.indvar435, 800
  %306 = mul nuw nsw i64 %polly.indvar435, 100
  %307 = add i64 %265, %306
  %smax1436 = call i64 @llvm.smax.i64(i64 %307, i64 0)
  %308 = add nuw i64 %264, %smax1436
  %309 = mul nsw i64 %308, 9600
  %310 = add i64 %305, %309
  %311 = or i64 %305, 8
  %312 = add i64 %311, %309
  %313 = mul nsw i64 %polly.indvar435, -100
  %314 = add i64 %264, %313
  %315 = add i64 %smax1436, %314
  %316 = mul nuw nsw i64 %polly.indvar435, 100
  %317 = add i64 %266, %316
  %smax1418 = call i64 @llvm.smax.i64(i64 %317, i64 0)
  %318 = mul nsw i64 %polly.indvar435, -100
  %319 = add i64 %267, %318
  %320 = add i64 %smax1418, %319
  %321 = mul nuw nsw i64 %polly.indvar435, 800
  %322 = mul nuw nsw i64 %polly.indvar435, 100
  %323 = add i64 %269, %322
  %smax1403 = call i64 @llvm.smax.i64(i64 %323, i64 0)
  %324 = add nuw i64 %268, %smax1403
  %325 = mul nsw i64 %324, 9600
  %326 = add i64 %321, %325
  %327 = or i64 %321, 8
  %328 = add i64 %327, %325
  %329 = mul nsw i64 %polly.indvar435, -100
  %330 = add i64 %268, %329
  %331 = add i64 %smax1403, %330
  %332 = mul nuw nsw i64 %polly.indvar435, 100
  %333 = add i64 %270, %332
  %smax1383 = call i64 @llvm.smax.i64(i64 %333, i64 0)
  %334 = mul nsw i64 %polly.indvar435, -100
  %335 = add i64 %271, %334
  %336 = add i64 %smax1383, %335
  %337 = mul nuw nsw i64 %polly.indvar435, 100
  %338 = add nsw i64 %337, %272
  %339 = icmp sgt i64 %338, 0
  %340 = select i1 %339, i64 %338, i64 0
  %polly.loop_guard442.not = icmp sgt i64 %340, %275
  br i1 %polly.loop_guard442.not, label %polly.loop_exit441, label %polly.loop_header439.preheader

polly.loop_header439.preheader:                   ; preds = %polly.loop_header432
  %smax1059 = call i64 @llvm.smax.i64(i64 %indvars.iv1057, i64 0)
  %341 = add i64 %smax1059, %indvars.iv1062
  %342 = sub nsw i64 %276, %337
  %343 = add nuw nsw i64 %337, 100
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit477, %polly.loop_header432
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, 100
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -100
  %exitcond1073.not = icmp eq i64 %polly.indvar435, %umin1072
  br i1 %exitcond1073.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header439:                             ; preds = %polly.loop_header439.preheader, %polly.loop_exit477
  %indvar1384 = phi i64 [ 0, %polly.loop_header439.preheader ], [ %indvar.next1385, %polly.loop_exit477 ]
  %indvars.iv1064 = phi i64 [ %341, %polly.loop_header439.preheader ], [ %indvars.iv.next1065, %polly.loop_exit477 ]
  %polly.indvar443 = phi i64 [ %340, %polly.loop_header439.preheader ], [ %polly.indvar_next444, %polly.loop_exit477 ]
  %344 = add i64 %288, %indvar1384
  %smin1484 = call i64 @llvm.smin.i64(i64 %344, i64 99)
  %345 = add nsw i64 %smin1484, 1
  %346 = mul i64 %indvar1384, 9600
  %347 = add i64 %294, %346
  %scevgep1470 = getelementptr i8, i8* %call, i64 %347
  %348 = add i64 %296, %346
  %scevgep1471 = getelementptr i8, i8* %call, i64 %348
  %349 = add i64 %299, %indvar1384
  %smin1472 = call i64 @llvm.smin.i64(i64 %349, i64 99)
  %350 = shl i64 %smin1472, 3
  %scevgep1473 = getelementptr i8, i8* %scevgep1471, i64 %350
  %scevgep1475 = getelementptr i8, i8* %scevgep1474, i64 %350
  %351 = add i64 %304, %indvar1384
  %smin1452 = call i64 @llvm.smin.i64(i64 %351, i64 99)
  %352 = add nsw i64 %smin1452, 1
  %353 = mul i64 %indvar1384, 9600
  %354 = add i64 %310, %353
  %scevgep1437 = getelementptr i8, i8* %call, i64 %354
  %355 = add i64 %312, %353
  %scevgep1438 = getelementptr i8, i8* %call, i64 %355
  %356 = add i64 %315, %indvar1384
  %smin1439 = call i64 @llvm.smin.i64(i64 %356, i64 99)
  %357 = shl i64 %smin1439, 3
  %scevgep1440 = getelementptr i8, i8* %scevgep1438, i64 %357
  %scevgep1443 = getelementptr i8, i8* %scevgep1442, i64 %357
  %358 = add i64 %320, %indvar1384
  %smin1419 = call i64 @llvm.smin.i64(i64 %358, i64 99)
  %359 = add nsw i64 %smin1419, 1
  %360 = mul i64 %indvar1384, 9600
  %361 = add i64 %326, %360
  %scevgep1404 = getelementptr i8, i8* %call, i64 %361
  %362 = add i64 %328, %360
  %scevgep1405 = getelementptr i8, i8* %call, i64 %362
  %363 = add i64 %331, %indvar1384
  %smin1406 = call i64 @llvm.smin.i64(i64 %363, i64 99)
  %364 = shl i64 %smin1406, 3
  %scevgep1407 = getelementptr i8, i8* %scevgep1405, i64 %364
  %scevgep1410 = getelementptr i8, i8* %scevgep1409, i64 %364
  %365 = add i64 %336, %indvar1384
  %smin1386 = call i64 @llvm.smin.i64(i64 %365, i64 99)
  %366 = add nsw i64 %smin1386, 1
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 99)
  %367 = add nsw i64 %polly.indvar443, %342
  %polly.loop_guard4561141 = icmp sgt i64 %367, -1
  %368 = add nuw nsw i64 %polly.indvar443, %276
  %.not924 = icmp ult i64 %368, %343
  %polly.access.mul.call1469 = mul nsw i64 %368, 1000
  %369 = add nuw i64 %polly.access.mul.call1469, %277
  br i1 %polly.loop_guard4561141, label %polly.loop_header453.us, label %polly.loop_header439.split

polly.loop_header453.us:                          ; preds = %polly.loop_header439, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header439 ]
  %370 = add nuw nsw i64 %polly.indvar457.us, %337
  %polly.access.mul.call1461.us = mul nuw nsw i64 %370, 1000
  %polly.access.add.call1462.us = add nuw nsw i64 %277, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar457.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar457.us, %smin1069
  br i1 %exitcond1067.not, label %polly.cond464.loopexit.us, label %polly.loop_header453.us

polly.then466.us:                                 ; preds = %polly.cond464.loopexit.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1722, i64 %369
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303474.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %367
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1303474.us, align 8
  br label %polly.loop_header453.us.1.preheader

polly.cond464.loopexit.us:                        ; preds = %polly.loop_header453.us
  br i1 %.not924, label %polly.loop_header453.us.1.preheader, label %polly.then466.us

polly.loop_header453.us.1.preheader:              ; preds = %polly.then466.us, %polly.cond464.loopexit.us
  br label %polly.loop_header453.us.1

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %.not924, label %polly.loop_exit477, label %polly.loop_header446.preheader

polly.loop_header446.preheader:                   ; preds = %polly.loop_header439.split
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1722, i64 %369
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303474 = getelementptr double, double* %Packed_MemRef_call1303, i64 %367
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1303474, align 8
  %polly.access.add.call1470.1 = or i64 %369, 1
  %polly.access.call1471.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.1
  %polly.access.call1471.load.1 = load double, double* %polly.access.call1471.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.1 = add nsw i64 %367, 1200
  %polly.access.Packed_MemRef_call1303474.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.1
  store double %polly.access.call1471.load.1, double* %polly.access.Packed_MemRef_call1303474.1, align 8
  %polly.access.add.call1470.2 = or i64 %369, 2
  %polly.access.call1471.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.2
  %polly.access.call1471.load.2 = load double, double* %polly.access.call1471.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.2 = add nsw i64 %367, 2400
  %polly.access.Packed_MemRef_call1303474.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.2
  store double %polly.access.call1471.load.2, double* %polly.access.Packed_MemRef_call1303474.2, align 8
  %polly.access.add.call1470.3 = or i64 %369, 3
  %polly.access.call1471.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.3
  %polly.access.call1471.load.3 = load double, double* %polly.access.call1471.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.3 = add nsw i64 %367, 3600
  %polly.access.Packed_MemRef_call1303474.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.3
  store double %polly.access.call1471.load.3, double* %polly.access.Packed_MemRef_call1303474.3, align 8
  br label %polly.loop_exit477

polly.loop_exit477:                               ; preds = %polly.loop_header482.us.3, %middle.block1380, %polly.loop_header439.split, %polly.loop_header446.preheader, %polly.loop_header475.preheader
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %polly.loop_cond445.not.not = icmp ult i64 %polly.indvar443, %275
  %indvars.iv.next1065 = add i64 %indvars.iv1064, 1
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %polly.loop_cond445.not.not, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header475.preheader:                   ; preds = %polly.cond464.loopexit.us.3, %polly.then466.us.3
  %371 = mul i64 %368, 9600
  br i1 %polly.loop_guard4561141, label %polly.loop_header475.us.preheader, label %polly.loop_exit477

polly.loop_header475.us.preheader:                ; preds = %polly.loop_header475.preheader
  %polly.access.add.Packed_MemRef_call2305494.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us, %368
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %367
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %min.iters.check1485 = icmp ult i64 %345, 4
  br i1 %min.iters.check1485, label %polly.loop_header482.us.preheader, label %vector.memcheck1468

vector.memcheck1468:                              ; preds = %polly.loop_header475.us.preheader
  %bound01476 = icmp ult i8* %scevgep1470, %scevgep1475
  %bound11477 = icmp ult i8* %malloccall302, %scevgep1473
  %found.conflict1478 = and i1 %bound01476, %bound11477
  br i1 %found.conflict1478, label %polly.loop_header482.us.preheader, label %vector.ph1486

vector.ph1486:                                    ; preds = %vector.memcheck1468
  %n.vec1488 = and i64 %345, -4
  %broadcast.splatinsert1494 = insertelement <4 x double> poison, double %_p_scalar_496.us, i32 0
  %broadcast.splat1495 = shufflevector <4 x double> %broadcast.splatinsert1494, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1497 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1498 = shufflevector <4 x double> %broadcast.splatinsert1497, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %vector.ph1486
  %index1489 = phi i64 [ 0, %vector.ph1486 ], [ %index.next1490, %vector.body1482 ]
  %372 = add nuw nsw i64 %index1489, %337
  %373 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1489
  %374 = bitcast double* %373 to <4 x double>*
  %wide.load1493 = load <4 x double>, <4 x double>* %374, align 8, !alias.scope !103
  %375 = fmul fast <4 x double> %broadcast.splat1495, %wide.load1493
  %376 = add nuw nsw i64 %372, %polly.access.mul.Packed_MemRef_call2305493.us
  %377 = getelementptr double, double* %Packed_MemRef_call2305, i64 %376
  %378 = bitcast double* %377 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %378, align 8
  %379 = fmul fast <4 x double> %broadcast.splat1498, %wide.load1496
  %380 = shl i64 %372, 3
  %381 = add i64 %380, %371
  %382 = getelementptr i8, i8* %call, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %383, align 8, !alias.scope !106, !noalias !108
  %384 = fadd fast <4 x double> %379, %375
  %385 = fmul fast <4 x double> %384, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %386 = fadd fast <4 x double> %385, %wide.load1499
  %387 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %386, <4 x double>* %387, align 8, !alias.scope !106, !noalias !108
  %index.next1490 = add i64 %index1489, 4
  %388 = icmp eq i64 %index.next1490, %n.vec1488
  br i1 %388, label %middle.block1480, label %vector.body1482, !llvm.loop !109

middle.block1480:                                 ; preds = %vector.body1482
  %cmp.n1492 = icmp eq i64 %345, %n.vec1488
  br i1 %cmp.n1492, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us.preheader

polly.loop_header482.us.preheader:                ; preds = %vector.memcheck1468, %polly.loop_header475.us.preheader, %middle.block1480
  %polly.indvar486.us.ph = phi i64 [ 0, %vector.memcheck1468 ], [ 0, %polly.loop_header475.us.preheader ], [ %n.vec1488, %middle.block1480 ]
  br label %polly.loop_header482.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.us.preheader, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %polly.indvar486.us.ph, %polly.loop_header482.us.preheader ]
  %389 = add nuw nsw i64 %polly.indvar486.us, %337
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar486.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %polly.access.add.Packed_MemRef_call2305498.us = add nuw nsw i64 %389, %polly.access.mul.Packed_MemRef_call2305493.us
  %polly.access.Packed_MemRef_call2305499.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call2305499.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %390 = shl i64 %389, 3
  %391 = add i64 %390, %371
  %scevgep505.us = getelementptr i8, i8* %call, i64 %391
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar486.us, %smin1069
  br i1 %exitcond1070.not, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us, !llvm.loop !110

polly.loop_exit484.loopexit.us:                   ; preds = %polly.loop_header482.us, %middle.block1480
  %polly.access.add.Packed_MemRef_call2305494.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.1, %368
  %polly.access.Packed_MemRef_call2305495.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.1
  %_p_scalar_496.us.1 = load double, double* %polly.access.Packed_MemRef_call2305495.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.1 = add nsw i64 %367, 1200
  %polly.access.Packed_MemRef_call1303503.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.1
  %_p_scalar_504.us.1 = load double, double* %polly.access.Packed_MemRef_call1303503.us.1, align 8
  %min.iters.check1453 = icmp ult i64 %352, 4
  br i1 %min.iters.check1453, label %polly.loop_header482.us.1.preheader, label %vector.memcheck1435

vector.memcheck1435:                              ; preds = %polly.loop_exit484.loopexit.us
  %bound01444 = icmp ult i8* %scevgep1437, %scevgep1443
  %bound11445 = icmp ult i8* %scevgep1441, %scevgep1440
  %found.conflict1446 = and i1 %bound01444, %bound11445
  br i1 %found.conflict1446, label %polly.loop_header482.us.1.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %vector.memcheck1435
  %n.vec1456 = and i64 %352, -4
  %broadcast.splatinsert1462 = insertelement <4 x double> poison, double %_p_scalar_496.us.1, i32 0
  %broadcast.splat1463 = shufflevector <4 x double> %broadcast.splatinsert1462, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1465 = insertelement <4 x double> poison, double %_p_scalar_504.us.1, i32 0
  %broadcast.splat1466 = shufflevector <4 x double> %broadcast.splatinsert1465, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1450

vector.body1450:                                  ; preds = %vector.body1450, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1458, %vector.body1450 ]
  %392 = add nuw nsw i64 %index1457, %337
  %393 = add nuw nsw i64 %index1457, 1200
  %394 = getelementptr double, double* %Packed_MemRef_call1303, i64 %393
  %395 = bitcast double* %394 to <4 x double>*
  %wide.load1461 = load <4 x double>, <4 x double>* %395, align 8, !alias.scope !111
  %396 = fmul fast <4 x double> %broadcast.splat1463, %wide.load1461
  %397 = add nuw nsw i64 %392, %polly.access.mul.Packed_MemRef_call2305493.us.1
  %398 = getelementptr double, double* %Packed_MemRef_call2305, i64 %397
  %399 = bitcast double* %398 to <4 x double>*
  %wide.load1464 = load <4 x double>, <4 x double>* %399, align 8
  %400 = fmul fast <4 x double> %broadcast.splat1466, %wide.load1464
  %401 = shl i64 %392, 3
  %402 = add i64 %401, %371
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %404, align 8, !alias.scope !114, !noalias !116
  %405 = fadd fast <4 x double> %400, %396
  %406 = fmul fast <4 x double> %405, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %407 = fadd fast <4 x double> %406, %wide.load1467
  %408 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %407, <4 x double>* %408, align 8, !alias.scope !114, !noalias !116
  %index.next1458 = add i64 %index1457, 4
  %409 = icmp eq i64 %index.next1458, %n.vec1456
  br i1 %409, label %middle.block1448, label %vector.body1450, !llvm.loop !117

middle.block1448:                                 ; preds = %vector.body1450
  %cmp.n1460 = icmp eq i64 %352, %n.vec1456
  br i1 %cmp.n1460, label %polly.loop_exit484.loopexit.us.1, label %polly.loop_header482.us.1.preheader

polly.loop_header482.us.1.preheader:              ; preds = %vector.memcheck1435, %polly.loop_exit484.loopexit.us, %middle.block1448
  %polly.indvar486.us.1.ph = phi i64 [ 0, %vector.memcheck1435 ], [ 0, %polly.loop_exit484.loopexit.us ], [ %n.vec1456, %middle.block1448 ]
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
  %410 = add i64 %indvar, 1
  %411 = mul nuw nsw i64 %polly.indvar601, 9600
  %scevgep610 = getelementptr i8, i8* %call, i64 %411
  %min.iters.check1225 = icmp ult i64 %410, 4
  br i1 %min.iters.check1225, label %polly.loop_header604.preheader, label %vector.ph1226

vector.ph1226:                                    ; preds = %polly.loop_header598
  %n.vec1228 = and i64 %410, -4
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1224 ]
  %412 = shl nuw nsw i64 %index1229, 3
  %413 = getelementptr i8, i8* %scevgep610, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %414, align 8, !alias.scope !118, !noalias !120
  %415 = fmul fast <4 x double> %wide.load1233, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %416 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %415, <4 x double>* %416, align 8, !alias.scope !118, !noalias !120
  %index.next1230 = add i64 %index1229, 4
  %417 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %417, label %middle.block1222, label %vector.body1224, !llvm.loop !125

middle.block1222:                                 ; preds = %vector.body1224
  %cmp.n1232 = icmp eq i64 %410, %n.vec1228
  br i1 %cmp.n1232, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1222
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1228, %middle.block1222 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1222
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next602, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1105.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %418 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %418
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1104.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !126

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar617, 1200
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next618, 1000
  br i1 %exitcond1103.not, label %polly.loop_header630.preheader, label %polly.loop_header614

polly.loop_header630.preheader:                   ; preds = %polly.loop_exit622
  %scevgep1262 = getelementptr i8, i8* %malloccall512, i64 19200
  %scevgep1263 = getelementptr i8, i8* %malloccall512, i64 19208
  %scevgep1295 = getelementptr i8, i8* %malloccall512, i64 9600
  %scevgep1296 = getelementptr i8, i8* %malloccall512, i64 9608
  %scevgep1328 = getelementptr i8, i8* %malloccall512, i64 8
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
  %exitcond1102.not = icmp eq i64 %polly.indvar_next624, 1200
  br i1 %exitcond1102.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header630:                             ; preds = %polly.loop_header630.preheader, %polly.loop_exit638
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit638 ], [ 0, %polly.loop_header630.preheader ]
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit638 ], [ 0, %polly.loop_header630.preheader ]
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit638 ], [ 0, %polly.loop_header630.preheader ]
  %419 = mul nsw i64 %polly.indvar633, -96
  %420 = mul nuw nsw i64 %polly.indvar633, 96
  %421 = mul nuw nsw i64 %polly.indvar633, 96
  %422 = mul nsw i64 %polly.indvar633, -96
  %423 = mul nsw i64 %polly.indvar633, -96
  %424 = mul nuw nsw i64 %polly.indvar633, 96
  %425 = mul nuw nsw i64 %polly.indvar633, 96
  %426 = mul nsw i64 %polly.indvar633, -96
  %427 = mul nsw i64 %polly.indvar633, -96
  %428 = mul nuw nsw i64 %polly.indvar633, 96
  %429 = mul nuw nsw i64 %polly.indvar633, 96
  %430 = mul nsw i64 %polly.indvar633, -96
  %431 = mul nsw i64 %polly.indvar633, -96
  %432 = mul nuw nsw i64 %polly.indvar633, 96
  %umin1098 = call i64 @llvm.umin.i64(i64 %polly.indvar633, i64 11)
  %433 = mul nsw i64 %polly.indvar633, -96
  %434 = icmp slt i64 %433, -1104
  %435 = select i1 %434, i64 %433, i64 -1104
  %436 = add nsw i64 %435, 1199
  %437 = mul nuw nsw i64 %polly.indvar633, 96
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_exit644
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, -96
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 96
  %exitcond1101.not = icmp eq i64 %polly.indvar_next634, 13
  br i1 %exitcond1101.not, label %polly.exiting511, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_exit644, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_exit644 ]
  %438 = shl nsw i64 %polly.indvar639, 2
  %439 = or i64 %438, 1
  %440 = or i64 %438, 2
  %441 = or i64 %438, 3
  %polly.access.mul.Packed_MemRef_call2515703.us = mul nsw i64 %polly.indvar639, 4800
  %442 = or i64 %438, 1
  %polly.access.mul.Packed_MemRef_call2515703.us.1 = mul nuw nsw i64 %442, 1200
  %443 = or i64 %438, 2
  %polly.access.mul.Packed_MemRef_call2515703.us.2 = mul nuw nsw i64 %443, 1200
  %444 = or i64 %438, 3
  %polly.access.mul.Packed_MemRef_call2515703.us.3 = mul nuw nsw i64 %444, 1200
  br label %polly.loop_header642

polly.loop_exit644:                               ; preds = %polly.loop_exit651
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next640, 250
  br i1 %exitcond1100.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header642:                             ; preds = %polly.loop_exit651, %polly.loop_header636
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit651 ], [ %indvars.iv1086, %polly.loop_header636 ]
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit651 ], [ %indvars.iv1081, %polly.loop_header636 ]
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_exit651 ], [ 0, %polly.loop_header636 ]
  %445 = mul nuw nsw i64 %polly.indvar645, 100
  %446 = add i64 %419, %445
  %smax1337 = call i64 @llvm.smax.i64(i64 %446, i64 0)
  %447 = mul nsw i64 %polly.indvar645, -100
  %448 = add i64 %420, %447
  %449 = add i64 %smax1337, %448
  %450 = mul nuw nsw i64 %polly.indvar645, 800
  %451 = mul nuw nsw i64 %polly.indvar645, 100
  %452 = add i64 %422, %451
  %smax1323 = call i64 @llvm.smax.i64(i64 %452, i64 0)
  %453 = add nuw i64 %421, %smax1323
  %454 = mul nsw i64 %453, 9600
  %455 = add i64 %450, %454
  %456 = or i64 %450, 8
  %457 = add i64 %456, %454
  %458 = mul nsw i64 %polly.indvar645, -100
  %459 = add i64 %421, %458
  %460 = add i64 %smax1323, %459
  %461 = mul nuw nsw i64 %polly.indvar645, 100
  %462 = add i64 %423, %461
  %smax1305 = call i64 @llvm.smax.i64(i64 %462, i64 0)
  %463 = mul nsw i64 %polly.indvar645, -100
  %464 = add i64 %424, %463
  %465 = add i64 %smax1305, %464
  %466 = mul nuw nsw i64 %polly.indvar645, 800
  %467 = mul nuw nsw i64 %polly.indvar645, 100
  %468 = add i64 %426, %467
  %smax1290 = call i64 @llvm.smax.i64(i64 %468, i64 0)
  %469 = add nuw i64 %425, %smax1290
  %470 = mul nsw i64 %469, 9600
  %471 = add i64 %466, %470
  %472 = or i64 %466, 8
  %473 = add i64 %472, %470
  %474 = mul nsw i64 %polly.indvar645, -100
  %475 = add i64 %425, %474
  %476 = add i64 %smax1290, %475
  %477 = mul nuw nsw i64 %polly.indvar645, 100
  %478 = add i64 %427, %477
  %smax1272 = call i64 @llvm.smax.i64(i64 %478, i64 0)
  %479 = mul nsw i64 %polly.indvar645, -100
  %480 = add i64 %428, %479
  %481 = add i64 %smax1272, %480
  %482 = mul nuw nsw i64 %polly.indvar645, 800
  %483 = mul nuw nsw i64 %polly.indvar645, 100
  %484 = add i64 %430, %483
  %smax1257 = call i64 @llvm.smax.i64(i64 %484, i64 0)
  %485 = add nuw i64 %429, %smax1257
  %486 = mul nsw i64 %485, 9600
  %487 = add i64 %482, %486
  %488 = or i64 %482, 8
  %489 = add i64 %488, %486
  %490 = mul nsw i64 %polly.indvar645, -100
  %491 = add i64 %429, %490
  %492 = add i64 %smax1257, %491
  %493 = mul nuw nsw i64 %polly.indvar645, 100
  %494 = add i64 %431, %493
  %smax1237 = call i64 @llvm.smax.i64(i64 %494, i64 0)
  %495 = mul nsw i64 %polly.indvar645, -100
  %496 = add i64 %432, %495
  %497 = add i64 %smax1237, %496
  %498 = mul nuw nsw i64 %polly.indvar645, 100
  %499 = add nsw i64 %498, %433
  %500 = icmp sgt i64 %499, 0
  %501 = select i1 %500, i64 %499, i64 0
  %polly.loop_guard652.not = icmp sgt i64 %501, %436
  br i1 %polly.loop_guard652.not, label %polly.loop_exit651, label %polly.loop_header649.preheader

polly.loop_header649.preheader:                   ; preds = %polly.loop_header642
  %smax1085 = call i64 @llvm.smax.i64(i64 %indvars.iv1083, i64 0)
  %502 = add i64 %smax1085, %indvars.iv1088
  %503 = sub nsw i64 %437, %498
  %504 = add nuw nsw i64 %498, 100
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit687, %polly.loop_header642
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, 100
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -100
  %exitcond1099.not = icmp eq i64 %polly.indvar645, %umin1098
  br i1 %exitcond1099.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit687
  %indvar1238 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvar.next1239, %polly.loop_exit687 ]
  %indvars.iv1090 = phi i64 [ %502, %polly.loop_header649.preheader ], [ %indvars.iv.next1091, %polly.loop_exit687 ]
  %polly.indvar653 = phi i64 [ %501, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit687 ]
  %505 = add i64 %449, %indvar1238
  %smin1338 = call i64 @llvm.smin.i64(i64 %505, i64 99)
  %506 = add nsw i64 %smin1338, 1
  %507 = mul i64 %indvar1238, 9600
  %508 = add i64 %455, %507
  %scevgep1324 = getelementptr i8, i8* %call, i64 %508
  %509 = add i64 %457, %507
  %scevgep1325 = getelementptr i8, i8* %call, i64 %509
  %510 = add i64 %460, %indvar1238
  %smin1326 = call i64 @llvm.smin.i64(i64 %510, i64 99)
  %511 = shl i64 %smin1326, 3
  %scevgep1327 = getelementptr i8, i8* %scevgep1325, i64 %511
  %scevgep1329 = getelementptr i8, i8* %scevgep1328, i64 %511
  %512 = add i64 %465, %indvar1238
  %smin1306 = call i64 @llvm.smin.i64(i64 %512, i64 99)
  %513 = add nsw i64 %smin1306, 1
  %514 = mul i64 %indvar1238, 9600
  %515 = add i64 %471, %514
  %scevgep1291 = getelementptr i8, i8* %call, i64 %515
  %516 = add i64 %473, %514
  %scevgep1292 = getelementptr i8, i8* %call, i64 %516
  %517 = add i64 %476, %indvar1238
  %smin1293 = call i64 @llvm.smin.i64(i64 %517, i64 99)
  %518 = shl i64 %smin1293, 3
  %scevgep1294 = getelementptr i8, i8* %scevgep1292, i64 %518
  %scevgep1297 = getelementptr i8, i8* %scevgep1296, i64 %518
  %519 = add i64 %481, %indvar1238
  %smin1273 = call i64 @llvm.smin.i64(i64 %519, i64 99)
  %520 = add nsw i64 %smin1273, 1
  %521 = mul i64 %indvar1238, 9600
  %522 = add i64 %487, %521
  %scevgep1258 = getelementptr i8, i8* %call, i64 %522
  %523 = add i64 %489, %521
  %scevgep1259 = getelementptr i8, i8* %call, i64 %523
  %524 = add i64 %492, %indvar1238
  %smin1260 = call i64 @llvm.smin.i64(i64 %524, i64 99)
  %525 = shl i64 %smin1260, 3
  %scevgep1261 = getelementptr i8, i8* %scevgep1259, i64 %525
  %scevgep1264 = getelementptr i8, i8* %scevgep1263, i64 %525
  %526 = add i64 %497, %indvar1238
  %smin1240 = call i64 @llvm.smin.i64(i64 %526, i64 99)
  %527 = add nsw i64 %smin1240, 1
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1090, i64 99)
  %528 = add nsw i64 %polly.indvar653, %503
  %polly.loop_guard6661142 = icmp sgt i64 %528, -1
  %529 = add nuw nsw i64 %polly.indvar653, %437
  %.not925 = icmp ult i64 %529, %504
  %polly.access.mul.call1679 = mul nsw i64 %529, 1000
  %530 = add nuw i64 %polly.access.mul.call1679, %438
  br i1 %polly.loop_guard6661142, label %polly.loop_header663.us, label %polly.loop_header649.split

polly.loop_header663.us:                          ; preds = %polly.loop_header649, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header649 ]
  %531 = add nuw nsw i64 %polly.indvar667.us, %498
  %polly.access.mul.call1671.us = mul nuw nsw i64 %531, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %438, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.indvar667.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar667.us, %smin1095
  br i1 %exitcond1093.not, label %polly.cond674.loopexit.us, label %polly.loop_header663.us

polly.then676.us:                                 ; preds = %polly.cond674.loopexit.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1722, i64 %530
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1513684.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %528
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1513684.us, align 8
  br label %polly.loop_header663.us.1.preheader

polly.cond674.loopexit.us:                        ; preds = %polly.loop_header663.us
  br i1 %.not925, label %polly.loop_header663.us.1.preheader, label %polly.then676.us

polly.loop_header663.us.1.preheader:              ; preds = %polly.then676.us, %polly.cond674.loopexit.us
  br label %polly.loop_header663.us.1

polly.loop_header649.split:                       ; preds = %polly.loop_header649
  br i1 %.not925, label %polly.loop_exit687, label %polly.loop_header656.preheader

polly.loop_header656.preheader:                   ; preds = %polly.loop_header649.split
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1722, i64 %530
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1513684 = getelementptr double, double* %Packed_MemRef_call1513, i64 %528
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1513684, align 8
  %polly.access.add.call1680.1 = or i64 %530, 1
  %polly.access.call1681.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.1
  %polly.access.call1681.load.1 = load double, double* %polly.access.call1681.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.1 = add nsw i64 %528, 1200
  %polly.access.Packed_MemRef_call1513684.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.1
  store double %polly.access.call1681.load.1, double* %polly.access.Packed_MemRef_call1513684.1, align 8
  %polly.access.add.call1680.2 = or i64 %530, 2
  %polly.access.call1681.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.2
  %polly.access.call1681.load.2 = load double, double* %polly.access.call1681.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.2 = add nsw i64 %528, 2400
  %polly.access.Packed_MemRef_call1513684.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.2
  store double %polly.access.call1681.load.2, double* %polly.access.Packed_MemRef_call1513684.2, align 8
  %polly.access.add.call1680.3 = or i64 %530, 3
  %polly.access.call1681.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.3
  %polly.access.call1681.load.3 = load double, double* %polly.access.call1681.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.3 = add nsw i64 %528, 3600
  %polly.access.Packed_MemRef_call1513684.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.3
  store double %polly.access.call1681.load.3, double* %polly.access.Packed_MemRef_call1513684.3, align 8
  br label %polly.loop_exit687

polly.loop_exit687:                               ; preds = %polly.loop_header692.us.3, %middle.block1234, %polly.loop_header649.split, %polly.loop_header656.preheader, %polly.loop_header685.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655.not.not = icmp ult i64 %polly.indvar653, %436
  %indvars.iv.next1091 = add i64 %indvars.iv1090, 1
  %indvar.next1239 = add i64 %indvar1238, 1
  br i1 %polly.loop_cond655.not.not, label %polly.loop_header649, label %polly.loop_exit651

polly.loop_header685.preheader:                   ; preds = %polly.cond674.loopexit.us.3, %polly.then676.us.3
  %532 = mul i64 %529, 9600
  br i1 %polly.loop_guard6661142, label %polly.loop_header685.us.preheader, label %polly.loop_exit687

polly.loop_header685.us.preheader:                ; preds = %polly.loop_header685.preheader
  %polly.access.add.Packed_MemRef_call2515704.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us, %529
  %polly.access.Packed_MemRef_call2515705.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2515705.us, align 8
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %528
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %min.iters.check1339 = icmp ult i64 %506, 4
  br i1 %min.iters.check1339, label %polly.loop_header692.us.preheader, label %vector.memcheck1322

vector.memcheck1322:                              ; preds = %polly.loop_header685.us.preheader
  %bound01330 = icmp ult i8* %scevgep1324, %scevgep1329
  %bound11331 = icmp ult i8* %malloccall512, %scevgep1327
  %found.conflict1332 = and i1 %bound01330, %bound11331
  br i1 %found.conflict1332, label %polly.loop_header692.us.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %vector.memcheck1322
  %n.vec1342 = and i64 %506, -4
  %broadcast.splatinsert1348 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1349 = shufflevector <4 x double> %broadcast.splatinsert1348, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1351 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1352 = shufflevector <4 x double> %broadcast.splatinsert1351, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1336 ]
  %533 = add nuw nsw i64 %index1343, %498
  %534 = getelementptr double, double* %Packed_MemRef_call1513, i64 %index1343
  %535 = bitcast double* %534 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %535, align 8, !alias.scope !129
  %536 = fmul fast <4 x double> %broadcast.splat1349, %wide.load1347
  %537 = add nuw nsw i64 %533, %polly.access.mul.Packed_MemRef_call2515703.us
  %538 = getelementptr double, double* %Packed_MemRef_call2515, i64 %537
  %539 = bitcast double* %538 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %539, align 8
  %540 = fmul fast <4 x double> %broadcast.splat1352, %wide.load1350
  %541 = shl i64 %533, 3
  %542 = add i64 %541, %532
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %544, align 8, !alias.scope !132, !noalias !134
  %545 = fadd fast <4 x double> %540, %536
  %546 = fmul fast <4 x double> %545, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %547 = fadd fast <4 x double> %546, %wide.load1353
  %548 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %547, <4 x double>* %548, align 8, !alias.scope !132, !noalias !134
  %index.next1344 = add i64 %index1343, 4
  %549 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %549, label %middle.block1334, label %vector.body1336, !llvm.loop !135

middle.block1334:                                 ; preds = %vector.body1336
  %cmp.n1346 = icmp eq i64 %506, %n.vec1342
  br i1 %cmp.n1346, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %vector.memcheck1322, %polly.loop_header685.us.preheader, %middle.block1334
  %polly.indvar696.us.ph = phi i64 [ 0, %vector.memcheck1322 ], [ 0, %polly.loop_header685.us.preheader ], [ %n.vec1342, %middle.block1334 ]
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %550 = add nuw nsw i64 %polly.indvar696.us, %498
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.indvar696.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.add.Packed_MemRef_call2515708.us = add nuw nsw i64 %550, %polly.access.mul.Packed_MemRef_call2515703.us
  %polly.access.Packed_MemRef_call2515709.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2515709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %551 = shl i64 %550, 3
  %552 = add i64 %551, %532
  %scevgep715.us = getelementptr i8, i8* %call, i64 %552
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar696.us, %smin1095
  br i1 %exitcond1096.not, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us, !llvm.loop !136

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_header692.us, %middle.block1334
  %polly.access.add.Packed_MemRef_call2515704.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.1, %529
  %polly.access.Packed_MemRef_call2515705.us.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.1
  %_p_scalar_706.us.1 = load double, double* %polly.access.Packed_MemRef_call2515705.us.1, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.1 = add nsw i64 %528, 1200
  %polly.access.Packed_MemRef_call1513713.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call1513713.us.1, align 8
  %min.iters.check1307 = icmp ult i64 %513, 4
  br i1 %min.iters.check1307, label %polly.loop_header692.us.1.preheader, label %vector.memcheck1289

vector.memcheck1289:                              ; preds = %polly.loop_exit694.loopexit.us
  %bound01298 = icmp ult i8* %scevgep1291, %scevgep1297
  %bound11299 = icmp ult i8* %scevgep1295, %scevgep1294
  %found.conflict1300 = and i1 %bound01298, %bound11299
  br i1 %found.conflict1300, label %polly.loop_header692.us.1.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %vector.memcheck1289
  %n.vec1310 = and i64 %513, -4
  %broadcast.splatinsert1316 = insertelement <4 x double> poison, double %_p_scalar_706.us.1, i32 0
  %broadcast.splat1317 = shufflevector <4 x double> %broadcast.splatinsert1316, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1319 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1320 = shufflevector <4 x double> %broadcast.splatinsert1319, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1304 ]
  %553 = add nuw nsw i64 %index1311, %498
  %554 = add nuw nsw i64 %index1311, 1200
  %555 = getelementptr double, double* %Packed_MemRef_call1513, i64 %554
  %556 = bitcast double* %555 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %556, align 8, !alias.scope !137
  %557 = fmul fast <4 x double> %broadcast.splat1317, %wide.load1315
  %558 = add nuw nsw i64 %553, %polly.access.mul.Packed_MemRef_call2515703.us.1
  %559 = getelementptr double, double* %Packed_MemRef_call2515, i64 %558
  %560 = bitcast double* %559 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %560, align 8
  %561 = fmul fast <4 x double> %broadcast.splat1320, %wide.load1318
  %562 = shl i64 %553, 3
  %563 = add i64 %562, %532
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %565, align 8, !alias.scope !140, !noalias !142
  %566 = fadd fast <4 x double> %561, %557
  %567 = fmul fast <4 x double> %566, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %568 = fadd fast <4 x double> %567, %wide.load1321
  %569 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %568, <4 x double>* %569, align 8, !alias.scope !140, !noalias !142
  %index.next1312 = add i64 %index1311, 4
  %570 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %570, label %middle.block1302, label %vector.body1304, !llvm.loop !143

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1314 = icmp eq i64 %513, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit694.loopexit.us.1, label %polly.loop_header692.us.1.preheader

polly.loop_header692.us.1.preheader:              ; preds = %vector.memcheck1289, %polly.loop_exit694.loopexit.us, %middle.block1302
  %polly.indvar696.us.1.ph = phi i64 [ 0, %vector.memcheck1289 ], [ 0, %polly.loop_exit694.loopexit.us ], [ %n.vec1310, %middle.block1302 ]
  br label %polly.loop_header692.us.1

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1132 = call i64 @llvm.smin.i64(i64 %indvars.iv1130, i64 -1168)
  %571 = shl nsw i64 %polly.indvar847, 5
  %572 = add nsw i64 %smin1132, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -32
  %exitcond1135.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1135.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %573 = mul nsw i64 %polly.indvar853, -32
  %smin = call i64 @llvm.smin.i64(i64 %573, i64 -1168)
  %574 = add nsw i64 %smin, 1200
  %smin1128 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 -1168)
  %575 = shl nsw i64 %polly.indvar853, 5
  %576 = add nsw i64 %smin1128, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -32
  %exitcond1134.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1134.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %577 = add nuw nsw i64 %polly.indvar859, %571
  %578 = trunc i64 %577 to i32
  %579 = mul nuw nsw i64 %577, 9600
  %min.iters.check = icmp eq i64 %574, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1164

vector.ph1164:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1171 = insertelement <4 x i64> poison, i64 %575, i32 0
  %broadcast.splat1172 = shufflevector <4 x i64> %broadcast.splatinsert1171, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %578, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %vector.ph1164
  %index1165 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1164 ], [ %vec.ind.next1170, %vector.body1163 ]
  %580 = add nuw nsw <4 x i64> %vec.ind1169, %broadcast.splat1172
  %581 = trunc <4 x i64> %580 to <4 x i32>
  %582 = mul <4 x i32> %broadcast.splat1174, %581
  %583 = add <4 x i32> %582, <i32 3, i32 3, i32 3, i32 3>
  %584 = urem <4 x i32> %583, <i32 1200, i32 1200, i32 1200, i32 1200>
  %585 = sitofp <4 x i32> %584 to <4 x double>
  %586 = fmul fast <4 x double> %585, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %587 = extractelement <4 x i64> %580, i32 0
  %588 = shl i64 %587, 3
  %589 = add nuw nsw i64 %588, %579
  %590 = getelementptr i8, i8* %call, i64 %589
  %591 = bitcast i8* %590 to <4 x double>*
  store <4 x double> %586, <4 x double>* %591, align 8, !alias.scope !144, !noalias !146
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %592 = icmp eq i64 %index.next1166, %574
  br i1 %592, label %polly.loop_exit864, label %vector.body1163, !llvm.loop !149

polly.loop_exit864:                               ; preds = %vector.body1163, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar859, %572
  br i1 %exitcond1133.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %593 = add nuw nsw i64 %polly.indvar865, %575
  %594 = trunc i64 %593 to i32
  %595 = mul i32 %594, %578
  %596 = add i32 %595, 3
  %597 = urem i32 %596, 1200
  %p_conv31.i = sitofp i32 %597 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %598 = shl i64 %593, 3
  %599 = add nuw nsw i64 %598, %579
  %scevgep868 = getelementptr i8, i8* %call, i64 %599
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar865, %576
  br i1 %exitcond1129.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !150

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1122 = call i64 @llvm.smin.i64(i64 %indvars.iv1120, i64 -1168)
  %600 = shl nsw i64 %polly.indvar874, 5
  %601 = add nsw i64 %smin1122, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -32
  %exitcond1125.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1125.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %602 = mul nsw i64 %polly.indvar880, -32
  %smin1178 = call i64 @llvm.smin.i64(i64 %602, i64 -968)
  %603 = add nsw i64 %smin1178, 1000
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -968)
  %604 = shl nsw i64 %polly.indvar880, 5
  %605 = add nsw i64 %smin1118, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1124.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1124.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %606 = add nuw nsw i64 %polly.indvar886, %600
  %607 = trunc i64 %606 to i32
  %608 = mul nuw nsw i64 %606, 8000
  %min.iters.check1179 = icmp eq i64 %603, 0
  br i1 %min.iters.check1179, label %polly.loop_header889, label %vector.ph1180

vector.ph1180:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1189 = insertelement <4 x i64> poison, i64 %604, i32 0
  %broadcast.splat1190 = shufflevector <4 x i64> %broadcast.splatinsert1189, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %607, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1180
  %index1183 = phi i64 [ 0, %vector.ph1180 ], [ %index.next1184, %vector.body1177 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1180 ], [ %vec.ind.next1188, %vector.body1177 ]
  %609 = add nuw nsw <4 x i64> %vec.ind1187, %broadcast.splat1190
  %610 = trunc <4 x i64> %609 to <4 x i32>
  %611 = mul <4 x i32> %broadcast.splat1192, %610
  %612 = add <4 x i32> %611, <i32 2, i32 2, i32 2, i32 2>
  %613 = urem <4 x i32> %612, <i32 1000, i32 1000, i32 1000, i32 1000>
  %614 = sitofp <4 x i32> %613 to <4 x double>
  %615 = fmul fast <4 x double> %614, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %616 = extractelement <4 x i64> %609, i32 0
  %617 = shl i64 %616, 3
  %618 = add nuw nsw i64 %617, %608
  %619 = getelementptr i8, i8* %call2, i64 %618
  %620 = bitcast i8* %619 to <4 x double>*
  store <4 x double> %615, <4 x double>* %620, align 8, !alias.scope !148, !noalias !151
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %621 = icmp eq i64 %index.next1184, %603
  br i1 %621, label %polly.loop_exit891, label %vector.body1177, !llvm.loop !152

polly.loop_exit891:                               ; preds = %vector.body1177, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar886, %601
  br i1 %exitcond1123.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %622 = add nuw nsw i64 %polly.indvar892, %604
  %623 = trunc i64 %622 to i32
  %624 = mul i32 %623, %607
  %625 = add i32 %624, 2
  %626 = urem i32 %625, 1000
  %p_conv10.i = sitofp i32 %626 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %627 = shl i64 %622, 3
  %628 = add nuw nsw i64 %627, %608
  %scevgep895 = getelementptr i8, i8* %call2, i64 %628
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar892, %605
  br i1 %exitcond1119.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !153

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -1168)
  %629 = shl nsw i64 %polly.indvar900, 5
  %630 = add nsw i64 %smin1112, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1115.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1115.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %631 = mul nsw i64 %polly.indvar906, -32
  %smin1196 = call i64 @llvm.smin.i64(i64 %631, i64 -968)
  %632 = add nsw i64 %smin1196, 1000
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 -968)
  %633 = shl nsw i64 %polly.indvar906, 5
  %634 = add nsw i64 %smin1108, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1107 = add nsw i64 %indvars.iv1106, -32
  %exitcond1114.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1114.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %635 = add nuw nsw i64 %polly.indvar912, %629
  %636 = trunc i64 %635 to i32
  %637 = mul nuw nsw i64 %635, 8000
  %min.iters.check1197 = icmp eq i64 %632, 0
  br i1 %min.iters.check1197, label %polly.loop_header915, label %vector.ph1198

vector.ph1198:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %633, i32 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %636, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1195 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1198 ], [ %vec.ind.next1206, %vector.body1195 ]
  %638 = add nuw nsw <4 x i64> %vec.ind1205, %broadcast.splat1208
  %639 = trunc <4 x i64> %638 to <4 x i32>
  %640 = mul <4 x i32> %broadcast.splat1210, %639
  %641 = add <4 x i32> %640, <i32 1, i32 1, i32 1, i32 1>
  %642 = urem <4 x i32> %641, <i32 1200, i32 1200, i32 1200, i32 1200>
  %643 = sitofp <4 x i32> %642 to <4 x double>
  %644 = fmul fast <4 x double> %643, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %645 = extractelement <4 x i64> %638, i32 0
  %646 = shl i64 %645, 3
  %647 = add nuw nsw i64 %646, %637
  %648 = getelementptr i8, i8* %call1, i64 %647
  %649 = bitcast i8* %648 to <4 x double>*
  store <4 x double> %644, <4 x double>* %649, align 8, !alias.scope !147, !noalias !154
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %650 = icmp eq i64 %index.next1202, %632
  br i1 %650, label %polly.loop_exit917, label %vector.body1195, !llvm.loop !155

polly.loop_exit917:                               ; preds = %vector.body1195, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar912, %630
  br i1 %exitcond1113.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %651 = add nuw nsw i64 %polly.indvar918, %633
  %652 = trunc i64 %651 to i32
  %653 = mul i32 %652, %636
  %654 = add i32 %653, 1
  %655 = urem i32 %654, 1200
  %p_conv.i = sitofp i32 %655 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %656 = shl i64 %651, 3
  %657 = add nuw nsw i64 %656, %637
  %scevgep922 = getelementptr i8, i8* %call1, i64 %657
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar918, %634
  br i1 %exitcond1109.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %658 = add nuw nsw i64 %polly.indvar251.us.1, %176
  %polly.access.mul.call1255.us.1 = mul nuw nsw i64 %658, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %117, %polly.access.mul.call1255.us.1
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
  %polly.access.add.call1260.us.1 = or i64 %208, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %206, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %659 = add nuw nsw i64 %polly.indvar251.us.2, %176
  %polly.access.mul.call1255.us.2 = mul nuw nsw i64 %659, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %118, %polly.access.mul.call1255.us.2
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
  %polly.access.add.call1260.us.2 = or i64 %208, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %206, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %660 = add nuw nsw i64 %polly.indvar251.us.3, %176
  %polly.access.mul.call1255.us.3 = mul nuw nsw i64 %660, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %119, %polly.access.mul.call1255.us.3
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
  %polly.access.add.call1260.us.3 = or i64 %208, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %206, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %661 = add nuw nsw i64 %polly.indvar276.us.1, %176
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %661, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %662 = shl i64 %661, 3
  %663 = add i64 %662, %210
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %663
  %scevgep295296.us.1 = bitcast i8* %scevgep295.us.1 to double*
  %_p_scalar_297.us.1 = load double, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_297.us.1
  store double %p_add42.i118.us.1, double* %scevgep295296.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %exitcond1045.1.not = icmp eq i64 %polly.indvar276.us.1, %smin1044
  br i1 %exitcond1045.1.not, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1, !llvm.loop !157

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1594
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %207
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %206, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1566 = icmp ult i64 %198, 4
  br i1 %min.iters.check1566, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1548

vector.memcheck1548:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01557 = icmp ult i8* %scevgep1550, %scevgep1556
  %bound11558 = icmp ult i8* %scevgep1554, %scevgep1553
  %found.conflict1559 = and i1 %bound01557, %bound11558
  br i1 %found.conflict1559, label %polly.loop_header272.us.2.preheader, label %vector.ph1567

vector.ph1567:                                    ; preds = %vector.memcheck1548
  %n.vec1569 = and i64 %198, -4
  %broadcast.splatinsert1575 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1576 = shufflevector <4 x double> %broadcast.splatinsert1575, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1578 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1579 = shufflevector <4 x double> %broadcast.splatinsert1578, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1563

vector.body1563:                                  ; preds = %vector.body1563, %vector.ph1567
  %index1570 = phi i64 [ 0, %vector.ph1567 ], [ %index.next1571, %vector.body1563 ]
  %664 = add nuw nsw i64 %index1570, %176
  %665 = add nuw nsw i64 %index1570, 2400
  %666 = getelementptr double, double* %Packed_MemRef_call1, i64 %665
  %667 = bitcast double* %666 to <4 x double>*
  %wide.load1574 = load <4 x double>, <4 x double>* %667, align 8, !alias.scope !158
  %668 = fmul fast <4 x double> %broadcast.splat1576, %wide.load1574
  %669 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2283.us.2
  %670 = getelementptr double, double* %Packed_MemRef_call2, i64 %669
  %671 = bitcast double* %670 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %671, align 8
  %672 = fmul fast <4 x double> %broadcast.splat1579, %wide.load1577
  %673 = shl i64 %664, 3
  %674 = add i64 %673, %210
  %675 = getelementptr i8, i8* %call, i64 %674
  %676 = bitcast i8* %675 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %676, align 8, !alias.scope !161, !noalias !163
  %677 = fadd fast <4 x double> %672, %668
  %678 = fmul fast <4 x double> %677, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %679 = fadd fast <4 x double> %678, %wide.load1580
  %680 = bitcast i8* %675 to <4 x double>*
  store <4 x double> %679, <4 x double>* %680, align 8, !alias.scope !161, !noalias !163
  %index.next1571 = add i64 %index1570, 4
  %681 = icmp eq i64 %index.next1571, %n.vec1569
  br i1 %681, label %middle.block1561, label %vector.body1563, !llvm.loop !164

middle.block1561:                                 ; preds = %vector.body1563
  %cmp.n1573 = icmp eq i64 %198, %n.vec1569
  br i1 %cmp.n1573, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1548, %polly.loop_exit274.loopexit.us.1, %middle.block1561
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1548 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1569, %middle.block1561 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %682 = add nuw nsw i64 %polly.indvar276.us.2, %176
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %682, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %683 = shl i64 %682, 3
  %684 = add i64 %683, %210
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %684
  %scevgep295296.us.2 = bitcast i8* %scevgep295.us.2 to double*
  %_p_scalar_297.us.2 = load double, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_297.us.2
  store double %p_add42.i118.us.2, double* %scevgep295296.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %exitcond1045.2.not = icmp eq i64 %polly.indvar276.us.2, %smin1044
  br i1 %exitcond1045.2.not, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2, !llvm.loop !165

polly.loop_exit274.loopexit.us.2:                 ; preds = %polly.loop_header272.us.2, %middle.block1561
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %207
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %206, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1533 = icmp ult i64 %205, 4
  br i1 %min.iters.check1533, label %polly.loop_header272.us.3.preheader, label %vector.ph1534

vector.ph1534:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1536 = and i64 %205, -4
  %broadcast.splatinsert1542 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1543 = shufflevector <4 x double> %broadcast.splatinsert1542, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1545 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1546 = shufflevector <4 x double> %broadcast.splatinsert1545, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1528

vector.body1528:                                  ; preds = %vector.body1528, %vector.ph1534
  %index1537 = phi i64 [ 0, %vector.ph1534 ], [ %index.next1538, %vector.body1528 ]
  %685 = add nuw nsw i64 %index1537, %176
  %686 = add nuw nsw i64 %index1537, 3600
  %687 = getelementptr double, double* %Packed_MemRef_call1, i64 %686
  %688 = bitcast double* %687 to <4 x double>*
  %wide.load1541 = load <4 x double>, <4 x double>* %688, align 8
  %689 = fmul fast <4 x double> %broadcast.splat1543, %wide.load1541
  %690 = add nuw nsw i64 %685, %polly.access.mul.Packed_MemRef_call2283.us.3
  %691 = getelementptr double, double* %Packed_MemRef_call2, i64 %690
  %692 = bitcast double* %691 to <4 x double>*
  %wide.load1544 = load <4 x double>, <4 x double>* %692, align 8
  %693 = fmul fast <4 x double> %broadcast.splat1546, %wide.load1544
  %694 = shl i64 %685, 3
  %695 = add i64 %694, %210
  %696 = getelementptr i8, i8* %call, i64 %695
  %697 = bitcast i8* %696 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %697, align 8, !alias.scope !65, !noalias !67
  %698 = fadd fast <4 x double> %693, %689
  %699 = fmul fast <4 x double> %698, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %700 = fadd fast <4 x double> %699, %wide.load1547
  %701 = bitcast i8* %696 to <4 x double>*
  store <4 x double> %700, <4 x double>* %701, align 8, !alias.scope !65, !noalias !67
  %index.next1538 = add i64 %index1537, 4
  %702 = icmp eq i64 %index.next1538, %n.vec1536
  br i1 %702, label %middle.block1526, label %vector.body1528, !llvm.loop !166

middle.block1526:                                 ; preds = %vector.body1528
  %cmp.n1540 = icmp eq i64 %205, %n.vec1536
  br i1 %cmp.n1540, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1526
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1536, %middle.block1526 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %703 = add nuw nsw i64 %polly.indvar276.us.3, %176
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %703, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %704 = shl i64 %703, 3
  %705 = add i64 %704, %210
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %705
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
  %706 = add nuw nsw i64 %polly.indvar457.us.1, %337
  %polly.access.mul.call1461.us.1 = mul nuw nsw i64 %706, 1000
  %polly.access.add.call1462.us.1 = add nuw nsw i64 %278, %polly.access.mul.call1461.us.1
  %polly.access.call1463.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.1
  %polly.access.call1463.load.us.1 = load double, double* %polly.access.call1463.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.1 = add nuw nsw i64 %polly.indvar457.us.1, 1200
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1463.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.indvar_next458.us.1 = add nuw nsw i64 %polly.indvar457.us.1, 1
  %exitcond1067.1.not = icmp eq i64 %polly.indvar457.us.1, %smin1069
  br i1 %exitcond1067.1.not, label %polly.cond464.loopexit.us.1, label %polly.loop_header453.us.1

polly.cond464.loopexit.us.1:                      ; preds = %polly.loop_header453.us.1
  br i1 %.not924, label %polly.loop_header453.us.2.preheader, label %polly.then466.us.1

polly.then466.us.1:                               ; preds = %polly.cond464.loopexit.us.1
  %polly.access.add.call1470.us.1 = or i64 %369, 1
  %polly.access.call1471.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.1
  %polly.access.call1471.load.us.1 = load double, double* %polly.access.call1471.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.us.1 = add nsw i64 %367, 1200
  %polly.access.Packed_MemRef_call1303474.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.1
  store double %polly.access.call1471.load.us.1, double* %polly.access.Packed_MemRef_call1303474.us.1, align 8
  br label %polly.loop_header453.us.2.preheader

polly.loop_header453.us.2.preheader:              ; preds = %polly.then466.us.1, %polly.cond464.loopexit.us.1
  br label %polly.loop_header453.us.2

polly.loop_header453.us.2:                        ; preds = %polly.loop_header453.us.2.preheader, %polly.loop_header453.us.2
  %polly.indvar457.us.2 = phi i64 [ %polly.indvar_next458.us.2, %polly.loop_header453.us.2 ], [ 0, %polly.loop_header453.us.2.preheader ]
  %707 = add nuw nsw i64 %polly.indvar457.us.2, %337
  %polly.access.mul.call1461.us.2 = mul nuw nsw i64 %707, 1000
  %polly.access.add.call1462.us.2 = add nuw nsw i64 %279, %polly.access.mul.call1461.us.2
  %polly.access.call1463.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.2
  %polly.access.call1463.load.us.2 = load double, double* %polly.access.call1463.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.2 = add nuw nsw i64 %polly.indvar457.us.2, 2400
  %polly.access.Packed_MemRef_call1303.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.2
  store double %polly.access.call1463.load.us.2, double* %polly.access.Packed_MemRef_call1303.us.2, align 8
  %polly.indvar_next458.us.2 = add nuw nsw i64 %polly.indvar457.us.2, 1
  %exitcond1067.2.not = icmp eq i64 %polly.indvar457.us.2, %smin1069
  br i1 %exitcond1067.2.not, label %polly.cond464.loopexit.us.2, label %polly.loop_header453.us.2

polly.cond464.loopexit.us.2:                      ; preds = %polly.loop_header453.us.2
  br i1 %.not924, label %polly.loop_header453.us.3.preheader, label %polly.then466.us.2

polly.then466.us.2:                               ; preds = %polly.cond464.loopexit.us.2
  %polly.access.add.call1470.us.2 = or i64 %369, 2
  %polly.access.call1471.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.2
  %polly.access.call1471.load.us.2 = load double, double* %polly.access.call1471.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.us.2 = add nsw i64 %367, 2400
  %polly.access.Packed_MemRef_call1303474.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.2
  store double %polly.access.call1471.load.us.2, double* %polly.access.Packed_MemRef_call1303474.us.2, align 8
  br label %polly.loop_header453.us.3.preheader

polly.loop_header453.us.3.preheader:              ; preds = %polly.then466.us.2, %polly.cond464.loopexit.us.2
  br label %polly.loop_header453.us.3

polly.loop_header453.us.3:                        ; preds = %polly.loop_header453.us.3.preheader, %polly.loop_header453.us.3
  %polly.indvar457.us.3 = phi i64 [ %polly.indvar_next458.us.3, %polly.loop_header453.us.3 ], [ 0, %polly.loop_header453.us.3.preheader ]
  %708 = add nuw nsw i64 %polly.indvar457.us.3, %337
  %polly.access.mul.call1461.us.3 = mul nuw nsw i64 %708, 1000
  %polly.access.add.call1462.us.3 = add nuw nsw i64 %280, %polly.access.mul.call1461.us.3
  %polly.access.call1463.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.3
  %polly.access.call1463.load.us.3 = load double, double* %polly.access.call1463.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303.us.3 = add nuw nsw i64 %polly.indvar457.us.3, 3600
  %polly.access.Packed_MemRef_call1303.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.3
  store double %polly.access.call1463.load.us.3, double* %polly.access.Packed_MemRef_call1303.us.3, align 8
  %polly.indvar_next458.us.3 = add nuw nsw i64 %polly.indvar457.us.3, 1
  %exitcond1067.3.not = icmp eq i64 %polly.indvar457.us.3, %smin1069
  br i1 %exitcond1067.3.not, label %polly.cond464.loopexit.us.3, label %polly.loop_header453.us.3

polly.cond464.loopexit.us.3:                      ; preds = %polly.loop_header453.us.3
  br i1 %.not924, label %polly.loop_header475.preheader, label %polly.then466.us.3

polly.then466.us.3:                               ; preds = %polly.cond464.loopexit.us.3
  %polly.access.add.call1470.us.3 = or i64 %369, 3
  %polly.access.call1471.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.3
  %polly.access.call1471.load.us.3 = load double, double* %polly.access.call1471.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303473.us.3 = add nsw i64 %367, 3600
  %polly.access.Packed_MemRef_call1303474.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.3
  store double %polly.access.call1471.load.us.3, double* %polly.access.Packed_MemRef_call1303474.us.3, align 8
  br label %polly.loop_header475.preheader

polly.loop_header482.us.1:                        ; preds = %polly.loop_header482.us.1.preheader, %polly.loop_header482.us.1
  %polly.indvar486.us.1 = phi i64 [ %polly.indvar_next487.us.1, %polly.loop_header482.us.1 ], [ %polly.indvar486.us.1.ph, %polly.loop_header482.us.1.preheader ]
  %709 = add nuw nsw i64 %polly.indvar486.us.1, %337
  %polly.access.add.Packed_MemRef_call1303490.us.1 = add nuw nsw i64 %polly.indvar486.us.1, 1200
  %polly.access.Packed_MemRef_call1303491.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.1
  %_p_scalar_492.us.1 = load double, double* %polly.access.Packed_MemRef_call1303491.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_496.us.1, %_p_scalar_492.us.1
  %polly.access.add.Packed_MemRef_call2305498.us.1 = add nuw nsw i64 %709, %polly.access.mul.Packed_MemRef_call2305493.us.1
  %polly.access.Packed_MemRef_call2305499.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call2305499.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_504.us.1, %_p_scalar_500.us.1
  %710 = shl i64 %709, 3
  %711 = add i64 %710, %371
  %scevgep505.us.1 = getelementptr i8, i8* %call, i64 %711
  %scevgep505506.us.1 = bitcast i8* %scevgep505.us.1 to double*
  %_p_scalar_507.us.1 = load double, double* %scevgep505506.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_507.us.1
  store double %p_add42.i79.us.1, double* %scevgep505506.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us.1 = add nuw nsw i64 %polly.indvar486.us.1, 1
  %exitcond1070.1.not = icmp eq i64 %polly.indvar486.us.1, %smin1069
  br i1 %exitcond1070.1.not, label %polly.loop_exit484.loopexit.us.1, label %polly.loop_header482.us.1, !llvm.loop !168

polly.loop_exit484.loopexit.us.1:                 ; preds = %polly.loop_header482.us.1, %middle.block1448
  %polly.access.add.Packed_MemRef_call2305494.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.2, %368
  %polly.access.Packed_MemRef_call2305495.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.2
  %_p_scalar_496.us.2 = load double, double* %polly.access.Packed_MemRef_call2305495.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.2 = add nsw i64 %367, 2400
  %polly.access.Packed_MemRef_call1303503.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.2
  %_p_scalar_504.us.2 = load double, double* %polly.access.Packed_MemRef_call1303503.us.2, align 8
  %min.iters.check1420 = icmp ult i64 %359, 4
  br i1 %min.iters.check1420, label %polly.loop_header482.us.2.preheader, label %vector.memcheck1402

vector.memcheck1402:                              ; preds = %polly.loop_exit484.loopexit.us.1
  %bound01411 = icmp ult i8* %scevgep1404, %scevgep1410
  %bound11412 = icmp ult i8* %scevgep1408, %scevgep1407
  %found.conflict1413 = and i1 %bound01411, %bound11412
  br i1 %found.conflict1413, label %polly.loop_header482.us.2.preheader, label %vector.ph1421

vector.ph1421:                                    ; preds = %vector.memcheck1402
  %n.vec1423 = and i64 %359, -4
  %broadcast.splatinsert1429 = insertelement <4 x double> poison, double %_p_scalar_496.us.2, i32 0
  %broadcast.splat1430 = shufflevector <4 x double> %broadcast.splatinsert1429, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <4 x double> poison, double %_p_scalar_504.us.2, i32 0
  %broadcast.splat1433 = shufflevector <4 x double> %broadcast.splatinsert1432, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %vector.ph1421
  %index1424 = phi i64 [ 0, %vector.ph1421 ], [ %index.next1425, %vector.body1417 ]
  %712 = add nuw nsw i64 %index1424, %337
  %713 = add nuw nsw i64 %index1424, 2400
  %714 = getelementptr double, double* %Packed_MemRef_call1303, i64 %713
  %715 = bitcast double* %714 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %715, align 8, !alias.scope !169
  %716 = fmul fast <4 x double> %broadcast.splat1430, %wide.load1428
  %717 = add nuw nsw i64 %712, %polly.access.mul.Packed_MemRef_call2305493.us.2
  %718 = getelementptr double, double* %Packed_MemRef_call2305, i64 %717
  %719 = bitcast double* %718 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %719, align 8
  %720 = fmul fast <4 x double> %broadcast.splat1433, %wide.load1431
  %721 = shl i64 %712, 3
  %722 = add i64 %721, %371
  %723 = getelementptr i8, i8* %call, i64 %722
  %724 = bitcast i8* %723 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %724, align 8, !alias.scope !172, !noalias !174
  %725 = fadd fast <4 x double> %720, %716
  %726 = fmul fast <4 x double> %725, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %727 = fadd fast <4 x double> %726, %wide.load1434
  %728 = bitcast i8* %723 to <4 x double>*
  store <4 x double> %727, <4 x double>* %728, align 8, !alias.scope !172, !noalias !174
  %index.next1425 = add i64 %index1424, 4
  %729 = icmp eq i64 %index.next1425, %n.vec1423
  br i1 %729, label %middle.block1415, label %vector.body1417, !llvm.loop !175

middle.block1415:                                 ; preds = %vector.body1417
  %cmp.n1427 = icmp eq i64 %359, %n.vec1423
  br i1 %cmp.n1427, label %polly.loop_exit484.loopexit.us.2, label %polly.loop_header482.us.2.preheader

polly.loop_header482.us.2.preheader:              ; preds = %vector.memcheck1402, %polly.loop_exit484.loopexit.us.1, %middle.block1415
  %polly.indvar486.us.2.ph = phi i64 [ 0, %vector.memcheck1402 ], [ 0, %polly.loop_exit484.loopexit.us.1 ], [ %n.vec1423, %middle.block1415 ]
  br label %polly.loop_header482.us.2

polly.loop_header482.us.2:                        ; preds = %polly.loop_header482.us.2.preheader, %polly.loop_header482.us.2
  %polly.indvar486.us.2 = phi i64 [ %polly.indvar_next487.us.2, %polly.loop_header482.us.2 ], [ %polly.indvar486.us.2.ph, %polly.loop_header482.us.2.preheader ]
  %730 = add nuw nsw i64 %polly.indvar486.us.2, %337
  %polly.access.add.Packed_MemRef_call1303490.us.2 = add nuw nsw i64 %polly.indvar486.us.2, 2400
  %polly.access.Packed_MemRef_call1303491.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.2
  %_p_scalar_492.us.2 = load double, double* %polly.access.Packed_MemRef_call1303491.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_496.us.2, %_p_scalar_492.us.2
  %polly.access.add.Packed_MemRef_call2305498.us.2 = add nuw nsw i64 %730, %polly.access.mul.Packed_MemRef_call2305493.us.2
  %polly.access.Packed_MemRef_call2305499.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call2305499.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_504.us.2, %_p_scalar_500.us.2
  %731 = shl i64 %730, 3
  %732 = add i64 %731, %371
  %scevgep505.us.2 = getelementptr i8, i8* %call, i64 %732
  %scevgep505506.us.2 = bitcast i8* %scevgep505.us.2 to double*
  %_p_scalar_507.us.2 = load double, double* %scevgep505506.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_507.us.2
  store double %p_add42.i79.us.2, double* %scevgep505506.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us.2 = add nuw nsw i64 %polly.indvar486.us.2, 1
  %exitcond1070.2.not = icmp eq i64 %polly.indvar486.us.2, %smin1069
  br i1 %exitcond1070.2.not, label %polly.loop_exit484.loopexit.us.2, label %polly.loop_header482.us.2, !llvm.loop !176

polly.loop_exit484.loopexit.us.2:                 ; preds = %polly.loop_header482.us.2, %middle.block1415
  %polly.access.add.Packed_MemRef_call2305494.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.3, %368
  %polly.access.Packed_MemRef_call2305495.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.3
  %_p_scalar_496.us.3 = load double, double* %polly.access.Packed_MemRef_call2305495.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.3 = add nsw i64 %367, 3600
  %polly.access.Packed_MemRef_call1303503.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.3
  %_p_scalar_504.us.3 = load double, double* %polly.access.Packed_MemRef_call1303503.us.3, align 8
  %min.iters.check1387 = icmp ult i64 %366, 4
  br i1 %min.iters.check1387, label %polly.loop_header482.us.3.preheader, label %vector.ph1388

vector.ph1388:                                    ; preds = %polly.loop_exit484.loopexit.us.2
  %n.vec1390 = and i64 %366, -4
  %broadcast.splatinsert1396 = insertelement <4 x double> poison, double %_p_scalar_496.us.3, i32 0
  %broadcast.splat1397 = shufflevector <4 x double> %broadcast.splatinsert1396, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_504.us.3, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1392, %vector.body1382 ]
  %733 = add nuw nsw i64 %index1391, %337
  %734 = add nuw nsw i64 %index1391, 3600
  %735 = getelementptr double, double* %Packed_MemRef_call1303, i64 %734
  %736 = bitcast double* %735 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %736, align 8
  %737 = fmul fast <4 x double> %broadcast.splat1397, %wide.load1395
  %738 = add nuw nsw i64 %733, %polly.access.mul.Packed_MemRef_call2305493.us.3
  %739 = getelementptr double, double* %Packed_MemRef_call2305, i64 %738
  %740 = bitcast double* %739 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %740, align 8
  %741 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %742 = shl i64 %733, 3
  %743 = add i64 %742, %371
  %744 = getelementptr i8, i8* %call, i64 %743
  %745 = bitcast i8* %744 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %745, align 8, !alias.scope !92, !noalias !94
  %746 = fadd fast <4 x double> %741, %737
  %747 = fmul fast <4 x double> %746, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %748 = fadd fast <4 x double> %747, %wide.load1401
  %749 = bitcast i8* %744 to <4 x double>*
  store <4 x double> %748, <4 x double>* %749, align 8, !alias.scope !92, !noalias !94
  %index.next1392 = add i64 %index1391, 4
  %750 = icmp eq i64 %index.next1392, %n.vec1390
  br i1 %750, label %middle.block1380, label %vector.body1382, !llvm.loop !177

middle.block1380:                                 ; preds = %vector.body1382
  %cmp.n1394 = icmp eq i64 %366, %n.vec1390
  br i1 %cmp.n1394, label %polly.loop_exit477, label %polly.loop_header482.us.3.preheader

polly.loop_header482.us.3.preheader:              ; preds = %polly.loop_exit484.loopexit.us.2, %middle.block1380
  %polly.indvar486.us.3.ph = phi i64 [ 0, %polly.loop_exit484.loopexit.us.2 ], [ %n.vec1390, %middle.block1380 ]
  br label %polly.loop_header482.us.3

polly.loop_header482.us.3:                        ; preds = %polly.loop_header482.us.3.preheader, %polly.loop_header482.us.3
  %polly.indvar486.us.3 = phi i64 [ %polly.indvar_next487.us.3, %polly.loop_header482.us.3 ], [ %polly.indvar486.us.3.ph, %polly.loop_header482.us.3.preheader ]
  %751 = add nuw nsw i64 %polly.indvar486.us.3, %337
  %polly.access.add.Packed_MemRef_call1303490.us.3 = add nuw nsw i64 %polly.indvar486.us.3, 3600
  %polly.access.Packed_MemRef_call1303491.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.3
  %_p_scalar_492.us.3 = load double, double* %polly.access.Packed_MemRef_call1303491.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_496.us.3, %_p_scalar_492.us.3
  %polly.access.add.Packed_MemRef_call2305498.us.3 = add nuw nsw i64 %751, %polly.access.mul.Packed_MemRef_call2305493.us.3
  %polly.access.Packed_MemRef_call2305499.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call2305499.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_504.us.3, %_p_scalar_500.us.3
  %752 = shl i64 %751, 3
  %753 = add i64 %752, %371
  %scevgep505.us.3 = getelementptr i8, i8* %call, i64 %753
  %scevgep505506.us.3 = bitcast i8* %scevgep505.us.3 to double*
  %_p_scalar_507.us.3 = load double, double* %scevgep505506.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_507.us.3
  store double %p_add42.i79.us.3, double* %scevgep505506.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next487.us.3 = add nuw nsw i64 %polly.indvar486.us.3, 1
  %exitcond1070.3.not = icmp eq i64 %polly.indvar486.us.3, %smin1069
  br i1 %exitcond1070.3.not, label %polly.loop_exit477, label %polly.loop_header482.us.3, !llvm.loop !178

polly.loop_header663.us.1:                        ; preds = %polly.loop_header663.us.1.preheader, %polly.loop_header663.us.1
  %polly.indvar667.us.1 = phi i64 [ %polly.indvar_next668.us.1, %polly.loop_header663.us.1 ], [ 0, %polly.loop_header663.us.1.preheader ]
  %754 = add nuw nsw i64 %polly.indvar667.us.1, %498
  %polly.access.mul.call1671.us.1 = mul nuw nsw i64 %754, 1000
  %polly.access.add.call1672.us.1 = add nuw nsw i64 %439, %polly.access.mul.call1671.us.1
  %polly.access.call1673.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.1
  %polly.access.call1673.load.us.1 = load double, double* %polly.access.call1673.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1200
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.1
  store double %polly.access.call1673.load.us.1, double* %polly.access.Packed_MemRef_call1513.us.1, align 8
  %polly.indvar_next668.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1
  %exitcond1093.1.not = icmp eq i64 %polly.indvar667.us.1, %smin1095
  br i1 %exitcond1093.1.not, label %polly.cond674.loopexit.us.1, label %polly.loop_header663.us.1

polly.cond674.loopexit.us.1:                      ; preds = %polly.loop_header663.us.1
  br i1 %.not925, label %polly.loop_header663.us.2.preheader, label %polly.then676.us.1

polly.then676.us.1:                               ; preds = %polly.cond674.loopexit.us.1
  %polly.access.add.call1680.us.1 = or i64 %530, 1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.us.1 = add nsw i64 %528, 1200
  %polly.access.Packed_MemRef_call1513684.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1513684.us.1, align 8
  br label %polly.loop_header663.us.2.preheader

polly.loop_header663.us.2.preheader:              ; preds = %polly.then676.us.1, %polly.cond674.loopexit.us.1
  br label %polly.loop_header663.us.2

polly.loop_header663.us.2:                        ; preds = %polly.loop_header663.us.2.preheader, %polly.loop_header663.us.2
  %polly.indvar667.us.2 = phi i64 [ %polly.indvar_next668.us.2, %polly.loop_header663.us.2 ], [ 0, %polly.loop_header663.us.2.preheader ]
  %755 = add nuw nsw i64 %polly.indvar667.us.2, %498
  %polly.access.mul.call1671.us.2 = mul nuw nsw i64 %755, 1000
  %polly.access.add.call1672.us.2 = add nuw nsw i64 %440, %polly.access.mul.call1671.us.2
  %polly.access.call1673.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.2
  %polly.access.call1673.load.us.2 = load double, double* %polly.access.call1673.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 2400
  %polly.access.Packed_MemRef_call1513.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.2
  store double %polly.access.call1673.load.us.2, double* %polly.access.Packed_MemRef_call1513.us.2, align 8
  %polly.indvar_next668.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 1
  %exitcond1093.2.not = icmp eq i64 %polly.indvar667.us.2, %smin1095
  br i1 %exitcond1093.2.not, label %polly.cond674.loopexit.us.2, label %polly.loop_header663.us.2

polly.cond674.loopexit.us.2:                      ; preds = %polly.loop_header663.us.2
  br i1 %.not925, label %polly.loop_header663.us.3.preheader, label %polly.then676.us.2

polly.then676.us.2:                               ; preds = %polly.cond674.loopexit.us.2
  %polly.access.add.call1680.us.2 = or i64 %530, 2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.us.2 = add nsw i64 %528, 2400
  %polly.access.Packed_MemRef_call1513684.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1513684.us.2, align 8
  br label %polly.loop_header663.us.3.preheader

polly.loop_header663.us.3.preheader:              ; preds = %polly.then676.us.2, %polly.cond674.loopexit.us.2
  br label %polly.loop_header663.us.3

polly.loop_header663.us.3:                        ; preds = %polly.loop_header663.us.3.preheader, %polly.loop_header663.us.3
  %polly.indvar667.us.3 = phi i64 [ %polly.indvar_next668.us.3, %polly.loop_header663.us.3 ], [ 0, %polly.loop_header663.us.3.preheader ]
  %756 = add nuw nsw i64 %polly.indvar667.us.3, %498
  %polly.access.mul.call1671.us.3 = mul nuw nsw i64 %756, 1000
  %polly.access.add.call1672.us.3 = add nuw nsw i64 %441, %polly.access.mul.call1671.us.3
  %polly.access.call1673.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.3
  %polly.access.call1673.load.us.3 = load double, double* %polly.access.call1673.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 3600
  %polly.access.Packed_MemRef_call1513.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.3
  store double %polly.access.call1673.load.us.3, double* %polly.access.Packed_MemRef_call1513.us.3, align 8
  %polly.indvar_next668.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 1
  %exitcond1093.3.not = icmp eq i64 %polly.indvar667.us.3, %smin1095
  br i1 %exitcond1093.3.not, label %polly.cond674.loopexit.us.3, label %polly.loop_header663.us.3

polly.cond674.loopexit.us.3:                      ; preds = %polly.loop_header663.us.3
  br i1 %.not925, label %polly.loop_header685.preheader, label %polly.then676.us.3

polly.then676.us.3:                               ; preds = %polly.cond674.loopexit.us.3
  %polly.access.add.call1680.us.3 = or i64 %530, 3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1513683.us.3 = add nsw i64 %528, 3600
  %polly.access.Packed_MemRef_call1513684.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1513684.us.3, align 8
  br label %polly.loop_header685.preheader

polly.loop_header692.us.1:                        ; preds = %polly.loop_header692.us.1.preheader, %polly.loop_header692.us.1
  %polly.indvar696.us.1 = phi i64 [ %polly.indvar_next697.us.1, %polly.loop_header692.us.1 ], [ %polly.indvar696.us.1.ph, %polly.loop_header692.us.1.preheader ]
  %757 = add nuw nsw i64 %polly.indvar696.us.1, %498
  %polly.access.add.Packed_MemRef_call1513700.us.1 = add nuw nsw i64 %polly.indvar696.us.1, 1200
  %polly.access.Packed_MemRef_call1513701.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.1
  %_p_scalar_702.us.1 = load double, double* %polly.access.Packed_MemRef_call1513701.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_706.us.1, %_p_scalar_702.us.1
  %polly.access.add.Packed_MemRef_call2515708.us.1 = add nuw nsw i64 %757, %polly.access.mul.Packed_MemRef_call2515703.us.1
  %polly.access.Packed_MemRef_call2515709.us.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call2515709.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %758 = shl i64 %757, 3
  %759 = add i64 %758, %532
  %scevgep715.us.1 = getelementptr i8, i8* %call, i64 %759
  %scevgep715716.us.1 = bitcast i8* %scevgep715.us.1 to double*
  %_p_scalar_717.us.1 = load double, double* %scevgep715716.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_717.us.1
  store double %p_add42.i.us.1, double* %scevgep715716.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us.1 = add nuw nsw i64 %polly.indvar696.us.1, 1
  %exitcond1096.1.not = icmp eq i64 %polly.indvar696.us.1, %smin1095
  br i1 %exitcond1096.1.not, label %polly.loop_exit694.loopexit.us.1, label %polly.loop_header692.us.1, !llvm.loop !179

polly.loop_exit694.loopexit.us.1:                 ; preds = %polly.loop_header692.us.1, %middle.block1302
  %polly.access.add.Packed_MemRef_call2515704.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.2, %529
  %polly.access.Packed_MemRef_call2515705.us.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.2
  %_p_scalar_706.us.2 = load double, double* %polly.access.Packed_MemRef_call2515705.us.2, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.2 = add nsw i64 %528, 2400
  %polly.access.Packed_MemRef_call1513713.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call1513713.us.2, align 8
  %min.iters.check1274 = icmp ult i64 %520, 4
  br i1 %min.iters.check1274, label %polly.loop_header692.us.2.preheader, label %vector.memcheck1256

vector.memcheck1256:                              ; preds = %polly.loop_exit694.loopexit.us.1
  %bound01265 = icmp ult i8* %scevgep1258, %scevgep1264
  %bound11266 = icmp ult i8* %scevgep1262, %scevgep1261
  %found.conflict1267 = and i1 %bound01265, %bound11266
  br i1 %found.conflict1267, label %polly.loop_header692.us.2.preheader, label %vector.ph1275

vector.ph1275:                                    ; preds = %vector.memcheck1256
  %n.vec1277 = and i64 %520, -4
  %broadcast.splatinsert1283 = insertelement <4 x double> poison, double %_p_scalar_706.us.2, i32 0
  %broadcast.splat1284 = shufflevector <4 x double> %broadcast.splatinsert1283, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1286 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1287 = shufflevector <4 x double> %broadcast.splatinsert1286, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1271 ]
  %760 = add nuw nsw i64 %index1278, %498
  %761 = add nuw nsw i64 %index1278, 2400
  %762 = getelementptr double, double* %Packed_MemRef_call1513, i64 %761
  %763 = bitcast double* %762 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %763, align 8, !alias.scope !180
  %764 = fmul fast <4 x double> %broadcast.splat1284, %wide.load1282
  %765 = add nuw nsw i64 %760, %polly.access.mul.Packed_MemRef_call2515703.us.2
  %766 = getelementptr double, double* %Packed_MemRef_call2515, i64 %765
  %767 = bitcast double* %766 to <4 x double>*
  %wide.load1285 = load <4 x double>, <4 x double>* %767, align 8
  %768 = fmul fast <4 x double> %broadcast.splat1287, %wide.load1285
  %769 = shl i64 %760, 3
  %770 = add i64 %769, %532
  %771 = getelementptr i8, i8* %call, i64 %770
  %772 = bitcast i8* %771 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %772, align 8, !alias.scope !183, !noalias !185
  %773 = fadd fast <4 x double> %768, %764
  %774 = fmul fast <4 x double> %773, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %775 = fadd fast <4 x double> %774, %wide.load1288
  %776 = bitcast i8* %771 to <4 x double>*
  store <4 x double> %775, <4 x double>* %776, align 8, !alias.scope !183, !noalias !185
  %index.next1279 = add i64 %index1278, 4
  %777 = icmp eq i64 %index.next1279, %n.vec1277
  br i1 %777, label %middle.block1269, label %vector.body1271, !llvm.loop !186

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1281 = icmp eq i64 %520, %n.vec1277
  br i1 %cmp.n1281, label %polly.loop_exit694.loopexit.us.2, label %polly.loop_header692.us.2.preheader

polly.loop_header692.us.2.preheader:              ; preds = %vector.memcheck1256, %polly.loop_exit694.loopexit.us.1, %middle.block1269
  %polly.indvar696.us.2.ph = phi i64 [ 0, %vector.memcheck1256 ], [ 0, %polly.loop_exit694.loopexit.us.1 ], [ %n.vec1277, %middle.block1269 ]
  br label %polly.loop_header692.us.2

polly.loop_header692.us.2:                        ; preds = %polly.loop_header692.us.2.preheader, %polly.loop_header692.us.2
  %polly.indvar696.us.2 = phi i64 [ %polly.indvar_next697.us.2, %polly.loop_header692.us.2 ], [ %polly.indvar696.us.2.ph, %polly.loop_header692.us.2.preheader ]
  %778 = add nuw nsw i64 %polly.indvar696.us.2, %498
  %polly.access.add.Packed_MemRef_call1513700.us.2 = add nuw nsw i64 %polly.indvar696.us.2, 2400
  %polly.access.Packed_MemRef_call1513701.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.2
  %_p_scalar_702.us.2 = load double, double* %polly.access.Packed_MemRef_call1513701.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_706.us.2, %_p_scalar_702.us.2
  %polly.access.add.Packed_MemRef_call2515708.us.2 = add nuw nsw i64 %778, %polly.access.mul.Packed_MemRef_call2515703.us.2
  %polly.access.Packed_MemRef_call2515709.us.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call2515709.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %779 = shl i64 %778, 3
  %780 = add i64 %779, %532
  %scevgep715.us.2 = getelementptr i8, i8* %call, i64 %780
  %scevgep715716.us.2 = bitcast i8* %scevgep715.us.2 to double*
  %_p_scalar_717.us.2 = load double, double* %scevgep715716.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_717.us.2
  store double %p_add42.i.us.2, double* %scevgep715716.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us.2 = add nuw nsw i64 %polly.indvar696.us.2, 1
  %exitcond1096.2.not = icmp eq i64 %polly.indvar696.us.2, %smin1095
  br i1 %exitcond1096.2.not, label %polly.loop_exit694.loopexit.us.2, label %polly.loop_header692.us.2, !llvm.loop !187

polly.loop_exit694.loopexit.us.2:                 ; preds = %polly.loop_header692.us.2, %middle.block1269
  %polly.access.add.Packed_MemRef_call2515704.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.3, %529
  %polly.access.Packed_MemRef_call2515705.us.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.3
  %_p_scalar_706.us.3 = load double, double* %polly.access.Packed_MemRef_call2515705.us.3, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.3 = add nsw i64 %528, 3600
  %polly.access.Packed_MemRef_call1513713.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call1513713.us.3, align 8
  %min.iters.check1241 = icmp ult i64 %527, 4
  br i1 %min.iters.check1241, label %polly.loop_header692.us.3.preheader, label %vector.ph1242

vector.ph1242:                                    ; preds = %polly.loop_exit694.loopexit.us.2
  %n.vec1244 = and i64 %527, -4
  %broadcast.splatinsert1250 = insertelement <4 x double> poison, double %_p_scalar_706.us.3, i32 0
  %broadcast.splat1251 = shufflevector <4 x double> %broadcast.splatinsert1250, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1253 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1254 = shufflevector <4 x double> %broadcast.splatinsert1253, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1242
  %index1245 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1246, %vector.body1236 ]
  %781 = add nuw nsw i64 %index1245, %498
  %782 = add nuw nsw i64 %index1245, 3600
  %783 = getelementptr double, double* %Packed_MemRef_call1513, i64 %782
  %784 = bitcast double* %783 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %784, align 8
  %785 = fmul fast <4 x double> %broadcast.splat1251, %wide.load1249
  %786 = add nuw nsw i64 %781, %polly.access.mul.Packed_MemRef_call2515703.us.3
  %787 = getelementptr double, double* %Packed_MemRef_call2515, i64 %786
  %788 = bitcast double* %787 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %788, align 8
  %789 = fmul fast <4 x double> %broadcast.splat1254, %wide.load1252
  %790 = shl i64 %781, 3
  %791 = add i64 %790, %532
  %792 = getelementptr i8, i8* %call, i64 %791
  %793 = bitcast i8* %792 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %793, align 8, !alias.scope !118, !noalias !120
  %794 = fadd fast <4 x double> %789, %785
  %795 = fmul fast <4 x double> %794, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %796 = fadd fast <4 x double> %795, %wide.load1255
  %797 = bitcast i8* %792 to <4 x double>*
  store <4 x double> %796, <4 x double>* %797, align 8, !alias.scope !118, !noalias !120
  %index.next1246 = add i64 %index1245, 4
  %798 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %798, label %middle.block1234, label %vector.body1236, !llvm.loop !188

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1248 = icmp eq i64 %527, %n.vec1244
  br i1 %cmp.n1248, label %polly.loop_exit687, label %polly.loop_header692.us.3.preheader

polly.loop_header692.us.3.preheader:              ; preds = %polly.loop_exit694.loopexit.us.2, %middle.block1234
  %polly.indvar696.us.3.ph = phi i64 [ 0, %polly.loop_exit694.loopexit.us.2 ], [ %n.vec1244, %middle.block1234 ]
  br label %polly.loop_header692.us.3

polly.loop_header692.us.3:                        ; preds = %polly.loop_header692.us.3.preheader, %polly.loop_header692.us.3
  %polly.indvar696.us.3 = phi i64 [ %polly.indvar_next697.us.3, %polly.loop_header692.us.3 ], [ %polly.indvar696.us.3.ph, %polly.loop_header692.us.3.preheader ]
  %799 = add nuw nsw i64 %polly.indvar696.us.3, %498
  %polly.access.add.Packed_MemRef_call1513700.us.3 = add nuw nsw i64 %polly.indvar696.us.3, 3600
  %polly.access.Packed_MemRef_call1513701.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.3
  %_p_scalar_702.us.3 = load double, double* %polly.access.Packed_MemRef_call1513701.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_706.us.3, %_p_scalar_702.us.3
  %polly.access.add.Packed_MemRef_call2515708.us.3 = add nuw nsw i64 %799, %polly.access.mul.Packed_MemRef_call2515703.us.3
  %polly.access.Packed_MemRef_call2515709.us.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call2515709.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %800 = shl i64 %799, 3
  %801 = add i64 %800, %532
  %scevgep715.us.3 = getelementptr i8, i8* %call, i64 %801
  %scevgep715716.us.3 = bitcast i8* %scevgep715.us.3 to double*
  %_p_scalar_717.us.3 = load double, double* %scevgep715716.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_717.us.3
  store double %p_add42.i.us.3, double* %scevgep715716.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next697.us.3 = add nuw nsw i64 %polly.indvar696.us.3, 1
  %exitcond1096.3.not = icmp eq i64 %polly.indvar696.us.3, %smin1095
  br i1 %exitcond1096.3.not, label %polly.loop_exit687, label %polly.loop_header692.us.3, !llvm.loop !189
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
!26 = !{!"llvm.loop.tile.size", i32 100}
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
