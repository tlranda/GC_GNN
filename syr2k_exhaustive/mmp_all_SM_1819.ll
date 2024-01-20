; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1819.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1819.c"
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
  %call864 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2726 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1150 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1149 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1148 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1147 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1147, %scevgep1150
  %bound1 = icmp ult i8* %scevgep1149, %scevgep1148
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
  br i1 %exitcond18.not.i, label %vector.ph1154, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1154:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1161 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1162 = shufflevector <4 x i64> %broadcast.splatinsert1161, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %vector.ph1154
  %index1155 = phi i64 [ 0, %vector.ph1154 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1154 ], [ %vec.ind.next1160, %vector.body1153 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1159, %broadcast.splat1162
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1155
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1156, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1153, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1153
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1154, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1216 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1216, label %for.body3.i46.preheader1623, label %vector.ph1217

vector.ph1217:                                    ; preds = %for.body3.i46.preheader
  %n.vec1219 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1220
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %46 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %46, label %middle.block1213, label %vector.body1215, !llvm.loop !18

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %indvars.iv21.i, %n.vec1219
  br i1 %cmp.n1223, label %for.inc6.i, label %for.body3.i46.preheader1623

for.body3.i46.preheader1623:                      ; preds = %for.body3.i46.preheader, %middle.block1213
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1219, %middle.block1213 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1623, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1623 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1213, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1350 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1350, label %for.body3.i60.preheader1622, label %vector.ph1351

vector.ph1351:                                    ; preds = %for.body3.i60.preheader
  %n.vec1353 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1351
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1355, %vector.body1349 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1354
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1358, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1355 = add i64 %index1354, 4
  %57 = icmp eq i64 %index.next1355, %n.vec1353
  br i1 %57, label %middle.block1347, label %vector.body1349, !llvm.loop !56

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1357 = icmp eq i64 %indvars.iv21.i52, %n.vec1353
  br i1 %cmp.n1357, label %for.inc6.i63, label %for.body3.i60.preheader1622

for.body3.i60.preheader1622:                      ; preds = %for.body3.i60.preheader, %middle.block1347
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1353, %middle.block1347 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1622, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1622 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1347, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1487 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1487, label %for.body3.i99.preheader1621, label %vector.ph1488

vector.ph1488:                                    ; preds = %for.body3.i99.preheader
  %n.vec1490 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1488
  %index1491 = phi i64 [ 0, %vector.ph1488 ], [ %index.next1492, %vector.body1486 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1491
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1495 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1495, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1492 = add i64 %index1491, 4
  %68 = icmp eq i64 %index.next1492, %n.vec1490
  br i1 %68, label %middle.block1484, label %vector.body1486, !llvm.loop !58

middle.block1484:                                 ; preds = %vector.body1486
  %cmp.n1494 = icmp eq i64 %indvars.iv21.i91, %n.vec1490
  br i1 %cmp.n1494, label %for.inc6.i102, label %for.body3.i99.preheader1621

for.body3.i99.preheader1621:                      ; preds = %for.body3.i99.preheader, %middle.block1484
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1490, %middle.block1484 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1621, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1621 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1484, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %indvar1499 = phi i64 [ %indvar.next1500, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1499, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1501 = icmp ult i64 %88, 4
  br i1 %min.iters.check1501, label %polly.loop_header192.preheader, label %vector.ph1502

vector.ph1502:                                    ; preds = %polly.loop_header
  %n.vec1504 = and i64 %88, -4
  br label %vector.body1498

vector.body1498:                                  ; preds = %vector.body1498, %vector.ph1502
  %index1505 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1506, %vector.body1498 ]
  %90 = shl nuw nsw i64 %index1505, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1509 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1509, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1506 = add i64 %index1505, 4
  %95 = icmp eq i64 %index.next1506, %n.vec1504
  br i1 %95, label %middle.block1496, label %vector.body1498, !llvm.loop !71

middle.block1496:                                 ; preds = %vector.body1498
  %cmp.n1508 = icmp eq i64 %88, %n.vec1504
  br i1 %cmp.n1508, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1496
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1504, %middle.block1496 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1496
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1500 = add i64 %indvar1499, 1
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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1054.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1053.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1534 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1535 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1565 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1566 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1596 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1052.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit224 ], [ 1, %polly.loop_header216.preheader ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar219, 5
  %98 = mul nuw nsw i64 %polly.indvar219, 307200
  %99 = or i64 %98, 8
  %100 = shl nuw nsw i64 %polly.indvar219, 5
  %101 = shl nuw nsw i64 %polly.indvar219, 5
  %102 = mul nuw nsw i64 %polly.indvar219, 307200
  %103 = or i64 %102, 8
  %104 = shl nuw nsw i64 %polly.indvar219, 5
  %105 = shl nuw nsw i64 %polly.indvar219, 5
  %106 = mul nuw nsw i64 %polly.indvar219, 307200
  %107 = or i64 %106, 8
  %108 = shl nuw nsw i64 %polly.indvar219, 5
  %109 = shl nuw nsw i64 %polly.indvar219, 5
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 -1168)
  %110 = shl nsw i64 %polly.indvar219, 5
  %111 = add nsw i64 %smin1045, 1199
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next220, 38
  br i1 %exitcond1051.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %112 = shl nsw i64 %polly.indvar225, 2
  %113 = or i64 %112, 1
  %114 = or i64 %112, 2
  %115 = or i64 %112, 3
  %polly.access.mul.Packed_MemRef_call2281.us = mul nsw i64 %polly.indvar225, 4800
  %116 = or i64 %112, 1
  %polly.access.mul.Packed_MemRef_call2281.us.1 = mul nuw nsw i64 %116, 1200
  %117 = or i64 %112, 2
  %polly.access.mul.Packed_MemRef_call2281.us.2 = mul nuw nsw i64 %117, 1200
  %118 = or i64 %112, 3
  %polly.access.mul.Packed_MemRef_call2281.us.3 = mul nuw nsw i64 %118, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1050.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %119 = mul nsw i64 %polly.indvar231, -32
  %120 = add i64 %97, %119
  %121 = shl nuw nsw i64 %polly.indvar231, 8
  %122 = add nuw i64 %98, %121
  %123 = add nuw i64 %99, %121
  %124 = mul nsw i64 %polly.indvar231, -32
  %125 = add i64 %100, %124
  %126 = mul nsw i64 %polly.indvar231, -32
  %127 = add i64 %101, %126
  %128 = shl nuw nsw i64 %polly.indvar231, 8
  %129 = add nuw i64 %102, %128
  %130 = add nuw i64 %103, %128
  %131 = mul nsw i64 %polly.indvar231, -32
  %132 = add i64 %104, %131
  %133 = mul nsw i64 %polly.indvar231, -32
  %134 = add i64 %105, %133
  %135 = shl nuw nsw i64 %polly.indvar231, 8
  %136 = add nuw i64 %106, %135
  %137 = add nuw i64 %107, %135
  %138 = mul nsw i64 %polly.indvar231, -32
  %139 = add i64 %108, %138
  %140 = mul nsw i64 %polly.indvar231, -32
  %141 = add i64 %109, %140
  %142 = shl nsw i64 %polly.indvar231, 5
  %143 = sub nsw i64 %110, %142
  %144 = add nuw nsw i64 %142, 32
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1047
  br i1 %exitcond1049.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit265 ], [ %indvars.iv1034, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %145 = add i64 %120, %polly.indvar237
  %smin1605 = call i64 @llvm.smin.i64(i64 %145, i64 31)
  %146 = add nsw i64 %smin1605, 1
  %147 = mul i64 %polly.indvar237, 9600
  %148 = add i64 %122, %147
  %scevgep1592 = getelementptr i8, i8* %call, i64 %148
  %149 = add i64 %123, %147
  %scevgep1593 = getelementptr i8, i8* %call, i64 %149
  %150 = add i64 %125, %polly.indvar237
  %smin1594 = call i64 @llvm.smin.i64(i64 %150, i64 31)
  %151 = shl nsw i64 %smin1594, 3
  %scevgep1595 = getelementptr i8, i8* %scevgep1593, i64 %151
  %scevgep1597 = getelementptr i8, i8* %scevgep1596, i64 %151
  %152 = add i64 %127, %polly.indvar237
  %smin1575 = call i64 @llvm.smin.i64(i64 %152, i64 31)
  %153 = add nsw i64 %smin1575, 1
  %154 = mul i64 %polly.indvar237, 9600
  %155 = add i64 %129, %154
  %scevgep1561 = getelementptr i8, i8* %call, i64 %155
  %156 = add i64 %130, %154
  %scevgep1562 = getelementptr i8, i8* %call, i64 %156
  %157 = add i64 %132, %polly.indvar237
  %smin1563 = call i64 @llvm.smin.i64(i64 %157, i64 31)
  %158 = shl nsw i64 %smin1563, 3
  %scevgep1564 = getelementptr i8, i8* %scevgep1562, i64 %158
  %scevgep1567 = getelementptr i8, i8* %scevgep1566, i64 %158
  %159 = add i64 %134, %polly.indvar237
  %smin1544 = call i64 @llvm.smin.i64(i64 %159, i64 31)
  %160 = add nsw i64 %smin1544, 1
  %161 = mul i64 %polly.indvar237, 9600
  %162 = add i64 %136, %161
  %scevgep1530 = getelementptr i8, i8* %call, i64 %162
  %163 = add i64 %137, %161
  %scevgep1531 = getelementptr i8, i8* %call, i64 %163
  %164 = add i64 %139, %polly.indvar237
  %smin1532 = call i64 @llvm.smin.i64(i64 %164, i64 31)
  %165 = shl nsw i64 %smin1532, 3
  %scevgep1533 = getelementptr i8, i8* %scevgep1531, i64 %165
  %scevgep1536 = getelementptr i8, i8* %scevgep1535, i64 %165
  %166 = add i64 %141, %polly.indvar237
  %smin1513 = call i64 @llvm.smin.i64(i64 %166, i64 31)
  %167 = add nsw i64 %smin1513, 1
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 31)
  %168 = add nsw i64 %polly.indvar237, %143
  %polly.loop_guard1142 = icmp sgt i64 %168, -1
  %169 = add nuw nsw i64 %polly.indvar237, %110
  %.not = icmp ult i64 %169, %144
  %polly.access.mul.call1257 = mul nuw nsw i64 %169, 1000
  %170 = add nuw nsw i64 %polly.access.mul.call1257, %112
  br i1 %polly.loop_guard1142, label %polly.loop_header246.us, label %polly.loop_header234.split

polly.loop_header246.us:                          ; preds = %polly.loop_header234, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header234 ]
  %171 = add nuw nsw i64 %polly.indvar249.us, %142
  %polly.access.mul.call1253.us = mul nuw nsw i64 %171, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %112, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar249.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar249.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1716, i64 %170
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %168
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.loop_header246.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.loop_header246.us.1.preheader, label %polly.then.us

polly.loop_header246.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header246.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1716, i64 %170
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %168
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %170, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %168, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %170, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %168, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %170, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %168, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_header270.us.3, %middle.block1510, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar237, %111
  br i1 %exitcond1046.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %172 = mul nuw nsw i64 %169, 9600
  br i1 %polly.loop_guard1142, label %polly.loop_header263.us.preheader, label %polly.loop_exit265

polly.loop_header263.us.preheader:                ; preds = %polly.loop_header263.preheader
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %169
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %168
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1606 = icmp ult i64 %146, 4
  br i1 %min.iters.check1606, label %polly.loop_header270.us.preheader, label %vector.memcheck1591

vector.memcheck1591:                              ; preds = %polly.loop_header263.us.preheader
  %bound01598 = icmp ult i8* %scevgep1592, %scevgep1597
  %bound11599 = icmp ult i8* %malloccall, %scevgep1595
  %found.conflict1600 = and i1 %bound01598, %bound11599
  br i1 %found.conflict1600, label %polly.loop_header270.us.preheader, label %vector.ph1607

vector.ph1607:                                    ; preds = %vector.memcheck1591
  %n.vec1609 = and i64 %146, -4
  %broadcast.splatinsert1615 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1616 = shufflevector <4 x double> %broadcast.splatinsert1615, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1618 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1619 = shufflevector <4 x double> %broadcast.splatinsert1618, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1604

vector.body1604:                                  ; preds = %vector.body1604, %vector.ph1607
  %index1610 = phi i64 [ 0, %vector.ph1607 ], [ %index.next1611, %vector.body1604 ]
  %173 = add nuw nsw i64 %index1610, %142
  %174 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1610
  %175 = bitcast double* %174 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %175, align 8, !alias.scope !76
  %176 = fmul fast <4 x double> %broadcast.splat1616, %wide.load1614
  %177 = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call2281.us
  %178 = getelementptr double, double* %Packed_MemRef_call2, i64 %177
  %179 = bitcast double* %178 to <4 x double>*
  %wide.load1617 = load <4 x double>, <4 x double>* %179, align 8
  %180 = fmul fast <4 x double> %broadcast.splat1619, %wide.load1617
  %181 = shl i64 %173, 3
  %182 = add nuw nsw i64 %181, %172
  %183 = getelementptr i8, i8* %call, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1620 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !79, !noalias !81
  %185 = fadd fast <4 x double> %180, %176
  %186 = fmul fast <4 x double> %185, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %187 = fadd fast <4 x double> %186, %wide.load1620
  %188 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !79, !noalias !81
  %index.next1611 = add i64 %index1610, 4
  %189 = icmp eq i64 %index.next1611, %n.vec1609
  br i1 %189, label %middle.block1602, label %vector.body1604, !llvm.loop !82

middle.block1602:                                 ; preds = %vector.body1604
  %cmp.n1613 = icmp eq i64 %146, %n.vec1609
  br i1 %cmp.n1613, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1591, %polly.loop_header263.us.preheader, %middle.block1602
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1591 ], [ 0, %polly.loop_header263.us.preheader ], [ %n.vec1609, %middle.block1602 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %190 = add nuw nsw i64 %polly.indvar274.us, %142
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar274.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %191 = shl i64 %190, 3
  %192 = add nuw nsw i64 %191, %172
  %scevgep293.us = getelementptr i8, i8* %call, i64 %192
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar274.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !83

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1602
  %polly.access.add.Packed_MemRef_call2282.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.1, %169
  %polly.access.Packed_MemRef_call2283.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call2283.us.1, align 8
  %polly.access.add.Packed_MemRef_call1290.us.1 = add nsw i64 %168, 1200
  %polly.access.Packed_MemRef_call1291.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call1291.us.1, align 8
  %min.iters.check1576 = icmp ult i64 %153, 4
  br i1 %min.iters.check1576, label %polly.loop_header270.us.1.preheader, label %vector.memcheck1560

vector.memcheck1560:                              ; preds = %polly.loop_exit272.loopexit.us
  %bound01568 = icmp ult i8* %scevgep1561, %scevgep1567
  %bound11569 = icmp ult i8* %scevgep1565, %scevgep1564
  %found.conflict1570 = and i1 %bound01568, %bound11569
  br i1 %found.conflict1570, label %polly.loop_header270.us.1.preheader, label %vector.ph1577

vector.ph1577:                                    ; preds = %vector.memcheck1560
  %n.vec1579 = and i64 %153, -4
  %broadcast.splatinsert1585 = insertelement <4 x double> poison, double %_p_scalar_284.us.1, i32 0
  %broadcast.splat1586 = shufflevector <4 x double> %broadcast.splatinsert1585, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1588 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1589 = shufflevector <4 x double> %broadcast.splatinsert1588, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1574

vector.body1574:                                  ; preds = %vector.body1574, %vector.ph1577
  %index1580 = phi i64 [ 0, %vector.ph1577 ], [ %index.next1581, %vector.body1574 ]
  %193 = add nuw nsw i64 %index1580, %142
  %194 = add nuw nsw i64 %index1580, 1200
  %195 = getelementptr double, double* %Packed_MemRef_call1, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1584 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !84
  %197 = fmul fast <4 x double> %broadcast.splat1586, %wide.load1584
  %198 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2281.us.1
  %199 = getelementptr double, double* %Packed_MemRef_call2, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1587 = load <4 x double>, <4 x double>* %200, align 8
  %201 = fmul fast <4 x double> %broadcast.splat1589, %wide.load1587
  %202 = shl i64 %193, 3
  %203 = add nuw nsw i64 %202, %172
  %204 = getelementptr i8, i8* %call, i64 %203
  %205 = bitcast i8* %204 to <4 x double>*
  %wide.load1590 = load <4 x double>, <4 x double>* %205, align 8, !alias.scope !87, !noalias !89
  %206 = fadd fast <4 x double> %201, %197
  %207 = fmul fast <4 x double> %206, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %208 = fadd fast <4 x double> %207, %wide.load1590
  %209 = bitcast i8* %204 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !87, !noalias !89
  %index.next1581 = add i64 %index1580, 4
  %210 = icmp eq i64 %index.next1581, %n.vec1579
  br i1 %210, label %middle.block1572, label %vector.body1574, !llvm.loop !90

middle.block1572:                                 ; preds = %vector.body1574
  %cmp.n1583 = icmp eq i64 %153, %n.vec1579
  br i1 %cmp.n1583, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1.preheader

polly.loop_header270.us.1.preheader:              ; preds = %vector.memcheck1560, %polly.loop_exit272.loopexit.us, %middle.block1572
  %polly.indvar274.us.1.ph = phi i64 [ 0, %vector.memcheck1560 ], [ 0, %polly.loop_exit272.loopexit.us ], [ %n.vec1579, %middle.block1572 ]
  br label %polly.loop_header270.us.1

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1362 = phi i64 [ %indvar.next1363, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %211 = add i64 %indvar1362, 1
  %212 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %212
  %min.iters.check1364 = icmp ult i64 %211, 4
  br i1 %min.iters.check1364, label %polly.loop_header392.preheader, label %vector.ph1365

vector.ph1365:                                    ; preds = %polly.loop_header386
  %n.vec1367 = and i64 %211, -4
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1361 ]
  %213 = shl nuw nsw i64 %index1368, 3
  %214 = getelementptr i8, i8* %scevgep398, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %215, align 8, !alias.scope !91, !noalias !93
  %216 = fmul fast <4 x double> %wide.load1372, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %217 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %216, <4 x double>* %217, align 8, !alias.scope !91, !noalias !93
  %index.next1369 = add i64 %index1368, 4
  %218 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %218, label %middle.block1359, label %vector.body1361, !llvm.loop !98

middle.block1359:                                 ; preds = %vector.body1361
  %cmp.n1371 = icmp eq i64 %211, %n.vec1367
  br i1 %cmp.n1371, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1359
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1367, %middle.block1359 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1359
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1363 = add i64 %indvar1362, 1
  br i1 %exitcond1081.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %219 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %219
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !91, !noalias !93
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1080.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !99

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1079.not, label %polly.loop_header418.preheader, label %polly.loop_header402

polly.loop_header418.preheader:                   ; preds = %polly.loop_exit410
  %scevgep1397 = getelementptr i8, i8* %malloccall300, i64 19200
  %scevgep1398 = getelementptr i8, i8* %malloccall300, i64 19208
  %scevgep1428 = getelementptr i8, i8* %malloccall300, i64 9600
  %scevgep1429 = getelementptr i8, i8* %malloccall300, i64 9608
  %scevgep1459 = getelementptr i8, i8* %malloccall300, i64 8
  br label %polly.loop_header418

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1078.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_header418.preheader, %polly.loop_exit426
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit426 ], [ 1, %polly.loop_header418.preheader ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %220 = shl nuw nsw i64 %polly.indvar421, 5
  %221 = mul nuw nsw i64 %polly.indvar421, 307200
  %222 = or i64 %221, 8
  %223 = shl nuw nsw i64 %polly.indvar421, 5
  %224 = shl nuw nsw i64 %polly.indvar421, 5
  %225 = mul nuw nsw i64 %polly.indvar421, 307200
  %226 = or i64 %225, 8
  %227 = shl nuw nsw i64 %polly.indvar421, 5
  %228 = shl nuw nsw i64 %polly.indvar421, 5
  %229 = mul nuw nsw i64 %polly.indvar421, 307200
  %230 = or i64 %229, 8
  %231 = shl nuw nsw i64 %polly.indvar421, 5
  %232 = shl nuw nsw i64 %polly.indvar421, 5
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %233 = shl nsw i64 %polly.indvar421, 5
  %234 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 32
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %indvars.iv.next1074 = add nuw nsw i64 %indvars.iv1073, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next422, 38
  br i1 %exitcond1077.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %235 = shl nsw i64 %polly.indvar427, 2
  %236 = or i64 %235, 1
  %237 = or i64 %235, 2
  %238 = or i64 %235, 3
  %polly.access.mul.Packed_MemRef_call2303489.us = mul nsw i64 %polly.indvar427, 4800
  %239 = or i64 %235, 1
  %polly.access.mul.Packed_MemRef_call2303489.us.1 = mul nuw nsw i64 %239, 1200
  %240 = or i64 %235, 2
  %polly.access.mul.Packed_MemRef_call2303489.us.2 = mul nuw nsw i64 %240, 1200
  %241 = or i64 %235, 3
  %polly.access.mul.Packed_MemRef_call2303489.us.3 = mul nuw nsw i64 %241, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_exit438
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next428, 250
  br i1 %exitcond1076.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_exit438, %polly.loop_header424
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit438 ], [ %indvars.iv1057, %polly.loop_header424 ]
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit438 ], [ 0, %polly.loop_header424 ]
  %242 = mul nsw i64 %polly.indvar433, -32
  %243 = add i64 %220, %242
  %244 = shl nuw nsw i64 %polly.indvar433, 8
  %245 = add nuw i64 %221, %244
  %246 = add nuw i64 %222, %244
  %247 = mul nsw i64 %polly.indvar433, -32
  %248 = add i64 %223, %247
  %249 = mul nsw i64 %polly.indvar433, -32
  %250 = add i64 %224, %249
  %251 = shl nuw nsw i64 %polly.indvar433, 8
  %252 = add nuw i64 %225, %251
  %253 = add nuw i64 %226, %251
  %254 = mul nsw i64 %polly.indvar433, -32
  %255 = add i64 %227, %254
  %256 = mul nsw i64 %polly.indvar433, -32
  %257 = add i64 %228, %256
  %258 = shl nuw nsw i64 %polly.indvar433, 8
  %259 = add nuw i64 %229, %258
  %260 = add nuw i64 %230, %258
  %261 = mul nsw i64 %polly.indvar433, -32
  %262 = add i64 %231, %261
  %263 = mul nsw i64 %polly.indvar433, -32
  %264 = add i64 %232, %263
  %265 = shl nsw i64 %polly.indvar433, 5
  %266 = sub nsw i64 %233, %265
  %267 = add nuw nsw i64 %265, 32
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit473
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1073
  br i1 %exitcond1075.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header436:                             ; preds = %polly.loop_exit473, %polly.loop_header430
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit473 ], [ %indvars.iv1059, %polly.loop_header430 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit473 ], [ 0, %polly.loop_header430 ]
  %268 = add i64 %243, %polly.indvar439
  %smin1468 = call i64 @llvm.smin.i64(i64 %268, i64 31)
  %269 = add nsw i64 %smin1468, 1
  %270 = mul i64 %polly.indvar439, 9600
  %271 = add i64 %245, %270
  %scevgep1455 = getelementptr i8, i8* %call, i64 %271
  %272 = add i64 %246, %270
  %scevgep1456 = getelementptr i8, i8* %call, i64 %272
  %273 = add i64 %248, %polly.indvar439
  %smin1457 = call i64 @llvm.smin.i64(i64 %273, i64 31)
  %274 = shl nsw i64 %smin1457, 3
  %scevgep1458 = getelementptr i8, i8* %scevgep1456, i64 %274
  %scevgep1460 = getelementptr i8, i8* %scevgep1459, i64 %274
  %275 = add i64 %250, %polly.indvar439
  %smin1438 = call i64 @llvm.smin.i64(i64 %275, i64 31)
  %276 = add nsw i64 %smin1438, 1
  %277 = mul i64 %polly.indvar439, 9600
  %278 = add i64 %252, %277
  %scevgep1424 = getelementptr i8, i8* %call, i64 %278
  %279 = add i64 %253, %277
  %scevgep1425 = getelementptr i8, i8* %call, i64 %279
  %280 = add i64 %255, %polly.indvar439
  %smin1426 = call i64 @llvm.smin.i64(i64 %280, i64 31)
  %281 = shl nsw i64 %smin1426, 3
  %scevgep1427 = getelementptr i8, i8* %scevgep1425, i64 %281
  %scevgep1430 = getelementptr i8, i8* %scevgep1429, i64 %281
  %282 = add i64 %257, %polly.indvar439
  %smin1407 = call i64 @llvm.smin.i64(i64 %282, i64 31)
  %283 = add nsw i64 %smin1407, 1
  %284 = mul i64 %polly.indvar439, 9600
  %285 = add i64 %259, %284
  %scevgep1393 = getelementptr i8, i8* %call, i64 %285
  %286 = add i64 %260, %284
  %scevgep1394 = getelementptr i8, i8* %call, i64 %286
  %287 = add i64 %262, %polly.indvar439
  %smin1395 = call i64 @llvm.smin.i64(i64 %287, i64 31)
  %288 = shl nsw i64 %smin1395, 3
  %scevgep1396 = getelementptr i8, i8* %scevgep1394, i64 %288
  %scevgep1399 = getelementptr i8, i8* %scevgep1398, i64 %288
  %289 = add i64 %264, %polly.indvar439
  %smin1376 = call i64 @llvm.smin.i64(i64 %289, i64 31)
  %290 = add nsw i64 %smin1376, 1
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 31)
  %291 = add nsw i64 %polly.indvar439, %266
  %polly.loop_guard4521143 = icmp sgt i64 %291, -1
  %292 = add nuw nsw i64 %polly.indvar439, %233
  %.not918 = icmp ult i64 %292, %267
  %polly.access.mul.call1465 = mul nuw nsw i64 %292, 1000
  %293 = add nuw nsw i64 %polly.access.mul.call1465, %235
  br i1 %polly.loop_guard4521143, label %polly.loop_header449.us, label %polly.loop_header436.split

polly.loop_header449.us:                          ; preds = %polly.loop_header436, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header436 ]
  %294 = add nuw nsw i64 %polly.indvar453.us, %265
  %polly.access.mul.call1457.us = mul nuw nsw i64 %294, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %235, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar453.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar453.us, %smin1066
  br i1 %exitcond1064.not, label %polly.cond460.loopexit.us, label %polly.loop_header449.us

polly.then462.us:                                 ; preds = %polly.cond460.loopexit.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1716, i64 %293
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301470.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %291
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1301470.us, align 8
  br label %polly.loop_header449.us.1.preheader

polly.cond460.loopexit.us:                        ; preds = %polly.loop_header449.us
  br i1 %.not918, label %polly.loop_header449.us.1.preheader, label %polly.then462.us

polly.loop_header449.us.1.preheader:              ; preds = %polly.then462.us, %polly.cond460.loopexit.us
  br label %polly.loop_header449.us.1

polly.loop_header436.split:                       ; preds = %polly.loop_header436
  br i1 %.not918, label %polly.loop_exit473, label %polly.loop_header442.preheader

polly.loop_header442.preheader:                   ; preds = %polly.loop_header436.split
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1716, i64 %293
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301470 = getelementptr double, double* %Packed_MemRef_call1301, i64 %291
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1301470, align 8
  %polly.access.add.call1466.1 = or i64 %293, 1
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.1 = add nsw i64 %291, 1200
  %polly.access.Packed_MemRef_call1301470.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1301470.1, align 8
  %polly.access.add.call1466.2 = or i64 %293, 2
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.2 = add nsw i64 %291, 2400
  %polly.access.Packed_MemRef_call1301470.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1301470.2, align 8
  %polly.access.add.call1466.3 = or i64 %293, 3
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.3 = add nsw i64 %291, 3600
  %polly.access.Packed_MemRef_call1301470.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1301470.3, align 8
  br label %polly.loop_exit473

polly.loop_exit473:                               ; preds = %polly.loop_header478.us.3, %middle.block1373, %polly.loop_header436.split, %polly.loop_header442.preheader, %polly.loop_header471.preheader
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar439, %234
  br i1 %exitcond1072.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header471.preheader:                   ; preds = %polly.cond460.loopexit.us.3, %polly.then462.us.3
  %295 = mul nuw nsw i64 %292, 9600
  br i1 %polly.loop_guard4521143, label %polly.loop_header471.us.preheader, label %polly.loop_exit473

polly.loop_header471.us.preheader:                ; preds = %polly.loop_header471.preheader
  %polly.access.add.Packed_MemRef_call2303490.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us, %292
  %polly.access.Packed_MemRef_call2303491.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2303491.us, align 8
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %291
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %min.iters.check1469 = icmp ult i64 %269, 4
  br i1 %min.iters.check1469, label %polly.loop_header478.us.preheader, label %vector.memcheck1454

vector.memcheck1454:                              ; preds = %polly.loop_header471.us.preheader
  %bound01461 = icmp ult i8* %scevgep1455, %scevgep1460
  %bound11462 = icmp ult i8* %malloccall300, %scevgep1458
  %found.conflict1463 = and i1 %bound01461, %bound11462
  br i1 %found.conflict1463, label %polly.loop_header478.us.preheader, label %vector.ph1470

vector.ph1470:                                    ; preds = %vector.memcheck1454
  %n.vec1472 = and i64 %269, -4
  %broadcast.splatinsert1478 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1479 = shufflevector <4 x double> %broadcast.splatinsert1478, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1481 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1482 = shufflevector <4 x double> %broadcast.splatinsert1481, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1467

vector.body1467:                                  ; preds = %vector.body1467, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1474, %vector.body1467 ]
  %296 = add nuw nsw i64 %index1473, %265
  %297 = getelementptr double, double* %Packed_MemRef_call1301, i64 %index1473
  %298 = bitcast double* %297 to <4 x double>*
  %wide.load1477 = load <4 x double>, <4 x double>* %298, align 8, !alias.scope !102
  %299 = fmul fast <4 x double> %broadcast.splat1479, %wide.load1477
  %300 = add nuw nsw i64 %296, %polly.access.mul.Packed_MemRef_call2303489.us
  %301 = getelementptr double, double* %Packed_MemRef_call2303, i64 %300
  %302 = bitcast double* %301 to <4 x double>*
  %wide.load1480 = load <4 x double>, <4 x double>* %302, align 8
  %303 = fmul fast <4 x double> %broadcast.splat1482, %wide.load1480
  %304 = shl i64 %296, 3
  %305 = add nuw nsw i64 %304, %295
  %306 = getelementptr i8, i8* %call, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  %wide.load1483 = load <4 x double>, <4 x double>* %307, align 8, !alias.scope !105, !noalias !107
  %308 = fadd fast <4 x double> %303, %299
  %309 = fmul fast <4 x double> %308, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %310 = fadd fast <4 x double> %309, %wide.load1483
  %311 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %310, <4 x double>* %311, align 8, !alias.scope !105, !noalias !107
  %index.next1474 = add i64 %index1473, 4
  %312 = icmp eq i64 %index.next1474, %n.vec1472
  br i1 %312, label %middle.block1465, label %vector.body1467, !llvm.loop !108

middle.block1465:                                 ; preds = %vector.body1467
  %cmp.n1476 = icmp eq i64 %269, %n.vec1472
  br i1 %cmp.n1476, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us.preheader

polly.loop_header478.us.preheader:                ; preds = %vector.memcheck1454, %polly.loop_header471.us.preheader, %middle.block1465
  %polly.indvar482.us.ph = phi i64 [ 0, %vector.memcheck1454 ], [ 0, %polly.loop_header471.us.preheader ], [ %n.vec1472, %middle.block1465 ]
  br label %polly.loop_header478.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.us.preheader, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ %polly.indvar482.us.ph, %polly.loop_header478.us.preheader ]
  %313 = add nuw nsw i64 %polly.indvar482.us, %265
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar482.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.add.Packed_MemRef_call2303494.us = add nuw nsw i64 %313, %polly.access.mul.Packed_MemRef_call2303489.us
  %polly.access.Packed_MemRef_call2303495.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2303495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %314 = shl i64 %313, 3
  %315 = add nuw nsw i64 %314, %295
  %scevgep501.us = getelementptr i8, i8* %call, i64 %315
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar482.us, %smin1066
  br i1 %exitcond1067.not, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us, !llvm.loop !109

polly.loop_exit480.loopexit.us:                   ; preds = %polly.loop_header478.us, %middle.block1465
  %polly.access.add.Packed_MemRef_call2303490.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us.1, %292
  %polly.access.Packed_MemRef_call2303491.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us.1
  %_p_scalar_492.us.1 = load double, double* %polly.access.Packed_MemRef_call2303491.us.1, align 8
  %polly.access.add.Packed_MemRef_call1301498.us.1 = add nsw i64 %291, 1200
  %polly.access.Packed_MemRef_call1301499.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call1301499.us.1, align 8
  %min.iters.check1439 = icmp ult i64 %276, 4
  br i1 %min.iters.check1439, label %polly.loop_header478.us.1.preheader, label %vector.memcheck1423

vector.memcheck1423:                              ; preds = %polly.loop_exit480.loopexit.us
  %bound01431 = icmp ult i8* %scevgep1424, %scevgep1430
  %bound11432 = icmp ult i8* %scevgep1428, %scevgep1427
  %found.conflict1433 = and i1 %bound01431, %bound11432
  br i1 %found.conflict1433, label %polly.loop_header478.us.1.preheader, label %vector.ph1440

vector.ph1440:                                    ; preds = %vector.memcheck1423
  %n.vec1442 = and i64 %276, -4
  %broadcast.splatinsert1448 = insertelement <4 x double> poison, double %_p_scalar_492.us.1, i32 0
  %broadcast.splat1449 = shufflevector <4 x double> %broadcast.splatinsert1448, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1451 = insertelement <4 x double> poison, double %_p_scalar_500.us.1, i32 0
  %broadcast.splat1452 = shufflevector <4 x double> %broadcast.splatinsert1451, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %vector.ph1440
  %index1443 = phi i64 [ 0, %vector.ph1440 ], [ %index.next1444, %vector.body1437 ]
  %316 = add nuw nsw i64 %index1443, %265
  %317 = add nuw nsw i64 %index1443, 1200
  %318 = getelementptr double, double* %Packed_MemRef_call1301, i64 %317
  %319 = bitcast double* %318 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %319, align 8, !alias.scope !110
  %320 = fmul fast <4 x double> %broadcast.splat1449, %wide.load1447
  %321 = add nuw nsw i64 %316, %polly.access.mul.Packed_MemRef_call2303489.us.1
  %322 = getelementptr double, double* %Packed_MemRef_call2303, i64 %321
  %323 = bitcast double* %322 to <4 x double>*
  %wide.load1450 = load <4 x double>, <4 x double>* %323, align 8
  %324 = fmul fast <4 x double> %broadcast.splat1452, %wide.load1450
  %325 = shl i64 %316, 3
  %326 = add nuw nsw i64 %325, %295
  %327 = getelementptr i8, i8* %call, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  %wide.load1453 = load <4 x double>, <4 x double>* %328, align 8, !alias.scope !113, !noalias !115
  %329 = fadd fast <4 x double> %324, %320
  %330 = fmul fast <4 x double> %329, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %331 = fadd fast <4 x double> %330, %wide.load1453
  %332 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %331, <4 x double>* %332, align 8, !alias.scope !113, !noalias !115
  %index.next1444 = add i64 %index1443, 4
  %333 = icmp eq i64 %index.next1444, %n.vec1442
  br i1 %333, label %middle.block1435, label %vector.body1437, !llvm.loop !116

middle.block1435:                                 ; preds = %vector.body1437
  %cmp.n1446 = icmp eq i64 %276, %n.vec1442
  br i1 %cmp.n1446, label %polly.loop_exit480.loopexit.us.1, label %polly.loop_header478.us.1.preheader

polly.loop_header478.us.1.preheader:              ; preds = %vector.memcheck1423, %polly.loop_exit480.loopexit.us, %middle.block1435
  %polly.indvar482.us.1.ph = phi i64 [ 0, %vector.memcheck1423 ], [ 0, %polly.loop_exit480.loopexit.us ], [ %n.vec1442, %middle.block1435 ]
  br label %polly.loop_header478.us.1

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall510 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header594

polly.exiting507:                                 ; preds = %polly.loop_exit634
  tail call void @free(i8* %malloccall508)
  tail call void @free(i8* %malloccall510)
  br label %kernel_syr2k.exit

polly.loop_header594:                             ; preds = %polly.loop_exit602, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit602 ], [ 0, %polly.start506 ]
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 1, %polly.start506 ]
  %334 = add i64 %indvar, 1
  %335 = mul nuw nsw i64 %polly.indvar597, 9600
  %scevgep606 = getelementptr i8, i8* %call, i64 %335
  %min.iters.check1227 = icmp ult i64 %334, 4
  br i1 %min.iters.check1227, label %polly.loop_header600.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %polly.loop_header594
  %n.vec1230 = and i64 %334, -4
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1226 ]
  %336 = shl nuw nsw i64 %index1231, 3
  %337 = getelementptr i8, i8* %scevgep606, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %338, align 8, !alias.scope !117, !noalias !119
  %339 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %340 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %339, <4 x double>* %340, align 8, !alias.scope !117, !noalias !119
  %index.next1232 = add i64 %index1231, 4
  %341 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %341, label %middle.block1224, label %vector.body1226, !llvm.loop !124

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %334, %n.vec1230
  br i1 %cmp.n1234, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1224
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1230, %middle.block1224 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1224
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next598, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1107.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %342 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %342
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !117, !noalias !119
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1106.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !125

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_header610.preheader ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar613, 1200
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next614, 1000
  br i1 %exitcond1105.not, label %polly.loop_header626.preheader, label %polly.loop_header610

polly.loop_header626.preheader:                   ; preds = %polly.loop_exit618
  %scevgep1260 = getelementptr i8, i8* %malloccall508, i64 19200
  %scevgep1261 = getelementptr i8, i8* %malloccall508, i64 19208
  %scevgep1291 = getelementptr i8, i8* %malloccall508, i64 9600
  %scevgep1292 = getelementptr i8, i8* %malloccall508, i64 9608
  %scevgep1322 = getelementptr i8, i8* %malloccall508, i64 8
  br label %polly.loop_header626

polly.loop_header616:                             ; preds = %polly.loop_header616, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_header616 ]
  %polly.access.mul.call2623 = mul nuw nsw i64 %polly.indvar619, 1000
  %polly.access.add.call2624 = add nuw nsw i64 %polly.access.mul.call2623, %polly.indvar613
  %polly.access.call2625 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2624
  %polly.access.call2625.load = load double, double* %polly.access.call2625, align 8, !alias.scope !121, !noalias !126
  %polly.access.add.Packed_MemRef_call2511 = add nuw nsw i64 %polly.indvar619, %polly.access.mul.Packed_MemRef_call2511
  %polly.access.Packed_MemRef_call2511 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511
  store double %polly.access.call2625.load, double* %polly.access.Packed_MemRef_call2511, align 8
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next620, 1200
  br i1 %exitcond1104.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header626:                             ; preds = %polly.loop_header626.preheader, %polly.loop_exit634
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit634 ], [ 1, %polly.loop_header626.preheader ]
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit634 ], [ 0, %polly.loop_header626.preheader ]
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit634 ], [ 0, %polly.loop_header626.preheader ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_header626.preheader ]
  %343 = shl nuw nsw i64 %polly.indvar629, 5
  %344 = mul nuw nsw i64 %polly.indvar629, 307200
  %345 = or i64 %344, 8
  %346 = shl nuw nsw i64 %polly.indvar629, 5
  %347 = shl nuw nsw i64 %polly.indvar629, 5
  %348 = mul nuw nsw i64 %polly.indvar629, 307200
  %349 = or i64 %348, 8
  %350 = shl nuw nsw i64 %polly.indvar629, 5
  %351 = shl nuw nsw i64 %polly.indvar629, 5
  %352 = mul nuw nsw i64 %polly.indvar629, 307200
  %353 = or i64 %352, 8
  %354 = shl nuw nsw i64 %polly.indvar629, 5
  %355 = shl nuw nsw i64 %polly.indvar629, 5
  %smin1097 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 -1168)
  %356 = shl nsw i64 %polly.indvar629, 5
  %357 = add nsw i64 %smin1097, 1199
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit640
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 32
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -32
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next630, 38
  br i1 %exitcond1103.not, label %polly.exiting507, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_exit640, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_exit640 ]
  %358 = shl nsw i64 %polly.indvar635, 2
  %359 = or i64 %358, 1
  %360 = or i64 %358, 2
  %361 = or i64 %358, 3
  %polly.access.mul.Packed_MemRef_call2511697.us = mul nsw i64 %polly.indvar635, 4800
  %362 = or i64 %358, 1
  %polly.access.mul.Packed_MemRef_call2511697.us.1 = mul nuw nsw i64 %362, 1200
  %363 = or i64 %358, 2
  %polly.access.mul.Packed_MemRef_call2511697.us.2 = mul nuw nsw i64 %363, 1200
  %364 = or i64 %358, 3
  %polly.access.mul.Packed_MemRef_call2511697.us.3 = mul nuw nsw i64 %364, 1200
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit646
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next636, 250
  br i1 %exitcond1102.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_exit646, %polly.loop_header632
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %polly.loop_exit646 ], [ %indvars.iv1083, %polly.loop_header632 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit646 ], [ 0, %polly.loop_header632 ]
  %365 = mul nsw i64 %polly.indvar641, -32
  %366 = add i64 %343, %365
  %367 = shl nuw nsw i64 %polly.indvar641, 8
  %368 = add nuw i64 %344, %367
  %369 = add nuw i64 %345, %367
  %370 = mul nsw i64 %polly.indvar641, -32
  %371 = add i64 %346, %370
  %372 = mul nsw i64 %polly.indvar641, -32
  %373 = add i64 %347, %372
  %374 = shl nuw nsw i64 %polly.indvar641, 8
  %375 = add nuw i64 %348, %374
  %376 = add nuw i64 %349, %374
  %377 = mul nsw i64 %polly.indvar641, -32
  %378 = add i64 %350, %377
  %379 = mul nsw i64 %polly.indvar641, -32
  %380 = add i64 %351, %379
  %381 = shl nuw nsw i64 %polly.indvar641, 8
  %382 = add nuw i64 %352, %381
  %383 = add nuw i64 %353, %381
  %384 = mul nsw i64 %polly.indvar641, -32
  %385 = add i64 %354, %384
  %386 = mul nsw i64 %polly.indvar641, -32
  %387 = add i64 %355, %386
  %388 = shl nsw i64 %polly.indvar641, 5
  %389 = sub nsw i64 %356, %388
  %390 = add nuw nsw i64 %388, 32
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit681
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, -32
  %exitcond1101.not = icmp eq i64 %polly.indvar_next642, %indvars.iv1099
  br i1 %exitcond1101.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_exit681, %polly.loop_header638
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit681 ], [ %indvars.iv1085, %polly.loop_header638 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit681 ], [ 0, %polly.loop_header638 ]
  %391 = add i64 %366, %polly.indvar647
  %smin1331 = call i64 @llvm.smin.i64(i64 %391, i64 31)
  %392 = add nsw i64 %smin1331, 1
  %393 = mul i64 %polly.indvar647, 9600
  %394 = add i64 %368, %393
  %scevgep1318 = getelementptr i8, i8* %call, i64 %394
  %395 = add i64 %369, %393
  %scevgep1319 = getelementptr i8, i8* %call, i64 %395
  %396 = add i64 %371, %polly.indvar647
  %smin1320 = call i64 @llvm.smin.i64(i64 %396, i64 31)
  %397 = shl nsw i64 %smin1320, 3
  %scevgep1321 = getelementptr i8, i8* %scevgep1319, i64 %397
  %scevgep1323 = getelementptr i8, i8* %scevgep1322, i64 %397
  %398 = add i64 %373, %polly.indvar647
  %smin1301 = call i64 @llvm.smin.i64(i64 %398, i64 31)
  %399 = add nsw i64 %smin1301, 1
  %400 = mul i64 %polly.indvar647, 9600
  %401 = add i64 %375, %400
  %scevgep1287 = getelementptr i8, i8* %call, i64 %401
  %402 = add i64 %376, %400
  %scevgep1288 = getelementptr i8, i8* %call, i64 %402
  %403 = add i64 %378, %polly.indvar647
  %smin1289 = call i64 @llvm.smin.i64(i64 %403, i64 31)
  %404 = shl nsw i64 %smin1289, 3
  %scevgep1290 = getelementptr i8, i8* %scevgep1288, i64 %404
  %scevgep1293 = getelementptr i8, i8* %scevgep1292, i64 %404
  %405 = add i64 %380, %polly.indvar647
  %smin1270 = call i64 @llvm.smin.i64(i64 %405, i64 31)
  %406 = add nsw i64 %smin1270, 1
  %407 = mul i64 %polly.indvar647, 9600
  %408 = add i64 %382, %407
  %scevgep1256 = getelementptr i8, i8* %call, i64 %408
  %409 = add i64 %383, %407
  %scevgep1257 = getelementptr i8, i8* %call, i64 %409
  %410 = add i64 %385, %polly.indvar647
  %smin1258 = call i64 @llvm.smin.i64(i64 %410, i64 31)
  %411 = shl nsw i64 %smin1258, 3
  %scevgep1259 = getelementptr i8, i8* %scevgep1257, i64 %411
  %scevgep1262 = getelementptr i8, i8* %scevgep1261, i64 %411
  %412 = add i64 %387, %polly.indvar647
  %smin1239 = call i64 @llvm.smin.i64(i64 %412, i64 31)
  %413 = add nsw i64 %smin1239, 1
  %smin1092 = call i64 @llvm.smin.i64(i64 %indvars.iv1087, i64 31)
  %414 = add nsw i64 %polly.indvar647, %389
  %polly.loop_guard6601144 = icmp sgt i64 %414, -1
  %415 = add nuw nsw i64 %polly.indvar647, %356
  %.not919 = icmp ult i64 %415, %390
  %polly.access.mul.call1673 = mul nuw nsw i64 %415, 1000
  %416 = add nuw nsw i64 %polly.access.mul.call1673, %358
  br i1 %polly.loop_guard6601144, label %polly.loop_header657.us, label %polly.loop_header644.split

polly.loop_header657.us:                          ; preds = %polly.loop_header644, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header644 ]
  %417 = add nuw nsw i64 %polly.indvar661.us, %388
  %polly.access.mul.call1665.us = mul nuw nsw i64 %417, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %358, %polly.access.mul.call1665.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.indvar661.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar661.us, %smin1092
  br i1 %exitcond1090.not, label %polly.cond668.loopexit.us, label %polly.loop_header657.us

polly.then670.us:                                 ; preds = %polly.cond668.loopexit.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1716, i64 %416
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1509678.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %414
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1509678.us, align 8
  br label %polly.loop_header657.us.1.preheader

polly.cond668.loopexit.us:                        ; preds = %polly.loop_header657.us
  br i1 %.not919, label %polly.loop_header657.us.1.preheader, label %polly.then670.us

polly.loop_header657.us.1.preheader:              ; preds = %polly.then670.us, %polly.cond668.loopexit.us
  br label %polly.loop_header657.us.1

polly.loop_header644.split:                       ; preds = %polly.loop_header644
  br i1 %.not919, label %polly.loop_exit681, label %polly.loop_header650.preheader

polly.loop_header650.preheader:                   ; preds = %polly.loop_header644.split
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1716, i64 %416
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1509678 = getelementptr double, double* %Packed_MemRef_call1509, i64 %414
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1509678, align 8
  %polly.access.add.call1674.1 = or i64 %416, 1
  %polly.access.call1675.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.1
  %polly.access.call1675.load.1 = load double, double* %polly.access.call1675.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.1 = add nsw i64 %414, 1200
  %polly.access.Packed_MemRef_call1509678.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.1
  store double %polly.access.call1675.load.1, double* %polly.access.Packed_MemRef_call1509678.1, align 8
  %polly.access.add.call1674.2 = or i64 %416, 2
  %polly.access.call1675.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.2
  %polly.access.call1675.load.2 = load double, double* %polly.access.call1675.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.2 = add nsw i64 %414, 2400
  %polly.access.Packed_MemRef_call1509678.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.2
  store double %polly.access.call1675.load.2, double* %polly.access.Packed_MemRef_call1509678.2, align 8
  %polly.access.add.call1674.3 = or i64 %416, 3
  %polly.access.call1675.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.3
  %polly.access.call1675.load.3 = load double, double* %polly.access.call1675.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.3 = add nsw i64 %414, 3600
  %polly.access.Packed_MemRef_call1509678.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.3
  store double %polly.access.call1675.load.3, double* %polly.access.Packed_MemRef_call1509678.3, align 8
  br label %polly.loop_exit681

polly.loop_exit681:                               ; preds = %polly.loop_header686.us.3, %middle.block1236, %polly.loop_header644.split, %polly.loop_header650.preheader, %polly.loop_header679.preheader
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar647, %357
  br i1 %exitcond1098.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.cond668.loopexit.us.3, %polly.then670.us.3
  %418 = mul nuw nsw i64 %415, 9600
  br i1 %polly.loop_guard6601144, label %polly.loop_header679.us.preheader, label %polly.loop_exit681

polly.loop_header679.us.preheader:                ; preds = %polly.loop_header679.preheader
  %polly.access.add.Packed_MemRef_call2511698.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us, %415
  %polly.access.Packed_MemRef_call2511699.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2511699.us, align 8
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %414
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %min.iters.check1332 = icmp ult i64 %392, 4
  br i1 %min.iters.check1332, label %polly.loop_header686.us.preheader, label %vector.memcheck1317

vector.memcheck1317:                              ; preds = %polly.loop_header679.us.preheader
  %bound01324 = icmp ult i8* %scevgep1318, %scevgep1323
  %bound11325 = icmp ult i8* %malloccall508, %scevgep1321
  %found.conflict1326 = and i1 %bound01324, %bound11325
  br i1 %found.conflict1326, label %polly.loop_header686.us.preheader, label %vector.ph1333

vector.ph1333:                                    ; preds = %vector.memcheck1317
  %n.vec1335 = and i64 %392, -4
  %broadcast.splatinsert1341 = insertelement <4 x double> poison, double %_p_scalar_700.us, i32 0
  %broadcast.splat1342 = shufflevector <4 x double> %broadcast.splatinsert1341, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1344 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1345 = shufflevector <4 x double> %broadcast.splatinsert1344, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1330 ]
  %419 = add nuw nsw i64 %index1336, %388
  %420 = getelementptr double, double* %Packed_MemRef_call1509, i64 %index1336
  %421 = bitcast double* %420 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %421, align 8, !alias.scope !128
  %422 = fmul fast <4 x double> %broadcast.splat1342, %wide.load1340
  %423 = add nuw nsw i64 %419, %polly.access.mul.Packed_MemRef_call2511697.us
  %424 = getelementptr double, double* %Packed_MemRef_call2511, i64 %423
  %425 = bitcast double* %424 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %425, align 8
  %426 = fmul fast <4 x double> %broadcast.splat1345, %wide.load1343
  %427 = shl i64 %419, 3
  %428 = add nuw nsw i64 %427, %418
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %430, align 8, !alias.scope !131, !noalias !133
  %431 = fadd fast <4 x double> %426, %422
  %432 = fmul fast <4 x double> %431, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %433 = fadd fast <4 x double> %432, %wide.load1346
  %434 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %433, <4 x double>* %434, align 8, !alias.scope !131, !noalias !133
  %index.next1337 = add i64 %index1336, 4
  %435 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %435, label %middle.block1328, label %vector.body1330, !llvm.loop !134

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1339 = icmp eq i64 %392, %n.vec1335
  br i1 %cmp.n1339, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us.preheader

polly.loop_header686.us.preheader:                ; preds = %vector.memcheck1317, %polly.loop_header679.us.preheader, %middle.block1328
  %polly.indvar690.us.ph = phi i64 [ 0, %vector.memcheck1317 ], [ 0, %polly.loop_header679.us.preheader ], [ %n.vec1335, %middle.block1328 ]
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ %polly.indvar690.us.ph, %polly.loop_header686.us.preheader ]
  %436 = add nuw nsw i64 %polly.indvar690.us, %388
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.indvar690.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %polly.access.add.Packed_MemRef_call2511702.us = add nuw nsw i64 %436, %polly.access.mul.Packed_MemRef_call2511697.us
  %polly.access.Packed_MemRef_call2511703.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call2511703.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %437 = shl i64 %436, 3
  %438 = add nuw nsw i64 %437, %418
  %scevgep709.us = getelementptr i8, i8* %call, i64 %438
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar690.us, %smin1092
  br i1 %exitcond1093.not, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us, !llvm.loop !135

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_header686.us, %middle.block1328
  %polly.access.add.Packed_MemRef_call2511698.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us.1, %415
  %polly.access.Packed_MemRef_call2511699.us.1 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us.1
  %_p_scalar_700.us.1 = load double, double* %polly.access.Packed_MemRef_call2511699.us.1, align 8
  %polly.access.add.Packed_MemRef_call1509706.us.1 = add nsw i64 %414, 1200
  %polly.access.Packed_MemRef_call1509707.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call1509707.us.1, align 8
  %min.iters.check1302 = icmp ult i64 %399, 4
  br i1 %min.iters.check1302, label %polly.loop_header686.us.1.preheader, label %vector.memcheck1286

vector.memcheck1286:                              ; preds = %polly.loop_exit688.loopexit.us
  %bound01294 = icmp ult i8* %scevgep1287, %scevgep1293
  %bound11295 = icmp ult i8* %scevgep1291, %scevgep1290
  %found.conflict1296 = and i1 %bound01294, %bound11295
  br i1 %found.conflict1296, label %polly.loop_header686.us.1.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %vector.memcheck1286
  %n.vec1305 = and i64 %399, -4
  %broadcast.splatinsert1311 = insertelement <4 x double> poison, double %_p_scalar_700.us.1, i32 0
  %broadcast.splat1312 = shufflevector <4 x double> %broadcast.splatinsert1311, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1314 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1315 = shufflevector <4 x double> %broadcast.splatinsert1314, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1300 ]
  %439 = add nuw nsw i64 %index1306, %388
  %440 = add nuw nsw i64 %index1306, 1200
  %441 = getelementptr double, double* %Packed_MemRef_call1509, i64 %440
  %442 = bitcast double* %441 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %442, align 8, !alias.scope !136
  %443 = fmul fast <4 x double> %broadcast.splat1312, %wide.load1310
  %444 = add nuw nsw i64 %439, %polly.access.mul.Packed_MemRef_call2511697.us.1
  %445 = getelementptr double, double* %Packed_MemRef_call2511, i64 %444
  %446 = bitcast double* %445 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %446, align 8
  %447 = fmul fast <4 x double> %broadcast.splat1315, %wide.load1313
  %448 = shl i64 %439, 3
  %449 = add nuw nsw i64 %448, %418
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %451, align 8, !alias.scope !139, !noalias !141
  %452 = fadd fast <4 x double> %447, %443
  %453 = fmul fast <4 x double> %452, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %454 = fadd fast <4 x double> %453, %wide.load1316
  %455 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %454, <4 x double>* %455, align 8, !alias.scope !139, !noalias !141
  %index.next1307 = add i64 %index1306, 4
  %456 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %456, label %middle.block1298, label %vector.body1300, !llvm.loop !142

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1309 = icmp eq i64 %399, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit688.loopexit.us.1, label %polly.loop_header686.us.1.preheader

polly.loop_header686.us.1.preheader:              ; preds = %vector.memcheck1286, %polly.loop_exit688.loopexit.us, %middle.block1298
  %polly.indvar690.us.1.ph = phi i64 [ 0, %vector.memcheck1286 ], [ 0, %polly.loop_exit688.loopexit.us ], [ %n.vec1305, %middle.block1298 ]
  br label %polly.loop_header686.us.1

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %457 = shl nsw i64 %polly.indvar841, 5
  %458 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1137.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %459 = mul nsw i64 %polly.indvar847, -32
  %smin = call i64 @llvm.smin.i64(i64 %459, i64 -1168)
  %460 = add nsw i64 %smin, 1200
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %461 = shl nsw i64 %polly.indvar847, 5
  %462 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1136.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1136.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %463 = add nuw nsw i64 %polly.indvar853, %457
  %464 = trunc i64 %463 to i32
  %465 = mul nuw nsw i64 %463, 9600
  %min.iters.check = icmp eq i64 %460, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1166

vector.ph1166:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1173 = insertelement <4 x i64> poison, i64 %461, i32 0
  %broadcast.splat1174 = shufflevector <4 x i64> %broadcast.splatinsert1173, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %464, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1166
  %index1167 = phi i64 [ 0, %vector.ph1166 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1166 ], [ %vec.ind.next1172, %vector.body1165 ]
  %466 = add nuw nsw <4 x i64> %vec.ind1171, %broadcast.splat1174
  %467 = trunc <4 x i64> %466 to <4 x i32>
  %468 = mul <4 x i32> %broadcast.splat1176, %467
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 1200, i32 1200, i32 1200, i32 1200>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %473 = extractelement <4 x i64> %466, i32 0
  %474 = shl i64 %473, 3
  %475 = add nuw nsw i64 %474, %465
  %476 = getelementptr i8, i8* %call, i64 %475
  %477 = bitcast i8* %476 to <4 x double>*
  store <4 x double> %472, <4 x double>* %477, align 8, !alias.scope !143, !noalias !145
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %478 = icmp eq i64 %index.next1168, %460
  br i1 %478, label %polly.loop_exit858, label %vector.body1165, !llvm.loop !148

polly.loop_exit858:                               ; preds = %vector.body1165, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar853, %458
  br i1 %exitcond1135.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %479 = add nuw nsw i64 %polly.indvar859, %461
  %480 = trunc i64 %479 to i32
  %481 = mul i32 %480, %464
  %482 = add i32 %481, 3
  %483 = urem i32 %482, 1200
  %p_conv31.i = sitofp i32 %483 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %484 = shl i64 %479, 3
  %485 = add nuw nsw i64 %484, %465
  %scevgep862 = getelementptr i8, i8* %call, i64 %485
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !143, !noalias !145
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar859, %462
  br i1 %exitcond1131.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !149

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -1168)
  %486 = shl nsw i64 %polly.indvar868, 5
  %487 = add nsw i64 %smin1124, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1127.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %488 = mul nsw i64 %polly.indvar874, -32
  %smin1180 = call i64 @llvm.smin.i64(i64 %488, i64 -968)
  %489 = add nsw i64 %smin1180, 1000
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -968)
  %490 = shl nsw i64 %polly.indvar874, 5
  %491 = add nsw i64 %smin1120, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1126.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1126.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %492 = add nuw nsw i64 %polly.indvar880, %486
  %493 = trunc i64 %492 to i32
  %494 = mul nuw nsw i64 %492, 8000
  %min.iters.check1181 = icmp eq i64 %489, 0
  br i1 %min.iters.check1181, label %polly.loop_header883, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1191 = insertelement <4 x i64> poison, i64 %490, i32 0
  %broadcast.splat1192 = shufflevector <4 x i64> %broadcast.splatinsert1191, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1179 ]
  %vec.ind1189 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1182 ], [ %vec.ind.next1190, %vector.body1179 ]
  %495 = add nuw nsw <4 x i64> %vec.ind1189, %broadcast.splat1192
  %496 = trunc <4 x i64> %495 to <4 x i32>
  %497 = mul <4 x i32> %broadcast.splat1194, %496
  %498 = add <4 x i32> %497, <i32 2, i32 2, i32 2, i32 2>
  %499 = urem <4 x i32> %498, <i32 1000, i32 1000, i32 1000, i32 1000>
  %500 = sitofp <4 x i32> %499 to <4 x double>
  %501 = fmul fast <4 x double> %500, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %502 = extractelement <4 x i64> %495, i32 0
  %503 = shl i64 %502, 3
  %504 = add nuw nsw i64 %503, %494
  %505 = getelementptr i8, i8* %call2, i64 %504
  %506 = bitcast i8* %505 to <4 x double>*
  store <4 x double> %501, <4 x double>* %506, align 8, !alias.scope !147, !noalias !150
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1190 = add <4 x i64> %vec.ind1189, <i64 4, i64 4, i64 4, i64 4>
  %507 = icmp eq i64 %index.next1186, %489
  br i1 %507, label %polly.loop_exit885, label %vector.body1179, !llvm.loop !151

polly.loop_exit885:                               ; preds = %vector.body1179, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar880, %487
  br i1 %exitcond1125.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %508 = add nuw nsw i64 %polly.indvar886, %490
  %509 = trunc i64 %508 to i32
  %510 = mul i32 %509, %493
  %511 = add i32 %510, 2
  %512 = urem i32 %511, 1000
  %p_conv10.i = sitofp i32 %512 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %513 = shl i64 %508, 3
  %514 = add nuw nsw i64 %513, %494
  %scevgep889 = getelementptr i8, i8* %call2, i64 %514
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !147, !noalias !150
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar886, %491
  br i1 %exitcond1121.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !152

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -1168)
  %515 = shl nsw i64 %polly.indvar894, 5
  %516 = add nsw i64 %smin1114, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1117.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %517 = mul nsw i64 %polly.indvar900, -32
  %smin1198 = call i64 @llvm.smin.i64(i64 %517, i64 -968)
  %518 = add nsw i64 %smin1198, 1000
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -968)
  %519 = shl nsw i64 %polly.indvar900, 5
  %520 = add nsw i64 %smin1110, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1116.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %521 = add nuw nsw i64 %polly.indvar906, %515
  %522 = trunc i64 %521 to i32
  %523 = mul nuw nsw i64 %521, 8000
  %min.iters.check1199 = icmp eq i64 %518, 0
  br i1 %min.iters.check1199, label %polly.loop_header909, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1209 = insertelement <4 x i64> poison, i64 %519, i32 0
  %broadcast.splat1210 = shufflevector <4 x i64> %broadcast.splatinsert1209, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %522, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1197 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1200 ], [ %vec.ind.next1208, %vector.body1197 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1207, %broadcast.splat1210
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1212, %525
  %527 = add <4 x i32> %526, <i32 1, i32 1, i32 1, i32 1>
  %528 = urem <4 x i32> %527, <i32 1200, i32 1200, i32 1200, i32 1200>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %523
  %534 = getelementptr i8, i8* %call1, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !146, !noalias !153
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1204, %518
  br i1 %536, label %polly.loop_exit911, label %vector.body1197, !llvm.loop !154

polly.loop_exit911:                               ; preds = %vector.body1197, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar906, %516
  br i1 %exitcond1115.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %537 = add nuw nsw i64 %polly.indvar912, %519
  %538 = trunc i64 %537 to i32
  %539 = mul i32 %538, %522
  %540 = add i32 %539, 1
  %541 = urem i32 %540, 1200
  %p_conv.i = sitofp i32 %541 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %542 = shl i64 %537, 3
  %543 = add nuw nsw i64 %542, %523
  %scevgep916 = getelementptr i8, i8* %call1, i64 %543
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !146, !noalias !153
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar912, %520
  br i1 %exitcond1111.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !155

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1.preheader, %polly.loop_header246.us.1
  %polly.indvar249.us.1 = phi i64 [ %polly.indvar_next250.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header246.us.1.preheader ]
  %544 = add nuw nsw i64 %polly.indvar249.us.1, %142
  %polly.access.mul.call1253.us.1 = mul nuw nsw i64 %544, 1000
  %polly.access.add.call1254.us.1 = add nuw nsw i64 %113, %polly.access.mul.call1253.us.1
  %polly.access.call1255.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us.1
  %polly.access.call1255.load.us.1 = load double, double* %polly.access.call1255.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1255.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next250.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1
  %exitcond1038.1.not = icmp eq i64 %polly.indvar249.us.1, %smin1040
  br i1 %exitcond1038.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header246.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header246.us.1
  br i1 %.not, label %polly.loop_header246.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1258.us.1 = or i64 %170, 1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nsw i64 %168, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  br label %polly.loop_header246.us.2.preheader

polly.loop_header246.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2.preheader, %polly.loop_header246.us.2
  %polly.indvar249.us.2 = phi i64 [ %polly.indvar_next250.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_header246.us.2.preheader ]
  %545 = add nuw nsw i64 %polly.indvar249.us.2, %142
  %polly.access.mul.call1253.us.2 = mul nuw nsw i64 %545, 1000
  %polly.access.add.call1254.us.2 = add nuw nsw i64 %114, %polly.access.mul.call1253.us.2
  %polly.access.call1255.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us.2
  %polly.access.call1255.load.us.2 = load double, double* %polly.access.call1255.us.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar249.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1255.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next250.us.2 = add nuw nsw i64 %polly.indvar249.us.2, 1
  %exitcond1038.2.not = icmp eq i64 %polly.indvar249.us.2, %smin1040
  br i1 %exitcond1038.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header246.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header246.us.2
  br i1 %.not, label %polly.loop_header246.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1258.us.2 = or i64 %170, 2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nsw i64 %168, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  br label %polly.loop_header246.us.3.preheader

polly.loop_header246.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header246.us.3

polly.loop_header246.us.3:                        ; preds = %polly.loop_header246.us.3.preheader, %polly.loop_header246.us.3
  %polly.indvar249.us.3 = phi i64 [ %polly.indvar_next250.us.3, %polly.loop_header246.us.3 ], [ 0, %polly.loop_header246.us.3.preheader ]
  %546 = add nuw nsw i64 %polly.indvar249.us.3, %142
  %polly.access.mul.call1253.us.3 = mul nuw nsw i64 %546, 1000
  %polly.access.add.call1254.us.3 = add nuw nsw i64 %115, %polly.access.mul.call1253.us.3
  %polly.access.call1255.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us.3
  %polly.access.call1255.load.us.3 = load double, double* %polly.access.call1255.us.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar249.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1255.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next250.us.3 = add nuw nsw i64 %polly.indvar249.us.3, 1
  %exitcond1038.3.not = icmp eq i64 %polly.indvar249.us.3, %smin1040
  br i1 %exitcond1038.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header246.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header246.us.3
  br i1 %.not, label %polly.loop_header263.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1258.us.3 = or i64 %170, 3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nsw i64 %168, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  br label %polly.loop_header263.preheader

polly.loop_header270.us.1:                        ; preds = %polly.loop_header270.us.1.preheader, %polly.loop_header270.us.1
  %polly.indvar274.us.1 = phi i64 [ %polly.indvar_next275.us.1, %polly.loop_header270.us.1 ], [ %polly.indvar274.us.1.ph, %polly.loop_header270.us.1.preheader ]
  %547 = add nuw nsw i64 %polly.indvar274.us.1, %142
  %polly.access.add.Packed_MemRef_call1278.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1200
  %polly.access.Packed_MemRef_call1279.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.1
  %_p_scalar_280.us.1 = load double, double* %polly.access.Packed_MemRef_call1279.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_284.us.1, %_p_scalar_280.us.1
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %547, %polly.access.mul.Packed_MemRef_call2281.us.1
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %548 = shl i64 %547, 3
  %549 = add nuw nsw i64 %548, %172
  %scevgep293.us.1 = getelementptr i8, i8* %call, i64 %549
  %scevgep293294.us.1 = bitcast i8* %scevgep293.us.1 to double*
  %_p_scalar_295.us.1 = load double, double* %scevgep293294.us.1, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_295.us.1
  store double %p_add42.i118.us.1, double* %scevgep293294.us.1, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1
  %exitcond1041.1.not = icmp eq i64 %polly.indvar274.us.1, %smin1040
  br i1 %exitcond1041.1.not, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1, !llvm.loop !156

polly.loop_exit272.loopexit.us.1:                 ; preds = %polly.loop_header270.us.1, %middle.block1572
  %polly.access.add.Packed_MemRef_call2282.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.2, %169
  %polly.access.Packed_MemRef_call2283.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call2283.us.2, align 8
  %polly.access.add.Packed_MemRef_call1290.us.2 = add nsw i64 %168, 2400
  %polly.access.Packed_MemRef_call1291.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call1291.us.2, align 8
  %min.iters.check1545 = icmp ult i64 %160, 4
  br i1 %min.iters.check1545, label %polly.loop_header270.us.2.preheader, label %vector.memcheck1529

vector.memcheck1529:                              ; preds = %polly.loop_exit272.loopexit.us.1
  %bound01537 = icmp ult i8* %scevgep1530, %scevgep1536
  %bound11538 = icmp ult i8* %scevgep1534, %scevgep1533
  %found.conflict1539 = and i1 %bound01537, %bound11538
  br i1 %found.conflict1539, label %polly.loop_header270.us.2.preheader, label %vector.ph1546

vector.ph1546:                                    ; preds = %vector.memcheck1529
  %n.vec1548 = and i64 %160, -4
  %broadcast.splatinsert1554 = insertelement <4 x double> poison, double %_p_scalar_284.us.2, i32 0
  %broadcast.splat1555 = shufflevector <4 x double> %broadcast.splatinsert1554, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1557 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1558 = shufflevector <4 x double> %broadcast.splatinsert1557, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1543

vector.body1543:                                  ; preds = %vector.body1543, %vector.ph1546
  %index1549 = phi i64 [ 0, %vector.ph1546 ], [ %index.next1550, %vector.body1543 ]
  %550 = add nuw nsw i64 %index1549, %142
  %551 = add nuw nsw i64 %index1549, 2400
  %552 = getelementptr double, double* %Packed_MemRef_call1, i64 %551
  %553 = bitcast double* %552 to <4 x double>*
  %wide.load1553 = load <4 x double>, <4 x double>* %553, align 8, !alias.scope !157
  %554 = fmul fast <4 x double> %broadcast.splat1555, %wide.load1553
  %555 = add nuw nsw i64 %550, %polly.access.mul.Packed_MemRef_call2281.us.2
  %556 = getelementptr double, double* %Packed_MemRef_call2, i64 %555
  %557 = bitcast double* %556 to <4 x double>*
  %wide.load1556 = load <4 x double>, <4 x double>* %557, align 8
  %558 = fmul fast <4 x double> %broadcast.splat1558, %wide.load1556
  %559 = shl i64 %550, 3
  %560 = add nuw nsw i64 %559, %172
  %561 = getelementptr i8, i8* %call, i64 %560
  %562 = bitcast i8* %561 to <4 x double>*
  %wide.load1559 = load <4 x double>, <4 x double>* %562, align 8, !alias.scope !160, !noalias !162
  %563 = fadd fast <4 x double> %558, %554
  %564 = fmul fast <4 x double> %563, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %565 = fadd fast <4 x double> %564, %wide.load1559
  %566 = bitcast i8* %561 to <4 x double>*
  store <4 x double> %565, <4 x double>* %566, align 8, !alias.scope !160, !noalias !162
  %index.next1550 = add i64 %index1549, 4
  %567 = icmp eq i64 %index.next1550, %n.vec1548
  br i1 %567, label %middle.block1541, label %vector.body1543, !llvm.loop !163

middle.block1541:                                 ; preds = %vector.body1543
  %cmp.n1552 = icmp eq i64 %160, %n.vec1548
  br i1 %cmp.n1552, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2.preheader

polly.loop_header270.us.2.preheader:              ; preds = %vector.memcheck1529, %polly.loop_exit272.loopexit.us.1, %middle.block1541
  %polly.indvar274.us.2.ph = phi i64 [ 0, %vector.memcheck1529 ], [ 0, %polly.loop_exit272.loopexit.us.1 ], [ %n.vec1548, %middle.block1541 ]
  br label %polly.loop_header270.us.2

polly.loop_header270.us.2:                        ; preds = %polly.loop_header270.us.2.preheader, %polly.loop_header270.us.2
  %polly.indvar274.us.2 = phi i64 [ %polly.indvar_next275.us.2, %polly.loop_header270.us.2 ], [ %polly.indvar274.us.2.ph, %polly.loop_header270.us.2.preheader ]
  %568 = add nuw nsw i64 %polly.indvar274.us.2, %142
  %polly.access.add.Packed_MemRef_call1278.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 2400
  %polly.access.Packed_MemRef_call1279.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.2
  %_p_scalar_280.us.2 = load double, double* %polly.access.Packed_MemRef_call1279.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_284.us.2, %_p_scalar_280.us.2
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %568, %polly.access.mul.Packed_MemRef_call2281.us.2
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %569 = shl i64 %568, 3
  %570 = add nuw nsw i64 %569, %172
  %scevgep293.us.2 = getelementptr i8, i8* %call, i64 %570
  %scevgep293294.us.2 = bitcast i8* %scevgep293.us.2 to double*
  %_p_scalar_295.us.2 = load double, double* %scevgep293294.us.2, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_295.us.2
  store double %p_add42.i118.us.2, double* %scevgep293294.us.2, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 1
  %exitcond1041.2.not = icmp eq i64 %polly.indvar274.us.2, %smin1040
  br i1 %exitcond1041.2.not, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2, !llvm.loop !164

polly.loop_exit272.loopexit.us.2:                 ; preds = %polly.loop_header270.us.2, %middle.block1541
  %polly.access.add.Packed_MemRef_call2282.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.3, %169
  %polly.access.Packed_MemRef_call2283.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call2283.us.3, align 8
  %polly.access.add.Packed_MemRef_call1290.us.3 = add nsw i64 %168, 3600
  %polly.access.Packed_MemRef_call1291.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call1291.us.3, align 8
  %min.iters.check1514 = icmp ult i64 %167, 4
  br i1 %min.iters.check1514, label %polly.loop_header270.us.3.preheader, label %vector.ph1515

vector.ph1515:                                    ; preds = %polly.loop_exit272.loopexit.us.2
  %n.vec1517 = and i64 %167, -4
  %broadcast.splatinsert1523 = insertelement <4 x double> poison, double %_p_scalar_284.us.3, i32 0
  %broadcast.splat1524 = shufflevector <4 x double> %broadcast.splatinsert1523, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1526 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1527 = shufflevector <4 x double> %broadcast.splatinsert1526, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1512

vector.body1512:                                  ; preds = %vector.body1512, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1519, %vector.body1512 ]
  %571 = add nuw nsw i64 %index1518, %142
  %572 = add nuw nsw i64 %index1518, 3600
  %573 = getelementptr double, double* %Packed_MemRef_call1, i64 %572
  %574 = bitcast double* %573 to <4 x double>*
  %wide.load1522 = load <4 x double>, <4 x double>* %574, align 8
  %575 = fmul fast <4 x double> %broadcast.splat1524, %wide.load1522
  %576 = add nuw nsw i64 %571, %polly.access.mul.Packed_MemRef_call2281.us.3
  %577 = getelementptr double, double* %Packed_MemRef_call2, i64 %576
  %578 = bitcast double* %577 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %578, align 8
  %579 = fmul fast <4 x double> %broadcast.splat1527, %wide.load1525
  %580 = shl i64 %571, 3
  %581 = add nuw nsw i64 %580, %172
  %582 = getelementptr i8, i8* %call, i64 %581
  %583 = bitcast i8* %582 to <4 x double>*
  %wide.load1528 = load <4 x double>, <4 x double>* %583, align 8, !alias.scope !64, !noalias !66
  %584 = fadd fast <4 x double> %579, %575
  %585 = fmul fast <4 x double> %584, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %586 = fadd fast <4 x double> %585, %wide.load1528
  %587 = bitcast i8* %582 to <4 x double>*
  store <4 x double> %586, <4 x double>* %587, align 8, !alias.scope !64, !noalias !66
  %index.next1519 = add i64 %index1518, 4
  %588 = icmp eq i64 %index.next1519, %n.vec1517
  br i1 %588, label %middle.block1510, label %vector.body1512, !llvm.loop !165

middle.block1510:                                 ; preds = %vector.body1512
  %cmp.n1521 = icmp eq i64 %167, %n.vec1517
  br i1 %cmp.n1521, label %polly.loop_exit265, label %polly.loop_header270.us.3.preheader

polly.loop_header270.us.3.preheader:              ; preds = %polly.loop_exit272.loopexit.us.2, %middle.block1510
  %polly.indvar274.us.3.ph = phi i64 [ 0, %polly.loop_exit272.loopexit.us.2 ], [ %n.vec1517, %middle.block1510 ]
  br label %polly.loop_header270.us.3

polly.loop_header270.us.3:                        ; preds = %polly.loop_header270.us.3.preheader, %polly.loop_header270.us.3
  %polly.indvar274.us.3 = phi i64 [ %polly.indvar_next275.us.3, %polly.loop_header270.us.3 ], [ %polly.indvar274.us.3.ph, %polly.loop_header270.us.3.preheader ]
  %589 = add nuw nsw i64 %polly.indvar274.us.3, %142
  %polly.access.add.Packed_MemRef_call1278.us.3 = add nuw nsw i64 %polly.indvar274.us.3, 3600
  %polly.access.Packed_MemRef_call1279.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.3
  %_p_scalar_280.us.3 = load double, double* %polly.access.Packed_MemRef_call1279.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_284.us.3, %_p_scalar_280.us.3
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %589, %polly.access.mul.Packed_MemRef_call2281.us.3
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %590 = shl i64 %589, 3
  %591 = add nuw nsw i64 %590, %172
  %scevgep293.us.3 = getelementptr i8, i8* %call, i64 %591
  %scevgep293294.us.3 = bitcast i8* %scevgep293.us.3 to double*
  %_p_scalar_295.us.3 = load double, double* %scevgep293294.us.3, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_295.us.3
  store double %p_add42.i118.us.3, double* %scevgep293294.us.3, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us.3 = add nuw nsw i64 %polly.indvar274.us.3, 1
  %exitcond1041.3.not = icmp eq i64 %polly.indvar274.us.3, %smin1040
  br i1 %exitcond1041.3.not, label %polly.loop_exit265, label %polly.loop_header270.us.3, !llvm.loop !166

polly.loop_header449.us.1:                        ; preds = %polly.loop_header449.us.1.preheader, %polly.loop_header449.us.1
  %polly.indvar453.us.1 = phi i64 [ %polly.indvar_next454.us.1, %polly.loop_header449.us.1 ], [ 0, %polly.loop_header449.us.1.preheader ]
  %592 = add nuw nsw i64 %polly.indvar453.us.1, %265
  %polly.access.mul.call1457.us.1 = mul nuw nsw i64 %592, 1000
  %polly.access.add.call1458.us.1 = add nuw nsw i64 %236, %polly.access.mul.call1457.us.1
  %polly.access.call1459.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us.1
  %polly.access.call1459.load.us.1 = load double, double* %polly.access.call1459.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.1 = add nuw nsw i64 %polly.indvar453.us.1, 1200
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.1
  store double %polly.access.call1459.load.us.1, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %polly.indvar_next454.us.1 = add nuw nsw i64 %polly.indvar453.us.1, 1
  %exitcond1064.1.not = icmp eq i64 %polly.indvar453.us.1, %smin1066
  br i1 %exitcond1064.1.not, label %polly.cond460.loopexit.us.1, label %polly.loop_header449.us.1

polly.cond460.loopexit.us.1:                      ; preds = %polly.loop_header449.us.1
  br i1 %.not918, label %polly.loop_header449.us.2.preheader, label %polly.then462.us.1

polly.then462.us.1:                               ; preds = %polly.cond460.loopexit.us.1
  %polly.access.add.call1466.us.1 = or i64 %293, 1
  %polly.access.call1467.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us.1
  %polly.access.call1467.load.us.1 = load double, double* %polly.access.call1467.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.us.1 = add nsw i64 %291, 1200
  %polly.access.Packed_MemRef_call1301470.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us.1
  store double %polly.access.call1467.load.us.1, double* %polly.access.Packed_MemRef_call1301470.us.1, align 8
  br label %polly.loop_header449.us.2.preheader

polly.loop_header449.us.2.preheader:              ; preds = %polly.then462.us.1, %polly.cond460.loopexit.us.1
  br label %polly.loop_header449.us.2

polly.loop_header449.us.2:                        ; preds = %polly.loop_header449.us.2.preheader, %polly.loop_header449.us.2
  %polly.indvar453.us.2 = phi i64 [ %polly.indvar_next454.us.2, %polly.loop_header449.us.2 ], [ 0, %polly.loop_header449.us.2.preheader ]
  %593 = add nuw nsw i64 %polly.indvar453.us.2, %265
  %polly.access.mul.call1457.us.2 = mul nuw nsw i64 %593, 1000
  %polly.access.add.call1458.us.2 = add nuw nsw i64 %237, %polly.access.mul.call1457.us.2
  %polly.access.call1459.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us.2
  %polly.access.call1459.load.us.2 = load double, double* %polly.access.call1459.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.2 = add nuw nsw i64 %polly.indvar453.us.2, 2400
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.2
  store double %polly.access.call1459.load.us.2, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %polly.indvar_next454.us.2 = add nuw nsw i64 %polly.indvar453.us.2, 1
  %exitcond1064.2.not = icmp eq i64 %polly.indvar453.us.2, %smin1066
  br i1 %exitcond1064.2.not, label %polly.cond460.loopexit.us.2, label %polly.loop_header449.us.2

polly.cond460.loopexit.us.2:                      ; preds = %polly.loop_header449.us.2
  br i1 %.not918, label %polly.loop_header449.us.3.preheader, label %polly.then462.us.2

polly.then462.us.2:                               ; preds = %polly.cond460.loopexit.us.2
  %polly.access.add.call1466.us.2 = or i64 %293, 2
  %polly.access.call1467.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us.2
  %polly.access.call1467.load.us.2 = load double, double* %polly.access.call1467.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.us.2 = add nsw i64 %291, 2400
  %polly.access.Packed_MemRef_call1301470.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us.2
  store double %polly.access.call1467.load.us.2, double* %polly.access.Packed_MemRef_call1301470.us.2, align 8
  br label %polly.loop_header449.us.3.preheader

polly.loop_header449.us.3.preheader:              ; preds = %polly.then462.us.2, %polly.cond460.loopexit.us.2
  br label %polly.loop_header449.us.3

polly.loop_header449.us.3:                        ; preds = %polly.loop_header449.us.3.preheader, %polly.loop_header449.us.3
  %polly.indvar453.us.3 = phi i64 [ %polly.indvar_next454.us.3, %polly.loop_header449.us.3 ], [ 0, %polly.loop_header449.us.3.preheader ]
  %594 = add nuw nsw i64 %polly.indvar453.us.3, %265
  %polly.access.mul.call1457.us.3 = mul nuw nsw i64 %594, 1000
  %polly.access.add.call1458.us.3 = add nuw nsw i64 %238, %polly.access.mul.call1457.us.3
  %polly.access.call1459.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us.3
  %polly.access.call1459.load.us.3 = load double, double* %polly.access.call1459.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.3 = add nuw nsw i64 %polly.indvar453.us.3, 3600
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.3
  store double %polly.access.call1459.load.us.3, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %polly.indvar_next454.us.3 = add nuw nsw i64 %polly.indvar453.us.3, 1
  %exitcond1064.3.not = icmp eq i64 %polly.indvar453.us.3, %smin1066
  br i1 %exitcond1064.3.not, label %polly.cond460.loopexit.us.3, label %polly.loop_header449.us.3

polly.cond460.loopexit.us.3:                      ; preds = %polly.loop_header449.us.3
  br i1 %.not918, label %polly.loop_header471.preheader, label %polly.then462.us.3

polly.then462.us.3:                               ; preds = %polly.cond460.loopexit.us.3
  %polly.access.add.call1466.us.3 = or i64 %293, 3
  %polly.access.call1467.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us.3
  %polly.access.call1467.load.us.3 = load double, double* %polly.access.call1467.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.us.3 = add nsw i64 %291, 3600
  %polly.access.Packed_MemRef_call1301470.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us.3
  store double %polly.access.call1467.load.us.3, double* %polly.access.Packed_MemRef_call1301470.us.3, align 8
  br label %polly.loop_header471.preheader

polly.loop_header478.us.1:                        ; preds = %polly.loop_header478.us.1.preheader, %polly.loop_header478.us.1
  %polly.indvar482.us.1 = phi i64 [ %polly.indvar_next483.us.1, %polly.loop_header478.us.1 ], [ %polly.indvar482.us.1.ph, %polly.loop_header478.us.1.preheader ]
  %595 = add nuw nsw i64 %polly.indvar482.us.1, %265
  %polly.access.add.Packed_MemRef_call1301486.us.1 = add nuw nsw i64 %polly.indvar482.us.1, 1200
  %polly.access.Packed_MemRef_call1301487.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us.1
  %_p_scalar_488.us.1 = load double, double* %polly.access.Packed_MemRef_call1301487.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_492.us.1, %_p_scalar_488.us.1
  %polly.access.add.Packed_MemRef_call2303494.us.1 = add nuw nsw i64 %595, %polly.access.mul.Packed_MemRef_call2303489.us.1
  %polly.access.Packed_MemRef_call2303495.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us.1
  %_p_scalar_496.us.1 = load double, double* %polly.access.Packed_MemRef_call2303495.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_500.us.1, %_p_scalar_496.us.1
  %596 = shl i64 %595, 3
  %597 = add nuw nsw i64 %596, %295
  %scevgep501.us.1 = getelementptr i8, i8* %call, i64 %597
  %scevgep501502.us.1 = bitcast i8* %scevgep501.us.1 to double*
  %_p_scalar_503.us.1 = load double, double* %scevgep501502.us.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_503.us.1
  store double %p_add42.i79.us.1, double* %scevgep501502.us.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us.1 = add nuw nsw i64 %polly.indvar482.us.1, 1
  %exitcond1067.1.not = icmp eq i64 %polly.indvar482.us.1, %smin1066
  br i1 %exitcond1067.1.not, label %polly.loop_exit480.loopexit.us.1, label %polly.loop_header478.us.1, !llvm.loop !167

polly.loop_exit480.loopexit.us.1:                 ; preds = %polly.loop_header478.us.1, %middle.block1435
  %polly.access.add.Packed_MemRef_call2303490.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us.2, %292
  %polly.access.Packed_MemRef_call2303491.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us.2
  %_p_scalar_492.us.2 = load double, double* %polly.access.Packed_MemRef_call2303491.us.2, align 8
  %polly.access.add.Packed_MemRef_call1301498.us.2 = add nsw i64 %291, 2400
  %polly.access.Packed_MemRef_call1301499.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call1301499.us.2, align 8
  %min.iters.check1408 = icmp ult i64 %283, 4
  br i1 %min.iters.check1408, label %polly.loop_header478.us.2.preheader, label %vector.memcheck1392

vector.memcheck1392:                              ; preds = %polly.loop_exit480.loopexit.us.1
  %bound01400 = icmp ult i8* %scevgep1393, %scevgep1399
  %bound11401 = icmp ult i8* %scevgep1397, %scevgep1396
  %found.conflict1402 = and i1 %bound01400, %bound11401
  br i1 %found.conflict1402, label %polly.loop_header478.us.2.preheader, label %vector.ph1409

vector.ph1409:                                    ; preds = %vector.memcheck1392
  %n.vec1411 = and i64 %283, -4
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_492.us.2, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1420 = insertelement <4 x double> poison, double %_p_scalar_500.us.2, i32 0
  %broadcast.splat1421 = shufflevector <4 x double> %broadcast.splatinsert1420, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1406

vector.body1406:                                  ; preds = %vector.body1406, %vector.ph1409
  %index1412 = phi i64 [ 0, %vector.ph1409 ], [ %index.next1413, %vector.body1406 ]
  %598 = add nuw nsw i64 %index1412, %265
  %599 = add nuw nsw i64 %index1412, 2400
  %600 = getelementptr double, double* %Packed_MemRef_call1301, i64 %599
  %601 = bitcast double* %600 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %601, align 8, !alias.scope !168
  %602 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %603 = add nuw nsw i64 %598, %polly.access.mul.Packed_MemRef_call2303489.us.2
  %604 = getelementptr double, double* %Packed_MemRef_call2303, i64 %603
  %605 = bitcast double* %604 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %605, align 8
  %606 = fmul fast <4 x double> %broadcast.splat1421, %wide.load1419
  %607 = shl i64 %598, 3
  %608 = add nuw nsw i64 %607, %295
  %609 = getelementptr i8, i8* %call, i64 %608
  %610 = bitcast i8* %609 to <4 x double>*
  %wide.load1422 = load <4 x double>, <4 x double>* %610, align 8, !alias.scope !171, !noalias !173
  %611 = fadd fast <4 x double> %606, %602
  %612 = fmul fast <4 x double> %611, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %613 = fadd fast <4 x double> %612, %wide.load1422
  %614 = bitcast i8* %609 to <4 x double>*
  store <4 x double> %613, <4 x double>* %614, align 8, !alias.scope !171, !noalias !173
  %index.next1413 = add i64 %index1412, 4
  %615 = icmp eq i64 %index.next1413, %n.vec1411
  br i1 %615, label %middle.block1404, label %vector.body1406, !llvm.loop !174

middle.block1404:                                 ; preds = %vector.body1406
  %cmp.n1415 = icmp eq i64 %283, %n.vec1411
  br i1 %cmp.n1415, label %polly.loop_exit480.loopexit.us.2, label %polly.loop_header478.us.2.preheader

polly.loop_header478.us.2.preheader:              ; preds = %vector.memcheck1392, %polly.loop_exit480.loopexit.us.1, %middle.block1404
  %polly.indvar482.us.2.ph = phi i64 [ 0, %vector.memcheck1392 ], [ 0, %polly.loop_exit480.loopexit.us.1 ], [ %n.vec1411, %middle.block1404 ]
  br label %polly.loop_header478.us.2

polly.loop_header478.us.2:                        ; preds = %polly.loop_header478.us.2.preheader, %polly.loop_header478.us.2
  %polly.indvar482.us.2 = phi i64 [ %polly.indvar_next483.us.2, %polly.loop_header478.us.2 ], [ %polly.indvar482.us.2.ph, %polly.loop_header478.us.2.preheader ]
  %616 = add nuw nsw i64 %polly.indvar482.us.2, %265
  %polly.access.add.Packed_MemRef_call1301486.us.2 = add nuw nsw i64 %polly.indvar482.us.2, 2400
  %polly.access.Packed_MemRef_call1301487.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us.2
  %_p_scalar_488.us.2 = load double, double* %polly.access.Packed_MemRef_call1301487.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_492.us.2, %_p_scalar_488.us.2
  %polly.access.add.Packed_MemRef_call2303494.us.2 = add nuw nsw i64 %616, %polly.access.mul.Packed_MemRef_call2303489.us.2
  %polly.access.Packed_MemRef_call2303495.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us.2
  %_p_scalar_496.us.2 = load double, double* %polly.access.Packed_MemRef_call2303495.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_500.us.2, %_p_scalar_496.us.2
  %617 = shl i64 %616, 3
  %618 = add nuw nsw i64 %617, %295
  %scevgep501.us.2 = getelementptr i8, i8* %call, i64 %618
  %scevgep501502.us.2 = bitcast i8* %scevgep501.us.2 to double*
  %_p_scalar_503.us.2 = load double, double* %scevgep501502.us.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_503.us.2
  store double %p_add42.i79.us.2, double* %scevgep501502.us.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us.2 = add nuw nsw i64 %polly.indvar482.us.2, 1
  %exitcond1067.2.not = icmp eq i64 %polly.indvar482.us.2, %smin1066
  br i1 %exitcond1067.2.not, label %polly.loop_exit480.loopexit.us.2, label %polly.loop_header478.us.2, !llvm.loop !175

polly.loop_exit480.loopexit.us.2:                 ; preds = %polly.loop_header478.us.2, %middle.block1404
  %polly.access.add.Packed_MemRef_call2303490.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us.3, %292
  %polly.access.Packed_MemRef_call2303491.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us.3
  %_p_scalar_492.us.3 = load double, double* %polly.access.Packed_MemRef_call2303491.us.3, align 8
  %polly.access.add.Packed_MemRef_call1301498.us.3 = add nsw i64 %291, 3600
  %polly.access.Packed_MemRef_call1301499.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call1301499.us.3, align 8
  %min.iters.check1377 = icmp ult i64 %290, 4
  br i1 %min.iters.check1377, label %polly.loop_header478.us.3.preheader, label %vector.ph1378

vector.ph1378:                                    ; preds = %polly.loop_exit480.loopexit.us.2
  %n.vec1380 = and i64 %290, -4
  %broadcast.splatinsert1386 = insertelement <4 x double> poison, double %_p_scalar_492.us.3, i32 0
  %broadcast.splat1387 = shufflevector <4 x double> %broadcast.splatinsert1386, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1389 = insertelement <4 x double> poison, double %_p_scalar_500.us.3, i32 0
  %broadcast.splat1390 = shufflevector <4 x double> %broadcast.splatinsert1389, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1375 ]
  %619 = add nuw nsw i64 %index1381, %265
  %620 = add nuw nsw i64 %index1381, 3600
  %621 = getelementptr double, double* %Packed_MemRef_call1301, i64 %620
  %622 = bitcast double* %621 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %622, align 8
  %623 = fmul fast <4 x double> %broadcast.splat1387, %wide.load1385
  %624 = add nuw nsw i64 %619, %polly.access.mul.Packed_MemRef_call2303489.us.3
  %625 = getelementptr double, double* %Packed_MemRef_call2303, i64 %624
  %626 = bitcast double* %625 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %626, align 8
  %627 = fmul fast <4 x double> %broadcast.splat1390, %wide.load1388
  %628 = shl i64 %619, 3
  %629 = add nuw nsw i64 %628, %295
  %630 = getelementptr i8, i8* %call, i64 %629
  %631 = bitcast i8* %630 to <4 x double>*
  %wide.load1391 = load <4 x double>, <4 x double>* %631, align 8, !alias.scope !91, !noalias !93
  %632 = fadd fast <4 x double> %627, %623
  %633 = fmul fast <4 x double> %632, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %634 = fadd fast <4 x double> %633, %wide.load1391
  %635 = bitcast i8* %630 to <4 x double>*
  store <4 x double> %634, <4 x double>* %635, align 8, !alias.scope !91, !noalias !93
  %index.next1382 = add i64 %index1381, 4
  %636 = icmp eq i64 %index.next1382, %n.vec1380
  br i1 %636, label %middle.block1373, label %vector.body1375, !llvm.loop !176

middle.block1373:                                 ; preds = %vector.body1375
  %cmp.n1384 = icmp eq i64 %290, %n.vec1380
  br i1 %cmp.n1384, label %polly.loop_exit473, label %polly.loop_header478.us.3.preheader

polly.loop_header478.us.3.preheader:              ; preds = %polly.loop_exit480.loopexit.us.2, %middle.block1373
  %polly.indvar482.us.3.ph = phi i64 [ 0, %polly.loop_exit480.loopexit.us.2 ], [ %n.vec1380, %middle.block1373 ]
  br label %polly.loop_header478.us.3

polly.loop_header478.us.3:                        ; preds = %polly.loop_header478.us.3.preheader, %polly.loop_header478.us.3
  %polly.indvar482.us.3 = phi i64 [ %polly.indvar_next483.us.3, %polly.loop_header478.us.3 ], [ %polly.indvar482.us.3.ph, %polly.loop_header478.us.3.preheader ]
  %637 = add nuw nsw i64 %polly.indvar482.us.3, %265
  %polly.access.add.Packed_MemRef_call1301486.us.3 = add nuw nsw i64 %polly.indvar482.us.3, 3600
  %polly.access.Packed_MemRef_call1301487.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us.3
  %_p_scalar_488.us.3 = load double, double* %polly.access.Packed_MemRef_call1301487.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_492.us.3, %_p_scalar_488.us.3
  %polly.access.add.Packed_MemRef_call2303494.us.3 = add nuw nsw i64 %637, %polly.access.mul.Packed_MemRef_call2303489.us.3
  %polly.access.Packed_MemRef_call2303495.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us.3
  %_p_scalar_496.us.3 = load double, double* %polly.access.Packed_MemRef_call2303495.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_500.us.3, %_p_scalar_496.us.3
  %638 = shl i64 %637, 3
  %639 = add nuw nsw i64 %638, %295
  %scevgep501.us.3 = getelementptr i8, i8* %call, i64 %639
  %scevgep501502.us.3 = bitcast i8* %scevgep501.us.3 to double*
  %_p_scalar_503.us.3 = load double, double* %scevgep501502.us.3, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_503.us.3
  store double %p_add42.i79.us.3, double* %scevgep501502.us.3, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us.3 = add nuw nsw i64 %polly.indvar482.us.3, 1
  %exitcond1067.3.not = icmp eq i64 %polly.indvar482.us.3, %smin1066
  br i1 %exitcond1067.3.not, label %polly.loop_exit473, label %polly.loop_header478.us.3, !llvm.loop !177

polly.loop_header657.us.1:                        ; preds = %polly.loop_header657.us.1.preheader, %polly.loop_header657.us.1
  %polly.indvar661.us.1 = phi i64 [ %polly.indvar_next662.us.1, %polly.loop_header657.us.1 ], [ 0, %polly.loop_header657.us.1.preheader ]
  %640 = add nuw nsw i64 %polly.indvar661.us.1, %388
  %polly.access.mul.call1665.us.1 = mul nuw nsw i64 %640, 1000
  %polly.access.add.call1666.us.1 = add nuw nsw i64 %359, %polly.access.mul.call1665.us.1
  %polly.access.call1667.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us.1
  %polly.access.call1667.load.us.1 = load double, double* %polly.access.call1667.us.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509.us.1 = add nuw nsw i64 %polly.indvar661.us.1, 1200
  %polly.access.Packed_MemRef_call1509.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.1
  store double %polly.access.call1667.load.us.1, double* %polly.access.Packed_MemRef_call1509.us.1, align 8
  %polly.indvar_next662.us.1 = add nuw nsw i64 %polly.indvar661.us.1, 1
  %exitcond1090.1.not = icmp eq i64 %polly.indvar661.us.1, %smin1092
  br i1 %exitcond1090.1.not, label %polly.cond668.loopexit.us.1, label %polly.loop_header657.us.1

polly.cond668.loopexit.us.1:                      ; preds = %polly.loop_header657.us.1
  br i1 %.not919, label %polly.loop_header657.us.2.preheader, label %polly.then670.us.1

polly.then670.us.1:                               ; preds = %polly.cond668.loopexit.us.1
  %polly.access.add.call1674.us.1 = or i64 %416, 1
  %polly.access.call1675.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us.1
  %polly.access.call1675.load.us.1 = load double, double* %polly.access.call1675.us.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.us.1 = add nsw i64 %414, 1200
  %polly.access.Packed_MemRef_call1509678.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us.1
  store double %polly.access.call1675.load.us.1, double* %polly.access.Packed_MemRef_call1509678.us.1, align 8
  br label %polly.loop_header657.us.2.preheader

polly.loop_header657.us.2.preheader:              ; preds = %polly.then670.us.1, %polly.cond668.loopexit.us.1
  br label %polly.loop_header657.us.2

polly.loop_header657.us.2:                        ; preds = %polly.loop_header657.us.2.preheader, %polly.loop_header657.us.2
  %polly.indvar661.us.2 = phi i64 [ %polly.indvar_next662.us.2, %polly.loop_header657.us.2 ], [ 0, %polly.loop_header657.us.2.preheader ]
  %641 = add nuw nsw i64 %polly.indvar661.us.2, %388
  %polly.access.mul.call1665.us.2 = mul nuw nsw i64 %641, 1000
  %polly.access.add.call1666.us.2 = add nuw nsw i64 %360, %polly.access.mul.call1665.us.2
  %polly.access.call1667.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us.2
  %polly.access.call1667.load.us.2 = load double, double* %polly.access.call1667.us.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509.us.2 = add nuw nsw i64 %polly.indvar661.us.2, 2400
  %polly.access.Packed_MemRef_call1509.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.2
  store double %polly.access.call1667.load.us.2, double* %polly.access.Packed_MemRef_call1509.us.2, align 8
  %polly.indvar_next662.us.2 = add nuw nsw i64 %polly.indvar661.us.2, 1
  %exitcond1090.2.not = icmp eq i64 %polly.indvar661.us.2, %smin1092
  br i1 %exitcond1090.2.not, label %polly.cond668.loopexit.us.2, label %polly.loop_header657.us.2

polly.cond668.loopexit.us.2:                      ; preds = %polly.loop_header657.us.2
  br i1 %.not919, label %polly.loop_header657.us.3.preheader, label %polly.then670.us.2

polly.then670.us.2:                               ; preds = %polly.cond668.loopexit.us.2
  %polly.access.add.call1674.us.2 = or i64 %416, 2
  %polly.access.call1675.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us.2
  %polly.access.call1675.load.us.2 = load double, double* %polly.access.call1675.us.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.us.2 = add nsw i64 %414, 2400
  %polly.access.Packed_MemRef_call1509678.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us.2
  store double %polly.access.call1675.load.us.2, double* %polly.access.Packed_MemRef_call1509678.us.2, align 8
  br label %polly.loop_header657.us.3.preheader

polly.loop_header657.us.3.preheader:              ; preds = %polly.then670.us.2, %polly.cond668.loopexit.us.2
  br label %polly.loop_header657.us.3

polly.loop_header657.us.3:                        ; preds = %polly.loop_header657.us.3.preheader, %polly.loop_header657.us.3
  %polly.indvar661.us.3 = phi i64 [ %polly.indvar_next662.us.3, %polly.loop_header657.us.3 ], [ 0, %polly.loop_header657.us.3.preheader ]
  %642 = add nuw nsw i64 %polly.indvar661.us.3, %388
  %polly.access.mul.call1665.us.3 = mul nuw nsw i64 %642, 1000
  %polly.access.add.call1666.us.3 = add nuw nsw i64 %361, %polly.access.mul.call1665.us.3
  %polly.access.call1667.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us.3
  %polly.access.call1667.load.us.3 = load double, double* %polly.access.call1667.us.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509.us.3 = add nuw nsw i64 %polly.indvar661.us.3, 3600
  %polly.access.Packed_MemRef_call1509.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.3
  store double %polly.access.call1667.load.us.3, double* %polly.access.Packed_MemRef_call1509.us.3, align 8
  %polly.indvar_next662.us.3 = add nuw nsw i64 %polly.indvar661.us.3, 1
  %exitcond1090.3.not = icmp eq i64 %polly.indvar661.us.3, %smin1092
  br i1 %exitcond1090.3.not, label %polly.cond668.loopexit.us.3, label %polly.loop_header657.us.3

polly.cond668.loopexit.us.3:                      ; preds = %polly.loop_header657.us.3
  br i1 %.not919, label %polly.loop_header679.preheader, label %polly.then670.us.3

polly.then670.us.3:                               ; preds = %polly.cond668.loopexit.us.3
  %polly.access.add.call1674.us.3 = or i64 %416, 3
  %polly.access.call1675.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us.3
  %polly.access.call1675.load.us.3 = load double, double* %polly.access.call1675.us.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.us.3 = add nsw i64 %414, 3600
  %polly.access.Packed_MemRef_call1509678.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us.3
  store double %polly.access.call1675.load.us.3, double* %polly.access.Packed_MemRef_call1509678.us.3, align 8
  br label %polly.loop_header679.preheader

polly.loop_header686.us.1:                        ; preds = %polly.loop_header686.us.1.preheader, %polly.loop_header686.us.1
  %polly.indvar690.us.1 = phi i64 [ %polly.indvar_next691.us.1, %polly.loop_header686.us.1 ], [ %polly.indvar690.us.1.ph, %polly.loop_header686.us.1.preheader ]
  %643 = add nuw nsw i64 %polly.indvar690.us.1, %388
  %polly.access.add.Packed_MemRef_call1509694.us.1 = add nuw nsw i64 %polly.indvar690.us.1, 1200
  %polly.access.Packed_MemRef_call1509695.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us.1
  %_p_scalar_696.us.1 = load double, double* %polly.access.Packed_MemRef_call1509695.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_700.us.1, %_p_scalar_696.us.1
  %polly.access.add.Packed_MemRef_call2511702.us.1 = add nuw nsw i64 %643, %polly.access.mul.Packed_MemRef_call2511697.us.1
  %polly.access.Packed_MemRef_call2511703.us.1 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call2511703.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %644 = shl i64 %643, 3
  %645 = add nuw nsw i64 %644, %418
  %scevgep709.us.1 = getelementptr i8, i8* %call, i64 %645
  %scevgep709710.us.1 = bitcast i8* %scevgep709.us.1 to double*
  %_p_scalar_711.us.1 = load double, double* %scevgep709710.us.1, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_711.us.1
  store double %p_add42.i.us.1, double* %scevgep709710.us.1, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us.1 = add nuw nsw i64 %polly.indvar690.us.1, 1
  %exitcond1093.1.not = icmp eq i64 %polly.indvar690.us.1, %smin1092
  br i1 %exitcond1093.1.not, label %polly.loop_exit688.loopexit.us.1, label %polly.loop_header686.us.1, !llvm.loop !178

polly.loop_exit688.loopexit.us.1:                 ; preds = %polly.loop_header686.us.1, %middle.block1298
  %polly.access.add.Packed_MemRef_call2511698.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us.2, %415
  %polly.access.Packed_MemRef_call2511699.us.2 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us.2
  %_p_scalar_700.us.2 = load double, double* %polly.access.Packed_MemRef_call2511699.us.2, align 8
  %polly.access.add.Packed_MemRef_call1509706.us.2 = add nsw i64 %414, 2400
  %polly.access.Packed_MemRef_call1509707.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call1509707.us.2, align 8
  %min.iters.check1271 = icmp ult i64 %406, 4
  br i1 %min.iters.check1271, label %polly.loop_header686.us.2.preheader, label %vector.memcheck1255

vector.memcheck1255:                              ; preds = %polly.loop_exit688.loopexit.us.1
  %bound01263 = icmp ult i8* %scevgep1256, %scevgep1262
  %bound11264 = icmp ult i8* %scevgep1260, %scevgep1259
  %found.conflict1265 = and i1 %bound01263, %bound11264
  br i1 %found.conflict1265, label %polly.loop_header686.us.2.preheader, label %vector.ph1272

vector.ph1272:                                    ; preds = %vector.memcheck1255
  %n.vec1274 = and i64 %406, -4
  %broadcast.splatinsert1280 = insertelement <4 x double> poison, double %_p_scalar_700.us.2, i32 0
  %broadcast.splat1281 = shufflevector <4 x double> %broadcast.splatinsert1280, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1283 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1284 = shufflevector <4 x double> %broadcast.splatinsert1283, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1269 ]
  %646 = add nuw nsw i64 %index1275, %388
  %647 = add nuw nsw i64 %index1275, 2400
  %648 = getelementptr double, double* %Packed_MemRef_call1509, i64 %647
  %649 = bitcast double* %648 to <4 x double>*
  %wide.load1279 = load <4 x double>, <4 x double>* %649, align 8, !alias.scope !179
  %650 = fmul fast <4 x double> %broadcast.splat1281, %wide.load1279
  %651 = add nuw nsw i64 %646, %polly.access.mul.Packed_MemRef_call2511697.us.2
  %652 = getelementptr double, double* %Packed_MemRef_call2511, i64 %651
  %653 = bitcast double* %652 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %653, align 8
  %654 = fmul fast <4 x double> %broadcast.splat1284, %wide.load1282
  %655 = shl i64 %646, 3
  %656 = add nuw nsw i64 %655, %418
  %657 = getelementptr i8, i8* %call, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  %wide.load1285 = load <4 x double>, <4 x double>* %658, align 8, !alias.scope !182, !noalias !184
  %659 = fadd fast <4 x double> %654, %650
  %660 = fmul fast <4 x double> %659, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %661 = fadd fast <4 x double> %660, %wide.load1285
  %662 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %661, <4 x double>* %662, align 8, !alias.scope !182, !noalias !184
  %index.next1276 = add i64 %index1275, 4
  %663 = icmp eq i64 %index.next1276, %n.vec1274
  br i1 %663, label %middle.block1267, label %vector.body1269, !llvm.loop !185

middle.block1267:                                 ; preds = %vector.body1269
  %cmp.n1278 = icmp eq i64 %406, %n.vec1274
  br i1 %cmp.n1278, label %polly.loop_exit688.loopexit.us.2, label %polly.loop_header686.us.2.preheader

polly.loop_header686.us.2.preheader:              ; preds = %vector.memcheck1255, %polly.loop_exit688.loopexit.us.1, %middle.block1267
  %polly.indvar690.us.2.ph = phi i64 [ 0, %vector.memcheck1255 ], [ 0, %polly.loop_exit688.loopexit.us.1 ], [ %n.vec1274, %middle.block1267 ]
  br label %polly.loop_header686.us.2

polly.loop_header686.us.2:                        ; preds = %polly.loop_header686.us.2.preheader, %polly.loop_header686.us.2
  %polly.indvar690.us.2 = phi i64 [ %polly.indvar_next691.us.2, %polly.loop_header686.us.2 ], [ %polly.indvar690.us.2.ph, %polly.loop_header686.us.2.preheader ]
  %664 = add nuw nsw i64 %polly.indvar690.us.2, %388
  %polly.access.add.Packed_MemRef_call1509694.us.2 = add nuw nsw i64 %polly.indvar690.us.2, 2400
  %polly.access.Packed_MemRef_call1509695.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us.2
  %_p_scalar_696.us.2 = load double, double* %polly.access.Packed_MemRef_call1509695.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_700.us.2, %_p_scalar_696.us.2
  %polly.access.add.Packed_MemRef_call2511702.us.2 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2511697.us.2
  %polly.access.Packed_MemRef_call2511703.us.2 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call2511703.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %665 = shl i64 %664, 3
  %666 = add nuw nsw i64 %665, %418
  %scevgep709.us.2 = getelementptr i8, i8* %call, i64 %666
  %scevgep709710.us.2 = bitcast i8* %scevgep709.us.2 to double*
  %_p_scalar_711.us.2 = load double, double* %scevgep709710.us.2, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_711.us.2
  store double %p_add42.i.us.2, double* %scevgep709710.us.2, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us.2 = add nuw nsw i64 %polly.indvar690.us.2, 1
  %exitcond1093.2.not = icmp eq i64 %polly.indvar690.us.2, %smin1092
  br i1 %exitcond1093.2.not, label %polly.loop_exit688.loopexit.us.2, label %polly.loop_header686.us.2, !llvm.loop !186

polly.loop_exit688.loopexit.us.2:                 ; preds = %polly.loop_header686.us.2, %middle.block1267
  %polly.access.add.Packed_MemRef_call2511698.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us.3, %415
  %polly.access.Packed_MemRef_call2511699.us.3 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us.3
  %_p_scalar_700.us.3 = load double, double* %polly.access.Packed_MemRef_call2511699.us.3, align 8
  %polly.access.add.Packed_MemRef_call1509706.us.3 = add nsw i64 %414, 3600
  %polly.access.Packed_MemRef_call1509707.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call1509707.us.3, align 8
  %min.iters.check1240 = icmp ult i64 %413, 4
  br i1 %min.iters.check1240, label %polly.loop_header686.us.3.preheader, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_exit688.loopexit.us.2
  %n.vec1243 = and i64 %413, -4
  %broadcast.splatinsert1249 = insertelement <4 x double> poison, double %_p_scalar_700.us.3, i32 0
  %broadcast.splat1250 = shufflevector <4 x double> %broadcast.splatinsert1249, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1252 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1253 = shufflevector <4 x double> %broadcast.splatinsert1252, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1238 ]
  %667 = add nuw nsw i64 %index1244, %388
  %668 = add nuw nsw i64 %index1244, 3600
  %669 = getelementptr double, double* %Packed_MemRef_call1509, i64 %668
  %670 = bitcast double* %669 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %670, align 8
  %671 = fmul fast <4 x double> %broadcast.splat1250, %wide.load1248
  %672 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2511697.us.3
  %673 = getelementptr double, double* %Packed_MemRef_call2511, i64 %672
  %674 = bitcast double* %673 to <4 x double>*
  %wide.load1251 = load <4 x double>, <4 x double>* %674, align 8
  %675 = fmul fast <4 x double> %broadcast.splat1253, %wide.load1251
  %676 = shl i64 %667, 3
  %677 = add nuw nsw i64 %676, %418
  %678 = getelementptr i8, i8* %call, i64 %677
  %679 = bitcast i8* %678 to <4 x double>*
  %wide.load1254 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !117, !noalias !119
  %680 = fadd fast <4 x double> %675, %671
  %681 = fmul fast <4 x double> %680, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %682 = fadd fast <4 x double> %681, %wide.load1254
  %683 = bitcast i8* %678 to <4 x double>*
  store <4 x double> %682, <4 x double>* %683, align 8, !alias.scope !117, !noalias !119
  %index.next1245 = add i64 %index1244, 4
  %684 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %684, label %middle.block1236, label %vector.body1238, !llvm.loop !187

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1247 = icmp eq i64 %413, %n.vec1243
  br i1 %cmp.n1247, label %polly.loop_exit681, label %polly.loop_header686.us.3.preheader

polly.loop_header686.us.3.preheader:              ; preds = %polly.loop_exit688.loopexit.us.2, %middle.block1236
  %polly.indvar690.us.3.ph = phi i64 [ 0, %polly.loop_exit688.loopexit.us.2 ], [ %n.vec1243, %middle.block1236 ]
  br label %polly.loop_header686.us.3

polly.loop_header686.us.3:                        ; preds = %polly.loop_header686.us.3.preheader, %polly.loop_header686.us.3
  %polly.indvar690.us.3 = phi i64 [ %polly.indvar_next691.us.3, %polly.loop_header686.us.3 ], [ %polly.indvar690.us.3.ph, %polly.loop_header686.us.3.preheader ]
  %685 = add nuw nsw i64 %polly.indvar690.us.3, %388
  %polly.access.add.Packed_MemRef_call1509694.us.3 = add nuw nsw i64 %polly.indvar690.us.3, 3600
  %polly.access.Packed_MemRef_call1509695.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us.3
  %_p_scalar_696.us.3 = load double, double* %polly.access.Packed_MemRef_call1509695.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_700.us.3, %_p_scalar_696.us.3
  %polly.access.add.Packed_MemRef_call2511702.us.3 = add nuw nsw i64 %685, %polly.access.mul.Packed_MemRef_call2511697.us.3
  %polly.access.Packed_MemRef_call2511703.us.3 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call2511703.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %686 = shl i64 %685, 3
  %687 = add nuw nsw i64 %686, %418
  %scevgep709.us.3 = getelementptr i8, i8* %call, i64 %687
  %scevgep709710.us.3 = bitcast i8* %scevgep709.us.3 to double*
  %_p_scalar_711.us.3 = load double, double* %scevgep709710.us.3, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_711.us.3
  store double %p_add42.i.us.3, double* %scevgep709710.us.3, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us.3 = add nuw nsw i64 %polly.indvar690.us.3, 1
  %exitcond1093.3.not = icmp eq i64 %polly.indvar690.us.3, %smin1092
  br i1 %exitcond1093.3.not, label %polly.loop_exit681, label %polly.loop_header686.us.3, !llvm.loop !188
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
!26 = !{!"llvm.loop.tile.size", i32 32}
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
!45 = distinct !{!45, !12, !24, !46, !47, !48, !26, !49, !53}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !42, !52, !44}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!64, !65, !"polly.alias.scope.MemRef_call", !80}
!80 = distinct !{!80, !78}
!81 = !{!67, !68, !69, !70, !77}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!64, !65, !"polly.alias.scope.MemRef_call", !88}
!88 = distinct !{!88, !86}
!89 = !{!67, !68, !69, !70, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!91, !92, !"polly.alias.scope.MemRef_call", !106}
!106 = distinct !{!106, !104}
!107 = !{!94, !95, !96, !97, !103}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!91, !92, !"polly.alias.scope.MemRef_call", !114}
!114 = distinct !{!114, !112}
!115 = !{!94, !95, !96, !97, !111}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !118, !"polly.alias.scope.MemRef_call"}
!118 = distinct !{!118, !"polly.alias.scope.domain"}
!119 = !{!120, !121, !122, !123}
!120 = distinct !{!120, !118, !"polly.alias.scope.MemRef_call1"}
!121 = distinct !{!121, !118, !"polly.alias.scope.MemRef_call2"}
!122 = distinct !{!122, !118, !"polly.alias.scope.Packed_MemRef_call1"}
!123 = distinct !{!123, !118, !"polly.alias.scope.Packed_MemRef_call2"}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !73, !13}
!126 = !{!117, !120, !122, !123}
!127 = !{!117, !121, !122, !123}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!117, !118, !"polly.alias.scope.MemRef_call", !132}
!132 = distinct !{!132, !130}
!133 = !{!120, !121, !122, !123, !129}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = !{!137}
!137 = distinct !{!137, !138}
!138 = distinct !{!138, !"LVerDomain"}
!139 = !{!117, !118, !"polly.alias.scope.MemRef_call", !140}
!140 = distinct !{!140, !138}
!141 = !{!120, !121, !122, !123, !137}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !144, !"polly.alias.scope.MemRef_call"}
!144 = distinct !{!144, !"polly.alias.scope.domain"}
!145 = !{!146, !147}
!146 = distinct !{!146, !144, !"polly.alias.scope.MemRef_call1"}
!147 = distinct !{!147, !144, !"polly.alias.scope.MemRef_call2"}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !73, !13}
!150 = !{!146, !143}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !73, !13}
!153 = !{!147, !143}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !73, !13}
!156 = distinct !{!156, !13}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, !"LVerDomain"}
!160 = !{!64, !65, !"polly.alias.scope.MemRef_call", !161}
!161 = distinct !{!161, !159}
!162 = !{!67, !68, !69, !70, !158}
!163 = distinct !{!163, !13}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !13}
!166 = distinct !{!166, !73, !13}
!167 = distinct !{!167, !13}
!168 = !{!169}
!169 = distinct !{!169, !170}
!170 = distinct !{!170, !"LVerDomain"}
!171 = !{!91, !92, !"polly.alias.scope.MemRef_call", !172}
!172 = distinct !{!172, !170}
!173 = !{!94, !95, !96, !97, !169}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !73, !13}
!178 = distinct !{!178, !13}
!179 = !{!180}
!180 = distinct !{!180, !181}
!181 = distinct !{!181, !"LVerDomain"}
!182 = !{!117, !118, !"polly.alias.scope.MemRef_call", !183}
!183 = distinct !{!183, !181}
!184 = !{!120, !121, !122, !123, !180}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !73, !13}
