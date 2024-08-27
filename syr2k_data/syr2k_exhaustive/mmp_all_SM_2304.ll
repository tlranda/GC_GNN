; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2304.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2304.c"
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
  %scevgep1163 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1162 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1161 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1160 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1160, %scevgep1163
  %bound1 = icmp ult i8* %scevgep1162, %scevgep1161
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
  br i1 %exitcond18.not.i, label %vector.ph1167, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1167:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1174 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1175 = shufflevector <4 x i64> %broadcast.splatinsert1174, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1167
  %index1168 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1167 ], [ %vec.ind.next1173, %vector.body1166 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1172, %broadcast.splat1175
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1168
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1169, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1166, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1166
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1167, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1229 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1229, label %for.body3.i46.preheader1663, label %vector.ph1230

vector.ph1230:                                    ; preds = %for.body3.i46.preheader
  %n.vec1232 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1228 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1233
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1234 = add i64 %index1233, 4
  %46 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %46, label %middle.block1226, label %vector.body1228, !llvm.loop !18

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %indvars.iv21.i, %n.vec1232
  br i1 %cmp.n1236, label %for.inc6.i, label %for.body3.i46.preheader1663

for.body3.i46.preheader1663:                      ; preds = %for.body3.i46.preheader, %middle.block1226
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1232, %middle.block1226 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1663, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1663 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1226, %for.cond1.preheader.i45
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
  %min.iters.check1372 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1372, label %for.body3.i60.preheader1662, label %vector.ph1373

vector.ph1373:                                    ; preds = %for.body3.i60.preheader
  %n.vec1375 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1373
  %index1376 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1377, %vector.body1371 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1376
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1380 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1380, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1377 = add i64 %index1376, 4
  %57 = icmp eq i64 %index.next1377, %n.vec1375
  br i1 %57, label %middle.block1369, label %vector.body1371, !llvm.loop !57

middle.block1369:                                 ; preds = %vector.body1371
  %cmp.n1379 = icmp eq i64 %indvars.iv21.i52, %n.vec1375
  br i1 %cmp.n1379, label %for.inc6.i63, label %for.body3.i60.preheader1662

for.body3.i60.preheader1662:                      ; preds = %for.body3.i60.preheader, %middle.block1369
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1375, %middle.block1369 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1662, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1662 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1369, %for.cond1.preheader.i54
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
  %min.iters.check1518 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1518, label %for.body3.i99.preheader1661, label %vector.ph1519

vector.ph1519:                                    ; preds = %for.body3.i99.preheader
  %n.vec1521 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1519
  %index1522 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1523, %vector.body1517 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1522
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1526 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1526, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1523 = add i64 %index1522, 4
  %68 = icmp eq i64 %index.next1523, %n.vec1521
  br i1 %68, label %middle.block1515, label %vector.body1517, !llvm.loop !59

middle.block1515:                                 ; preds = %vector.body1517
  %cmp.n1525 = icmp eq i64 %indvars.iv21.i91, %n.vec1521
  br i1 %cmp.n1525, label %for.inc6.i102, label %for.body3.i99.preheader1661

for.body3.i99.preheader1661:                      ; preds = %for.body3.i99.preheader, %middle.block1515
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1521, %middle.block1515 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1661, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1661 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1515, %for.cond1.preheader.i93
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
  %indvar1530 = phi i64 [ %indvar.next1531, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1530, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1532 = icmp ult i64 %88, 4
  br i1 %min.iters.check1532, label %polly.loop_header192.preheader, label %vector.ph1533

vector.ph1533:                                    ; preds = %polly.loop_header
  %n.vec1535 = and i64 %88, -4
  br label %vector.body1529

vector.body1529:                                  ; preds = %vector.body1529, %vector.ph1533
  %index1536 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1537, %vector.body1529 ]
  %90 = shl nuw nsw i64 %index1536, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1540 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1540, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1537 = add i64 %index1536, 4
  %95 = icmp eq i64 %index.next1537, %n.vec1535
  br i1 %95, label %middle.block1527, label %vector.body1529, !llvm.loop !72

middle.block1527:                                 ; preds = %vector.body1529
  %cmp.n1539 = icmp eq i64 %88, %n.vec1535
  br i1 %cmp.n1539, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1527
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1535, %middle.block1527 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1527
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1531 = add i64 %indvar1530, 1
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
  %scevgep1569 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1570 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1602 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1603 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1635 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1057.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1057.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit224 ], [ 27, %polly.loop_header216.preheader ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
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
  %111 = udiv i64 %indvars.iv1051, 25
  %112 = sub nsw i64 %indvars.iv1049, %111
  %smin1053 = call i64 @llvm.smin.i64(i64 %112, i64 21)
  %113 = mul nsw i64 %polly.indvar219, -96
  %114 = icmp slt i64 %113, -1104
  %115 = select i1 %114, i64 %113, i64 -1104
  %116 = add nsw i64 %115, 1199
  %117 = mul nuw nsw i64 %polly.indvar219, 96
  %118 = add nsw i64 %smin1053, 2
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 96
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 2
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 2
  %exitcond1056.not = icmp eq i64 %polly.indvar_next220, 13
  br i1 %exitcond1056.not, label %polly.exiting, label %polly.loop_header216

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
  %exitcond1055.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1055.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit236 ], [ %indvars.iv1038, %polly.loop_header222 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %126 = mul nuw nsw i64 %polly.indvar231, 50
  %127 = add i64 %97, %126
  %smax1644 = call i64 @llvm.smax.i64(i64 %127, i64 0)
  %128 = mul nsw i64 %polly.indvar231, -50
  %129 = add i64 %98, %128
  %130 = add i64 %smax1644, %129
  %131 = mul nuw nsw i64 %polly.indvar231, 400
  %132 = mul nuw nsw i64 %polly.indvar231, 50
  %133 = add i64 %100, %132
  %smax1630 = call i64 @llvm.smax.i64(i64 %133, i64 0)
  %134 = add nuw i64 %99, %smax1630
  %135 = mul nsw i64 %134, 9600
  %136 = add i64 %131, %135
  %137 = or i64 %131, 8
  %138 = add i64 %137, %135
  %139 = mul nsw i64 %polly.indvar231, -50
  %140 = add i64 %99, %139
  %141 = add i64 %smax1630, %140
  %142 = mul nuw nsw i64 %polly.indvar231, 50
  %143 = add i64 %101, %142
  %smax1612 = call i64 @llvm.smax.i64(i64 %143, i64 0)
  %144 = mul nsw i64 %polly.indvar231, -50
  %145 = add i64 %102, %144
  %146 = add i64 %smax1612, %145
  %147 = mul nuw nsw i64 %polly.indvar231, 400
  %148 = mul nuw nsw i64 %polly.indvar231, 50
  %149 = add i64 %104, %148
  %smax1597 = call i64 @llvm.smax.i64(i64 %149, i64 0)
  %150 = add nuw i64 %103, %smax1597
  %151 = mul nsw i64 %150, 9600
  %152 = add i64 %147, %151
  %153 = or i64 %147, 8
  %154 = add i64 %153, %151
  %155 = mul nsw i64 %polly.indvar231, -50
  %156 = add i64 %103, %155
  %157 = add i64 %smax1597, %156
  %158 = mul nuw nsw i64 %polly.indvar231, 50
  %159 = add i64 %105, %158
  %smax1579 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = mul nsw i64 %polly.indvar231, -50
  %161 = add i64 %106, %160
  %162 = add i64 %smax1579, %161
  %163 = mul nuw nsw i64 %polly.indvar231, 400
  %164 = mul nuw nsw i64 %polly.indvar231, 50
  %165 = add i64 %108, %164
  %smax1564 = call i64 @llvm.smax.i64(i64 %165, i64 0)
  %166 = add nuw i64 %107, %smax1564
  %167 = mul nsw i64 %166, 9600
  %168 = add i64 %163, %167
  %169 = or i64 %163, 8
  %170 = add i64 %169, %167
  %171 = mul nsw i64 %polly.indvar231, -50
  %172 = add i64 %107, %171
  %173 = add i64 %smax1564, %172
  %174 = mul nuw nsw i64 %polly.indvar231, 50
  %175 = add i64 %109, %174
  %smax1544 = call i64 @llvm.smax.i64(i64 %175, i64 0)
  %176 = mul nsw i64 %polly.indvar231, -50
  %177 = add i64 %110, %176
  %178 = add i64 %smax1544, %177
  %179 = mul nuw nsw i64 %polly.indvar231, 50
  %180 = add nsw i64 %179, %113
  %181 = icmp sgt i64 %180, 0
  %182 = select i1 %181, i64 %180, i64 0
  %polly.loop_guard.not = icmp sgt i64 %182, %116
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %183 = add i64 %smax, %indvars.iv1040
  %184 = sub nsw i64 %117, %179
  %185 = add nuw nsw i64 %179, 50
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 50
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -50
  %exitcond1054.not = icmp eq i64 %polly.indvar231, %118
  br i1 %exitcond1054.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1545 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1546, %polly.loop_exit267 ]
  %indvars.iv1042 = phi i64 [ %183, %polly.loop_header234.preheader ], [ %indvars.iv.next1043, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %182, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %186 = add i64 %130, %indvar1545
  %smin1645 = call i64 @llvm.smin.i64(i64 %186, i64 49)
  %187 = add nsw i64 %smin1645, 1
  %188 = mul i64 %indvar1545, 9600
  %189 = add i64 %136, %188
  %scevgep1631 = getelementptr i8, i8* %call, i64 %189
  %190 = add i64 %138, %188
  %scevgep1632 = getelementptr i8, i8* %call, i64 %190
  %191 = add i64 %141, %indvar1545
  %smin1633 = call i64 @llvm.smin.i64(i64 %191, i64 49)
  %192 = shl i64 %smin1633, 3
  %scevgep1634 = getelementptr i8, i8* %scevgep1632, i64 %192
  %scevgep1636 = getelementptr i8, i8* %scevgep1635, i64 %192
  %193 = add i64 %146, %indvar1545
  %smin1613 = call i64 @llvm.smin.i64(i64 %193, i64 49)
  %194 = add nsw i64 %smin1613, 1
  %195 = mul i64 %indvar1545, 9600
  %196 = add i64 %152, %195
  %scevgep1598 = getelementptr i8, i8* %call, i64 %196
  %197 = add i64 %154, %195
  %scevgep1599 = getelementptr i8, i8* %call, i64 %197
  %198 = add i64 %157, %indvar1545
  %smin1600 = call i64 @llvm.smin.i64(i64 %198, i64 49)
  %199 = shl i64 %smin1600, 3
  %scevgep1601 = getelementptr i8, i8* %scevgep1599, i64 %199
  %scevgep1604 = getelementptr i8, i8* %scevgep1603, i64 %199
  %200 = add i64 %162, %indvar1545
  %smin1580 = call i64 @llvm.smin.i64(i64 %200, i64 49)
  %201 = add nsw i64 %smin1580, 1
  %202 = mul i64 %indvar1545, 9600
  %203 = add i64 %168, %202
  %scevgep1565 = getelementptr i8, i8* %call, i64 %203
  %204 = add i64 %170, %202
  %scevgep1566 = getelementptr i8, i8* %call, i64 %204
  %205 = add i64 %173, %indvar1545
  %smin1567 = call i64 @llvm.smin.i64(i64 %205, i64 49)
  %206 = shl i64 %smin1567, 3
  %scevgep1568 = getelementptr i8, i8* %scevgep1566, i64 %206
  %scevgep1571 = getelementptr i8, i8* %scevgep1570, i64 %206
  %207 = add i64 %178, %indvar1545
  %smin1547 = call i64 @llvm.smin.i64(i64 %207, i64 49)
  %208 = add nsw i64 %smin1547, 1
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 49)
  %209 = add nsw i64 %polly.indvar237, %184
  %polly.loop_guard2501155 = icmp sgt i64 %209, -1
  %210 = add nuw nsw i64 %polly.indvar237, %117
  %.not = icmp ult i64 %210, %185
  %polly.access.mul.call1259 = mul nsw i64 %210, 1000
  %211 = add nuw i64 %polly.access.mul.call1259, %119
  br i1 %polly.loop_guard2501155, label %polly.loop_header247.us, label %polly.loop_header234.split

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

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1541, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %116
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %indvar.next1546 = add i64 %indvar1545, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %213 = mul i64 %210, 9600
  br i1 %polly.loop_guard2501155, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %210
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1646 = icmp ult i64 %187, 4
  br i1 %min.iters.check1646, label %polly.loop_header272.us.preheader, label %vector.memcheck1629

vector.memcheck1629:                              ; preds = %polly.loop_header265.us.preheader
  %bound01637 = icmp ult i8* %scevgep1631, %scevgep1636
  %bound11638 = icmp ult i8* %malloccall, %scevgep1634
  %found.conflict1639 = and i1 %bound01637, %bound11638
  br i1 %found.conflict1639, label %polly.loop_header272.us.preheader, label %vector.ph1647

vector.ph1647:                                    ; preds = %vector.memcheck1629
  %n.vec1649 = and i64 %187, -4
  %broadcast.splatinsert1655 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1656 = shufflevector <4 x double> %broadcast.splatinsert1655, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1658 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1659 = shufflevector <4 x double> %broadcast.splatinsert1658, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1643

vector.body1643:                                  ; preds = %vector.body1643, %vector.ph1647
  %index1650 = phi i64 [ 0, %vector.ph1647 ], [ %index.next1651, %vector.body1643 ]
  %214 = add nuw nsw i64 %index1650, %179
  %215 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1650
  %216 = bitcast double* %215 to <4 x double>*
  %wide.load1654 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !77
  %217 = fmul fast <4 x double> %broadcast.splat1656, %wide.load1654
  %218 = add nuw nsw i64 %214, %polly.access.mul.Packed_MemRef_call2283.us
  %219 = getelementptr double, double* %Packed_MemRef_call2, i64 %218
  %220 = bitcast double* %219 to <4 x double>*
  %wide.load1657 = load <4 x double>, <4 x double>* %220, align 8
  %221 = fmul fast <4 x double> %broadcast.splat1659, %wide.load1657
  %222 = shl i64 %214, 3
  %223 = add i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  %wide.load1660 = load <4 x double>, <4 x double>* %225, align 8, !alias.scope !80, !noalias !82
  %226 = fadd fast <4 x double> %221, %217
  %227 = fmul fast <4 x double> %226, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %228 = fadd fast <4 x double> %227, %wide.load1660
  %229 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %228, <4 x double>* %229, align 8, !alias.scope !80, !noalias !82
  %index.next1651 = add i64 %index1650, 4
  %230 = icmp eq i64 %index.next1651, %n.vec1649
  br i1 %230, label %middle.block1641, label %vector.body1643, !llvm.loop !83

middle.block1641:                                 ; preds = %vector.body1643
  %cmp.n1653 = icmp eq i64 %187, %n.vec1649
  br i1 %cmp.n1653, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1629, %polly.loop_header265.us.preheader, %middle.block1641
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1629 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1649, %middle.block1641 ]
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

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1641
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %210
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1614 = icmp ult i64 %194, 4
  br i1 %min.iters.check1614, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1596

vector.memcheck1596:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01605 = icmp ult i8* %scevgep1598, %scevgep1604
  %bound11606 = icmp ult i8* %scevgep1602, %scevgep1601
  %found.conflict1607 = and i1 %bound01605, %bound11606
  br i1 %found.conflict1607, label %polly.loop_header272.us.1.preheader, label %vector.ph1615

vector.ph1615:                                    ; preds = %vector.memcheck1596
  %n.vec1617 = and i64 %194, -4
  %broadcast.splatinsert1623 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1624 = shufflevector <4 x double> %broadcast.splatinsert1623, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1626 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1627 = shufflevector <4 x double> %broadcast.splatinsert1626, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1611

vector.body1611:                                  ; preds = %vector.body1611, %vector.ph1615
  %index1618 = phi i64 [ 0, %vector.ph1615 ], [ %index.next1619, %vector.body1611 ]
  %234 = add nuw nsw i64 %index1618, %179
  %235 = add nuw nsw i64 %index1618, 1200
  %236 = getelementptr double, double* %Packed_MemRef_call1, i64 %235
  %237 = bitcast double* %236 to <4 x double>*
  %wide.load1622 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !85
  %238 = fmul fast <4 x double> %broadcast.splat1624, %wide.load1622
  %239 = add nuw nsw i64 %234, %polly.access.mul.Packed_MemRef_call2283.us.1
  %240 = getelementptr double, double* %Packed_MemRef_call2, i64 %239
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1625 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1627, %wide.load1625
  %243 = shl i64 %234, 3
  %244 = add i64 %243, %213
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1628 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !88, !noalias !90
  %247 = fadd fast <4 x double> %242, %238
  %248 = fmul fast <4 x double> %247, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %249 = fadd fast <4 x double> %248, %wide.load1628
  %250 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !88, !noalias !90
  %index.next1619 = add i64 %index1618, 4
  %251 = icmp eq i64 %index.next1619, %n.vec1617
  br i1 %251, label %middle.block1609, label %vector.body1611, !llvm.loop !91

middle.block1609:                                 ; preds = %vector.body1611
  %cmp.n1621 = icmp eq i64 %194, %n.vec1617
  br i1 %cmp.n1621, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1.preheader

polly.loop_header272.us.1.preheader:              ; preds = %vector.memcheck1596, %polly.loop_exit274.loopexit.us, %middle.block1609
  %polly.indvar276.us.1.ph = phi i64 [ 0, %vector.memcheck1596 ], [ 0, %polly.loop_exit274.loopexit.us ], [ %n.vec1617, %middle.block1609 ]
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
  %indvar1384 = phi i64 [ %indvar.next1385, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %252 = add i64 %indvar1384, 1
  %253 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %253
  %min.iters.check1386 = icmp ult i64 %252, 4
  br i1 %min.iters.check1386, label %polly.loop_header394.preheader, label %vector.ph1387

vector.ph1387:                                    ; preds = %polly.loop_header388
  %n.vec1389 = and i64 %252, -4
  br label %vector.body1383

vector.body1383:                                  ; preds = %vector.body1383, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1391, %vector.body1383 ]
  %254 = shl nuw nsw i64 %index1390, 3
  %255 = getelementptr i8, i8* %scevgep400, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %257 = fmul fast <4 x double> %wide.load1394, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %258 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !92, !noalias !94
  %index.next1391 = add i64 %index1390, 4
  %259 = icmp eq i64 %index.next1391, %n.vec1389
  br i1 %259, label %middle.block1381, label %vector.body1383, !llvm.loop !99

middle.block1381:                                 ; preds = %vector.body1383
  %cmp.n1393 = icmp eq i64 %252, %n.vec1389
  br i1 %cmp.n1393, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1381
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1389, %middle.block1381 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1381
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1385 = add i64 %indvar1384, 1
  br i1 %exitcond1090.not, label %polly.loop_header404.preheader, label %polly.loop_header388

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
  %exitcond1089.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1089.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !100

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1088.not, label %polly.loop_header420.preheader, label %polly.loop_header404

polly.loop_header420.preheader:                   ; preds = %polly.loop_exit412
  %scevgep1423 = getelementptr i8, i8* %malloccall302, i64 19200
  %scevgep1424 = getelementptr i8, i8* %malloccall302, i64 19208
  %scevgep1456 = getelementptr i8, i8* %malloccall302, i64 9600
  %scevgep1457 = getelementptr i8, i8* %malloccall302, i64 9608
  %scevgep1489 = getelementptr i8, i8* %malloccall302, i64 8
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
  %exitcond1087.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1087.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit428
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit428 ], [ 27, %polly.loop_header420.preheader ]
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_header420.preheader ]
  %261 = mul nsw i64 %polly.indvar423, -96
  %262 = mul nuw nsw i64 %polly.indvar423, 96
  %263 = mul nuw nsw i64 %polly.indvar423, 96
  %264 = mul nsw i64 %polly.indvar423, -96
  %265 = mul nsw i64 %polly.indvar423, -96
  %266 = mul nuw nsw i64 %polly.indvar423, 96
  %267 = mul nuw nsw i64 %polly.indvar423, 96
  %268 = mul nsw i64 %polly.indvar423, -96
  %269 = mul nsw i64 %polly.indvar423, -96
  %270 = mul nuw nsw i64 %polly.indvar423, 96
  %271 = mul nuw nsw i64 %polly.indvar423, 96
  %272 = mul nsw i64 %polly.indvar423, -96
  %273 = mul nsw i64 %polly.indvar423, -96
  %274 = mul nuw nsw i64 %polly.indvar423, 96
  %275 = udiv i64 %indvars.iv1081, 25
  %276 = sub nsw i64 %indvars.iv1079, %275
  %smin1083 = call i64 @llvm.smin.i64(i64 %276, i64 21)
  %277 = mul nsw i64 %polly.indvar423, -96
  %278 = icmp slt i64 %277, -1104
  %279 = select i1 %278, i64 %277, i64 -1104
  %280 = add nsw i64 %279, 1199
  %281 = mul nuw nsw i64 %polly.indvar423, 96
  %282 = add nsw i64 %smin1083, 2
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -96
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 96
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 2
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 2
  %exitcond1086.not = icmp eq i64 %polly.indvar_next424, 13
  br i1 %exitcond1086.not, label %polly.exiting301, label %polly.loop_header420

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
  %exitcond1085.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1085.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit442 ], [ %indvars.iv1067, %polly.loop_header426 ]
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit442 ], [ %indvars.iv1062, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %290 = mul nuw nsw i64 %polly.indvar436, 50
  %291 = add i64 %261, %290
  %smax1498 = call i64 @llvm.smax.i64(i64 %291, i64 0)
  %292 = mul nsw i64 %polly.indvar436, -50
  %293 = add i64 %262, %292
  %294 = add i64 %smax1498, %293
  %295 = mul nuw nsw i64 %polly.indvar436, 400
  %296 = mul nuw nsw i64 %polly.indvar436, 50
  %297 = add i64 %264, %296
  %smax1484 = call i64 @llvm.smax.i64(i64 %297, i64 0)
  %298 = add nuw i64 %263, %smax1484
  %299 = mul nsw i64 %298, 9600
  %300 = add i64 %295, %299
  %301 = or i64 %295, 8
  %302 = add i64 %301, %299
  %303 = mul nsw i64 %polly.indvar436, -50
  %304 = add i64 %263, %303
  %305 = add i64 %smax1484, %304
  %306 = mul nuw nsw i64 %polly.indvar436, 50
  %307 = add i64 %265, %306
  %smax1466 = call i64 @llvm.smax.i64(i64 %307, i64 0)
  %308 = mul nsw i64 %polly.indvar436, -50
  %309 = add i64 %266, %308
  %310 = add i64 %smax1466, %309
  %311 = mul nuw nsw i64 %polly.indvar436, 400
  %312 = mul nuw nsw i64 %polly.indvar436, 50
  %313 = add i64 %268, %312
  %smax1451 = call i64 @llvm.smax.i64(i64 %313, i64 0)
  %314 = add nuw i64 %267, %smax1451
  %315 = mul nsw i64 %314, 9600
  %316 = add i64 %311, %315
  %317 = or i64 %311, 8
  %318 = add i64 %317, %315
  %319 = mul nsw i64 %polly.indvar436, -50
  %320 = add i64 %267, %319
  %321 = add i64 %smax1451, %320
  %322 = mul nuw nsw i64 %polly.indvar436, 50
  %323 = add i64 %269, %322
  %smax1433 = call i64 @llvm.smax.i64(i64 %323, i64 0)
  %324 = mul nsw i64 %polly.indvar436, -50
  %325 = add i64 %270, %324
  %326 = add i64 %smax1433, %325
  %327 = mul nuw nsw i64 %polly.indvar436, 400
  %328 = mul nuw nsw i64 %polly.indvar436, 50
  %329 = add i64 %272, %328
  %smax1418 = call i64 @llvm.smax.i64(i64 %329, i64 0)
  %330 = add nuw i64 %271, %smax1418
  %331 = mul nsw i64 %330, 9600
  %332 = add i64 %327, %331
  %333 = or i64 %327, 8
  %334 = add i64 %333, %331
  %335 = mul nsw i64 %polly.indvar436, -50
  %336 = add i64 %271, %335
  %337 = add i64 %smax1418, %336
  %338 = mul nuw nsw i64 %polly.indvar436, 50
  %339 = add i64 %273, %338
  %smax1398 = call i64 @llvm.smax.i64(i64 %339, i64 0)
  %340 = mul nsw i64 %polly.indvar436, -50
  %341 = add i64 %274, %340
  %342 = add i64 %smax1398, %341
  %343 = mul nuw nsw i64 %polly.indvar436, 50
  %344 = add nsw i64 %343, %277
  %345 = icmp sgt i64 %344, 0
  %346 = select i1 %345, i64 %344, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %346, %280
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1066 = call i64 @llvm.smax.i64(i64 %indvars.iv1064, i64 0)
  %347 = add i64 %smax1066, %indvars.iv1069
  %348 = sub nsw i64 %281, %343
  %349 = add nuw nsw i64 %343, 50
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, 50
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -50
  %exitcond1084.not = icmp eq i64 %polly.indvar436, %282
  br i1 %exitcond1084.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1399 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1400, %polly.loop_exit478 ]
  %indvars.iv1071 = phi i64 [ %347, %polly.loop_header440.preheader ], [ %indvars.iv.next1072, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %346, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %350 = add i64 %294, %indvar1399
  %smin1499 = call i64 @llvm.smin.i64(i64 %350, i64 49)
  %351 = add nsw i64 %smin1499, 1
  %352 = mul i64 %indvar1399, 9600
  %353 = add i64 %300, %352
  %scevgep1485 = getelementptr i8, i8* %call, i64 %353
  %354 = add i64 %302, %352
  %scevgep1486 = getelementptr i8, i8* %call, i64 %354
  %355 = add i64 %305, %indvar1399
  %smin1487 = call i64 @llvm.smin.i64(i64 %355, i64 49)
  %356 = shl i64 %smin1487, 3
  %scevgep1488 = getelementptr i8, i8* %scevgep1486, i64 %356
  %scevgep1490 = getelementptr i8, i8* %scevgep1489, i64 %356
  %357 = add i64 %310, %indvar1399
  %smin1467 = call i64 @llvm.smin.i64(i64 %357, i64 49)
  %358 = add nsw i64 %smin1467, 1
  %359 = mul i64 %indvar1399, 9600
  %360 = add i64 %316, %359
  %scevgep1452 = getelementptr i8, i8* %call, i64 %360
  %361 = add i64 %318, %359
  %scevgep1453 = getelementptr i8, i8* %call, i64 %361
  %362 = add i64 %321, %indvar1399
  %smin1454 = call i64 @llvm.smin.i64(i64 %362, i64 49)
  %363 = shl i64 %smin1454, 3
  %scevgep1455 = getelementptr i8, i8* %scevgep1453, i64 %363
  %scevgep1458 = getelementptr i8, i8* %scevgep1457, i64 %363
  %364 = add i64 %326, %indvar1399
  %smin1434 = call i64 @llvm.smin.i64(i64 %364, i64 49)
  %365 = add nsw i64 %smin1434, 1
  %366 = mul i64 %indvar1399, 9600
  %367 = add i64 %332, %366
  %scevgep1419 = getelementptr i8, i8* %call, i64 %367
  %368 = add i64 %334, %366
  %scevgep1420 = getelementptr i8, i8* %call, i64 %368
  %369 = add i64 %337, %indvar1399
  %smin1421 = call i64 @llvm.smin.i64(i64 %369, i64 49)
  %370 = shl i64 %smin1421, 3
  %scevgep1422 = getelementptr i8, i8* %scevgep1420, i64 %370
  %scevgep1425 = getelementptr i8, i8* %scevgep1424, i64 %370
  %371 = add i64 %342, %indvar1399
  %smin1401 = call i64 @llvm.smin.i64(i64 %371, i64 49)
  %372 = add nsw i64 %smin1401, 1
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 49)
  %373 = add nsw i64 %polly.indvar444, %348
  %polly.loop_guard4571156 = icmp sgt i64 %373, -1
  %374 = add nuw nsw i64 %polly.indvar444, %281
  %.not926 = icmp ult i64 %374, %349
  %polly.access.mul.call1470 = mul nsw i64 %374, 1000
  %375 = add nuw i64 %polly.access.mul.call1470, %283
  br i1 %polly.loop_guard4571156, label %polly.loop_header454.us, label %polly.loop_header440.split

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
  %exitcond1074.not = icmp eq i64 %polly.indvar458.us, %smin1076
  br i1 %exitcond1074.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

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

polly.loop_exit478:                               ; preds = %polly.loop_header483.us.3, %middle.block1395, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %280
  %indvars.iv.next1072 = add i64 %indvars.iv1071, 1
  %indvar.next1400 = add i64 %indvar1399, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.cond465.loopexit.us.3, %polly.then467.us.3
  %377 = mul i64 %374, 9600
  br i1 %polly.loop_guard4571156, label %polly.loop_header476.us.preheader, label %polly.loop_exit478

polly.loop_header476.us.preheader:                ; preds = %polly.loop_header476.preheader
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %374
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %373
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1500 = icmp ult i64 %351, 4
  br i1 %min.iters.check1500, label %polly.loop_header483.us.preheader, label %vector.memcheck1483

vector.memcheck1483:                              ; preds = %polly.loop_header476.us.preheader
  %bound01491 = icmp ult i8* %scevgep1485, %scevgep1490
  %bound11492 = icmp ult i8* %malloccall302, %scevgep1488
  %found.conflict1493 = and i1 %bound01491, %bound11492
  br i1 %found.conflict1493, label %polly.loop_header483.us.preheader, label %vector.ph1501

vector.ph1501:                                    ; preds = %vector.memcheck1483
  %n.vec1503 = and i64 %351, -4
  %broadcast.splatinsert1509 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1510 = shufflevector <4 x double> %broadcast.splatinsert1509, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1501
  %index1504 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1505, %vector.body1497 ]
  %378 = add nuw nsw i64 %index1504, %343
  %379 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1504
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1508 = load <4 x double>, <4 x double>* %380, align 8, !alias.scope !103
  %381 = fmul fast <4 x double> %broadcast.splat1510, %wide.load1508
  %382 = add nuw nsw i64 %378, %polly.access.mul.Packed_MemRef_call2305494.us
  %383 = getelementptr double, double* %Packed_MemRef_call2305, i64 %382
  %384 = bitcast double* %383 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %384, align 8
  %385 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %386 = shl i64 %378, 3
  %387 = add i64 %386, %377
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %389, align 8, !alias.scope !106, !noalias !108
  %390 = fadd fast <4 x double> %385, %381
  %391 = fmul fast <4 x double> %390, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %392 = fadd fast <4 x double> %391, %wide.load1514
  %393 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %392, <4 x double>* %393, align 8, !alias.scope !106, !noalias !108
  %index.next1505 = add i64 %index1504, 4
  %394 = icmp eq i64 %index.next1505, %n.vec1503
  br i1 %394, label %middle.block1495, label %vector.body1497, !llvm.loop !109

middle.block1495:                                 ; preds = %vector.body1497
  %cmp.n1507 = icmp eq i64 %351, %n.vec1503
  br i1 %cmp.n1507, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1483, %polly.loop_header476.us.preheader, %middle.block1495
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1483 ], [ 0, %polly.loop_header476.us.preheader ], [ %n.vec1503, %middle.block1495 ]
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
  %exitcond1077.not = icmp eq i64 %polly.indvar487.us, %smin1076
  br i1 %exitcond1077.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !110

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1495
  %polly.access.add.Packed_MemRef_call2305495.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.1, %374
  %polly.access.Packed_MemRef_call2305496.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2305496.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1303504.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1303504.us.1, align 8
  %min.iters.check1468 = icmp ult i64 %358, 4
  br i1 %min.iters.check1468, label %polly.loop_header483.us.1.preheader, label %vector.memcheck1450

vector.memcheck1450:                              ; preds = %polly.loop_exit485.loopexit.us
  %bound01459 = icmp ult i8* %scevgep1452, %scevgep1458
  %bound11460 = icmp ult i8* %scevgep1456, %scevgep1455
  %found.conflict1461 = and i1 %bound01459, %bound11460
  br i1 %found.conflict1461, label %polly.loop_header483.us.1.preheader, label %vector.ph1469

vector.ph1469:                                    ; preds = %vector.memcheck1450
  %n.vec1471 = and i64 %358, -4
  %broadcast.splatinsert1477 = insertelement <4 x double> poison, double %_p_scalar_497.us.1, i32 0
  %broadcast.splat1478 = shufflevector <4 x double> %broadcast.splatinsert1477, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1480 = insertelement <4 x double> poison, double %_p_scalar_505.us.1, i32 0
  %broadcast.splat1481 = shufflevector <4 x double> %broadcast.splatinsert1480, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1465

vector.body1465:                                  ; preds = %vector.body1465, %vector.ph1469
  %index1472 = phi i64 [ 0, %vector.ph1469 ], [ %index.next1473, %vector.body1465 ]
  %398 = add nuw nsw i64 %index1472, %343
  %399 = add nuw nsw i64 %index1472, 1200
  %400 = getelementptr double, double* %Packed_MemRef_call1303, i64 %399
  %401 = bitcast double* %400 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %401, align 8, !alias.scope !111
  %402 = fmul fast <4 x double> %broadcast.splat1478, %wide.load1476
  %403 = add nuw nsw i64 %398, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %404 = getelementptr double, double* %Packed_MemRef_call2305, i64 %403
  %405 = bitcast double* %404 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %405, align 8
  %406 = fmul fast <4 x double> %broadcast.splat1481, %wide.load1479
  %407 = shl i64 %398, 3
  %408 = add i64 %407, %377
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %410, align 8, !alias.scope !114, !noalias !116
  %411 = fadd fast <4 x double> %406, %402
  %412 = fmul fast <4 x double> %411, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %413 = fadd fast <4 x double> %412, %wide.load1482
  %414 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %413, <4 x double>* %414, align 8, !alias.scope !114, !noalias !116
  %index.next1473 = add i64 %index1472, 4
  %415 = icmp eq i64 %index.next1473, %n.vec1471
  br i1 %415, label %middle.block1463, label %vector.body1465, !llvm.loop !117

middle.block1463:                                 ; preds = %vector.body1465
  %cmp.n1475 = icmp eq i64 %358, %n.vec1471
  br i1 %cmp.n1475, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1.preheader

polly.loop_header483.us.1.preheader:              ; preds = %vector.memcheck1450, %polly.loop_exit485.loopexit.us, %middle.block1463
  %polly.indvar487.us.1.ph = phi i64 [ 0, %vector.memcheck1450 ], [ 0, %polly.loop_exit485.loopexit.us ], [ %n.vec1471, %middle.block1463 ]
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
  %min.iters.check1240 = icmp ult i64 %416, 4
  br i1 %min.iters.check1240, label %polly.loop_header605.preheader, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header599
  %n.vec1243 = and i64 %416, -4
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1239 ]
  %418 = shl nuw nsw i64 %index1244, 3
  %419 = getelementptr i8, i8* %scevgep611, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %420, align 8, !alias.scope !118, !noalias !120
  %421 = fmul fast <4 x double> %wide.load1248, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %422 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %421, <4 x double>* %422, align 8, !alias.scope !118, !noalias !120
  %index.next1245 = add i64 %index1244, 4
  %423 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %423, label %middle.block1237, label %vector.body1239, !llvm.loop !125

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1247 = icmp eq i64 %416, %n.vec1243
  br i1 %cmp.n1247, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1237
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1243, %middle.block1237 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1237
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1120.not, label %polly.loop_header615.preheader, label %polly.loop_header599

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
  %exitcond1119.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1119.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !126

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1118.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %scevgep1277 = getelementptr i8, i8* %malloccall513, i64 19200
  %scevgep1278 = getelementptr i8, i8* %malloccall513, i64 19208
  %scevgep1310 = getelementptr i8, i8* %malloccall513, i64 9600
  %scevgep1311 = getelementptr i8, i8* %malloccall513, i64 9608
  %scevgep1343 = getelementptr i8, i8* %malloccall513, i64 8
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
  %exitcond1117.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1117.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit639 ], [ 27, %polly.loop_header631.preheader ]
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_header631.preheader ]
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
  %435 = mul nuw nsw i64 %polly.indvar634, 96
  %436 = mul nsw i64 %polly.indvar634, -96
  %437 = mul nsw i64 %polly.indvar634, -96
  %438 = mul nuw nsw i64 %polly.indvar634, 96
  %439 = udiv i64 %indvars.iv1111, 25
  %440 = sub nsw i64 %indvars.iv1109, %439
  %smin1113 = call i64 @llvm.smin.i64(i64 %440, i64 21)
  %441 = mul nsw i64 %polly.indvar634, -96
  %442 = icmp slt i64 %441, -1104
  %443 = select i1 %442, i64 %441, i64 -1104
  %444 = add nsw i64 %443, 1199
  %445 = mul nuw nsw i64 %polly.indvar634, 96
  %446 = add nsw i64 %smin1113, 2
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -96
  %indvars.iv.next1098 = add nuw nsw i64 %indvars.iv1097, 96
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 2
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 2
  %exitcond1116.not = icmp eq i64 %polly.indvar_next635, 13
  br i1 %exitcond1116.not, label %polly.exiting512, label %polly.loop_header631

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
  %exitcond1115.not = icmp eq i64 %polly.indvar_next641, 250
  br i1 %exitcond1115.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit653 ], [ %indvars.iv1097, %polly.loop_header637 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit653 ], [ %indvars.iv1092, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %454 = mul nuw nsw i64 %polly.indvar647, 50
  %455 = add i64 %425, %454
  %smax1352 = call i64 @llvm.smax.i64(i64 %455, i64 0)
  %456 = mul nsw i64 %polly.indvar647, -50
  %457 = add i64 %426, %456
  %458 = add i64 %smax1352, %457
  %459 = mul nuw nsw i64 %polly.indvar647, 400
  %460 = mul nuw nsw i64 %polly.indvar647, 50
  %461 = add i64 %428, %460
  %smax1338 = call i64 @llvm.smax.i64(i64 %461, i64 0)
  %462 = add nuw i64 %427, %smax1338
  %463 = mul nsw i64 %462, 9600
  %464 = add i64 %459, %463
  %465 = or i64 %459, 8
  %466 = add i64 %465, %463
  %467 = mul nsw i64 %polly.indvar647, -50
  %468 = add i64 %427, %467
  %469 = add i64 %smax1338, %468
  %470 = mul nuw nsw i64 %polly.indvar647, 50
  %471 = add i64 %429, %470
  %smax1320 = call i64 @llvm.smax.i64(i64 %471, i64 0)
  %472 = mul nsw i64 %polly.indvar647, -50
  %473 = add i64 %430, %472
  %474 = add i64 %smax1320, %473
  %475 = mul nuw nsw i64 %polly.indvar647, 400
  %476 = mul nuw nsw i64 %polly.indvar647, 50
  %477 = add i64 %432, %476
  %smax1305 = call i64 @llvm.smax.i64(i64 %477, i64 0)
  %478 = add nuw i64 %431, %smax1305
  %479 = mul nsw i64 %478, 9600
  %480 = add i64 %475, %479
  %481 = or i64 %475, 8
  %482 = add i64 %481, %479
  %483 = mul nsw i64 %polly.indvar647, -50
  %484 = add i64 %431, %483
  %485 = add i64 %smax1305, %484
  %486 = mul nuw nsw i64 %polly.indvar647, 50
  %487 = add i64 %433, %486
  %smax1287 = call i64 @llvm.smax.i64(i64 %487, i64 0)
  %488 = mul nsw i64 %polly.indvar647, -50
  %489 = add i64 %434, %488
  %490 = add i64 %smax1287, %489
  %491 = mul nuw nsw i64 %polly.indvar647, 400
  %492 = mul nuw nsw i64 %polly.indvar647, 50
  %493 = add i64 %436, %492
  %smax1272 = call i64 @llvm.smax.i64(i64 %493, i64 0)
  %494 = add nuw i64 %435, %smax1272
  %495 = mul nsw i64 %494, 9600
  %496 = add i64 %491, %495
  %497 = or i64 %491, 8
  %498 = add i64 %497, %495
  %499 = mul nsw i64 %polly.indvar647, -50
  %500 = add i64 %435, %499
  %501 = add i64 %smax1272, %500
  %502 = mul nuw nsw i64 %polly.indvar647, 50
  %503 = add i64 %437, %502
  %smax1252 = call i64 @llvm.smax.i64(i64 %503, i64 0)
  %504 = mul nsw i64 %polly.indvar647, -50
  %505 = add i64 %438, %504
  %506 = add i64 %smax1252, %505
  %507 = mul nuw nsw i64 %polly.indvar647, 50
  %508 = add nsw i64 %507, %441
  %509 = icmp sgt i64 %508, 0
  %510 = select i1 %509, i64 %508, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %510, %444
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1096 = call i64 @llvm.smax.i64(i64 %indvars.iv1094, i64 0)
  %511 = add i64 %smax1096, %indvars.iv1099
  %512 = sub nsw i64 %445, %507
  %513 = add nuw nsw i64 %507, 50
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, 50
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -50
  %exitcond1114.not = icmp eq i64 %polly.indvar647, %446
  br i1 %exitcond1114.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1253 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1254, %polly.loop_exit689 ]
  %indvars.iv1101 = phi i64 [ %511, %polly.loop_header651.preheader ], [ %indvars.iv.next1102, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %510, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %514 = add i64 %458, %indvar1253
  %smin1353 = call i64 @llvm.smin.i64(i64 %514, i64 49)
  %515 = add nsw i64 %smin1353, 1
  %516 = mul i64 %indvar1253, 9600
  %517 = add i64 %464, %516
  %scevgep1339 = getelementptr i8, i8* %call, i64 %517
  %518 = add i64 %466, %516
  %scevgep1340 = getelementptr i8, i8* %call, i64 %518
  %519 = add i64 %469, %indvar1253
  %smin1341 = call i64 @llvm.smin.i64(i64 %519, i64 49)
  %520 = shl i64 %smin1341, 3
  %scevgep1342 = getelementptr i8, i8* %scevgep1340, i64 %520
  %scevgep1344 = getelementptr i8, i8* %scevgep1343, i64 %520
  %521 = add i64 %474, %indvar1253
  %smin1321 = call i64 @llvm.smin.i64(i64 %521, i64 49)
  %522 = add nsw i64 %smin1321, 1
  %523 = mul i64 %indvar1253, 9600
  %524 = add i64 %480, %523
  %scevgep1306 = getelementptr i8, i8* %call, i64 %524
  %525 = add i64 %482, %523
  %scevgep1307 = getelementptr i8, i8* %call, i64 %525
  %526 = add i64 %485, %indvar1253
  %smin1308 = call i64 @llvm.smin.i64(i64 %526, i64 49)
  %527 = shl i64 %smin1308, 3
  %scevgep1309 = getelementptr i8, i8* %scevgep1307, i64 %527
  %scevgep1312 = getelementptr i8, i8* %scevgep1311, i64 %527
  %528 = add i64 %490, %indvar1253
  %smin1288 = call i64 @llvm.smin.i64(i64 %528, i64 49)
  %529 = add nsw i64 %smin1288, 1
  %530 = mul i64 %indvar1253, 9600
  %531 = add i64 %496, %530
  %scevgep1273 = getelementptr i8, i8* %call, i64 %531
  %532 = add i64 %498, %530
  %scevgep1274 = getelementptr i8, i8* %call, i64 %532
  %533 = add i64 %501, %indvar1253
  %smin1275 = call i64 @llvm.smin.i64(i64 %533, i64 49)
  %534 = shl i64 %smin1275, 3
  %scevgep1276 = getelementptr i8, i8* %scevgep1274, i64 %534
  %scevgep1279 = getelementptr i8, i8* %scevgep1278, i64 %534
  %535 = add i64 %506, %indvar1253
  %smin1255 = call i64 @llvm.smin.i64(i64 %535, i64 49)
  %536 = add nsw i64 %smin1255, 1
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 49)
  %537 = add nsw i64 %polly.indvar655, %512
  %polly.loop_guard6681157 = icmp sgt i64 %537, -1
  %538 = add nuw nsw i64 %polly.indvar655, %445
  %.not927 = icmp ult i64 %538, %513
  %polly.access.mul.call1681 = mul nsw i64 %538, 1000
  %539 = add nuw i64 %polly.access.mul.call1681, %447
  br i1 %polly.loop_guard6681157, label %polly.loop_header665.us, label %polly.loop_header651.split

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
  %exitcond1104.not = icmp eq i64 %polly.indvar669.us, %smin1106
  br i1 %exitcond1104.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

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

polly.loop_exit689:                               ; preds = %polly.loop_header694.us.3, %middle.block1249, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %444
  %indvars.iv.next1102 = add i64 %indvars.iv1101, 1
  %indvar.next1254 = add i64 %indvar1253, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.cond676.loopexit.us.3, %polly.then678.us.3
  %541 = mul i64 %538, 9600
  br i1 %polly.loop_guard6681157, label %polly.loop_header687.us.preheader, label %polly.loop_exit689

polly.loop_header687.us.preheader:                ; preds = %polly.loop_header687.preheader
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %538
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %537
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1354 = icmp ult i64 %515, 4
  br i1 %min.iters.check1354, label %polly.loop_header694.us.preheader, label %vector.memcheck1337

vector.memcheck1337:                              ; preds = %polly.loop_header687.us.preheader
  %bound01345 = icmp ult i8* %scevgep1339, %scevgep1344
  %bound11346 = icmp ult i8* %malloccall513, %scevgep1342
  %found.conflict1347 = and i1 %bound01345, %bound11346
  br i1 %found.conflict1347, label %polly.loop_header694.us.preheader, label %vector.ph1355

vector.ph1355:                                    ; preds = %vector.memcheck1337
  %n.vec1357 = and i64 %515, -4
  %broadcast.splatinsert1363 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1364 = shufflevector <4 x double> %broadcast.splatinsert1363, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1366 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1367 = shufflevector <4 x double> %broadcast.splatinsert1366, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1351 ]
  %542 = add nuw nsw i64 %index1358, %507
  %543 = getelementptr double, double* %Packed_MemRef_call1514, i64 %index1358
  %544 = bitcast double* %543 to <4 x double>*
  %wide.load1362 = load <4 x double>, <4 x double>* %544, align 8, !alias.scope !129
  %545 = fmul fast <4 x double> %broadcast.splat1364, %wide.load1362
  %546 = add nuw nsw i64 %542, %polly.access.mul.Packed_MemRef_call2516705.us
  %547 = getelementptr double, double* %Packed_MemRef_call2516, i64 %546
  %548 = bitcast double* %547 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %548, align 8
  %549 = fmul fast <4 x double> %broadcast.splat1367, %wide.load1365
  %550 = shl i64 %542, 3
  %551 = add i64 %550, %541
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %553, align 8, !alias.scope !132, !noalias !134
  %554 = fadd fast <4 x double> %549, %545
  %555 = fmul fast <4 x double> %554, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %556 = fadd fast <4 x double> %555, %wide.load1368
  %557 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %556, <4 x double>* %557, align 8, !alias.scope !132, !noalias !134
  %index.next1359 = add i64 %index1358, 4
  %558 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %558, label %middle.block1349, label %vector.body1351, !llvm.loop !135

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1361 = icmp eq i64 %515, %n.vec1357
  br i1 %cmp.n1361, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1337, %polly.loop_header687.us.preheader, %middle.block1349
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1337 ], [ 0, %polly.loop_header687.us.preheader ], [ %n.vec1357, %middle.block1349 ]
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
  %exitcond1107.not = icmp eq i64 %polly.indvar698.us, %smin1106
  br i1 %exitcond1107.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !136

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1349
  %polly.access.add.Packed_MemRef_call2516706.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.1, %538
  %polly.access.Packed_MemRef_call2516707.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call2516707.us.1, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1514715.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call1514715.us.1, align 8
  %min.iters.check1322 = icmp ult i64 %522, 4
  br i1 %min.iters.check1322, label %polly.loop_header694.us.1.preheader, label %vector.memcheck1304

vector.memcheck1304:                              ; preds = %polly.loop_exit696.loopexit.us
  %bound01313 = icmp ult i8* %scevgep1306, %scevgep1312
  %bound11314 = icmp ult i8* %scevgep1310, %scevgep1309
  %found.conflict1315 = and i1 %bound01313, %bound11314
  br i1 %found.conflict1315, label %polly.loop_header694.us.1.preheader, label %vector.ph1323

vector.ph1323:                                    ; preds = %vector.memcheck1304
  %n.vec1325 = and i64 %522, -4
  %broadcast.splatinsert1331 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1332 = shufflevector <4 x double> %broadcast.splatinsert1331, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1323
  %index1326 = phi i64 [ 0, %vector.ph1323 ], [ %index.next1327, %vector.body1319 ]
  %562 = add nuw nsw i64 %index1326, %507
  %563 = add nuw nsw i64 %index1326, 1200
  %564 = getelementptr double, double* %Packed_MemRef_call1514, i64 %563
  %565 = bitcast double* %564 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %565, align 8, !alias.scope !137
  %566 = fmul fast <4 x double> %broadcast.splat1332, %wide.load1330
  %567 = add nuw nsw i64 %562, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %568 = getelementptr double, double* %Packed_MemRef_call2516, i64 %567
  %569 = bitcast double* %568 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %569, align 8
  %570 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %571 = shl i64 %562, 3
  %572 = add i64 %571, %541
  %573 = getelementptr i8, i8* %call, i64 %572
  %574 = bitcast i8* %573 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %574, align 8, !alias.scope !140, !noalias !142
  %575 = fadd fast <4 x double> %570, %566
  %576 = fmul fast <4 x double> %575, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %577 = fadd fast <4 x double> %576, %wide.load1336
  %578 = bitcast i8* %573 to <4 x double>*
  store <4 x double> %577, <4 x double>* %578, align 8, !alias.scope !140, !noalias !142
  %index.next1327 = add i64 %index1326, 4
  %579 = icmp eq i64 %index.next1327, %n.vec1325
  br i1 %579, label %middle.block1317, label %vector.body1319, !llvm.loop !143

middle.block1317:                                 ; preds = %vector.body1319
  %cmp.n1329 = icmp eq i64 %522, %n.vec1325
  br i1 %cmp.n1329, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1.preheader

polly.loop_header694.us.1.preheader:              ; preds = %vector.memcheck1304, %polly.loop_exit696.loopexit.us, %middle.block1317
  %polly.indvar698.us.1.ph = phi i64 [ 0, %vector.memcheck1304 ], [ 0, %polly.loop_exit696.loopexit.us ], [ %n.vec1325, %middle.block1317 ]
  br label %polly.loop_header694.us.1

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1147 = call i64 @llvm.smin.i64(i64 %indvars.iv1145, i64 -1168)
  %580 = shl nsw i64 %polly.indvar849, 5
  %581 = add nsw i64 %smin1147, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -32
  %exitcond1150.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1150.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %582 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %582, i64 -1168)
  %583 = add nsw i64 %smin, 1200
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1141, i64 -1168)
  %584 = shl nsw i64 %polly.indvar855, 5
  %585 = add nsw i64 %smin1143, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -32
  %exitcond1149.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1149.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %586 = add nuw nsw i64 %polly.indvar861, %580
  %587 = trunc i64 %586 to i32
  %588 = mul nuw nsw i64 %586, 9600
  %min.iters.check = icmp eq i64 %583, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1186 = insertelement <4 x i64> poison, i64 %584, i32 0
  %broadcast.splat1187 = shufflevector <4 x i64> %broadcast.splatinsert1186, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %587, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %vector.ph1179
  %index1180 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1179 ], [ %vec.ind.next1185, %vector.body1178 ]
  %589 = add nuw nsw <4 x i64> %vec.ind1184, %broadcast.splat1187
  %590 = trunc <4 x i64> %589 to <4 x i32>
  %591 = mul <4 x i32> %broadcast.splat1189, %590
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
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %601 = icmp eq i64 %index.next1181, %583
  br i1 %601, label %polly.loop_exit866, label %vector.body1178, !llvm.loop !149

polly.loop_exit866:                               ; preds = %vector.body1178, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar861, %581
  br i1 %exitcond1148.not, label %polly.loop_exit860, label %polly.loop_header858

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
  %exitcond1144.not = icmp eq i64 %polly.indvar867, %585
  br i1 %exitcond1144.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !150

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 -1168)
  %609 = shl nsw i64 %polly.indvar876, 5
  %610 = add nsw i64 %smin1137, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -32
  %exitcond1140.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1140.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %611 = mul nsw i64 %polly.indvar882, -32
  %smin1193 = call i64 @llvm.smin.i64(i64 %611, i64 -968)
  %612 = add nsw i64 %smin1193, 1000
  %smin1133 = call i64 @llvm.smin.i64(i64 %indvars.iv1131, i64 -968)
  %613 = shl nsw i64 %polly.indvar882, 5
  %614 = add nsw i64 %smin1133, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -32
  %exitcond1139.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1139.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %615 = add nuw nsw i64 %polly.indvar888, %609
  %616 = trunc i64 %615 to i32
  %617 = mul nuw nsw i64 %615, 8000
  %min.iters.check1194 = icmp eq i64 %612, 0
  br i1 %min.iters.check1194, label %polly.loop_header891, label %vector.ph1195

vector.ph1195:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1204 = insertelement <4 x i64> poison, i64 %613, i32 0
  %broadcast.splat1205 = shufflevector <4 x i64> %broadcast.splatinsert1204, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %616, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1199, %vector.body1192 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1195 ], [ %vec.ind.next1203, %vector.body1192 ]
  %618 = add nuw nsw <4 x i64> %vec.ind1202, %broadcast.splat1205
  %619 = trunc <4 x i64> %618 to <4 x i32>
  %620 = mul <4 x i32> %broadcast.splat1207, %619
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
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %630 = icmp eq i64 %index.next1199, %612
  br i1 %630, label %polly.loop_exit893, label %vector.body1192, !llvm.loop !152

polly.loop_exit893:                               ; preds = %vector.body1192, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar888, %610
  br i1 %exitcond1138.not, label %polly.loop_exit887, label %polly.loop_header885

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
  %exitcond1134.not = icmp eq i64 %polly.indvar894, %614
  br i1 %exitcond1134.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !153

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1127 = call i64 @llvm.smin.i64(i64 %indvars.iv1125, i64 -1168)
  %638 = shl nsw i64 %polly.indvar902, 5
  %639 = add nsw i64 %smin1127, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -32
  %exitcond1130.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1130.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %640 = mul nsw i64 %polly.indvar908, -32
  %smin1211 = call i64 @llvm.smin.i64(i64 %640, i64 -968)
  %641 = add nsw i64 %smin1211, 1000
  %smin1123 = call i64 @llvm.smin.i64(i64 %indvars.iv1121, i64 -968)
  %642 = shl nsw i64 %polly.indvar908, 5
  %643 = add nsw i64 %smin1123, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1122 = add nsw i64 %indvars.iv1121, -32
  %exitcond1129.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1129.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %644 = add nuw nsw i64 %polly.indvar914, %638
  %645 = trunc i64 %644 to i32
  %646 = mul nuw nsw i64 %644, 8000
  %min.iters.check1212 = icmp eq i64 %641, 0
  br i1 %min.iters.check1212, label %polly.loop_header917, label %vector.ph1213

vector.ph1213:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1222 = insertelement <4 x i64> poison, i64 %642, i32 0
  %broadcast.splat1223 = shufflevector <4 x i64> %broadcast.splatinsert1222, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %645, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1210 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1213 ], [ %vec.ind.next1221, %vector.body1210 ]
  %647 = add nuw nsw <4 x i64> %vec.ind1220, %broadcast.splat1223
  %648 = trunc <4 x i64> %647 to <4 x i32>
  %649 = mul <4 x i32> %broadcast.splat1225, %648
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
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %659 = icmp eq i64 %index.next1217, %641
  br i1 %659, label %polly.loop_exit919, label %vector.body1210, !llvm.loop !155

polly.loop_exit919:                               ; preds = %vector.body1210, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar914, %639
  br i1 %exitcond1128.not, label %polly.loop_exit913, label %polly.loop_header911

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
  %exitcond1124.not = icmp eq i64 %polly.indvar920, %643
  br i1 %exitcond1124.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !156

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

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1609
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %210
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1581 = icmp ult i64 %201, 4
  br i1 %min.iters.check1581, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1563

vector.memcheck1563:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01572 = icmp ult i8* %scevgep1565, %scevgep1571
  %bound11573 = icmp ult i8* %scevgep1569, %scevgep1568
  %found.conflict1574 = and i1 %bound01572, %bound11573
  br i1 %found.conflict1574, label %polly.loop_header272.us.2.preheader, label %vector.ph1582

vector.ph1582:                                    ; preds = %vector.memcheck1563
  %n.vec1584 = and i64 %201, -4
  %broadcast.splatinsert1590 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1591 = shufflevector <4 x double> %broadcast.splatinsert1590, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1593 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1594 = shufflevector <4 x double> %broadcast.splatinsert1593, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1578

vector.body1578:                                  ; preds = %vector.body1578, %vector.ph1582
  %index1585 = phi i64 [ 0, %vector.ph1582 ], [ %index.next1586, %vector.body1578 ]
  %673 = add nuw nsw i64 %index1585, %179
  %674 = add nuw nsw i64 %index1585, 2400
  %675 = getelementptr double, double* %Packed_MemRef_call1, i64 %674
  %676 = bitcast double* %675 to <4 x double>*
  %wide.load1589 = load <4 x double>, <4 x double>* %676, align 8, !alias.scope !158
  %677 = fmul fast <4 x double> %broadcast.splat1591, %wide.load1589
  %678 = add nuw nsw i64 %673, %polly.access.mul.Packed_MemRef_call2283.us.2
  %679 = getelementptr double, double* %Packed_MemRef_call2, i64 %678
  %680 = bitcast double* %679 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %680, align 8
  %681 = fmul fast <4 x double> %broadcast.splat1594, %wide.load1592
  %682 = shl i64 %673, 3
  %683 = add i64 %682, %213
  %684 = getelementptr i8, i8* %call, i64 %683
  %685 = bitcast i8* %684 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %685, align 8, !alias.scope !161, !noalias !163
  %686 = fadd fast <4 x double> %681, %677
  %687 = fmul fast <4 x double> %686, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %688 = fadd fast <4 x double> %687, %wide.load1595
  %689 = bitcast i8* %684 to <4 x double>*
  store <4 x double> %688, <4 x double>* %689, align 8, !alias.scope !161, !noalias !163
  %index.next1586 = add i64 %index1585, 4
  %690 = icmp eq i64 %index.next1586, %n.vec1584
  br i1 %690, label %middle.block1576, label %vector.body1578, !llvm.loop !164

middle.block1576:                                 ; preds = %vector.body1578
  %cmp.n1588 = icmp eq i64 %201, %n.vec1584
  br i1 %cmp.n1588, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1563, %polly.loop_exit274.loopexit.us.1, %middle.block1576
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1563 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1584, %middle.block1576 ]
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

polly.loop_exit274.loopexit.us.2:                 ; preds = %polly.loop_header272.us.2, %middle.block1576
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %210
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1548 = icmp ult i64 %208, 4
  br i1 %min.iters.check1548, label %polly.loop_header272.us.3.preheader, label %vector.ph1549

vector.ph1549:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1551 = and i64 %208, -4
  %broadcast.splatinsert1557 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1558 = shufflevector <4 x double> %broadcast.splatinsert1557, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1560 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1561 = shufflevector <4 x double> %broadcast.splatinsert1560, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1543

vector.body1543:                                  ; preds = %vector.body1543, %vector.ph1549
  %index1552 = phi i64 [ 0, %vector.ph1549 ], [ %index.next1553, %vector.body1543 ]
  %694 = add nuw nsw i64 %index1552, %179
  %695 = add nuw nsw i64 %index1552, 3600
  %696 = getelementptr double, double* %Packed_MemRef_call1, i64 %695
  %697 = bitcast double* %696 to <4 x double>*
  %wide.load1556 = load <4 x double>, <4 x double>* %697, align 8
  %698 = fmul fast <4 x double> %broadcast.splat1558, %wide.load1556
  %699 = add nuw nsw i64 %694, %polly.access.mul.Packed_MemRef_call2283.us.3
  %700 = getelementptr double, double* %Packed_MemRef_call2, i64 %699
  %701 = bitcast double* %700 to <4 x double>*
  %wide.load1559 = load <4 x double>, <4 x double>* %701, align 8
  %702 = fmul fast <4 x double> %broadcast.splat1561, %wide.load1559
  %703 = shl i64 %694, 3
  %704 = add i64 %703, %213
  %705 = getelementptr i8, i8* %call, i64 %704
  %706 = bitcast i8* %705 to <4 x double>*
  %wide.load1562 = load <4 x double>, <4 x double>* %706, align 8, !alias.scope !65, !noalias !67
  %707 = fadd fast <4 x double> %702, %698
  %708 = fmul fast <4 x double> %707, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %709 = fadd fast <4 x double> %708, %wide.load1562
  %710 = bitcast i8* %705 to <4 x double>*
  store <4 x double> %709, <4 x double>* %710, align 8, !alias.scope !65, !noalias !67
  %index.next1553 = add i64 %index1552, 4
  %711 = icmp eq i64 %index.next1553, %n.vec1551
  br i1 %711, label %middle.block1541, label %vector.body1543, !llvm.loop !166

middle.block1541:                                 ; preds = %vector.body1543
  %cmp.n1555 = icmp eq i64 %208, %n.vec1551
  br i1 %cmp.n1555, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1541
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1551, %middle.block1541 ]
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
  %exitcond1074.1.not = icmp eq i64 %polly.indvar458.us.1, %smin1076
  br i1 %exitcond1074.1.not, label %polly.cond465.loopexit.us.1, label %polly.loop_header454.us.1

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
  %exitcond1074.2.not = icmp eq i64 %polly.indvar458.us.2, %smin1076
  br i1 %exitcond1074.2.not, label %polly.cond465.loopexit.us.2, label %polly.loop_header454.us.2

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
  %exitcond1074.3.not = icmp eq i64 %polly.indvar458.us.3, %smin1076
  br i1 %exitcond1074.3.not, label %polly.cond465.loopexit.us.3, label %polly.loop_header454.us.3

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
  %exitcond1077.1.not = icmp eq i64 %polly.indvar487.us.1, %smin1076
  br i1 %exitcond1077.1.not, label %polly.loop_exit485.loopexit.us.1, label %polly.loop_header483.us.1, !llvm.loop !168

polly.loop_exit485.loopexit.us.1:                 ; preds = %polly.loop_header483.us.1, %middle.block1463
  %polly.access.add.Packed_MemRef_call2305495.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.2, %374
  %polly.access.Packed_MemRef_call2305496.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2305496.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1303504.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1303504.us.2, align 8
  %min.iters.check1435 = icmp ult i64 %365, 4
  br i1 %min.iters.check1435, label %polly.loop_header483.us.2.preheader, label %vector.memcheck1417

vector.memcheck1417:                              ; preds = %polly.loop_exit485.loopexit.us.1
  %bound01426 = icmp ult i8* %scevgep1419, %scevgep1425
  %bound11427 = icmp ult i8* %scevgep1423, %scevgep1422
  %found.conflict1428 = and i1 %bound01426, %bound11427
  br i1 %found.conflict1428, label %polly.loop_header483.us.2.preheader, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.memcheck1417
  %n.vec1438 = and i64 %365, -4
  %broadcast.splatinsert1444 = insertelement <4 x double> poison, double %_p_scalar_497.us.2, i32 0
  %broadcast.splat1445 = shufflevector <4 x double> %broadcast.splatinsert1444, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <4 x double> poison, double %_p_scalar_505.us.2, i32 0
  %broadcast.splat1448 = shufflevector <4 x double> %broadcast.splatinsert1447, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1440, %vector.body1432 ]
  %721 = add nuw nsw i64 %index1439, %343
  %722 = add nuw nsw i64 %index1439, 2400
  %723 = getelementptr double, double* %Packed_MemRef_call1303, i64 %722
  %724 = bitcast double* %723 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %724, align 8, !alias.scope !169
  %725 = fmul fast <4 x double> %broadcast.splat1445, %wide.load1443
  %726 = add nuw nsw i64 %721, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %727 = getelementptr double, double* %Packed_MemRef_call2305, i64 %726
  %728 = bitcast double* %727 to <4 x double>*
  %wide.load1446 = load <4 x double>, <4 x double>* %728, align 8
  %729 = fmul fast <4 x double> %broadcast.splat1448, %wide.load1446
  %730 = shl i64 %721, 3
  %731 = add i64 %730, %377
  %732 = getelementptr i8, i8* %call, i64 %731
  %733 = bitcast i8* %732 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %733, align 8, !alias.scope !172, !noalias !174
  %734 = fadd fast <4 x double> %729, %725
  %735 = fmul fast <4 x double> %734, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %736 = fadd fast <4 x double> %735, %wide.load1449
  %737 = bitcast i8* %732 to <4 x double>*
  store <4 x double> %736, <4 x double>* %737, align 8, !alias.scope !172, !noalias !174
  %index.next1440 = add i64 %index1439, 4
  %738 = icmp eq i64 %index.next1440, %n.vec1438
  br i1 %738, label %middle.block1430, label %vector.body1432, !llvm.loop !175

middle.block1430:                                 ; preds = %vector.body1432
  %cmp.n1442 = icmp eq i64 %365, %n.vec1438
  br i1 %cmp.n1442, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2.preheader

polly.loop_header483.us.2.preheader:              ; preds = %vector.memcheck1417, %polly.loop_exit485.loopexit.us.1, %middle.block1430
  %polly.indvar487.us.2.ph = phi i64 [ 0, %vector.memcheck1417 ], [ 0, %polly.loop_exit485.loopexit.us.1 ], [ %n.vec1438, %middle.block1430 ]
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
  %exitcond1077.2.not = icmp eq i64 %polly.indvar487.us.2, %smin1076
  br i1 %exitcond1077.2.not, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2, !llvm.loop !176

polly.loop_exit485.loopexit.us.2:                 ; preds = %polly.loop_header483.us.2, %middle.block1430
  %polly.access.add.Packed_MemRef_call2305495.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.3, %374
  %polly.access.Packed_MemRef_call2305496.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2305496.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1303504.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1303504.us.3, align 8
  %min.iters.check1402 = icmp ult i64 %372, 4
  br i1 %min.iters.check1402, label %polly.loop_header483.us.3.preheader, label %vector.ph1403

vector.ph1403:                                    ; preds = %polly.loop_exit485.loopexit.us.2
  %n.vec1405 = and i64 %372, -4
  %broadcast.splatinsert1411 = insertelement <4 x double> poison, double %_p_scalar_497.us.3, i32 0
  %broadcast.splat1412 = shufflevector <4 x double> %broadcast.splatinsert1411, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_505.us.3, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1403
  %index1406 = phi i64 [ 0, %vector.ph1403 ], [ %index.next1407, %vector.body1397 ]
  %742 = add nuw nsw i64 %index1406, %343
  %743 = add nuw nsw i64 %index1406, 3600
  %744 = getelementptr double, double* %Packed_MemRef_call1303, i64 %743
  %745 = bitcast double* %744 to <4 x double>*
  %wide.load1410 = load <4 x double>, <4 x double>* %745, align 8
  %746 = fmul fast <4 x double> %broadcast.splat1412, %wide.load1410
  %747 = add nuw nsw i64 %742, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %748 = getelementptr double, double* %Packed_MemRef_call2305, i64 %747
  %749 = bitcast double* %748 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %749, align 8
  %750 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %751 = shl i64 %742, 3
  %752 = add i64 %751, %377
  %753 = getelementptr i8, i8* %call, i64 %752
  %754 = bitcast i8* %753 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %754, align 8, !alias.scope !92, !noalias !94
  %755 = fadd fast <4 x double> %750, %746
  %756 = fmul fast <4 x double> %755, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %757 = fadd fast <4 x double> %756, %wide.load1416
  %758 = bitcast i8* %753 to <4 x double>*
  store <4 x double> %757, <4 x double>* %758, align 8, !alias.scope !92, !noalias !94
  %index.next1407 = add i64 %index1406, 4
  %759 = icmp eq i64 %index.next1407, %n.vec1405
  br i1 %759, label %middle.block1395, label %vector.body1397, !llvm.loop !177

middle.block1395:                                 ; preds = %vector.body1397
  %cmp.n1409 = icmp eq i64 %372, %n.vec1405
  br i1 %cmp.n1409, label %polly.loop_exit478, label %polly.loop_header483.us.3.preheader

polly.loop_header483.us.3.preheader:              ; preds = %polly.loop_exit485.loopexit.us.2, %middle.block1395
  %polly.indvar487.us.3.ph = phi i64 [ 0, %polly.loop_exit485.loopexit.us.2 ], [ %n.vec1405, %middle.block1395 ]
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
  %exitcond1077.3.not = icmp eq i64 %polly.indvar487.us.3, %smin1076
  br i1 %exitcond1077.3.not, label %polly.loop_exit478, label %polly.loop_header483.us.3, !llvm.loop !178

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
  %exitcond1104.1.not = icmp eq i64 %polly.indvar669.us.1, %smin1106
  br i1 %exitcond1104.1.not, label %polly.cond676.loopexit.us.1, label %polly.loop_header665.us.1

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
  %exitcond1104.2.not = icmp eq i64 %polly.indvar669.us.2, %smin1106
  br i1 %exitcond1104.2.not, label %polly.cond676.loopexit.us.2, label %polly.loop_header665.us.2

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
  %exitcond1104.3.not = icmp eq i64 %polly.indvar669.us.3, %smin1106
  br i1 %exitcond1104.3.not, label %polly.cond676.loopexit.us.3, label %polly.loop_header665.us.3

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
  %exitcond1107.1.not = icmp eq i64 %polly.indvar698.us.1, %smin1106
  br i1 %exitcond1107.1.not, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1, !llvm.loop !179

polly.loop_exit696.loopexit.us.1:                 ; preds = %polly.loop_header694.us.1, %middle.block1317
  %polly.access.add.Packed_MemRef_call2516706.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.2, %538
  %polly.access.Packed_MemRef_call2516707.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call2516707.us.2, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1514715.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call1514715.us.2, align 8
  %min.iters.check1289 = icmp ult i64 %529, 4
  br i1 %min.iters.check1289, label %polly.loop_header694.us.2.preheader, label %vector.memcheck1271

vector.memcheck1271:                              ; preds = %polly.loop_exit696.loopexit.us.1
  %bound01280 = icmp ult i8* %scevgep1273, %scevgep1279
  %bound11281 = icmp ult i8* %scevgep1277, %scevgep1276
  %found.conflict1282 = and i1 %bound01280, %bound11281
  br i1 %found.conflict1282, label %polly.loop_header694.us.2.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %vector.memcheck1271
  %n.vec1292 = and i64 %529, -4
  %broadcast.splatinsert1298 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1299 = shufflevector <4 x double> %broadcast.splatinsert1298, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1286 ]
  %769 = add nuw nsw i64 %index1293, %507
  %770 = add nuw nsw i64 %index1293, 2400
  %771 = getelementptr double, double* %Packed_MemRef_call1514, i64 %770
  %772 = bitcast double* %771 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %772, align 8, !alias.scope !180
  %773 = fmul fast <4 x double> %broadcast.splat1299, %wide.load1297
  %774 = add nuw nsw i64 %769, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %775 = getelementptr double, double* %Packed_MemRef_call2516, i64 %774
  %776 = bitcast double* %775 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %776, align 8
  %777 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %778 = shl i64 %769, 3
  %779 = add i64 %778, %541
  %780 = getelementptr i8, i8* %call, i64 %779
  %781 = bitcast i8* %780 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %781, align 8, !alias.scope !183, !noalias !185
  %782 = fadd fast <4 x double> %777, %773
  %783 = fmul fast <4 x double> %782, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %784 = fadd fast <4 x double> %783, %wide.load1303
  %785 = bitcast i8* %780 to <4 x double>*
  store <4 x double> %784, <4 x double>* %785, align 8, !alias.scope !183, !noalias !185
  %index.next1294 = add i64 %index1293, 4
  %786 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %786, label %middle.block1284, label %vector.body1286, !llvm.loop !186

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1296 = icmp eq i64 %529, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2.preheader

polly.loop_header694.us.2.preheader:              ; preds = %vector.memcheck1271, %polly.loop_exit696.loopexit.us.1, %middle.block1284
  %polly.indvar698.us.2.ph = phi i64 [ 0, %vector.memcheck1271 ], [ 0, %polly.loop_exit696.loopexit.us.1 ], [ %n.vec1292, %middle.block1284 ]
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
  %exitcond1107.2.not = icmp eq i64 %polly.indvar698.us.2, %smin1106
  br i1 %exitcond1107.2.not, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2, !llvm.loop !187

polly.loop_exit696.loopexit.us.2:                 ; preds = %polly.loop_header694.us.2, %middle.block1284
  %polly.access.add.Packed_MemRef_call2516706.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.3, %538
  %polly.access.Packed_MemRef_call2516707.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call2516707.us.3, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1514715.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call1514715.us.3, align 8
  %min.iters.check1256 = icmp ult i64 %536, 4
  br i1 %min.iters.check1256, label %polly.loop_header694.us.3.preheader, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_exit696.loopexit.us.2
  %n.vec1259 = and i64 %536, -4
  %broadcast.splatinsert1265 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1266 = shufflevector <4 x double> %broadcast.splatinsert1265, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1269 = shufflevector <4 x double> %broadcast.splatinsert1268, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1251 ]
  %790 = add nuw nsw i64 %index1260, %507
  %791 = add nuw nsw i64 %index1260, 3600
  %792 = getelementptr double, double* %Packed_MemRef_call1514, i64 %791
  %793 = bitcast double* %792 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %793, align 8
  %794 = fmul fast <4 x double> %broadcast.splat1266, %wide.load1264
  %795 = add nuw nsw i64 %790, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %796 = getelementptr double, double* %Packed_MemRef_call2516, i64 %795
  %797 = bitcast double* %796 to <4 x double>*
  %wide.load1267 = load <4 x double>, <4 x double>* %797, align 8
  %798 = fmul fast <4 x double> %broadcast.splat1269, %wide.load1267
  %799 = shl i64 %790, 3
  %800 = add i64 %799, %541
  %801 = getelementptr i8, i8* %call, i64 %800
  %802 = bitcast i8* %801 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %802, align 8, !alias.scope !118, !noalias !120
  %803 = fadd fast <4 x double> %798, %794
  %804 = fmul fast <4 x double> %803, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %805 = fadd fast <4 x double> %804, %wide.load1270
  %806 = bitcast i8* %801 to <4 x double>*
  store <4 x double> %805, <4 x double>* %806, align 8, !alias.scope !118, !noalias !120
  %index.next1261 = add i64 %index1260, 4
  %807 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %807, label %middle.block1249, label %vector.body1251, !llvm.loop !188

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1263 = icmp eq i64 %536, %n.vec1259
  br i1 %cmp.n1263, label %polly.loop_exit689, label %polly.loop_header694.us.3.preheader

polly.loop_header694.us.3.preheader:              ; preds = %polly.loop_exit696.loopexit.us.2, %middle.block1249
  %polly.indvar698.us.3.ph = phi i64 [ 0, %polly.loop_exit696.loopexit.us.2 ], [ %n.vec1259, %middle.block1249 ]
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
  %exitcond1107.3.not = icmp eq i64 %polly.indvar698.us.3, %smin1106
  br i1 %exitcond1107.3.not, label %polly.loop_exit689, label %polly.loop_header694.us.3, !llvm.loop !189
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
