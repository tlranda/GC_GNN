; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2306.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2306.c"
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
  %pexp.p_div_q = udiv i64 %polly.indvar219, 5
  %111 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar219
  %.inv = icmp ult i64 %111, 14
  %112 = mul nsw i64 %polly.indvar219, -96
  %113 = icmp slt i64 %112, -1104
  %114 = select i1 %113, i64 %112, i64 -1104
  %115 = add nsw i64 %114, 1199
  %116 = mul nuw nsw i64 %polly.indvar219, 96
  %.op = add nuw i64 %111, 2
  %117 = select i1 %.inv, i64 %.op, i64 15
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 96
  %exitcond1053.not = icmp eq i64 %polly.indvar_next220, 13
  br i1 %exitcond1053.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %118 = shl nsw i64 %polly.indvar225, 2
  %119 = or i64 %118, 1
  %120 = or i64 %118, 2
  %121 = or i64 %118, 3
  %polly.access.mul.Packed_MemRef_call2283.us = mul nsw i64 %polly.indvar225, 4800
  %122 = or i64 %118, 1
  %polly.access.mul.Packed_MemRef_call2283.us.1 = mul nuw nsw i64 %122, 1200
  %123 = or i64 %118, 2
  %polly.access.mul.Packed_MemRef_call2283.us.2 = mul nuw nsw i64 %123, 1200
  %124 = or i64 %118, 3
  %polly.access.mul.Packed_MemRef_call2283.us.3 = mul nuw nsw i64 %124, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1052.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %125 = mul i64 %polly.indvar231, 80
  %126 = add i64 %97, %125
  %smax1633 = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %127 = mul i64 %polly.indvar231, -80
  %128 = add i64 %98, %127
  %129 = add i64 %smax1633, %128
  %130 = mul i64 %polly.indvar231, 640
  %131 = mul i64 %polly.indvar231, 80
  %132 = add i64 %100, %131
  %smax1619 = call i64 @llvm.smax.i64(i64 %132, i64 0)
  %133 = add nuw i64 %99, %smax1619
  %134 = mul i64 %133, 9600
  %135 = add i64 %130, %134
  %136 = or i64 %130, 8
  %137 = add i64 %136, %134
  %138 = mul i64 %polly.indvar231, -80
  %139 = add i64 %99, %138
  %140 = add i64 %smax1619, %139
  %141 = mul i64 %polly.indvar231, 80
  %142 = add i64 %101, %141
  %smax1601 = call i64 @llvm.smax.i64(i64 %142, i64 0)
  %143 = mul i64 %polly.indvar231, -80
  %144 = add i64 %102, %143
  %145 = add i64 %smax1601, %144
  %146 = mul i64 %polly.indvar231, 640
  %147 = mul i64 %polly.indvar231, 80
  %148 = add i64 %104, %147
  %smax1586 = call i64 @llvm.smax.i64(i64 %148, i64 0)
  %149 = add nuw i64 %103, %smax1586
  %150 = mul i64 %149, 9600
  %151 = add i64 %146, %150
  %152 = or i64 %146, 8
  %153 = add i64 %152, %150
  %154 = mul i64 %polly.indvar231, -80
  %155 = add i64 %103, %154
  %156 = add i64 %smax1586, %155
  %157 = mul i64 %polly.indvar231, 80
  %158 = add i64 %105, %157
  %smax1568 = call i64 @llvm.smax.i64(i64 %158, i64 0)
  %159 = mul i64 %polly.indvar231, -80
  %160 = add i64 %106, %159
  %161 = add i64 %smax1568, %160
  %162 = mul i64 %polly.indvar231, 640
  %163 = mul i64 %polly.indvar231, 80
  %164 = add i64 %108, %163
  %smax1553 = call i64 @llvm.smax.i64(i64 %164, i64 0)
  %165 = add nuw i64 %107, %smax1553
  %166 = mul i64 %165, 9600
  %167 = add i64 %162, %166
  %168 = or i64 %162, 8
  %169 = add i64 %168, %166
  %170 = mul i64 %polly.indvar231, -80
  %171 = add i64 %107, %170
  %172 = add i64 %smax1553, %171
  %173 = mul i64 %polly.indvar231, 80
  %174 = add i64 %109, %173
  %smax1533 = call i64 @llvm.smax.i64(i64 %174, i64 0)
  %175 = mul i64 %polly.indvar231, -80
  %176 = add i64 %110, %175
  %177 = add i64 %smax1533, %176
  %178 = mul nsw i64 %polly.indvar231, 80
  %179 = add nsw i64 %178, %112
  %180 = icmp sgt i64 %179, 0
  %181 = select i1 %180, i64 %179, i64 0
  %polly.loop_guard.not = icmp sgt i64 %181, %115
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1038, i64 0)
  %182 = add i64 %smax, %indvars.iv1042
  %183 = sub nsw i64 %116, %178
  %184 = add nuw nsw i64 %178, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add i64 %indvars.iv1038, 80
  %indvars.iv.next1043 = add i64 %indvars.iv1042, -80
  %exitcond1051.not = icmp eq i64 %polly.indvar_next232, %117
  br i1 %exitcond1051.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1534 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1535, %polly.loop_exit267 ]
  %indvars.iv1044 = phi i64 [ %182, %polly.loop_header234.preheader ], [ %indvars.iv.next1045, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %181, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %185 = add i64 %129, %indvar1534
  %smin1634 = call i64 @llvm.smin.i64(i64 %185, i64 79)
  %186 = add nsw i64 %smin1634, 1
  %187 = mul i64 %indvar1534, 9600
  %188 = add i64 %135, %187
  %scevgep1620 = getelementptr i8, i8* %call, i64 %188
  %189 = add i64 %137, %187
  %scevgep1621 = getelementptr i8, i8* %call, i64 %189
  %190 = add i64 %140, %indvar1534
  %smin1622 = call i64 @llvm.smin.i64(i64 %190, i64 79)
  %191 = shl i64 %smin1622, 3
  %scevgep1623 = getelementptr i8, i8* %scevgep1621, i64 %191
  %scevgep1625 = getelementptr i8, i8* %scevgep1624, i64 %191
  %192 = add i64 %145, %indvar1534
  %smin1602 = call i64 @llvm.smin.i64(i64 %192, i64 79)
  %193 = add nsw i64 %smin1602, 1
  %194 = mul i64 %indvar1534, 9600
  %195 = add i64 %151, %194
  %scevgep1587 = getelementptr i8, i8* %call, i64 %195
  %196 = add i64 %153, %194
  %scevgep1588 = getelementptr i8, i8* %call, i64 %196
  %197 = add i64 %156, %indvar1534
  %smin1589 = call i64 @llvm.smin.i64(i64 %197, i64 79)
  %198 = shl i64 %smin1589, 3
  %scevgep1590 = getelementptr i8, i8* %scevgep1588, i64 %198
  %scevgep1593 = getelementptr i8, i8* %scevgep1592, i64 %198
  %199 = add i64 %161, %indvar1534
  %smin1569 = call i64 @llvm.smin.i64(i64 %199, i64 79)
  %200 = add nsw i64 %smin1569, 1
  %201 = mul i64 %indvar1534, 9600
  %202 = add i64 %167, %201
  %scevgep1554 = getelementptr i8, i8* %call, i64 %202
  %203 = add i64 %169, %201
  %scevgep1555 = getelementptr i8, i8* %call, i64 %203
  %204 = add i64 %172, %indvar1534
  %smin1556 = call i64 @llvm.smin.i64(i64 %204, i64 79)
  %205 = shl i64 %smin1556, 3
  %scevgep1557 = getelementptr i8, i8* %scevgep1555, i64 %205
  %scevgep1560 = getelementptr i8, i8* %scevgep1559, i64 %205
  %206 = add i64 %177, %indvar1534
  %smin1536 = call i64 @llvm.smin.i64(i64 %206, i64 79)
  %207 = add nsw i64 %smin1536, 1
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 79)
  %208 = add nsw i64 %polly.indvar237, %183
  %polly.loop_guard2501142 = icmp sgt i64 %208, -1
  %209 = add nuw nsw i64 %polly.indvar237, %116
  %.not = icmp ult i64 %209, %184
  %polly.access.mul.call1259 = mul nsw i64 %209, 1000
  %210 = add nuw i64 %polly.access.mul.call1259, %118
  br i1 %polly.loop_guard2501142, label %polly.loop_header247.us, label %polly.loop_header234.split

polly.loop_header247.us:                          ; preds = %polly.loop_header234, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header234 ]
  %211 = add nuw nsw i64 %polly.indvar251.us, %178
  %polly.access.mul.call1255.us = mul nsw i64 %211, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %118, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar251.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar251.us, %smin1048
  br i1 %exitcond1046.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %210
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %208
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.loop_header247.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.loop_header247.us.1.preheader, label %polly.then.us

polly.loop_header247.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header247.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %210
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %208
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %210, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %208, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %210, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %208, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %210, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %208, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_header272.us.3, %middle.block1530, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %115
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %indvar.next1535 = add i64 %indvar1534, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %212 = mul i64 %209, 9600
  br i1 %polly.loop_guard2501142, label %polly.loop_header265.us.preheader, label %polly.loop_exit267

polly.loop_header265.us.preheader:                ; preds = %polly.loop_header265.preheader
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %209
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %208
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1635 = icmp ult i64 %186, 4
  br i1 %min.iters.check1635, label %polly.loop_header272.us.preheader, label %vector.memcheck1618

vector.memcheck1618:                              ; preds = %polly.loop_header265.us.preheader
  %bound01626 = icmp ult i8* %scevgep1620, %scevgep1625
  %bound11627 = icmp ult i8* %malloccall, %scevgep1623
  %found.conflict1628 = and i1 %bound01626, %bound11627
  br i1 %found.conflict1628, label %polly.loop_header272.us.preheader, label %vector.ph1636

vector.ph1636:                                    ; preds = %vector.memcheck1618
  %n.vec1638 = and i64 %186, -4
  %broadcast.splatinsert1644 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1645 = shufflevector <4 x double> %broadcast.splatinsert1644, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1647 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1648 = shufflevector <4 x double> %broadcast.splatinsert1647, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1632

vector.body1632:                                  ; preds = %vector.body1632, %vector.ph1636
  %index1639 = phi i64 [ 0, %vector.ph1636 ], [ %index.next1640, %vector.body1632 ]
  %213 = add nuw nsw i64 %index1639, %178
  %214 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1639
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1643 = load <4 x double>, <4 x double>* %215, align 8, !alias.scope !77
  %216 = fmul fast <4 x double> %broadcast.splat1645, %wide.load1643
  %217 = add nuw nsw i64 %213, %polly.access.mul.Packed_MemRef_call2283.us
  %218 = getelementptr double, double* %Packed_MemRef_call2, i64 %217
  %219 = bitcast double* %218 to <4 x double>*
  %wide.load1646 = load <4 x double>, <4 x double>* %219, align 8
  %220 = fmul fast <4 x double> %broadcast.splat1648, %wide.load1646
  %221 = shl i64 %213, 3
  %222 = add i64 %221, %212
  %223 = getelementptr i8, i8* %call, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  %wide.load1649 = load <4 x double>, <4 x double>* %224, align 8, !alias.scope !80, !noalias !82
  %225 = fadd fast <4 x double> %220, %216
  %226 = fmul fast <4 x double> %225, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %227 = fadd fast <4 x double> %226, %wide.load1649
  %228 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %227, <4 x double>* %228, align 8, !alias.scope !80, !noalias !82
  %index.next1640 = add i64 %index1639, 4
  %229 = icmp eq i64 %index.next1640, %n.vec1638
  br i1 %229, label %middle.block1630, label %vector.body1632, !llvm.loop !83

middle.block1630:                                 ; preds = %vector.body1632
  %cmp.n1642 = icmp eq i64 %186, %n.vec1638
  br i1 %cmp.n1642, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1618, %polly.loop_header265.us.preheader, %middle.block1630
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1618 ], [ 0, %polly.loop_header265.us.preheader ], [ %n.vec1638, %middle.block1630 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %230 = add nuw nsw i64 %polly.indvar276.us, %178
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar276.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %230, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %231 = shl i64 %230, 3
  %232 = add i64 %231, %212
  %scevgep295.us = getelementptr i8, i8* %call, i64 %232
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
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %209
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %208, 1200
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1603 = icmp ult i64 %193, 4
  br i1 %min.iters.check1603, label %polly.loop_header272.us.1.preheader, label %vector.memcheck1585

vector.memcheck1585:                              ; preds = %polly.loop_exit274.loopexit.us
  %bound01594 = icmp ult i8* %scevgep1587, %scevgep1593
  %bound11595 = icmp ult i8* %scevgep1591, %scevgep1590
  %found.conflict1596 = and i1 %bound01594, %bound11595
  br i1 %found.conflict1596, label %polly.loop_header272.us.1.preheader, label %vector.ph1604

vector.ph1604:                                    ; preds = %vector.memcheck1585
  %n.vec1606 = and i64 %193, -4
  %broadcast.splatinsert1612 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1613 = shufflevector <4 x double> %broadcast.splatinsert1612, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1615 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1616 = shufflevector <4 x double> %broadcast.splatinsert1615, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1600

vector.body1600:                                  ; preds = %vector.body1600, %vector.ph1604
  %index1607 = phi i64 [ 0, %vector.ph1604 ], [ %index.next1608, %vector.body1600 ]
  %233 = add nuw nsw i64 %index1607, %178
  %234 = add nuw nsw i64 %index1607, 1200
  %235 = getelementptr double, double* %Packed_MemRef_call1, i64 %234
  %236 = bitcast double* %235 to <4 x double>*
  %wide.load1611 = load <4 x double>, <4 x double>* %236, align 8, !alias.scope !85
  %237 = fmul fast <4 x double> %broadcast.splat1613, %wide.load1611
  %238 = add nuw nsw i64 %233, %polly.access.mul.Packed_MemRef_call2283.us.1
  %239 = getelementptr double, double* %Packed_MemRef_call2, i64 %238
  %240 = bitcast double* %239 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %240, align 8
  %241 = fmul fast <4 x double> %broadcast.splat1616, %wide.load1614
  %242 = shl i64 %233, 3
  %243 = add i64 %242, %212
  %244 = getelementptr i8, i8* %call, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  %wide.load1617 = load <4 x double>, <4 x double>* %245, align 8, !alias.scope !88, !noalias !90
  %246 = fadd fast <4 x double> %241, %237
  %247 = fmul fast <4 x double> %246, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %248 = fadd fast <4 x double> %247, %wide.load1617
  %249 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %248, <4 x double>* %249, align 8, !alias.scope !88, !noalias !90
  %index.next1608 = add i64 %index1607, 4
  %250 = icmp eq i64 %index.next1608, %n.vec1606
  br i1 %250, label %middle.block1598, label %vector.body1600, !llvm.loop !91

middle.block1598:                                 ; preds = %vector.body1600
  %cmp.n1610 = icmp eq i64 %193, %n.vec1606
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
  %251 = add i64 %indvar1373, 1
  %252 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %252
  %min.iters.check1375 = icmp ult i64 %251, 4
  br i1 %min.iters.check1375, label %polly.loop_header394.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header388
  %n.vec1378 = and i64 %251, -4
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1372 ]
  %253 = shl nuw nsw i64 %index1379, 3
  %254 = getelementptr i8, i8* %scevgep400, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %255, align 8, !alias.scope !92, !noalias !94
  %256 = fmul fast <4 x double> %wide.load1383, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %257 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %256, <4 x double>* %257, align 8, !alias.scope !92, !noalias !94
  %index.next1380 = add i64 %index1379, 4
  %258 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %258, label %middle.block1370, label %vector.body1372, !llvm.loop !99

middle.block1370:                                 ; preds = %vector.body1372
  %cmp.n1382 = icmp eq i64 %251, %n.vec1378
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
  %259 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %259
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
  %260 = mul nsw i64 %polly.indvar423, -96
  %261 = mul nuw nsw i64 %polly.indvar423, 96
  %262 = mul nuw nsw i64 %polly.indvar423, 96
  %263 = mul nsw i64 %polly.indvar423, -96
  %264 = mul nsw i64 %polly.indvar423, -96
  %265 = mul nuw nsw i64 %polly.indvar423, 96
  %266 = mul nuw nsw i64 %polly.indvar423, 96
  %267 = mul nsw i64 %polly.indvar423, -96
  %268 = mul nsw i64 %polly.indvar423, -96
  %269 = mul nuw nsw i64 %polly.indvar423, 96
  %270 = mul nuw nsw i64 %polly.indvar423, 96
  %271 = mul nsw i64 %polly.indvar423, -96
  %272 = mul nsw i64 %polly.indvar423, -96
  %273 = mul nuw nsw i64 %polly.indvar423, 96
  %pexp.p_div_q432 = udiv i64 %polly.indvar423, 5
  %274 = add nuw nsw i64 %pexp.p_div_q432, %polly.indvar423
  %.inv926 = icmp ult i64 %274, 14
  %275 = mul nsw i64 %polly.indvar423, -96
  %276 = icmp slt i64 %275, -1104
  %277 = select i1 %276, i64 %275, i64 -1104
  %278 = add nsw i64 %277, 1199
  %279 = mul nuw nsw i64 %polly.indvar423, 96
  %.op1143 = add nuw i64 %274, 2
  %280 = select i1 %.inv926, i64 %.op1143, i64 15
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -96
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 96
  %exitcond1078.not = icmp eq i64 %polly.indvar_next424, 13
  br i1 %exitcond1078.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %281 = shl nsw i64 %polly.indvar429, 2
  %282 = or i64 %281, 1
  %283 = or i64 %281, 2
  %284 = or i64 %281, 3
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nsw i64 %polly.indvar429, 4800
  %285 = or i64 %281, 1
  %polly.access.mul.Packed_MemRef_call2305494.us.1 = mul nuw nsw i64 %285, 1200
  %286 = or i64 %281, 2
  %polly.access.mul.Packed_MemRef_call2305494.us.2 = mul nuw nsw i64 %286, 1200
  %287 = or i64 %281, 3
  %polly.access.mul.Packed_MemRef_call2305494.us.3 = mul nuw nsw i64 %287, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next430, 250
  br i1 %exitcond1077.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit442 ], [ %indvars.iv1064, %polly.loop_header426 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit442 ], [ %indvars.iv1059, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %288 = mul i64 %polly.indvar436, 80
  %289 = add i64 %260, %288
  %smax1487 = call i64 @llvm.smax.i64(i64 %289, i64 0)
  %290 = mul i64 %polly.indvar436, -80
  %291 = add i64 %261, %290
  %292 = add i64 %smax1487, %291
  %293 = mul i64 %polly.indvar436, 640
  %294 = mul i64 %polly.indvar436, 80
  %295 = add i64 %263, %294
  %smax1473 = call i64 @llvm.smax.i64(i64 %295, i64 0)
  %296 = add nuw i64 %262, %smax1473
  %297 = mul i64 %296, 9600
  %298 = add i64 %293, %297
  %299 = or i64 %293, 8
  %300 = add i64 %299, %297
  %301 = mul i64 %polly.indvar436, -80
  %302 = add i64 %262, %301
  %303 = add i64 %smax1473, %302
  %304 = mul i64 %polly.indvar436, 80
  %305 = add i64 %264, %304
  %smax1455 = call i64 @llvm.smax.i64(i64 %305, i64 0)
  %306 = mul i64 %polly.indvar436, -80
  %307 = add i64 %265, %306
  %308 = add i64 %smax1455, %307
  %309 = mul i64 %polly.indvar436, 640
  %310 = mul i64 %polly.indvar436, 80
  %311 = add i64 %267, %310
  %smax1440 = call i64 @llvm.smax.i64(i64 %311, i64 0)
  %312 = add nuw i64 %266, %smax1440
  %313 = mul i64 %312, 9600
  %314 = add i64 %309, %313
  %315 = or i64 %309, 8
  %316 = add i64 %315, %313
  %317 = mul i64 %polly.indvar436, -80
  %318 = add i64 %266, %317
  %319 = add i64 %smax1440, %318
  %320 = mul i64 %polly.indvar436, 80
  %321 = add i64 %268, %320
  %smax1422 = call i64 @llvm.smax.i64(i64 %321, i64 0)
  %322 = mul i64 %polly.indvar436, -80
  %323 = add i64 %269, %322
  %324 = add i64 %smax1422, %323
  %325 = mul i64 %polly.indvar436, 640
  %326 = mul i64 %polly.indvar436, 80
  %327 = add i64 %271, %326
  %smax1407 = call i64 @llvm.smax.i64(i64 %327, i64 0)
  %328 = add nuw i64 %270, %smax1407
  %329 = mul i64 %328, 9600
  %330 = add i64 %325, %329
  %331 = or i64 %325, 8
  %332 = add i64 %331, %329
  %333 = mul i64 %polly.indvar436, -80
  %334 = add i64 %270, %333
  %335 = add i64 %smax1407, %334
  %336 = mul i64 %polly.indvar436, 80
  %337 = add i64 %272, %336
  %smax1387 = call i64 @llvm.smax.i64(i64 %337, i64 0)
  %338 = mul i64 %polly.indvar436, -80
  %339 = add i64 %273, %338
  %340 = add i64 %smax1387, %339
  %341 = mul nsw i64 %polly.indvar436, 80
  %342 = add nsw i64 %341, %275
  %343 = icmp sgt i64 %342, 0
  %344 = select i1 %343, i64 %342, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %344, %278
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1063 = call i64 @llvm.smax.i64(i64 %indvars.iv1061, i64 0)
  %345 = add i64 %smax1063, %indvars.iv1066
  %346 = sub nsw i64 %279, %341
  %347 = add nuw nsw i64 %341, 80
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw i64 %polly.indvar436, 1
  %indvars.iv.next1062 = add i64 %indvars.iv1061, 80
  %indvars.iv.next1067 = add i64 %indvars.iv1066, -80
  %exitcond1076.not = icmp eq i64 %polly.indvar_next437, %280
  br i1 %exitcond1076.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1388 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1389, %polly.loop_exit478 ]
  %indvars.iv1068 = phi i64 [ %345, %polly.loop_header440.preheader ], [ %indvars.iv.next1069, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %344, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %348 = add i64 %292, %indvar1388
  %smin1488 = call i64 @llvm.smin.i64(i64 %348, i64 79)
  %349 = add nsw i64 %smin1488, 1
  %350 = mul i64 %indvar1388, 9600
  %351 = add i64 %298, %350
  %scevgep1474 = getelementptr i8, i8* %call, i64 %351
  %352 = add i64 %300, %350
  %scevgep1475 = getelementptr i8, i8* %call, i64 %352
  %353 = add i64 %303, %indvar1388
  %smin1476 = call i64 @llvm.smin.i64(i64 %353, i64 79)
  %354 = shl i64 %smin1476, 3
  %scevgep1477 = getelementptr i8, i8* %scevgep1475, i64 %354
  %scevgep1479 = getelementptr i8, i8* %scevgep1478, i64 %354
  %355 = add i64 %308, %indvar1388
  %smin1456 = call i64 @llvm.smin.i64(i64 %355, i64 79)
  %356 = add nsw i64 %smin1456, 1
  %357 = mul i64 %indvar1388, 9600
  %358 = add i64 %314, %357
  %scevgep1441 = getelementptr i8, i8* %call, i64 %358
  %359 = add i64 %316, %357
  %scevgep1442 = getelementptr i8, i8* %call, i64 %359
  %360 = add i64 %319, %indvar1388
  %smin1443 = call i64 @llvm.smin.i64(i64 %360, i64 79)
  %361 = shl i64 %smin1443, 3
  %scevgep1444 = getelementptr i8, i8* %scevgep1442, i64 %361
  %scevgep1447 = getelementptr i8, i8* %scevgep1446, i64 %361
  %362 = add i64 %324, %indvar1388
  %smin1423 = call i64 @llvm.smin.i64(i64 %362, i64 79)
  %363 = add nsw i64 %smin1423, 1
  %364 = mul i64 %indvar1388, 9600
  %365 = add i64 %330, %364
  %scevgep1408 = getelementptr i8, i8* %call, i64 %365
  %366 = add i64 %332, %364
  %scevgep1409 = getelementptr i8, i8* %call, i64 %366
  %367 = add i64 %335, %indvar1388
  %smin1410 = call i64 @llvm.smin.i64(i64 %367, i64 79)
  %368 = shl i64 %smin1410, 3
  %scevgep1411 = getelementptr i8, i8* %scevgep1409, i64 %368
  %scevgep1414 = getelementptr i8, i8* %scevgep1413, i64 %368
  %369 = add i64 %340, %indvar1388
  %smin1390 = call i64 @llvm.smin.i64(i64 %369, i64 79)
  %370 = add nsw i64 %smin1390, 1
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 79)
  %371 = add nsw i64 %polly.indvar444, %346
  %polly.loop_guard4571144 = icmp sgt i64 %371, -1
  %372 = add nuw nsw i64 %polly.indvar444, %279
  %.not927 = icmp ult i64 %372, %347
  %polly.access.mul.call1470 = mul nsw i64 %372, 1000
  %373 = add nuw i64 %polly.access.mul.call1470, %281
  br i1 %polly.loop_guard4571144, label %polly.loop_header454.us, label %polly.loop_header440.split

polly.loop_header454.us:                          ; preds = %polly.loop_header440, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header440 ]
  %374 = add nuw nsw i64 %polly.indvar458.us, %341
  %polly.access.mul.call1462.us = mul nsw i64 %374, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %281, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar458.us, %smin1073
  br i1 %exitcond1071.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %373
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %371
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.loop_header454.us.1.preheader

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not927, label %polly.loop_header454.us.1.preheader, label %polly.then467.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not927, label %polly.loop_exit478, label %polly.loop_header447.preheader

polly.loop_header447.preheader:                   ; preds = %polly.loop_header440.split
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %373
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %371
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.access.add.call1471.1 = or i64 %373, 1
  %polly.access.call1472.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.1
  %polly.access.call1472.load.1 = load double, double* %polly.access.call1472.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.1 = add nsw i64 %371, 1200
  %polly.access.Packed_MemRef_call1303475.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.1
  store double %polly.access.call1472.load.1, double* %polly.access.Packed_MemRef_call1303475.1, align 8
  %polly.access.add.call1471.2 = or i64 %373, 2
  %polly.access.call1472.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.2
  %polly.access.call1472.load.2 = load double, double* %polly.access.call1472.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.2 = add nsw i64 %371, 2400
  %polly.access.Packed_MemRef_call1303475.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.2
  store double %polly.access.call1472.load.2, double* %polly.access.Packed_MemRef_call1303475.2, align 8
  %polly.access.add.call1471.3 = or i64 %373, 3
  %polly.access.call1472.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.3
  %polly.access.call1472.load.3 = load double, double* %polly.access.call1472.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.3 = add nsw i64 %371, 3600
  %polly.access.Packed_MemRef_call1303475.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.3
  store double %polly.access.call1472.load.3, double* %polly.access.Packed_MemRef_call1303475.3, align 8
  br label %polly.loop_exit478

polly.loop_exit478:                               ; preds = %polly.loop_header483.us.3, %middle.block1384, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %278
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %indvar.next1389 = add i64 %indvar1388, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.cond465.loopexit.us.3, %polly.then467.us.3
  %375 = mul i64 %372, 9600
  br i1 %polly.loop_guard4571144, label %polly.loop_header476.us.preheader, label %polly.loop_exit478

polly.loop_header476.us.preheader:                ; preds = %polly.loop_header476.preheader
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %372
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %371
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1489 = icmp ult i64 %349, 4
  br i1 %min.iters.check1489, label %polly.loop_header483.us.preheader, label %vector.memcheck1472

vector.memcheck1472:                              ; preds = %polly.loop_header476.us.preheader
  %bound01480 = icmp ult i8* %scevgep1474, %scevgep1479
  %bound11481 = icmp ult i8* %malloccall302, %scevgep1477
  %found.conflict1482 = and i1 %bound01480, %bound11481
  br i1 %found.conflict1482, label %polly.loop_header483.us.preheader, label %vector.ph1490

vector.ph1490:                                    ; preds = %vector.memcheck1472
  %n.vec1492 = and i64 %349, -4
  %broadcast.splatinsert1498 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1499 = shufflevector <4 x double> %broadcast.splatinsert1498, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1501 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1502 = shufflevector <4 x double> %broadcast.splatinsert1501, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1490
  %index1493 = phi i64 [ 0, %vector.ph1490 ], [ %index.next1494, %vector.body1486 ]
  %376 = add nuw nsw i64 %index1493, %341
  %377 = getelementptr double, double* %Packed_MemRef_call1303, i64 %index1493
  %378 = bitcast double* %377 to <4 x double>*
  %wide.load1497 = load <4 x double>, <4 x double>* %378, align 8, !alias.scope !103
  %379 = fmul fast <4 x double> %broadcast.splat1499, %wide.load1497
  %380 = add nuw nsw i64 %376, %polly.access.mul.Packed_MemRef_call2305494.us
  %381 = getelementptr double, double* %Packed_MemRef_call2305, i64 %380
  %382 = bitcast double* %381 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %382, align 8
  %383 = fmul fast <4 x double> %broadcast.splat1502, %wide.load1500
  %384 = shl i64 %376, 3
  %385 = add i64 %384, %375
  %386 = getelementptr i8, i8* %call, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %387, align 8, !alias.scope !106, !noalias !108
  %388 = fadd fast <4 x double> %383, %379
  %389 = fmul fast <4 x double> %388, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %390 = fadd fast <4 x double> %389, %wide.load1503
  %391 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %390, <4 x double>* %391, align 8, !alias.scope !106, !noalias !108
  %index.next1494 = add i64 %index1493, 4
  %392 = icmp eq i64 %index.next1494, %n.vec1492
  br i1 %392, label %middle.block1484, label %vector.body1486, !llvm.loop !109

middle.block1484:                                 ; preds = %vector.body1486
  %cmp.n1496 = icmp eq i64 %349, %n.vec1492
  br i1 %cmp.n1496, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1472, %polly.loop_header476.us.preheader, %middle.block1484
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1472 ], [ 0, %polly.loop_header476.us.preheader ], [ %n.vec1492, %middle.block1484 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %393 = add nuw nsw i64 %polly.indvar487.us, %341
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.indvar487.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %393, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %394 = shl i64 %393, 3
  %395 = add i64 %394, %375
  %scevgep506.us = getelementptr i8, i8* %call, i64 %395
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
  %polly.access.add.Packed_MemRef_call2305495.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.1, %372
  %polly.access.Packed_MemRef_call2305496.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2305496.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.1 = add nsw i64 %371, 1200
  %polly.access.Packed_MemRef_call1303504.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1303504.us.1, align 8
  %min.iters.check1457 = icmp ult i64 %356, 4
  br i1 %min.iters.check1457, label %polly.loop_header483.us.1.preheader, label %vector.memcheck1439

vector.memcheck1439:                              ; preds = %polly.loop_exit485.loopexit.us
  %bound01448 = icmp ult i8* %scevgep1441, %scevgep1447
  %bound11449 = icmp ult i8* %scevgep1445, %scevgep1444
  %found.conflict1450 = and i1 %bound01448, %bound11449
  br i1 %found.conflict1450, label %polly.loop_header483.us.1.preheader, label %vector.ph1458

vector.ph1458:                                    ; preds = %vector.memcheck1439
  %n.vec1460 = and i64 %356, -4
  %broadcast.splatinsert1466 = insertelement <4 x double> poison, double %_p_scalar_497.us.1, i32 0
  %broadcast.splat1467 = shufflevector <4 x double> %broadcast.splatinsert1466, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1469 = insertelement <4 x double> poison, double %_p_scalar_505.us.1, i32 0
  %broadcast.splat1470 = shufflevector <4 x double> %broadcast.splatinsert1469, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1458
  %index1461 = phi i64 [ 0, %vector.ph1458 ], [ %index.next1462, %vector.body1454 ]
  %396 = add nuw nsw i64 %index1461, %341
  %397 = add nuw nsw i64 %index1461, 1200
  %398 = getelementptr double, double* %Packed_MemRef_call1303, i64 %397
  %399 = bitcast double* %398 to <4 x double>*
  %wide.load1465 = load <4 x double>, <4 x double>* %399, align 8, !alias.scope !111
  %400 = fmul fast <4 x double> %broadcast.splat1467, %wide.load1465
  %401 = add nuw nsw i64 %396, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %402 = getelementptr double, double* %Packed_MemRef_call2305, i64 %401
  %403 = bitcast double* %402 to <4 x double>*
  %wide.load1468 = load <4 x double>, <4 x double>* %403, align 8
  %404 = fmul fast <4 x double> %broadcast.splat1470, %wide.load1468
  %405 = shl i64 %396, 3
  %406 = add i64 %405, %375
  %407 = getelementptr i8, i8* %call, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %408, align 8, !alias.scope !114, !noalias !116
  %409 = fadd fast <4 x double> %404, %400
  %410 = fmul fast <4 x double> %409, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %411 = fadd fast <4 x double> %410, %wide.load1471
  %412 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %411, <4 x double>* %412, align 8, !alias.scope !114, !noalias !116
  %index.next1462 = add i64 %index1461, 4
  %413 = icmp eq i64 %index.next1462, %n.vec1460
  br i1 %413, label %middle.block1452, label %vector.body1454, !llvm.loop !117

middle.block1452:                                 ; preds = %vector.body1454
  %cmp.n1464 = icmp eq i64 %356, %n.vec1460
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
  %414 = add i64 %indvar, 1
  %415 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %415
  %min.iters.check1229 = icmp ult i64 %414, 4
  br i1 %min.iters.check1229, label %polly.loop_header605.preheader, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header599
  %n.vec1232 = and i64 %414, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1228 ]
  %416 = shl nuw nsw i64 %index1233, 3
  %417 = getelementptr i8, i8* %scevgep611, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  %wide.load1237 = load <4 x double>, <4 x double>* %418, align 8, !alias.scope !118, !noalias !120
  %419 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %420 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %419, <4 x double>* %420, align 8, !alias.scope !118, !noalias !120
  %index.next1234 = add i64 %index1233, 4
  %421 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %421, label %middle.block1226, label %vector.body1228, !llvm.loop !125

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %414, %n.vec1232
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
  %422 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %422
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
  %423 = mul nsw i64 %polly.indvar634, -96
  %424 = mul nuw nsw i64 %polly.indvar634, 96
  %425 = mul nuw nsw i64 %polly.indvar634, 96
  %426 = mul nsw i64 %polly.indvar634, -96
  %427 = mul nsw i64 %polly.indvar634, -96
  %428 = mul nuw nsw i64 %polly.indvar634, 96
  %429 = mul nuw nsw i64 %polly.indvar634, 96
  %430 = mul nsw i64 %polly.indvar634, -96
  %431 = mul nsw i64 %polly.indvar634, -96
  %432 = mul nuw nsw i64 %polly.indvar634, 96
  %433 = mul nuw nsw i64 %polly.indvar634, 96
  %434 = mul nsw i64 %polly.indvar634, -96
  %435 = mul nsw i64 %polly.indvar634, -96
  %436 = mul nuw nsw i64 %polly.indvar634, 96
  %pexp.p_div_q643 = udiv i64 %polly.indvar634, 5
  %437 = add nuw nsw i64 %pexp.p_div_q643, %polly.indvar634
  %.inv928 = icmp ult i64 %437, 14
  %438 = mul nsw i64 %polly.indvar634, -96
  %439 = icmp slt i64 %438, -1104
  %440 = select i1 %439, i64 %438, i64 -1104
  %441 = add nsw i64 %440, 1199
  %442 = mul nuw nsw i64 %polly.indvar634, 96
  %.op1145 = add nuw i64 %437, 2
  %443 = select i1 %.inv928, i64 %.op1145, i64 15
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -96
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 96
  %exitcond1103.not = icmp eq i64 %polly.indvar_next635, 13
  br i1 %exitcond1103.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %444 = shl nsw i64 %polly.indvar640, 2
  %445 = or i64 %444, 1
  %446 = or i64 %444, 2
  %447 = or i64 %444, 3
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nsw i64 %polly.indvar640, 4800
  %448 = or i64 %444, 1
  %polly.access.mul.Packed_MemRef_call2516705.us.1 = mul nuw nsw i64 %448, 1200
  %449 = or i64 %444, 2
  %polly.access.mul.Packed_MemRef_call2516705.us.2 = mul nuw nsw i64 %449, 1200
  %450 = or i64 %444, 3
  %polly.access.mul.Packed_MemRef_call2516705.us.3 = mul nuw nsw i64 %450, 1200
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next641, 250
  br i1 %exitcond1102.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit653 ], [ %indvars.iv1089, %polly.loop_header637 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit653 ], [ %indvars.iv1084, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %451 = mul i64 %polly.indvar647, 80
  %452 = add i64 %423, %451
  %smax1341 = call i64 @llvm.smax.i64(i64 %452, i64 0)
  %453 = mul i64 %polly.indvar647, -80
  %454 = add i64 %424, %453
  %455 = add i64 %smax1341, %454
  %456 = mul i64 %polly.indvar647, 640
  %457 = mul i64 %polly.indvar647, 80
  %458 = add i64 %426, %457
  %smax1327 = call i64 @llvm.smax.i64(i64 %458, i64 0)
  %459 = add nuw i64 %425, %smax1327
  %460 = mul i64 %459, 9600
  %461 = add i64 %456, %460
  %462 = or i64 %456, 8
  %463 = add i64 %462, %460
  %464 = mul i64 %polly.indvar647, -80
  %465 = add i64 %425, %464
  %466 = add i64 %smax1327, %465
  %467 = mul i64 %polly.indvar647, 80
  %468 = add i64 %427, %467
  %smax1309 = call i64 @llvm.smax.i64(i64 %468, i64 0)
  %469 = mul i64 %polly.indvar647, -80
  %470 = add i64 %428, %469
  %471 = add i64 %smax1309, %470
  %472 = mul i64 %polly.indvar647, 640
  %473 = mul i64 %polly.indvar647, 80
  %474 = add i64 %430, %473
  %smax1294 = call i64 @llvm.smax.i64(i64 %474, i64 0)
  %475 = add nuw i64 %429, %smax1294
  %476 = mul i64 %475, 9600
  %477 = add i64 %472, %476
  %478 = or i64 %472, 8
  %479 = add i64 %478, %476
  %480 = mul i64 %polly.indvar647, -80
  %481 = add i64 %429, %480
  %482 = add i64 %smax1294, %481
  %483 = mul i64 %polly.indvar647, 80
  %484 = add i64 %431, %483
  %smax1276 = call i64 @llvm.smax.i64(i64 %484, i64 0)
  %485 = mul i64 %polly.indvar647, -80
  %486 = add i64 %432, %485
  %487 = add i64 %smax1276, %486
  %488 = mul i64 %polly.indvar647, 640
  %489 = mul i64 %polly.indvar647, 80
  %490 = add i64 %434, %489
  %smax1261 = call i64 @llvm.smax.i64(i64 %490, i64 0)
  %491 = add nuw i64 %433, %smax1261
  %492 = mul i64 %491, 9600
  %493 = add i64 %488, %492
  %494 = or i64 %488, 8
  %495 = add i64 %494, %492
  %496 = mul i64 %polly.indvar647, -80
  %497 = add i64 %433, %496
  %498 = add i64 %smax1261, %497
  %499 = mul i64 %polly.indvar647, 80
  %500 = add i64 %435, %499
  %smax1241 = call i64 @llvm.smax.i64(i64 %500, i64 0)
  %501 = mul i64 %polly.indvar647, -80
  %502 = add i64 %436, %501
  %503 = add i64 %smax1241, %502
  %504 = mul nsw i64 %polly.indvar647, 80
  %505 = add nsw i64 %504, %438
  %506 = icmp sgt i64 %505, 0
  %507 = select i1 %506, i64 %505, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %507, %441
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1088 = call i64 @llvm.smax.i64(i64 %indvars.iv1086, i64 0)
  %508 = add i64 %smax1088, %indvars.iv1091
  %509 = sub nsw i64 %442, %504
  %510 = add nuw nsw i64 %504, 80
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw i64 %polly.indvar647, 1
  %indvars.iv.next1087 = add i64 %indvars.iv1086, 80
  %indvars.iv.next1092 = add i64 %indvars.iv1091, -80
  %exitcond1101.not = icmp eq i64 %polly.indvar_next648, %443
  br i1 %exitcond1101.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1242 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1243, %polly.loop_exit689 ]
  %indvars.iv1093 = phi i64 [ %508, %polly.loop_header651.preheader ], [ %indvars.iv.next1094, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %507, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %511 = add i64 %455, %indvar1242
  %smin1342 = call i64 @llvm.smin.i64(i64 %511, i64 79)
  %512 = add nsw i64 %smin1342, 1
  %513 = mul i64 %indvar1242, 9600
  %514 = add i64 %461, %513
  %scevgep1328 = getelementptr i8, i8* %call, i64 %514
  %515 = add i64 %463, %513
  %scevgep1329 = getelementptr i8, i8* %call, i64 %515
  %516 = add i64 %466, %indvar1242
  %smin1330 = call i64 @llvm.smin.i64(i64 %516, i64 79)
  %517 = shl i64 %smin1330, 3
  %scevgep1331 = getelementptr i8, i8* %scevgep1329, i64 %517
  %scevgep1333 = getelementptr i8, i8* %scevgep1332, i64 %517
  %518 = add i64 %471, %indvar1242
  %smin1310 = call i64 @llvm.smin.i64(i64 %518, i64 79)
  %519 = add nsw i64 %smin1310, 1
  %520 = mul i64 %indvar1242, 9600
  %521 = add i64 %477, %520
  %scevgep1295 = getelementptr i8, i8* %call, i64 %521
  %522 = add i64 %479, %520
  %scevgep1296 = getelementptr i8, i8* %call, i64 %522
  %523 = add i64 %482, %indvar1242
  %smin1297 = call i64 @llvm.smin.i64(i64 %523, i64 79)
  %524 = shl i64 %smin1297, 3
  %scevgep1298 = getelementptr i8, i8* %scevgep1296, i64 %524
  %scevgep1301 = getelementptr i8, i8* %scevgep1300, i64 %524
  %525 = add i64 %487, %indvar1242
  %smin1277 = call i64 @llvm.smin.i64(i64 %525, i64 79)
  %526 = add nsw i64 %smin1277, 1
  %527 = mul i64 %indvar1242, 9600
  %528 = add i64 %493, %527
  %scevgep1262 = getelementptr i8, i8* %call, i64 %528
  %529 = add i64 %495, %527
  %scevgep1263 = getelementptr i8, i8* %call, i64 %529
  %530 = add i64 %498, %indvar1242
  %smin1264 = call i64 @llvm.smin.i64(i64 %530, i64 79)
  %531 = shl i64 %smin1264, 3
  %scevgep1265 = getelementptr i8, i8* %scevgep1263, i64 %531
  %scevgep1268 = getelementptr i8, i8* %scevgep1267, i64 %531
  %532 = add i64 %503, %indvar1242
  %smin1244 = call i64 @llvm.smin.i64(i64 %532, i64 79)
  %533 = add nsw i64 %smin1244, 1
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 79)
  %534 = add nsw i64 %polly.indvar655, %509
  %polly.loop_guard6681146 = icmp sgt i64 %534, -1
  %535 = add nuw nsw i64 %polly.indvar655, %442
  %.not929 = icmp ult i64 %535, %510
  %polly.access.mul.call1681 = mul nsw i64 %535, 1000
  %536 = add nuw i64 %polly.access.mul.call1681, %444
  br i1 %polly.loop_guard6681146, label %polly.loop_header665.us, label %polly.loop_header651.split

polly.loop_header665.us:                          ; preds = %polly.loop_header651, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header651 ]
  %537 = add nuw nsw i64 %polly.indvar669.us, %504
  %polly.access.mul.call1673.us = mul nsw i64 %537, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %444, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar669.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar669.us, %smin1098
  br i1 %exitcond1096.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %536
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %534
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.loop_header665.us.1.preheader

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not929, label %polly.loop_header665.us.1.preheader, label %polly.then678.us

polly.loop_header665.us.1.preheader:              ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  br label %polly.loop_header665.us.1

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not929, label %polly.loop_exit689, label %polly.loop_header658.preheader

polly.loop_header658.preheader:                   ; preds = %polly.loop_header651.split
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %536
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %534
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.access.add.call1682.1 = or i64 %536, 1
  %polly.access.call1683.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.1
  %polly.access.call1683.load.1 = load double, double* %polly.access.call1683.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.1 = add nsw i64 %534, 1200
  %polly.access.Packed_MemRef_call1514686.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.1
  store double %polly.access.call1683.load.1, double* %polly.access.Packed_MemRef_call1514686.1, align 8
  %polly.access.add.call1682.2 = or i64 %536, 2
  %polly.access.call1683.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.2
  %polly.access.call1683.load.2 = load double, double* %polly.access.call1683.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.2 = add nsw i64 %534, 2400
  %polly.access.Packed_MemRef_call1514686.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.2
  store double %polly.access.call1683.load.2, double* %polly.access.Packed_MemRef_call1514686.2, align 8
  %polly.access.add.call1682.3 = or i64 %536, 3
  %polly.access.call1683.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.3
  %polly.access.call1683.load.3 = load double, double* %polly.access.call1683.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.3 = add nsw i64 %534, 3600
  %polly.access.Packed_MemRef_call1514686.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.3
  store double %polly.access.call1683.load.3, double* %polly.access.Packed_MemRef_call1514686.3, align 8
  br label %polly.loop_exit689

polly.loop_exit689:                               ; preds = %polly.loop_header694.us.3, %middle.block1238, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %441
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 1
  %indvar.next1243 = add i64 %indvar1242, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.cond676.loopexit.us.3, %polly.then678.us.3
  %538 = mul i64 %535, 9600
  br i1 %polly.loop_guard6681146, label %polly.loop_header687.us.preheader, label %polly.loop_exit689

polly.loop_header687.us.preheader:                ; preds = %polly.loop_header687.preheader
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %535
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %534
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1343 = icmp ult i64 %512, 4
  br i1 %min.iters.check1343, label %polly.loop_header694.us.preheader, label %vector.memcheck1326

vector.memcheck1326:                              ; preds = %polly.loop_header687.us.preheader
  %bound01334 = icmp ult i8* %scevgep1328, %scevgep1333
  %bound11335 = icmp ult i8* %malloccall513, %scevgep1331
  %found.conflict1336 = and i1 %bound01334, %bound11335
  br i1 %found.conflict1336, label %polly.loop_header694.us.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %vector.memcheck1326
  %n.vec1346 = and i64 %512, -4
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1340 ]
  %539 = add nuw nsw i64 %index1347, %504
  %540 = getelementptr double, double* %Packed_MemRef_call1514, i64 %index1347
  %541 = bitcast double* %540 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %541, align 8, !alias.scope !129
  %542 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %543 = add nuw nsw i64 %539, %polly.access.mul.Packed_MemRef_call2516705.us
  %544 = getelementptr double, double* %Packed_MemRef_call2516, i64 %543
  %545 = bitcast double* %544 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %545, align 8
  %546 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %547 = shl i64 %539, 3
  %548 = add i64 %547, %538
  %549 = getelementptr i8, i8* %call, i64 %548
  %550 = bitcast i8* %549 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %550, align 8, !alias.scope !132, !noalias !134
  %551 = fadd fast <4 x double> %546, %542
  %552 = fmul fast <4 x double> %551, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %553 = fadd fast <4 x double> %552, %wide.load1357
  %554 = bitcast i8* %549 to <4 x double>*
  store <4 x double> %553, <4 x double>* %554, align 8, !alias.scope !132, !noalias !134
  %index.next1348 = add i64 %index1347, 4
  %555 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %555, label %middle.block1338, label %vector.body1340, !llvm.loop !135

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1350 = icmp eq i64 %512, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1326, %polly.loop_header687.us.preheader, %middle.block1338
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1326 ], [ 0, %polly.loop_header687.us.preheader ], [ %n.vec1346, %middle.block1338 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %556 = add nuw nsw i64 %polly.indvar698.us, %504
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.indvar698.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %556, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %557 = shl i64 %556, 3
  %558 = add i64 %557, %538
  %scevgep717.us = getelementptr i8, i8* %call, i64 %558
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
  %polly.access.add.Packed_MemRef_call2516706.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.1, %535
  %polly.access.Packed_MemRef_call2516707.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call2516707.us.1, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.1 = add nsw i64 %534, 1200
  %polly.access.Packed_MemRef_call1514715.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call1514715.us.1, align 8
  %min.iters.check1311 = icmp ult i64 %519, 4
  br i1 %min.iters.check1311, label %polly.loop_header694.us.1.preheader, label %vector.memcheck1293

vector.memcheck1293:                              ; preds = %polly.loop_exit696.loopexit.us
  %bound01302 = icmp ult i8* %scevgep1295, %scevgep1301
  %bound11303 = icmp ult i8* %scevgep1299, %scevgep1298
  %found.conflict1304 = and i1 %bound01302, %bound11303
  br i1 %found.conflict1304, label %polly.loop_header694.us.1.preheader, label %vector.ph1312

vector.ph1312:                                    ; preds = %vector.memcheck1293
  %n.vec1314 = and i64 %519, -4
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1308 ]
  %559 = add nuw nsw i64 %index1315, %504
  %560 = add nuw nsw i64 %index1315, 1200
  %561 = getelementptr double, double* %Packed_MemRef_call1514, i64 %560
  %562 = bitcast double* %561 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %562, align 8, !alias.scope !137
  %563 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %564 = add nuw nsw i64 %559, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %565 = getelementptr double, double* %Packed_MemRef_call2516, i64 %564
  %566 = bitcast double* %565 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %566, align 8
  %567 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %568 = shl i64 %559, 3
  %569 = add i64 %568, %538
  %570 = getelementptr i8, i8* %call, i64 %569
  %571 = bitcast i8* %570 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %571, align 8, !alias.scope !140, !noalias !142
  %572 = fadd fast <4 x double> %567, %563
  %573 = fmul fast <4 x double> %572, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %574 = fadd fast <4 x double> %573, %wide.load1325
  %575 = bitcast i8* %570 to <4 x double>*
  store <4 x double> %574, <4 x double>* %575, align 8, !alias.scope !140, !noalias !142
  %index.next1316 = add i64 %index1315, 4
  %576 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %576, label %middle.block1306, label %vector.body1308, !llvm.loop !143

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1318 = icmp eq i64 %519, %n.vec1314
  br i1 %cmp.n1318, label %polly.loop_exit696.loopexit.us.1, label %polly.loop_header694.us.1.preheader

polly.loop_header694.us.1.preheader:              ; preds = %vector.memcheck1293, %polly.loop_exit696.loopexit.us, %middle.block1306
  %polly.indvar698.us.1.ph = phi i64 [ 0, %vector.memcheck1293 ], [ 0, %polly.loop_exit696.loopexit.us ], [ %n.vec1314, %middle.block1306 ]
  br label %polly.loop_header694.us.1

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %577 = shl nsw i64 %polly.indvar849, 5
  %578 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1137.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %579 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %579, i64 -1168)
  %580 = add nsw i64 %smin, 1200
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %581 = shl nsw i64 %polly.indvar855, 5
  %582 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1136.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1136.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %583 = add nuw nsw i64 %polly.indvar861, %577
  %584 = trunc i64 %583 to i32
  %585 = mul nuw nsw i64 %583, 9600
  %min.iters.check = icmp eq i64 %580, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1168

vector.ph1168:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1175 = insertelement <4 x i64> poison, i64 %581, i32 0
  %broadcast.splat1176 = shufflevector <4 x i64> %broadcast.splatinsert1175, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %584, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1168
  %index1169 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1168 ], [ %vec.ind.next1174, %vector.body1167 ]
  %586 = add nuw nsw <4 x i64> %vec.ind1173, %broadcast.splat1176
  %587 = trunc <4 x i64> %586 to <4 x i32>
  %588 = mul <4 x i32> %broadcast.splat1178, %587
  %589 = add <4 x i32> %588, <i32 3, i32 3, i32 3, i32 3>
  %590 = urem <4 x i32> %589, <i32 1200, i32 1200, i32 1200, i32 1200>
  %591 = sitofp <4 x i32> %590 to <4 x double>
  %592 = fmul fast <4 x double> %591, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %593 = extractelement <4 x i64> %586, i32 0
  %594 = shl i64 %593, 3
  %595 = add nuw nsw i64 %594, %585
  %596 = getelementptr i8, i8* %call, i64 %595
  %597 = bitcast i8* %596 to <4 x double>*
  store <4 x double> %592, <4 x double>* %597, align 8, !alias.scope !144, !noalias !146
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %598 = icmp eq i64 %index.next1170, %580
  br i1 %598, label %polly.loop_exit866, label %vector.body1167, !llvm.loop !149

polly.loop_exit866:                               ; preds = %vector.body1167, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar861, %578
  br i1 %exitcond1135.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %599 = add nuw nsw i64 %polly.indvar867, %581
  %600 = trunc i64 %599 to i32
  %601 = mul i32 %600, %584
  %602 = add i32 %601, 3
  %603 = urem i32 %602, 1200
  %p_conv31.i = sitofp i32 %603 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %604 = shl i64 %599, 3
  %605 = add nuw nsw i64 %604, %585
  %scevgep870 = getelementptr i8, i8* %call, i64 %605
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar867, %582
  br i1 %exitcond1131.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !150

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -1168)
  %606 = shl nsw i64 %polly.indvar876, 5
  %607 = add nsw i64 %smin1124, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1127.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %608 = mul nsw i64 %polly.indvar882, -32
  %smin1182 = call i64 @llvm.smin.i64(i64 %608, i64 -968)
  %609 = add nsw i64 %smin1182, 1000
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -968)
  %610 = shl nsw i64 %polly.indvar882, 5
  %611 = add nsw i64 %smin1120, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1126.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1126.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %612 = add nuw nsw i64 %polly.indvar888, %606
  %613 = trunc i64 %612 to i32
  %614 = mul nuw nsw i64 %612, 8000
  %min.iters.check1183 = icmp eq i64 %609, 0
  br i1 %min.iters.check1183, label %polly.loop_header891, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1193 = insertelement <4 x i64> poison, i64 %610, i32 0
  %broadcast.splat1194 = shufflevector <4 x i64> %broadcast.splatinsert1193, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %613, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1181 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1184 ], [ %vec.ind.next1192, %vector.body1181 ]
  %615 = add nuw nsw <4 x i64> %vec.ind1191, %broadcast.splat1194
  %616 = trunc <4 x i64> %615 to <4 x i32>
  %617 = mul <4 x i32> %broadcast.splat1196, %616
  %618 = add <4 x i32> %617, <i32 2, i32 2, i32 2, i32 2>
  %619 = urem <4 x i32> %618, <i32 1000, i32 1000, i32 1000, i32 1000>
  %620 = sitofp <4 x i32> %619 to <4 x double>
  %621 = fmul fast <4 x double> %620, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %622 = extractelement <4 x i64> %615, i32 0
  %623 = shl i64 %622, 3
  %624 = add nuw nsw i64 %623, %614
  %625 = getelementptr i8, i8* %call2, i64 %624
  %626 = bitcast i8* %625 to <4 x double>*
  store <4 x double> %621, <4 x double>* %626, align 8, !alias.scope !148, !noalias !151
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %627 = icmp eq i64 %index.next1188, %609
  br i1 %627, label %polly.loop_exit893, label %vector.body1181, !llvm.loop !152

polly.loop_exit893:                               ; preds = %vector.body1181, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar888, %607
  br i1 %exitcond1125.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %628 = add nuw nsw i64 %polly.indvar894, %610
  %629 = trunc i64 %628 to i32
  %630 = mul i32 %629, %613
  %631 = add i32 %630, 2
  %632 = urem i32 %631, 1000
  %p_conv10.i = sitofp i32 %632 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %633 = shl i64 %628, 3
  %634 = add nuw nsw i64 %633, %614
  %scevgep897 = getelementptr i8, i8* %call2, i64 %634
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar894, %611
  br i1 %exitcond1121.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !153

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -1168)
  %635 = shl nsw i64 %polly.indvar902, 5
  %636 = add nsw i64 %smin1114, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1117.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %637 = mul nsw i64 %polly.indvar908, -32
  %smin1200 = call i64 @llvm.smin.i64(i64 %637, i64 -968)
  %638 = add nsw i64 %smin1200, 1000
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -968)
  %639 = shl nsw i64 %polly.indvar908, 5
  %640 = add nsw i64 %smin1110, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1116.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %641 = add nuw nsw i64 %polly.indvar914, %635
  %642 = trunc i64 %641 to i32
  %643 = mul nuw nsw i64 %641, 8000
  %min.iters.check1201 = icmp eq i64 %638, 0
  br i1 %min.iters.check1201, label %polly.loop_header917, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %639, i32 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %642, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1199 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1210, %vector.body1199 ]
  %644 = add nuw nsw <4 x i64> %vec.ind1209, %broadcast.splat1212
  %645 = trunc <4 x i64> %644 to <4 x i32>
  %646 = mul <4 x i32> %broadcast.splat1214, %645
  %647 = add <4 x i32> %646, <i32 1, i32 1, i32 1, i32 1>
  %648 = urem <4 x i32> %647, <i32 1200, i32 1200, i32 1200, i32 1200>
  %649 = sitofp <4 x i32> %648 to <4 x double>
  %650 = fmul fast <4 x double> %649, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %651 = extractelement <4 x i64> %644, i32 0
  %652 = shl i64 %651, 3
  %653 = add nuw nsw i64 %652, %643
  %654 = getelementptr i8, i8* %call1, i64 %653
  %655 = bitcast i8* %654 to <4 x double>*
  store <4 x double> %650, <4 x double>* %655, align 8, !alias.scope !147, !noalias !154
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %656 = icmp eq i64 %index.next1206, %638
  br i1 %656, label %polly.loop_exit919, label %vector.body1199, !llvm.loop !155

polly.loop_exit919:                               ; preds = %vector.body1199, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar914, %636
  br i1 %exitcond1115.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %657 = add nuw nsw i64 %polly.indvar920, %639
  %658 = trunc i64 %657 to i32
  %659 = mul i32 %658, %642
  %660 = add i32 %659, 1
  %661 = urem i32 %660, 1200
  %p_conv.i = sitofp i32 %661 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %662 = shl i64 %657, 3
  %663 = add nuw nsw i64 %662, %643
  %scevgep924 = getelementptr i8, i8* %call1, i64 %663
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar920, %640
  br i1 %exitcond1111.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !156

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1.preheader, %polly.loop_header247.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header247.us.1.preheader ]
  %664 = add nuw nsw i64 %polly.indvar251.us.1, %178
  %polly.access.mul.call1255.us.1 = mul nsw i64 %664, 1000
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %119, %polly.access.mul.call1255.us.1
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
  %polly.access.add.call1260.us.1 = or i64 %210, 1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %208, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.loop_header247.us.2.preheader

polly.loop_header247.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header247.us.2

polly.loop_header247.us.2:                        ; preds = %polly.loop_header247.us.2.preheader, %polly.loop_header247.us.2
  %polly.indvar251.us.2 = phi i64 [ %polly.indvar_next252.us.2, %polly.loop_header247.us.2 ], [ 0, %polly.loop_header247.us.2.preheader ]
  %665 = add nuw nsw i64 %polly.indvar251.us.2, %178
  %polly.access.mul.call1255.us.2 = mul nsw i64 %665, 1000
  %polly.access.add.call1256.us.2 = add nuw nsw i64 %120, %polly.access.mul.call1255.us.2
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
  %polly.access.add.call1260.us.2 = or i64 %210, 2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nsw i64 %208, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  br label %polly.loop_header247.us.3.preheader

polly.loop_header247.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header247.us.3

polly.loop_header247.us.3:                        ; preds = %polly.loop_header247.us.3.preheader, %polly.loop_header247.us.3
  %polly.indvar251.us.3 = phi i64 [ %polly.indvar_next252.us.3, %polly.loop_header247.us.3 ], [ 0, %polly.loop_header247.us.3.preheader ]
  %666 = add nuw nsw i64 %polly.indvar251.us.3, %178
  %polly.access.mul.call1255.us.3 = mul nsw i64 %666, 1000
  %polly.access.add.call1256.us.3 = add nuw nsw i64 %121, %polly.access.mul.call1255.us.3
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
  %polly.access.add.call1260.us.3 = or i64 %210, 3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nsw i64 %208, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %667 = add nuw nsw i64 %polly.indvar276.us.1, %178
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1200
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %668 = shl i64 %667, 3
  %669 = add i64 %668, %212
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %669
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
  %polly.access.add.Packed_MemRef_call2284.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.2, %209
  %polly.access.Packed_MemRef_call2285.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.2
  %_p_scalar_286.us.2 = load double, double* %polly.access.Packed_MemRef_call2285.us.2, align 8
  %polly.access.add.Packed_MemRef_call1292.us.2 = add nsw i64 %208, 2400
  %polly.access.Packed_MemRef_call1293.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call1293.us.2, align 8
  %min.iters.check1570 = icmp ult i64 %200, 4
  br i1 %min.iters.check1570, label %polly.loop_header272.us.2.preheader, label %vector.memcheck1552

vector.memcheck1552:                              ; preds = %polly.loop_exit274.loopexit.us.1
  %bound01561 = icmp ult i8* %scevgep1554, %scevgep1560
  %bound11562 = icmp ult i8* %scevgep1558, %scevgep1557
  %found.conflict1563 = and i1 %bound01561, %bound11562
  br i1 %found.conflict1563, label %polly.loop_header272.us.2.preheader, label %vector.ph1571

vector.ph1571:                                    ; preds = %vector.memcheck1552
  %n.vec1573 = and i64 %200, -4
  %broadcast.splatinsert1579 = insertelement <4 x double> poison, double %_p_scalar_286.us.2, i32 0
  %broadcast.splat1580 = shufflevector <4 x double> %broadcast.splatinsert1579, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1582 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1583 = shufflevector <4 x double> %broadcast.splatinsert1582, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.body1567, %vector.ph1571
  %index1574 = phi i64 [ 0, %vector.ph1571 ], [ %index.next1575, %vector.body1567 ]
  %670 = add nuw nsw i64 %index1574, %178
  %671 = add nuw nsw i64 %index1574, 2400
  %672 = getelementptr double, double* %Packed_MemRef_call1, i64 %671
  %673 = bitcast double* %672 to <4 x double>*
  %wide.load1578 = load <4 x double>, <4 x double>* %673, align 8, !alias.scope !158
  %674 = fmul fast <4 x double> %broadcast.splat1580, %wide.load1578
  %675 = add nuw nsw i64 %670, %polly.access.mul.Packed_MemRef_call2283.us.2
  %676 = getelementptr double, double* %Packed_MemRef_call2, i64 %675
  %677 = bitcast double* %676 to <4 x double>*
  %wide.load1581 = load <4 x double>, <4 x double>* %677, align 8
  %678 = fmul fast <4 x double> %broadcast.splat1583, %wide.load1581
  %679 = shl i64 %670, 3
  %680 = add i64 %679, %212
  %681 = getelementptr i8, i8* %call, i64 %680
  %682 = bitcast i8* %681 to <4 x double>*
  %wide.load1584 = load <4 x double>, <4 x double>* %682, align 8, !alias.scope !161, !noalias !163
  %683 = fadd fast <4 x double> %678, %674
  %684 = fmul fast <4 x double> %683, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %685 = fadd fast <4 x double> %684, %wide.load1584
  %686 = bitcast i8* %681 to <4 x double>*
  store <4 x double> %685, <4 x double>* %686, align 8, !alias.scope !161, !noalias !163
  %index.next1575 = add i64 %index1574, 4
  %687 = icmp eq i64 %index.next1575, %n.vec1573
  br i1 %687, label %middle.block1565, label %vector.body1567, !llvm.loop !164

middle.block1565:                                 ; preds = %vector.body1567
  %cmp.n1577 = icmp eq i64 %200, %n.vec1573
  br i1 %cmp.n1577, label %polly.loop_exit274.loopexit.us.2, label %polly.loop_header272.us.2.preheader

polly.loop_header272.us.2.preheader:              ; preds = %vector.memcheck1552, %polly.loop_exit274.loopexit.us.1, %middle.block1565
  %polly.indvar276.us.2.ph = phi i64 [ 0, %vector.memcheck1552 ], [ 0, %polly.loop_exit274.loopexit.us.1 ], [ %n.vec1573, %middle.block1565 ]
  br label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_header272.us.2.preheader, %polly.loop_header272.us.2
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_header272.us.2 ], [ %polly.indvar276.us.2.ph, %polly.loop_header272.us.2.preheader ]
  %688 = add nuw nsw i64 %polly.indvar276.us.2, %178
  %polly.access.add.Packed_MemRef_call1280.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 2400
  %polly.access.Packed_MemRef_call1281.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.2
  %_p_scalar_282.us.2 = load double, double* %polly.access.Packed_MemRef_call1281.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_286.us.2, %_p_scalar_282.us.2
  %polly.access.add.Packed_MemRef_call2288.us.2 = add nuw nsw i64 %688, %polly.access.mul.Packed_MemRef_call2283.us.2
  %polly.access.Packed_MemRef_call2289.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call2289.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %689 = shl i64 %688, 3
  %690 = add i64 %689, %212
  %scevgep295.us.2 = getelementptr i8, i8* %call, i64 %690
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
  %polly.access.add.Packed_MemRef_call2284.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.3, %209
  %polly.access.Packed_MemRef_call2285.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.3
  %_p_scalar_286.us.3 = load double, double* %polly.access.Packed_MemRef_call2285.us.3, align 8
  %polly.access.add.Packed_MemRef_call1292.us.3 = add nsw i64 %208, 3600
  %polly.access.Packed_MemRef_call1293.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call1293.us.3, align 8
  %min.iters.check1537 = icmp ult i64 %207, 4
  br i1 %min.iters.check1537, label %polly.loop_header272.us.3.preheader, label %vector.ph1538

vector.ph1538:                                    ; preds = %polly.loop_exit274.loopexit.us.2
  %n.vec1540 = and i64 %207, -4
  %broadcast.splatinsert1546 = insertelement <4 x double> poison, double %_p_scalar_286.us.3, i32 0
  %broadcast.splat1547 = shufflevector <4 x double> %broadcast.splatinsert1546, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1549 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1550 = shufflevector <4 x double> %broadcast.splatinsert1549, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1542, %vector.body1532 ]
  %691 = add nuw nsw i64 %index1541, %178
  %692 = add nuw nsw i64 %index1541, 3600
  %693 = getelementptr double, double* %Packed_MemRef_call1, i64 %692
  %694 = bitcast double* %693 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %694, align 8
  %695 = fmul fast <4 x double> %broadcast.splat1547, %wide.load1545
  %696 = add nuw nsw i64 %691, %polly.access.mul.Packed_MemRef_call2283.us.3
  %697 = getelementptr double, double* %Packed_MemRef_call2, i64 %696
  %698 = bitcast double* %697 to <4 x double>*
  %wide.load1548 = load <4 x double>, <4 x double>* %698, align 8
  %699 = fmul fast <4 x double> %broadcast.splat1550, %wide.load1548
  %700 = shl i64 %691, 3
  %701 = add i64 %700, %212
  %702 = getelementptr i8, i8* %call, i64 %701
  %703 = bitcast i8* %702 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %703, align 8, !alias.scope !65, !noalias !67
  %704 = fadd fast <4 x double> %699, %695
  %705 = fmul fast <4 x double> %704, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %706 = fadd fast <4 x double> %705, %wide.load1551
  %707 = bitcast i8* %702 to <4 x double>*
  store <4 x double> %706, <4 x double>* %707, align 8, !alias.scope !65, !noalias !67
  %index.next1542 = add i64 %index1541, 4
  %708 = icmp eq i64 %index.next1542, %n.vec1540
  br i1 %708, label %middle.block1530, label %vector.body1532, !llvm.loop !166

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1544 = icmp eq i64 %207, %n.vec1540
  br i1 %cmp.n1544, label %polly.loop_exit267, label %polly.loop_header272.us.3.preheader

polly.loop_header272.us.3.preheader:              ; preds = %polly.loop_exit274.loopexit.us.2, %middle.block1530
  %polly.indvar276.us.3.ph = phi i64 [ 0, %polly.loop_exit274.loopexit.us.2 ], [ %n.vec1540, %middle.block1530 ]
  br label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_header272.us.3.preheader, %polly.loop_header272.us.3
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_header272.us.3 ], [ %polly.indvar276.us.3.ph, %polly.loop_header272.us.3.preheader ]
  %709 = add nuw nsw i64 %polly.indvar276.us.3, %178
  %polly.access.add.Packed_MemRef_call1280.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 3600
  %polly.access.Packed_MemRef_call1281.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.3
  %_p_scalar_282.us.3 = load double, double* %polly.access.Packed_MemRef_call1281.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_286.us.3, %_p_scalar_282.us.3
  %polly.access.add.Packed_MemRef_call2288.us.3 = add nuw nsw i64 %709, %polly.access.mul.Packed_MemRef_call2283.us.3
  %polly.access.Packed_MemRef_call2289.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call2289.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %710 = shl i64 %709, 3
  %711 = add i64 %710, %212
  %scevgep295.us.3 = getelementptr i8, i8* %call, i64 %711
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
  %712 = add nuw nsw i64 %polly.indvar458.us.1, %341
  %polly.access.mul.call1462.us.1 = mul nsw i64 %712, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %282, %polly.access.mul.call1462.us.1
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
  %polly.access.add.call1471.us.1 = or i64 %373, 1
  %polly.access.call1472.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.1
  %polly.access.call1472.load.us.1 = load double, double* %polly.access.call1472.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.1 = add nsw i64 %371, 1200
  %polly.access.Packed_MemRef_call1303475.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.1
  store double %polly.access.call1472.load.us.1, double* %polly.access.Packed_MemRef_call1303475.us.1, align 8
  br label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.then467.us.1, %polly.cond465.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %713 = add nuw nsw i64 %polly.indvar458.us.2, %341
  %polly.access.mul.call1462.us.2 = mul nsw i64 %713, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %283, %polly.access.mul.call1462.us.2
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
  %polly.access.add.call1471.us.2 = or i64 %373, 2
  %polly.access.call1472.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.2
  %polly.access.call1472.load.us.2 = load double, double* %polly.access.call1472.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.2 = add nsw i64 %371, 2400
  %polly.access.Packed_MemRef_call1303475.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.2
  store double %polly.access.call1472.load.us.2, double* %polly.access.Packed_MemRef_call1303475.us.2, align 8
  br label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.then467.us.2, %polly.cond465.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %714 = add nuw nsw i64 %polly.indvar458.us.3, %341
  %polly.access.mul.call1462.us.3 = mul nsw i64 %714, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %284, %polly.access.mul.call1462.us.3
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
  %polly.access.add.call1471.us.3 = or i64 %373, 3
  %polly.access.call1472.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us.3
  %polly.access.call1472.load.us.3 = load double, double* %polly.access.call1472.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1303474.us.3 = add nsw i64 %371, 3600
  %polly.access.Packed_MemRef_call1303475.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us.3
  store double %polly.access.call1472.load.us.3, double* %polly.access.Packed_MemRef_call1303475.us.3, align 8
  br label %polly.loop_header476.preheader

polly.loop_header483.us.1:                        ; preds = %polly.loop_header483.us.1.preheader, %polly.loop_header483.us.1
  %polly.indvar487.us.1 = phi i64 [ %polly.indvar_next488.us.1, %polly.loop_header483.us.1 ], [ %polly.indvar487.us.1.ph, %polly.loop_header483.us.1.preheader ]
  %715 = add nuw nsw i64 %polly.indvar487.us.1, %341
  %polly.access.add.Packed_MemRef_call1303491.us.1 = add nuw nsw i64 %polly.indvar487.us.1, 1200
  %polly.access.Packed_MemRef_call1303492.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call1303492.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_497.us.1, %_p_scalar_493.us.1
  %polly.access.add.Packed_MemRef_call2305499.us.1 = add nuw nsw i64 %715, %polly.access.mul.Packed_MemRef_call2305494.us.1
  %polly.access.Packed_MemRef_call2305500.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2305500.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_505.us.1, %_p_scalar_501.us.1
  %716 = shl i64 %715, 3
  %717 = add i64 %716, %375
  %scevgep506.us.1 = getelementptr i8, i8* %call, i64 %717
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
  %polly.access.add.Packed_MemRef_call2305495.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.2, %372
  %polly.access.Packed_MemRef_call2305496.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2305496.us.2, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.2 = add nsw i64 %371, 2400
  %polly.access.Packed_MemRef_call1303504.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1303504.us.2, align 8
  %min.iters.check1424 = icmp ult i64 %363, 4
  br i1 %min.iters.check1424, label %polly.loop_header483.us.2.preheader, label %vector.memcheck1406

vector.memcheck1406:                              ; preds = %polly.loop_exit485.loopexit.us.1
  %bound01415 = icmp ult i8* %scevgep1408, %scevgep1414
  %bound11416 = icmp ult i8* %scevgep1412, %scevgep1411
  %found.conflict1417 = and i1 %bound01415, %bound11416
  br i1 %found.conflict1417, label %polly.loop_header483.us.2.preheader, label %vector.ph1425

vector.ph1425:                                    ; preds = %vector.memcheck1406
  %n.vec1427 = and i64 %363, -4
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_497.us.2, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_505.us.2, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1421 ]
  %718 = add nuw nsw i64 %index1428, %341
  %719 = add nuw nsw i64 %index1428, 2400
  %720 = getelementptr double, double* %Packed_MemRef_call1303, i64 %719
  %721 = bitcast double* %720 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %721, align 8, !alias.scope !169
  %722 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %723 = add nuw nsw i64 %718, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %724 = getelementptr double, double* %Packed_MemRef_call2305, i64 %723
  %725 = bitcast double* %724 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %725, align 8
  %726 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %727 = shl i64 %718, 3
  %728 = add i64 %727, %375
  %729 = getelementptr i8, i8* %call, i64 %728
  %730 = bitcast i8* %729 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %730, align 8, !alias.scope !172, !noalias !174
  %731 = fadd fast <4 x double> %726, %722
  %732 = fmul fast <4 x double> %731, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %733 = fadd fast <4 x double> %732, %wide.load1438
  %734 = bitcast i8* %729 to <4 x double>*
  store <4 x double> %733, <4 x double>* %734, align 8, !alias.scope !172, !noalias !174
  %index.next1429 = add i64 %index1428, 4
  %735 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %735, label %middle.block1419, label %vector.body1421, !llvm.loop !175

middle.block1419:                                 ; preds = %vector.body1421
  %cmp.n1431 = icmp eq i64 %363, %n.vec1427
  br i1 %cmp.n1431, label %polly.loop_exit485.loopexit.us.2, label %polly.loop_header483.us.2.preheader

polly.loop_header483.us.2.preheader:              ; preds = %vector.memcheck1406, %polly.loop_exit485.loopexit.us.1, %middle.block1419
  %polly.indvar487.us.2.ph = phi i64 [ 0, %vector.memcheck1406 ], [ 0, %polly.loop_exit485.loopexit.us.1 ], [ %n.vec1427, %middle.block1419 ]
  br label %polly.loop_header483.us.2

polly.loop_header483.us.2:                        ; preds = %polly.loop_header483.us.2.preheader, %polly.loop_header483.us.2
  %polly.indvar487.us.2 = phi i64 [ %polly.indvar_next488.us.2, %polly.loop_header483.us.2 ], [ %polly.indvar487.us.2.ph, %polly.loop_header483.us.2.preheader ]
  %736 = add nuw nsw i64 %polly.indvar487.us.2, %341
  %polly.access.add.Packed_MemRef_call1303491.us.2 = add nuw nsw i64 %polly.indvar487.us.2, 2400
  %polly.access.Packed_MemRef_call1303492.us.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call1303492.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_497.us.2, %_p_scalar_493.us.2
  %polly.access.add.Packed_MemRef_call2305499.us.2 = add nuw nsw i64 %736, %polly.access.mul.Packed_MemRef_call2305494.us.2
  %polly.access.Packed_MemRef_call2305500.us.2 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2305500.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_505.us.2, %_p_scalar_501.us.2
  %737 = shl i64 %736, 3
  %738 = add i64 %737, %375
  %scevgep506.us.2 = getelementptr i8, i8* %call, i64 %738
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
  %polly.access.add.Packed_MemRef_call2305495.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us.3, %372
  %polly.access.Packed_MemRef_call2305496.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2305496.us.3, align 8
  %polly.access.add.Packed_MemRef_call1303503.us.3 = add nsw i64 %371, 3600
  %polly.access.Packed_MemRef_call1303504.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1303504.us.3, align 8
  %min.iters.check1391 = icmp ult i64 %370, 4
  br i1 %min.iters.check1391, label %polly.loop_header483.us.3.preheader, label %vector.ph1392

vector.ph1392:                                    ; preds = %polly.loop_exit485.loopexit.us.2
  %n.vec1394 = and i64 %370, -4
  %broadcast.splatinsert1400 = insertelement <4 x double> poison, double %_p_scalar_497.us.3, i32 0
  %broadcast.splat1401 = shufflevector <4 x double> %broadcast.splatinsert1400, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1403 = insertelement <4 x double> poison, double %_p_scalar_505.us.3, i32 0
  %broadcast.splat1404 = shufflevector <4 x double> %broadcast.splatinsert1403, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1392
  %index1395 = phi i64 [ 0, %vector.ph1392 ], [ %index.next1396, %vector.body1386 ]
  %739 = add nuw nsw i64 %index1395, %341
  %740 = add nuw nsw i64 %index1395, 3600
  %741 = getelementptr double, double* %Packed_MemRef_call1303, i64 %740
  %742 = bitcast double* %741 to <4 x double>*
  %wide.load1399 = load <4 x double>, <4 x double>* %742, align 8
  %743 = fmul fast <4 x double> %broadcast.splat1401, %wide.load1399
  %744 = add nuw nsw i64 %739, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %745 = getelementptr double, double* %Packed_MemRef_call2305, i64 %744
  %746 = bitcast double* %745 to <4 x double>*
  %wide.load1402 = load <4 x double>, <4 x double>* %746, align 8
  %747 = fmul fast <4 x double> %broadcast.splat1404, %wide.load1402
  %748 = shl i64 %739, 3
  %749 = add i64 %748, %375
  %750 = getelementptr i8, i8* %call, i64 %749
  %751 = bitcast i8* %750 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %751, align 8, !alias.scope !92, !noalias !94
  %752 = fadd fast <4 x double> %747, %743
  %753 = fmul fast <4 x double> %752, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %754 = fadd fast <4 x double> %753, %wide.load1405
  %755 = bitcast i8* %750 to <4 x double>*
  store <4 x double> %754, <4 x double>* %755, align 8, !alias.scope !92, !noalias !94
  %index.next1396 = add i64 %index1395, 4
  %756 = icmp eq i64 %index.next1396, %n.vec1394
  br i1 %756, label %middle.block1384, label %vector.body1386, !llvm.loop !177

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1398 = icmp eq i64 %370, %n.vec1394
  br i1 %cmp.n1398, label %polly.loop_exit478, label %polly.loop_header483.us.3.preheader

polly.loop_header483.us.3.preheader:              ; preds = %polly.loop_exit485.loopexit.us.2, %middle.block1384
  %polly.indvar487.us.3.ph = phi i64 [ 0, %polly.loop_exit485.loopexit.us.2 ], [ %n.vec1394, %middle.block1384 ]
  br label %polly.loop_header483.us.3

polly.loop_header483.us.3:                        ; preds = %polly.loop_header483.us.3.preheader, %polly.loop_header483.us.3
  %polly.indvar487.us.3 = phi i64 [ %polly.indvar_next488.us.3, %polly.loop_header483.us.3 ], [ %polly.indvar487.us.3.ph, %polly.loop_header483.us.3.preheader ]
  %757 = add nuw nsw i64 %polly.indvar487.us.3, %341
  %polly.access.add.Packed_MemRef_call1303491.us.3 = add nuw nsw i64 %polly.indvar487.us.3, 3600
  %polly.access.Packed_MemRef_call1303492.us.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call1303492.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_497.us.3, %_p_scalar_493.us.3
  %polly.access.add.Packed_MemRef_call2305499.us.3 = add nuw nsw i64 %757, %polly.access.mul.Packed_MemRef_call2305494.us.3
  %polly.access.Packed_MemRef_call2305500.us.3 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2305500.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_505.us.3, %_p_scalar_501.us.3
  %758 = shl i64 %757, 3
  %759 = add i64 %758, %375
  %scevgep506.us.3 = getelementptr i8, i8* %call, i64 %759
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
  %760 = add nuw nsw i64 %polly.indvar669.us.1, %504
  %polly.access.mul.call1673.us.1 = mul nsw i64 %760, 1000
  %polly.access.add.call1674.us.1 = add nuw nsw i64 %445, %polly.access.mul.call1673.us.1
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
  %polly.access.add.call1682.us.1 = or i64 %536, 1
  %polly.access.call1683.us.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.1
  %polly.access.call1683.load.us.1 = load double, double* %polly.access.call1683.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.1 = add nsw i64 %534, 1200
  %polly.access.Packed_MemRef_call1514686.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.1
  store double %polly.access.call1683.load.us.1, double* %polly.access.Packed_MemRef_call1514686.us.1, align 8
  br label %polly.loop_header665.us.2.preheader

polly.loop_header665.us.2.preheader:              ; preds = %polly.then678.us.1, %polly.cond676.loopexit.us.1
  br label %polly.loop_header665.us.2

polly.loop_header665.us.2:                        ; preds = %polly.loop_header665.us.2.preheader, %polly.loop_header665.us.2
  %polly.indvar669.us.2 = phi i64 [ %polly.indvar_next670.us.2, %polly.loop_header665.us.2 ], [ 0, %polly.loop_header665.us.2.preheader ]
  %761 = add nuw nsw i64 %polly.indvar669.us.2, %504
  %polly.access.mul.call1673.us.2 = mul nsw i64 %761, 1000
  %polly.access.add.call1674.us.2 = add nuw nsw i64 %446, %polly.access.mul.call1673.us.2
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
  %polly.access.add.call1682.us.2 = or i64 %536, 2
  %polly.access.call1683.us.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.2
  %polly.access.call1683.load.us.2 = load double, double* %polly.access.call1683.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.2 = add nsw i64 %534, 2400
  %polly.access.Packed_MemRef_call1514686.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.2
  store double %polly.access.call1683.load.us.2, double* %polly.access.Packed_MemRef_call1514686.us.2, align 8
  br label %polly.loop_header665.us.3.preheader

polly.loop_header665.us.3.preheader:              ; preds = %polly.then678.us.2, %polly.cond676.loopexit.us.2
  br label %polly.loop_header665.us.3

polly.loop_header665.us.3:                        ; preds = %polly.loop_header665.us.3.preheader, %polly.loop_header665.us.3
  %polly.indvar669.us.3 = phi i64 [ %polly.indvar_next670.us.3, %polly.loop_header665.us.3 ], [ 0, %polly.loop_header665.us.3.preheader ]
  %762 = add nuw nsw i64 %polly.indvar669.us.3, %504
  %polly.access.mul.call1673.us.3 = mul nsw i64 %762, 1000
  %polly.access.add.call1674.us.3 = add nuw nsw i64 %447, %polly.access.mul.call1673.us.3
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
  %polly.access.add.call1682.us.3 = or i64 %536, 3
  %polly.access.call1683.us.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us.3
  %polly.access.call1683.load.us.3 = load double, double* %polly.access.call1683.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1514685.us.3 = add nsw i64 %534, 3600
  %polly.access.Packed_MemRef_call1514686.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us.3
  store double %polly.access.call1683.load.us.3, double* %polly.access.Packed_MemRef_call1514686.us.3, align 8
  br label %polly.loop_header687.preheader

polly.loop_header694.us.1:                        ; preds = %polly.loop_header694.us.1.preheader, %polly.loop_header694.us.1
  %polly.indvar698.us.1 = phi i64 [ %polly.indvar_next699.us.1, %polly.loop_header694.us.1 ], [ %polly.indvar698.us.1.ph, %polly.loop_header694.us.1.preheader ]
  %763 = add nuw nsw i64 %polly.indvar698.us.1, %504
  %polly.access.add.Packed_MemRef_call1514702.us.1 = add nuw nsw i64 %polly.indvar698.us.1, 1200
  %polly.access.Packed_MemRef_call1514703.us.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call1514703.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %polly.access.add.Packed_MemRef_call2516710.us.1 = add nuw nsw i64 %763, %polly.access.mul.Packed_MemRef_call2516705.us.1
  %polly.access.Packed_MemRef_call2516711.us.1 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call2516711.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %764 = shl i64 %763, 3
  %765 = add i64 %764, %538
  %scevgep717.us.1 = getelementptr i8, i8* %call, i64 %765
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
  %polly.access.add.Packed_MemRef_call2516706.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.2, %535
  %polly.access.Packed_MemRef_call2516707.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call2516707.us.2, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.2 = add nsw i64 %534, 2400
  %polly.access.Packed_MemRef_call1514715.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call1514715.us.2, align 8
  %min.iters.check1278 = icmp ult i64 %526, 4
  br i1 %min.iters.check1278, label %polly.loop_header694.us.2.preheader, label %vector.memcheck1260

vector.memcheck1260:                              ; preds = %polly.loop_exit696.loopexit.us.1
  %bound01269 = icmp ult i8* %scevgep1262, %scevgep1268
  %bound11270 = icmp ult i8* %scevgep1266, %scevgep1265
  %found.conflict1271 = and i1 %bound01269, %bound11270
  br i1 %found.conflict1271, label %polly.loop_header694.us.2.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %vector.memcheck1260
  %n.vec1281 = and i64 %526, -4
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1275 ]
  %766 = add nuw nsw i64 %index1282, %504
  %767 = add nuw nsw i64 %index1282, 2400
  %768 = getelementptr double, double* %Packed_MemRef_call1514, i64 %767
  %769 = bitcast double* %768 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %769, align 8, !alias.scope !180
  %770 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %771 = add nuw nsw i64 %766, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %772 = getelementptr double, double* %Packed_MemRef_call2516, i64 %771
  %773 = bitcast double* %772 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %773, align 8
  %774 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %775 = shl i64 %766, 3
  %776 = add i64 %775, %538
  %777 = getelementptr i8, i8* %call, i64 %776
  %778 = bitcast i8* %777 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %778, align 8, !alias.scope !183, !noalias !185
  %779 = fadd fast <4 x double> %774, %770
  %780 = fmul fast <4 x double> %779, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %781 = fadd fast <4 x double> %780, %wide.load1292
  %782 = bitcast i8* %777 to <4 x double>*
  store <4 x double> %781, <4 x double>* %782, align 8, !alias.scope !183, !noalias !185
  %index.next1283 = add i64 %index1282, 4
  %783 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %783, label %middle.block1273, label %vector.body1275, !llvm.loop !186

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1285 = icmp eq i64 %526, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit696.loopexit.us.2, label %polly.loop_header694.us.2.preheader

polly.loop_header694.us.2.preheader:              ; preds = %vector.memcheck1260, %polly.loop_exit696.loopexit.us.1, %middle.block1273
  %polly.indvar698.us.2.ph = phi i64 [ 0, %vector.memcheck1260 ], [ 0, %polly.loop_exit696.loopexit.us.1 ], [ %n.vec1281, %middle.block1273 ]
  br label %polly.loop_header694.us.2

polly.loop_header694.us.2:                        ; preds = %polly.loop_header694.us.2.preheader, %polly.loop_header694.us.2
  %polly.indvar698.us.2 = phi i64 [ %polly.indvar_next699.us.2, %polly.loop_header694.us.2 ], [ %polly.indvar698.us.2.ph, %polly.loop_header694.us.2.preheader ]
  %784 = add nuw nsw i64 %polly.indvar698.us.2, %504
  %polly.access.add.Packed_MemRef_call1514702.us.2 = add nuw nsw i64 %polly.indvar698.us.2, 2400
  %polly.access.Packed_MemRef_call1514703.us.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call1514703.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %polly.access.add.Packed_MemRef_call2516710.us.2 = add nuw nsw i64 %784, %polly.access.mul.Packed_MemRef_call2516705.us.2
  %polly.access.Packed_MemRef_call2516711.us.2 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call2516711.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %785 = shl i64 %784, 3
  %786 = add i64 %785, %538
  %scevgep717.us.2 = getelementptr i8, i8* %call, i64 %786
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
  %polly.access.add.Packed_MemRef_call2516706.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us.3, %535
  %polly.access.Packed_MemRef_call2516707.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call2516707.us.3, align 8
  %polly.access.add.Packed_MemRef_call1514714.us.3 = add nsw i64 %534, 3600
  %polly.access.Packed_MemRef_call1514715.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call1514715.us.3, align 8
  %min.iters.check1245 = icmp ult i64 %533, 4
  br i1 %min.iters.check1245, label %polly.loop_header694.us.3.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_exit696.loopexit.us.2
  %n.vec1248 = and i64 %533, -4
  %broadcast.splatinsert1254 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1255 = shufflevector <4 x double> %broadcast.splatinsert1254, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1257 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1258 = shufflevector <4 x double> %broadcast.splatinsert1257, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1240 ]
  %787 = add nuw nsw i64 %index1249, %504
  %788 = add nuw nsw i64 %index1249, 3600
  %789 = getelementptr double, double* %Packed_MemRef_call1514, i64 %788
  %790 = bitcast double* %789 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %790, align 8
  %791 = fmul fast <4 x double> %broadcast.splat1255, %wide.load1253
  %792 = add nuw nsw i64 %787, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %793 = getelementptr double, double* %Packed_MemRef_call2516, i64 %792
  %794 = bitcast double* %793 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %794, align 8
  %795 = fmul fast <4 x double> %broadcast.splat1258, %wide.load1256
  %796 = shl i64 %787, 3
  %797 = add i64 %796, %538
  %798 = getelementptr i8, i8* %call, i64 %797
  %799 = bitcast i8* %798 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %799, align 8, !alias.scope !118, !noalias !120
  %800 = fadd fast <4 x double> %795, %791
  %801 = fmul fast <4 x double> %800, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %802 = fadd fast <4 x double> %801, %wide.load1259
  %803 = bitcast i8* %798 to <4 x double>*
  store <4 x double> %802, <4 x double>* %803, align 8, !alias.scope !118, !noalias !120
  %index.next1250 = add i64 %index1249, 4
  %804 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %804, label %middle.block1238, label %vector.body1240, !llvm.loop !188

middle.block1238:                                 ; preds = %vector.body1240
  %cmp.n1252 = icmp eq i64 %533, %n.vec1248
  br i1 %cmp.n1252, label %polly.loop_exit689, label %polly.loop_header694.us.3.preheader

polly.loop_header694.us.3.preheader:              ; preds = %polly.loop_exit696.loopexit.us.2, %middle.block1238
  %polly.indvar698.us.3.ph = phi i64 [ 0, %polly.loop_exit696.loopexit.us.2 ], [ %n.vec1248, %middle.block1238 ]
  br label %polly.loop_header694.us.3

polly.loop_header694.us.3:                        ; preds = %polly.loop_header694.us.3.preheader, %polly.loop_header694.us.3
  %polly.indvar698.us.3 = phi i64 [ %polly.indvar_next699.us.3, %polly.loop_header694.us.3 ], [ %polly.indvar698.us.3.ph, %polly.loop_header694.us.3.preheader ]
  %805 = add nuw nsw i64 %polly.indvar698.us.3, %504
  %polly.access.add.Packed_MemRef_call1514702.us.3 = add nuw nsw i64 %polly.indvar698.us.3, 3600
  %polly.access.Packed_MemRef_call1514703.us.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call1514703.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %polly.access.add.Packed_MemRef_call2516710.us.3 = add nuw nsw i64 %805, %polly.access.mul.Packed_MemRef_call2516705.us.3
  %polly.access.Packed_MemRef_call2516711.us.3 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call2516711.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %806 = shl i64 %805, 3
  %807 = add i64 %806, %538
  %scevgep717.us.3 = getelementptr i8, i8* %call, i64 %807
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
