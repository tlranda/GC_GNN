; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1335.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1335.c"
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
  %call866 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1718 = bitcast i8* %call1 to double*
  %polly.access.call1727 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2728 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1727, %call2
  %polly.access.call2747 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2747, %call1
  %2 = or i1 %0, %1
  %polly.access.call767 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call767, %call2
  %4 = icmp ule i8* %polly.access.call2747, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call767, %call1
  %8 = icmp ule i8* %polly.access.call1727, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header840, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1137 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1136 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1135 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1134 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1134, %scevgep1137
  %bound1 = icmp ult i8* %scevgep1136, %scevgep1135
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
  br i1 %exitcond18.not.i, label %vector.ph1141, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1141:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1141
  %index1142 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1141 ], [ %vec.ind.next1147, %vector.body1140 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv7.i, i64 %index1142
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1143, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1140, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1140
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1141, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit901
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start507, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1203 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1203, label %for.body3.i46.preheader1610, label %vector.ph1204

vector.ph1204:                                    ; preds = %for.body3.i46.preheader
  %n.vec1206 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1202 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %index1207
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1208 = add i64 %index1207, 4
  %46 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %46, label %middle.block1200, label %vector.body1202, !llvm.loop !18

middle.block1200:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %indvars.iv21.i, %n.vec1206
  br i1 %cmp.n1210, label %for.inc6.i, label %for.body3.i46.preheader1610

for.body3.i46.preheader1610:                      ; preds = %for.body3.i46.preheader, %middle.block1200
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1206, %middle.block1200 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1610, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1610 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1200, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting508
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1337 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1337, label %for.body3.i60.preheader1609, label %vector.ph1338

vector.ph1338:                                    ; preds = %for.body3.i60.preheader
  %n.vec1340 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1342, %vector.body1336 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %index1341
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1345, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1342 = add i64 %index1341, 4
  %57 = icmp eq i64 %index.next1342, %n.vec1340
  br i1 %57, label %middle.block1334, label %vector.body1336, !llvm.loop !56

middle.block1334:                                 ; preds = %vector.body1336
  %cmp.n1344 = icmp eq i64 %indvars.iv21.i52, %n.vec1340
  br i1 %cmp.n1344, label %for.inc6.i63, label %for.body3.i60.preheader1609

for.body3.i60.preheader1609:                      ; preds = %for.body3.i60.preheader, %middle.block1334
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1340, %middle.block1334 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1609, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1609 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1334, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1474 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1474, label %for.body3.i99.preheader1608, label %vector.ph1475

vector.ph1475:                                    ; preds = %for.body3.i99.preheader
  %n.vec1477 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1473

vector.body1473:                                  ; preds = %vector.body1473, %vector.ph1475
  %index1478 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1479, %vector.body1473 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %index1478
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1482, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1479 = add i64 %index1478, 4
  %68 = icmp eq i64 %index.next1479, %n.vec1477
  br i1 %68, label %middle.block1471, label %vector.body1473, !llvm.loop !58

middle.block1471:                                 ; preds = %vector.body1473
  %cmp.n1481 = icmp eq i64 %indvars.iv21.i91, %n.vec1477
  br i1 %cmp.n1481, label %for.inc6.i102, label %for.body3.i99.preheader1608

for.body3.i99.preheader1608:                      ; preds = %for.body3.i99.preheader, %middle.block1471
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1477, %middle.block1471 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1608, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1608 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1471, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1486 = phi i64 [ %indvar.next1487, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1486, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1488 = icmp ult i64 %88, 4
  br i1 %min.iters.check1488, label %polly.loop_header192.preheader, label %vector.ph1489

vector.ph1489:                                    ; preds = %polly.loop_header
  %n.vec1491 = and i64 %88, -4
  br label %vector.body1485

vector.body1485:                                  ; preds = %vector.body1485, %vector.ph1489
  %index1492 = phi i64 [ 0, %vector.ph1489 ], [ %index.next1493, %vector.body1485 ]
  %90 = shl nuw nsw i64 %index1492, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1496, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1493 = add i64 %index1492, 4
  %95 = icmp eq i64 %index.next1493, %n.vec1491
  br i1 %95, label %middle.block1483, label %vector.body1485, !llvm.loop !71

middle.block1483:                                 ; preds = %vector.body1485
  %cmp.n1495 = icmp eq i64 %88, %n.vec1491
  br i1 %cmp.n1495, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1483
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1491, %middle.block1483 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1483
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1487 = add i64 %indvar1486, 1
  br i1 %exitcond1052.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1051.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1051.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1050.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1521 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1522 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1552 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1553 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1583 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar219, 2
  %98 = mul nuw nsw i64 %polly.indvar219, 38400
  %99 = or i64 %98, 8
  %100 = shl nuw nsw i64 %polly.indvar219, 2
  %101 = shl nuw nsw i64 %polly.indvar219, 2
  %102 = mul nuw nsw i64 %polly.indvar219, 38400
  %103 = or i64 %102, 8
  %104 = shl nuw nsw i64 %polly.indvar219, 2
  %105 = shl nuw nsw i64 %polly.indvar219, 2
  %106 = mul nuw nsw i64 %polly.indvar219, 38400
  %107 = or i64 %106, 8
  %108 = shl nuw nsw i64 %polly.indvar219, 2
  %109 = shl nuw nsw i64 %polly.indvar219, 2
  %110 = lshr i64 %polly.indvar219, 3
  %111 = shl nsw i64 %polly.indvar219, 2
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 300
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

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
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
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
  %143 = sub nsw i64 %111, %142
  %144 = add nuw nsw i64 %142, 32
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -32
  %exitcond1046.not = icmp eq i64 %polly.indvar231, %110
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit265 ], [ %indvars.iv1036, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %145 = add i64 %120, %polly.indvar237
  %smin1592 = call i64 @llvm.smin.i64(i64 %145, i64 31)
  %146 = add nsw i64 %smin1592, 1
  %147 = mul nuw nsw i64 %polly.indvar237, 9600
  %148 = add i64 %122, %147
  %scevgep1579 = getelementptr i8, i8* %call, i64 %148
  %149 = add i64 %123, %147
  %scevgep1580 = getelementptr i8, i8* %call, i64 %149
  %150 = add i64 %125, %polly.indvar237
  %smin1581 = call i64 @llvm.smin.i64(i64 %150, i64 31)
  %151 = shl nsw i64 %smin1581, 3
  %scevgep1582 = getelementptr i8, i8* %scevgep1580, i64 %151
  %scevgep1584 = getelementptr i8, i8* %scevgep1583, i64 %151
  %152 = add i64 %127, %polly.indvar237
  %smin1562 = call i64 @llvm.smin.i64(i64 %152, i64 31)
  %153 = add nsw i64 %smin1562, 1
  %154 = mul nuw nsw i64 %polly.indvar237, 9600
  %155 = add i64 %129, %154
  %scevgep1548 = getelementptr i8, i8* %call, i64 %155
  %156 = add i64 %130, %154
  %scevgep1549 = getelementptr i8, i8* %call, i64 %156
  %157 = add i64 %132, %polly.indvar237
  %smin1550 = call i64 @llvm.smin.i64(i64 %157, i64 31)
  %158 = shl nsw i64 %smin1550, 3
  %scevgep1551 = getelementptr i8, i8* %scevgep1549, i64 %158
  %scevgep1554 = getelementptr i8, i8* %scevgep1553, i64 %158
  %159 = add i64 %134, %polly.indvar237
  %smin1531 = call i64 @llvm.smin.i64(i64 %159, i64 31)
  %160 = add nsw i64 %smin1531, 1
  %161 = mul nuw nsw i64 %polly.indvar237, 9600
  %162 = add i64 %136, %161
  %scevgep1517 = getelementptr i8, i8* %call, i64 %162
  %163 = add i64 %137, %161
  %scevgep1518 = getelementptr i8, i8* %call, i64 %163
  %164 = add i64 %139, %polly.indvar237
  %smin1519 = call i64 @llvm.smin.i64(i64 %164, i64 31)
  %165 = shl nsw i64 %smin1519, 3
  %scevgep1520 = getelementptr i8, i8* %scevgep1518, i64 %165
  %scevgep1523 = getelementptr i8, i8* %scevgep1522, i64 %165
  %166 = add i64 %141, %polly.indvar237
  %smin1500 = call i64 @llvm.smin.i64(i64 %166, i64 31)
  %167 = add nsw i64 %smin1500, 1
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 31)
  %168 = add nsw i64 %polly.indvar237, %143
  %polly.loop_guard1129 = icmp sgt i64 %168, -1
  %169 = add nuw nsw i64 %polly.indvar237, %111
  %.not = icmp ult i64 %169, %144
  %polly.access.mul.call1257 = mul nuw nsw i64 %169, 1000
  %170 = add nuw nsw i64 %polly.access.mul.call1257, %112
  br i1 %polly.loop_guard1129, label %polly.loop_header246.us, label %polly.loop_header234.split

polly.loop_header246.us:                          ; preds = %polly.loop_header234, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header234 ]
  %171 = add nuw nsw i64 %polly.indvar249.us, %142
  %polly.access.mul.call1253.us = mul nuw nsw i64 %171, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %112, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar249.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar249.us, %smin1042
  br i1 %exitcond1040.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1718, i64 %170
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
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1718, i64 %170
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %168
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %170, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %168, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %170, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %168, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %170, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %168, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_header270.us.3, %middle.block1497, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next238, 4
  br i1 %exitcond1045.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %172 = mul nuw nsw i64 %169, 9600
  br i1 %polly.loop_guard1129, label %polly.loop_header263.us.preheader, label %polly.loop_exit265

polly.loop_header263.us.preheader:                ; preds = %polly.loop_header263.preheader
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %169
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %168
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1593 = icmp ult i64 %146, 4
  br i1 %min.iters.check1593, label %polly.loop_header270.us.preheader, label %vector.memcheck1578

vector.memcheck1578:                              ; preds = %polly.loop_header263.us.preheader
  %bound01585 = icmp ult i8* %scevgep1579, %scevgep1584
  %bound11586 = icmp ult i8* %malloccall, %scevgep1582
  %found.conflict1587 = and i1 %bound01585, %bound11586
  br i1 %found.conflict1587, label %polly.loop_header270.us.preheader, label %vector.ph1594

vector.ph1594:                                    ; preds = %vector.memcheck1578
  %n.vec1596 = and i64 %146, -4
  %broadcast.splatinsert1602 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1603 = shufflevector <4 x double> %broadcast.splatinsert1602, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1605 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1606 = shufflevector <4 x double> %broadcast.splatinsert1605, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1591

vector.body1591:                                  ; preds = %vector.body1591, %vector.ph1594
  %index1597 = phi i64 [ 0, %vector.ph1594 ], [ %index.next1598, %vector.body1591 ]
  %173 = add nuw nsw i64 %index1597, %142
  %174 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1597
  %175 = bitcast double* %174 to <4 x double>*
  %wide.load1601 = load <4 x double>, <4 x double>* %175, align 8, !alias.scope !76
  %176 = fmul fast <4 x double> %broadcast.splat1603, %wide.load1601
  %177 = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call2281.us
  %178 = getelementptr double, double* %Packed_MemRef_call2, i64 %177
  %179 = bitcast double* %178 to <4 x double>*
  %wide.load1604 = load <4 x double>, <4 x double>* %179, align 8
  %180 = fmul fast <4 x double> %broadcast.splat1606, %wide.load1604
  %181 = shl i64 %173, 3
  %182 = add nuw nsw i64 %181, %172
  %183 = getelementptr i8, i8* %call, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1607 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !79, !noalias !81
  %185 = fadd fast <4 x double> %180, %176
  %186 = fmul fast <4 x double> %185, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %187 = fadd fast <4 x double> %186, %wide.load1607
  %188 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !79, !noalias !81
  %index.next1598 = add i64 %index1597, 4
  %189 = icmp eq i64 %index.next1598, %n.vec1596
  br i1 %189, label %middle.block1589, label %vector.body1591, !llvm.loop !82

middle.block1589:                                 ; preds = %vector.body1591
  %cmp.n1600 = icmp eq i64 %146, %n.vec1596
  br i1 %cmp.n1600, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1578, %polly.loop_header263.us.preheader, %middle.block1589
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1578 ], [ 0, %polly.loop_header263.us.preheader ], [ %n.vec1596, %middle.block1589 ]
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
  %exitcond1043.not = icmp eq i64 %polly.indvar274.us, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !83

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1589
  %polly.access.add.Packed_MemRef_call2282.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.1, %169
  %polly.access.Packed_MemRef_call2283.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call2283.us.1, align 8
  %polly.access.add.Packed_MemRef_call1290.us.1 = add nsw i64 %168, 1200
  %polly.access.Packed_MemRef_call1291.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call1291.us.1, align 8
  %min.iters.check1563 = icmp ult i64 %153, 4
  br i1 %min.iters.check1563, label %polly.loop_header270.us.1.preheader, label %vector.memcheck1547

vector.memcheck1547:                              ; preds = %polly.loop_exit272.loopexit.us
  %bound01555 = icmp ult i8* %scevgep1548, %scevgep1554
  %bound11556 = icmp ult i8* %scevgep1552, %scevgep1551
  %found.conflict1557 = and i1 %bound01555, %bound11556
  br i1 %found.conflict1557, label %polly.loop_header270.us.1.preheader, label %vector.ph1564

vector.ph1564:                                    ; preds = %vector.memcheck1547
  %n.vec1566 = and i64 %153, -4
  %broadcast.splatinsert1572 = insertelement <4 x double> poison, double %_p_scalar_284.us.1, i32 0
  %broadcast.splat1573 = shufflevector <4 x double> %broadcast.splatinsert1572, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1575 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1576 = shufflevector <4 x double> %broadcast.splatinsert1575, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1561

vector.body1561:                                  ; preds = %vector.body1561, %vector.ph1564
  %index1567 = phi i64 [ 0, %vector.ph1564 ], [ %index.next1568, %vector.body1561 ]
  %193 = add nuw nsw i64 %index1567, %142
  %194 = add nuw nsw i64 %index1567, 1200
  %195 = getelementptr double, double* %Packed_MemRef_call1, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1571 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !84
  %197 = fmul fast <4 x double> %broadcast.splat1573, %wide.load1571
  %198 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2281.us.1
  %199 = getelementptr double, double* %Packed_MemRef_call2, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1574 = load <4 x double>, <4 x double>* %200, align 8
  %201 = fmul fast <4 x double> %broadcast.splat1576, %wide.load1574
  %202 = shl i64 %193, 3
  %203 = add nuw nsw i64 %202, %172
  %204 = getelementptr i8, i8* %call, i64 %203
  %205 = bitcast i8* %204 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %205, align 8, !alias.scope !87, !noalias !89
  %206 = fadd fast <4 x double> %201, %197
  %207 = fmul fast <4 x double> %206, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %208 = fadd fast <4 x double> %207, %wide.load1577
  %209 = bitcast i8* %204 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !87, !noalias !89
  %index.next1568 = add i64 %index1567, 4
  %210 = icmp eq i64 %index.next1568, %n.vec1566
  br i1 %210, label %middle.block1559, label %vector.body1561, !llvm.loop !90

middle.block1559:                                 ; preds = %vector.body1561
  %cmp.n1570 = icmp eq i64 %153, %n.vec1566
  br i1 %cmp.n1570, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1.preheader

polly.loop_header270.us.1.preheader:              ; preds = %vector.memcheck1547, %polly.loop_exit272.loopexit.us, %middle.block1559
  %polly.indvar274.us.1.ph = phi i64 [ 0, %vector.memcheck1547 ], [ 0, %polly.loop_exit272.loopexit.us ], [ %n.vec1566, %middle.block1559 ]
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
  %indvar1349 = phi i64 [ %indvar.next1350, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %211 = add i64 %indvar1349, 1
  %212 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %212
  %min.iters.check1351 = icmp ult i64 %211, 4
  br i1 %min.iters.check1351, label %polly.loop_header392.preheader, label %vector.ph1352

vector.ph1352:                                    ; preds = %polly.loop_header386
  %n.vec1354 = and i64 %211, -4
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1352
  %index1355 = phi i64 [ 0, %vector.ph1352 ], [ %index.next1356, %vector.body1348 ]
  %213 = shl nuw nsw i64 %index1355, 3
  %214 = getelementptr i8, i8* %scevgep398, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  %wide.load1359 = load <4 x double>, <4 x double>* %215, align 8, !alias.scope !91, !noalias !93
  %216 = fmul fast <4 x double> %wide.load1359, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %217 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %216, <4 x double>* %217, align 8, !alias.scope !91, !noalias !93
  %index.next1356 = add i64 %index1355, 4
  %218 = icmp eq i64 %index.next1356, %n.vec1354
  br i1 %218, label %middle.block1346, label %vector.body1348, !llvm.loop !98

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1358 = icmp eq i64 %211, %n.vec1354
  br i1 %cmp.n1358, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1346
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1354, %middle.block1346 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1346
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1350 = add i64 %indvar1349, 1
  br i1 %exitcond1073.not, label %polly.loop_header402.preheader, label %polly.loop_header386

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
  %exitcond1072.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1072.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !99

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1071.not, label %polly.loop_header418.preheader, label %polly.loop_header402

polly.loop_header418.preheader:                   ; preds = %polly.loop_exit410
  %scevgep1384 = getelementptr i8, i8* %malloccall300, i64 19200
  %scevgep1385 = getelementptr i8, i8* %malloccall300, i64 19208
  %scevgep1415 = getelementptr i8, i8* %malloccall300, i64 9600
  %scevgep1416 = getelementptr i8, i8* %malloccall300, i64 9608
  %scevgep1446 = getelementptr i8, i8* %malloccall300, i64 8
  br label %polly.loop_header418

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1070.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_header418.preheader, %polly.loop_exit426
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %220 = shl nuw nsw i64 %polly.indvar421, 2
  %221 = mul nuw nsw i64 %polly.indvar421, 38400
  %222 = or i64 %221, 8
  %223 = shl nuw nsw i64 %polly.indvar421, 2
  %224 = shl nuw nsw i64 %polly.indvar421, 2
  %225 = mul nuw nsw i64 %polly.indvar421, 38400
  %226 = or i64 %225, 8
  %227 = shl nuw nsw i64 %polly.indvar421, 2
  %228 = shl nuw nsw i64 %polly.indvar421, 2
  %229 = mul nuw nsw i64 %polly.indvar421, 38400
  %230 = or i64 %229, 8
  %231 = shl nuw nsw i64 %polly.indvar421, 2
  %232 = shl nuw nsw i64 %polly.indvar421, 2
  %233 = lshr i64 %polly.indvar421, 3
  %234 = shl nsw i64 %polly.indvar421, 2
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit433
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 4
  %exitcond1069.not = icmp eq i64 %polly.indvar_next422, 300
  br i1 %exitcond1069.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit433, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit433 ]
  %235 = shl nsw i64 %polly.indvar427, 2
  %236 = or i64 %235, 1
  %237 = or i64 %235, 2
  %238 = or i64 %235, 3
  %polly.access.mul.Packed_MemRef_call2303490.us = mul nsw i64 %polly.indvar427, 4800
  %239 = or i64 %235, 1
  %polly.access.mul.Packed_MemRef_call2303490.us.1 = mul nuw nsw i64 %239, 1200
  %240 = or i64 %235, 2
  %polly.access.mul.Packed_MemRef_call2303490.us.2 = mul nuw nsw i64 %240, 1200
  %241 = or i64 %235, 3
  %polly.access.mul.Packed_MemRef_call2303490.us.3 = mul nuw nsw i64 %241, 1200
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit439
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next428, 250
  br i1 %exitcond1068.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header431:                             ; preds = %polly.loop_exit439, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit439 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit439 ], [ 0, %polly.loop_header424 ]
  %242 = mul nsw i64 %polly.indvar434, -32
  %243 = add i64 %220, %242
  %244 = shl nuw nsw i64 %polly.indvar434, 8
  %245 = add nuw i64 %221, %244
  %246 = add nuw i64 %222, %244
  %247 = mul nsw i64 %polly.indvar434, -32
  %248 = add i64 %223, %247
  %249 = mul nsw i64 %polly.indvar434, -32
  %250 = add i64 %224, %249
  %251 = shl nuw nsw i64 %polly.indvar434, 8
  %252 = add nuw i64 %225, %251
  %253 = add nuw i64 %226, %251
  %254 = mul nsw i64 %polly.indvar434, -32
  %255 = add i64 %227, %254
  %256 = mul nsw i64 %polly.indvar434, -32
  %257 = add i64 %228, %256
  %258 = shl nuw nsw i64 %polly.indvar434, 8
  %259 = add nuw i64 %229, %258
  %260 = add nuw i64 %230, %258
  %261 = mul nsw i64 %polly.indvar434, -32
  %262 = add i64 %231, %261
  %263 = mul nsw i64 %polly.indvar434, -32
  %264 = add i64 %232, %263
  %265 = shl nsw i64 %polly.indvar434, 5
  %266 = sub nsw i64 %234, %265
  %267 = add nuw nsw i64 %265, 32
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit474
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar434, %233
  br i1 %exitcond1067.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit474, %polly.loop_header431
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit474 ], [ %indvars.iv1056, %polly.loop_header431 ]
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit474 ], [ 0, %polly.loop_header431 ]
  %268 = add i64 %243, %polly.indvar440
  %smin1455 = call i64 @llvm.smin.i64(i64 %268, i64 31)
  %269 = add nsw i64 %smin1455, 1
  %270 = mul nuw nsw i64 %polly.indvar440, 9600
  %271 = add i64 %245, %270
  %scevgep1442 = getelementptr i8, i8* %call, i64 %271
  %272 = add i64 %246, %270
  %scevgep1443 = getelementptr i8, i8* %call, i64 %272
  %273 = add i64 %248, %polly.indvar440
  %smin1444 = call i64 @llvm.smin.i64(i64 %273, i64 31)
  %274 = shl nsw i64 %smin1444, 3
  %scevgep1445 = getelementptr i8, i8* %scevgep1443, i64 %274
  %scevgep1447 = getelementptr i8, i8* %scevgep1446, i64 %274
  %275 = add i64 %250, %polly.indvar440
  %smin1425 = call i64 @llvm.smin.i64(i64 %275, i64 31)
  %276 = add nsw i64 %smin1425, 1
  %277 = mul nuw nsw i64 %polly.indvar440, 9600
  %278 = add i64 %252, %277
  %scevgep1411 = getelementptr i8, i8* %call, i64 %278
  %279 = add i64 %253, %277
  %scevgep1412 = getelementptr i8, i8* %call, i64 %279
  %280 = add i64 %255, %polly.indvar440
  %smin1413 = call i64 @llvm.smin.i64(i64 %280, i64 31)
  %281 = shl nsw i64 %smin1413, 3
  %scevgep1414 = getelementptr i8, i8* %scevgep1412, i64 %281
  %scevgep1417 = getelementptr i8, i8* %scevgep1416, i64 %281
  %282 = add i64 %257, %polly.indvar440
  %smin1394 = call i64 @llvm.smin.i64(i64 %282, i64 31)
  %283 = add nsw i64 %smin1394, 1
  %284 = mul nuw nsw i64 %polly.indvar440, 9600
  %285 = add i64 %259, %284
  %scevgep1380 = getelementptr i8, i8* %call, i64 %285
  %286 = add i64 %260, %284
  %scevgep1381 = getelementptr i8, i8* %call, i64 %286
  %287 = add i64 %262, %polly.indvar440
  %smin1382 = call i64 @llvm.smin.i64(i64 %287, i64 31)
  %288 = shl nsw i64 %smin1382, 3
  %scevgep1383 = getelementptr i8, i8* %scevgep1381, i64 %288
  %scevgep1386 = getelementptr i8, i8* %scevgep1385, i64 %288
  %289 = add i64 %264, %polly.indvar440
  %smin1363 = call i64 @llvm.smin.i64(i64 %289, i64 31)
  %290 = add nsw i64 %smin1363, 1
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 31)
  %291 = add nsw i64 %polly.indvar440, %266
  %polly.loop_guard4531130 = icmp sgt i64 %291, -1
  %292 = add nuw nsw i64 %polly.indvar440, %234
  %.not920 = icmp ult i64 %292, %267
  %polly.access.mul.call1466 = mul nuw nsw i64 %292, 1000
  %293 = add nuw nsw i64 %polly.access.mul.call1466, %235
  br i1 %polly.loop_guard4531130, label %polly.loop_header450.us, label %polly.loop_header437.split

polly.loop_header450.us:                          ; preds = %polly.loop_header437, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header437 ]
  %294 = add nuw nsw i64 %polly.indvar454.us, %265
  %polly.access.mul.call1458.us = mul nuw nsw i64 %294, 1000
  %polly.access.add.call1459.us = add nuw nsw i64 %235, %polly.access.mul.call1458.us
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar454.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar454.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond461.loopexit.us, label %polly.loop_header450.us

polly.then463.us:                                 ; preds = %polly.cond461.loopexit.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1718, i64 %293
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301471.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %291
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1301471.us, align 8
  br label %polly.loop_header450.us.1.preheader

polly.cond461.loopexit.us:                        ; preds = %polly.loop_header450.us
  br i1 %.not920, label %polly.loop_header450.us.1.preheader, label %polly.then463.us

polly.loop_header450.us.1.preheader:              ; preds = %polly.then463.us, %polly.cond461.loopexit.us
  br label %polly.loop_header450.us.1

polly.loop_header437.split:                       ; preds = %polly.loop_header437
  br i1 %.not920, label %polly.loop_exit474, label %polly.loop_header443.preheader

polly.loop_header443.preheader:                   ; preds = %polly.loop_header437.split
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1718, i64 %293
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301471 = getelementptr double, double* %Packed_MemRef_call1301, i64 %291
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1301471, align 8
  %polly.access.add.call1467.1 = or i64 %293, 1
  %polly.access.call1468.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.1
  %polly.access.call1468.load.1 = load double, double* %polly.access.call1468.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301470.1 = add nsw i64 %291, 1200
  %polly.access.Packed_MemRef_call1301471.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.1
  store double %polly.access.call1468.load.1, double* %polly.access.Packed_MemRef_call1301471.1, align 8
  %polly.access.add.call1467.2 = or i64 %293, 2
  %polly.access.call1468.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.2
  %polly.access.call1468.load.2 = load double, double* %polly.access.call1468.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301470.2 = add nsw i64 %291, 2400
  %polly.access.Packed_MemRef_call1301471.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.2
  store double %polly.access.call1468.load.2, double* %polly.access.Packed_MemRef_call1301471.2, align 8
  %polly.access.add.call1467.3 = or i64 %293, 3
  %polly.access.call1468.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.3
  %polly.access.call1468.load.3 = load double, double* %polly.access.call1468.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301470.3 = add nsw i64 %291, 3600
  %polly.access.Packed_MemRef_call1301471.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.3
  store double %polly.access.call1468.load.3, double* %polly.access.Packed_MemRef_call1301471.3, align 8
  br label %polly.loop_exit474

polly.loop_exit474:                               ; preds = %polly.loop_header479.us.3, %middle.block1360, %polly.loop_header437.split, %polly.loop_header443.preheader, %polly.loop_header472.preheader
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next441, 4
  br i1 %exitcond1066.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header472.preheader:                   ; preds = %polly.cond461.loopexit.us.3, %polly.then463.us.3
  %295 = mul nuw nsw i64 %292, 9600
  br i1 %polly.loop_guard4531130, label %polly.loop_header472.us.preheader, label %polly.loop_exit474

polly.loop_header472.us.preheader:                ; preds = %polly.loop_header472.preheader
  %polly.access.add.Packed_MemRef_call2303491.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us, %292
  %polly.access.Packed_MemRef_call2303492.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2303492.us, align 8
  %polly.access.Packed_MemRef_call1301500.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %291
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call1301500.us, align 8
  %min.iters.check1456 = icmp ult i64 %269, 4
  br i1 %min.iters.check1456, label %polly.loop_header479.us.preheader, label %vector.memcheck1441

vector.memcheck1441:                              ; preds = %polly.loop_header472.us.preheader
  %bound01448 = icmp ult i8* %scevgep1442, %scevgep1447
  %bound11449 = icmp ult i8* %malloccall300, %scevgep1445
  %found.conflict1450 = and i1 %bound01448, %bound11449
  br i1 %found.conflict1450, label %polly.loop_header479.us.preheader, label %vector.ph1457

vector.ph1457:                                    ; preds = %vector.memcheck1441
  %n.vec1459 = and i64 %269, -4
  %broadcast.splatinsert1465 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1466 = shufflevector <4 x double> %broadcast.splatinsert1465, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1468 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1469 = shufflevector <4 x double> %broadcast.splatinsert1468, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1457
  %index1460 = phi i64 [ 0, %vector.ph1457 ], [ %index.next1461, %vector.body1454 ]
  %296 = add nuw nsw i64 %index1460, %265
  %297 = getelementptr double, double* %Packed_MemRef_call1301, i64 %index1460
  %298 = bitcast double* %297 to <4 x double>*
  %wide.load1464 = load <4 x double>, <4 x double>* %298, align 8, !alias.scope !102
  %299 = fmul fast <4 x double> %broadcast.splat1466, %wide.load1464
  %300 = add nuw nsw i64 %296, %polly.access.mul.Packed_MemRef_call2303490.us
  %301 = getelementptr double, double* %Packed_MemRef_call2303, i64 %300
  %302 = bitcast double* %301 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %302, align 8
  %303 = fmul fast <4 x double> %broadcast.splat1469, %wide.load1467
  %304 = shl i64 %296, 3
  %305 = add nuw nsw i64 %304, %295
  %306 = getelementptr i8, i8* %call, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  %wide.load1470 = load <4 x double>, <4 x double>* %307, align 8, !alias.scope !105, !noalias !107
  %308 = fadd fast <4 x double> %303, %299
  %309 = fmul fast <4 x double> %308, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %310 = fadd fast <4 x double> %309, %wide.load1470
  %311 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %310, <4 x double>* %311, align 8, !alias.scope !105, !noalias !107
  %index.next1461 = add i64 %index1460, 4
  %312 = icmp eq i64 %index.next1461, %n.vec1459
  br i1 %312, label %middle.block1452, label %vector.body1454, !llvm.loop !108

middle.block1452:                                 ; preds = %vector.body1454
  %cmp.n1463 = icmp eq i64 %269, %n.vec1459
  br i1 %cmp.n1463, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us.preheader

polly.loop_header479.us.preheader:                ; preds = %vector.memcheck1441, %polly.loop_header472.us.preheader, %middle.block1452
  %polly.indvar483.us.ph = phi i64 [ 0, %vector.memcheck1441 ], [ 0, %polly.loop_header472.us.preheader ], [ %n.vec1459, %middle.block1452 ]
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header479.us.preheader, %polly.loop_header479.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_header479.us ], [ %polly.indvar483.us.ph, %polly.loop_header479.us.preheader ]
  %313 = add nuw nsw i64 %polly.indvar483.us, %265
  %polly.access.Packed_MemRef_call1301488.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar483.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1301488.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %polly.access.add.Packed_MemRef_call2303495.us = add nuw nsw i64 %313, %polly.access.mul.Packed_MemRef_call2303490.us
  %polly.access.Packed_MemRef_call2303496.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2303496.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %314 = shl i64 %313, 3
  %315 = add nuw nsw i64 %314, %295
  %scevgep502.us = getelementptr i8, i8* %call, i64 %315
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_504.us
  store double %p_add42.i79.us, double* %scevgep502503.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar483.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us, !llvm.loop !109

polly.loop_exit481.loopexit.us:                   ; preds = %polly.loop_header479.us, %middle.block1452
  %polly.access.add.Packed_MemRef_call2303491.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us.1, %292
  %polly.access.Packed_MemRef_call2303492.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call2303492.us.1, align 8
  %polly.access.add.Packed_MemRef_call1301499.us.1 = add nsw i64 %291, 1200
  %polly.access.Packed_MemRef_call1301500.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call1301500.us.1, align 8
  %min.iters.check1426 = icmp ult i64 %276, 4
  br i1 %min.iters.check1426, label %polly.loop_header479.us.1.preheader, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %polly.loop_exit481.loopexit.us
  %bound01418 = icmp ult i8* %scevgep1411, %scevgep1417
  %bound11419 = icmp ult i8* %scevgep1415, %scevgep1414
  %found.conflict1420 = and i1 %bound01418, %bound11419
  br i1 %found.conflict1420, label %polly.loop_header479.us.1.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %vector.memcheck1410
  %n.vec1429 = and i64 %276, -4
  %broadcast.splatinsert1435 = insertelement <4 x double> poison, double %_p_scalar_493.us.1, i32 0
  %broadcast.splat1436 = shufflevector <4 x double> %broadcast.splatinsert1435, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1438 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1439 = shufflevector <4 x double> %broadcast.splatinsert1438, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1431, %vector.body1424 ]
  %316 = add nuw nsw i64 %index1430, %265
  %317 = add nuw nsw i64 %index1430, 1200
  %318 = getelementptr double, double* %Packed_MemRef_call1301, i64 %317
  %319 = bitcast double* %318 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %319, align 8, !alias.scope !110
  %320 = fmul fast <4 x double> %broadcast.splat1436, %wide.load1434
  %321 = add nuw nsw i64 %316, %polly.access.mul.Packed_MemRef_call2303490.us.1
  %322 = getelementptr double, double* %Packed_MemRef_call2303, i64 %321
  %323 = bitcast double* %322 to <4 x double>*
  %wide.load1437 = load <4 x double>, <4 x double>* %323, align 8
  %324 = fmul fast <4 x double> %broadcast.splat1439, %wide.load1437
  %325 = shl i64 %316, 3
  %326 = add nuw nsw i64 %325, %295
  %327 = getelementptr i8, i8* %call, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %328, align 8, !alias.scope !113, !noalias !115
  %329 = fadd fast <4 x double> %324, %320
  %330 = fmul fast <4 x double> %329, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %331 = fadd fast <4 x double> %330, %wide.load1440
  %332 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %331, <4 x double>* %332, align 8, !alias.scope !113, !noalias !115
  %index.next1431 = add i64 %index1430, 4
  %333 = icmp eq i64 %index.next1431, %n.vec1429
  br i1 %333, label %middle.block1422, label %vector.body1424, !llvm.loop !116

middle.block1422:                                 ; preds = %vector.body1424
  %cmp.n1433 = icmp eq i64 %276, %n.vec1429
  br i1 %cmp.n1433, label %polly.loop_exit481.loopexit.us.1, label %polly.loop_header479.us.1.preheader

polly.loop_header479.us.1.preheader:              ; preds = %vector.memcheck1410, %polly.loop_exit481.loopexit.us, %middle.block1422
  %polly.indvar483.us.1.ph = phi i64 [ 0, %vector.memcheck1410 ], [ 0, %polly.loop_exit481.loopexit.us ], [ %n.vec1429, %middle.block1422 ]
  br label %polly.loop_header479.us.1

polly.start507:                                   ; preds = %init_array.exit
  %malloccall509 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall511 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header595

polly.exiting508:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall509)
  tail call void @free(i8* %malloccall511)
  br label %kernel_syr2k.exit

polly.loop_header595:                             ; preds = %polly.loop_exit603, %polly.start507
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit603 ], [ 0, %polly.start507 ]
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit603 ], [ 1, %polly.start507 ]
  %334 = add i64 %indvar, 1
  %335 = mul nuw nsw i64 %polly.indvar598, 9600
  %scevgep607 = getelementptr i8, i8* %call, i64 %335
  %min.iters.check1214 = icmp ult i64 %334, 4
  br i1 %min.iters.check1214, label %polly.loop_header601.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header595
  %n.vec1217 = and i64 %334, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %336 = shl nuw nsw i64 %index1218, 3
  %337 = getelementptr i8, i8* %scevgep607, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  %wide.load1222 = load <4 x double>, <4 x double>* %338, align 8, !alias.scope !117, !noalias !119
  %339 = fmul fast <4 x double> %wide.load1222, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %340 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %339, <4 x double>* %340, align 8, !alias.scope !117, !noalias !119
  %index.next1219 = add i64 %index1218, 4
  %341 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %341, label %middle.block1211, label %vector.body1213, !llvm.loop !124

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %334, %n.vec1217
  br i1 %cmp.n1221, label %polly.loop_exit603, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header595, %middle.block1211
  %polly.indvar604.ph = phi i64 [ 0, %polly.loop_header595 ], [ %n.vec1217, %middle.block1211 ]
  br label %polly.loop_header601

polly.loop_exit603:                               ; preds = %polly.loop_header601, %middle.block1211
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next599, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1094.not, label %polly.loop_header611.preheader, label %polly.loop_header595

polly.loop_header611.preheader:                   ; preds = %polly.loop_exit603
  %Packed_MemRef_call1510 = bitcast i8* %malloccall509 to double*
  %Packed_MemRef_call2512 = bitcast i8* %malloccall511 to double*
  br label %polly.loop_header611

polly.loop_header601:                             ; preds = %polly.loop_header601.preheader, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ %polly.indvar604.ph, %polly.loop_header601.preheader ]
  %342 = shl nuw nsw i64 %polly.indvar604, 3
  %scevgep608 = getelementptr i8, i8* %scevgep607, i64 %342
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !117, !noalias !119
  %p_mul.i = fmul fast double %_p_scalar_610, 1.200000e+00
  store double %p_mul.i, double* %scevgep608609, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next605, %polly.indvar598
  br i1 %exitcond1093.not, label %polly.loop_exit603, label %polly.loop_header601, !llvm.loop !125

polly.loop_header611:                             ; preds = %polly.loop_header611.preheader, %polly.loop_exit619
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 0, %polly.loop_header611.preheader ]
  %polly.access.mul.Packed_MemRef_call2512 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next615, 1000
  br i1 %exitcond1092.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %scevgep1247 = getelementptr i8, i8* %malloccall509, i64 19200
  %scevgep1248 = getelementptr i8, i8* %malloccall509, i64 19208
  %scevgep1278 = getelementptr i8, i8* %malloccall509, i64 9600
  %scevgep1279 = getelementptr i8, i8* %malloccall509, i64 9608
  %scevgep1309 = getelementptr i8, i8* %malloccall509, i64 8
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617, %polly.loop_header611
  %polly.indvar620 = phi i64 [ 0, %polly.loop_header611 ], [ %polly.indvar_next621, %polly.loop_header617 ]
  %polly.access.mul.call2624 = mul nuw nsw i64 %polly.indvar620, 1000
  %polly.access.add.call2625 = add nuw nsw i64 %polly.access.mul.call2624, %polly.indvar614
  %polly.access.call2626 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2625
  %polly.access.call2626.load = load double, double* %polly.access.call2626, align 8, !alias.scope !121, !noalias !126
  %polly.access.add.Packed_MemRef_call2512 = add nuw nsw i64 %polly.indvar620, %polly.access.mul.Packed_MemRef_call2512
  %polly.access.Packed_MemRef_call2512 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512
  store double %polly.access.call2626.load, double* %polly.access.Packed_MemRef_call2512, align 8
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next621, 1200
  br i1 %exitcond1091.not, label %polly.loop_exit619, label %polly.loop_header617

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %343 = shl nuw nsw i64 %polly.indvar630, 2
  %344 = mul nuw nsw i64 %polly.indvar630, 38400
  %345 = or i64 %344, 8
  %346 = shl nuw nsw i64 %polly.indvar630, 2
  %347 = shl nuw nsw i64 %polly.indvar630, 2
  %348 = mul nuw nsw i64 %polly.indvar630, 38400
  %349 = or i64 %348, 8
  %350 = shl nuw nsw i64 %polly.indvar630, 2
  %351 = shl nuw nsw i64 %polly.indvar630, 2
  %352 = mul nuw nsw i64 %polly.indvar630, 38400
  %353 = or i64 %352, 8
  %354 = shl nuw nsw i64 %polly.indvar630, 2
  %355 = shl nuw nsw i64 %polly.indvar630, 2
  %356 = lshr i64 %polly.indvar630, 3
  %357 = shl nsw i64 %polly.indvar630, 2
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit642
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 4
  %exitcond1090.not = icmp eq i64 %polly.indvar_next631, 300
  br i1 %exitcond1090.not, label %polly.exiting508, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit642, %polly.loop_header627
  %polly.indvar636 = phi i64 [ 0, %polly.loop_header627 ], [ %polly.indvar_next637, %polly.loop_exit642 ]
  %358 = shl nsw i64 %polly.indvar636, 2
  %359 = or i64 %358, 1
  %360 = or i64 %358, 2
  %361 = or i64 %358, 3
  %polly.access.mul.Packed_MemRef_call2512699.us = mul nsw i64 %polly.indvar636, 4800
  %362 = or i64 %358, 1
  %polly.access.mul.Packed_MemRef_call2512699.us.1 = mul nuw nsw i64 %362, 1200
  %363 = or i64 %358, 2
  %polly.access.mul.Packed_MemRef_call2512699.us.2 = mul nuw nsw i64 %363, 1200
  %364 = or i64 %358, 3
  %polly.access.mul.Packed_MemRef_call2512699.us.3 = mul nuw nsw i64 %364, 1200
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_exit648
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next637, 250
  br i1 %exitcond1089.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.loop_header633
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit648 ], [ %indvars.iv1075, %polly.loop_header633 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 0, %polly.loop_header633 ]
  %365 = mul nsw i64 %polly.indvar643, -32
  %366 = add i64 %343, %365
  %367 = shl nuw nsw i64 %polly.indvar643, 8
  %368 = add nuw i64 %344, %367
  %369 = add nuw i64 %345, %367
  %370 = mul nsw i64 %polly.indvar643, -32
  %371 = add i64 %346, %370
  %372 = mul nsw i64 %polly.indvar643, -32
  %373 = add i64 %347, %372
  %374 = shl nuw nsw i64 %polly.indvar643, 8
  %375 = add nuw i64 %348, %374
  %376 = add nuw i64 %349, %374
  %377 = mul nsw i64 %polly.indvar643, -32
  %378 = add i64 %350, %377
  %379 = mul nsw i64 %polly.indvar643, -32
  %380 = add i64 %351, %379
  %381 = shl nuw nsw i64 %polly.indvar643, 8
  %382 = add nuw i64 %352, %381
  %383 = add nuw i64 %353, %381
  %384 = mul nsw i64 %polly.indvar643, -32
  %385 = add i64 %354, %384
  %386 = mul nsw i64 %polly.indvar643, -32
  %387 = add i64 %355, %386
  %388 = shl nsw i64 %polly.indvar643, 5
  %389 = sub nsw i64 %357, %388
  %390 = add nuw nsw i64 %388, 32
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit683
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar643, %356
  br i1 %exitcond1088.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header646:                             ; preds = %polly.loop_exit683, %polly.loop_header640
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit683 ], [ %indvars.iv1077, %polly.loop_header640 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit683 ], [ 0, %polly.loop_header640 ]
  %391 = add i64 %366, %polly.indvar649
  %smin1318 = call i64 @llvm.smin.i64(i64 %391, i64 31)
  %392 = add nsw i64 %smin1318, 1
  %393 = mul nuw nsw i64 %polly.indvar649, 9600
  %394 = add i64 %368, %393
  %scevgep1305 = getelementptr i8, i8* %call, i64 %394
  %395 = add i64 %369, %393
  %scevgep1306 = getelementptr i8, i8* %call, i64 %395
  %396 = add i64 %371, %polly.indvar649
  %smin1307 = call i64 @llvm.smin.i64(i64 %396, i64 31)
  %397 = shl nsw i64 %smin1307, 3
  %scevgep1308 = getelementptr i8, i8* %scevgep1306, i64 %397
  %scevgep1310 = getelementptr i8, i8* %scevgep1309, i64 %397
  %398 = add i64 %373, %polly.indvar649
  %smin1288 = call i64 @llvm.smin.i64(i64 %398, i64 31)
  %399 = add nsw i64 %smin1288, 1
  %400 = mul nuw nsw i64 %polly.indvar649, 9600
  %401 = add i64 %375, %400
  %scevgep1274 = getelementptr i8, i8* %call, i64 %401
  %402 = add i64 %376, %400
  %scevgep1275 = getelementptr i8, i8* %call, i64 %402
  %403 = add i64 %378, %polly.indvar649
  %smin1276 = call i64 @llvm.smin.i64(i64 %403, i64 31)
  %404 = shl nsw i64 %smin1276, 3
  %scevgep1277 = getelementptr i8, i8* %scevgep1275, i64 %404
  %scevgep1280 = getelementptr i8, i8* %scevgep1279, i64 %404
  %405 = add i64 %380, %polly.indvar649
  %smin1257 = call i64 @llvm.smin.i64(i64 %405, i64 31)
  %406 = add nsw i64 %smin1257, 1
  %407 = mul nuw nsw i64 %polly.indvar649, 9600
  %408 = add i64 %382, %407
  %scevgep1243 = getelementptr i8, i8* %call, i64 %408
  %409 = add i64 %383, %407
  %scevgep1244 = getelementptr i8, i8* %call, i64 %409
  %410 = add i64 %385, %polly.indvar649
  %smin1245 = call i64 @llvm.smin.i64(i64 %410, i64 31)
  %411 = shl nsw i64 %smin1245, 3
  %scevgep1246 = getelementptr i8, i8* %scevgep1244, i64 %411
  %scevgep1249 = getelementptr i8, i8* %scevgep1248, i64 %411
  %412 = add i64 %387, %polly.indvar649
  %smin1226 = call i64 @llvm.smin.i64(i64 %412, i64 31)
  %413 = add nsw i64 %smin1226, 1
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 31)
  %414 = add nsw i64 %polly.indvar649, %389
  %polly.loop_guard6621131 = icmp sgt i64 %414, -1
  %415 = add nuw nsw i64 %polly.indvar649, %357
  %.not921 = icmp ult i64 %415, %390
  %polly.access.mul.call1675 = mul nuw nsw i64 %415, 1000
  %416 = add nuw nsw i64 %polly.access.mul.call1675, %358
  br i1 %polly.loop_guard6621131, label %polly.loop_header659.us, label %polly.loop_header646.split

polly.loop_header659.us:                          ; preds = %polly.loop_header646, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header646 ]
  %417 = add nuw nsw i64 %polly.indvar663.us, %388
  %polly.access.mul.call1667.us = mul nuw nsw i64 %417, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %358, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1510.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.indvar663.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1510.us, align 8
  %polly.indvar_next664.us = add nuw nsw i64 %polly.indvar663.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar663.us, %smin1084
  br i1 %exitcond1082.not, label %polly.cond670.loopexit.us, label %polly.loop_header659.us

polly.then672.us:                                 ; preds = %polly.cond670.loopexit.us
  %polly.access.call1677.us = getelementptr double, double* %polly.access.cast.call1718, i64 %416
  %polly.access.call1677.load.us = load double, double* %polly.access.call1677.us, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1510680.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %414
  store double %polly.access.call1677.load.us, double* %polly.access.Packed_MemRef_call1510680.us, align 8
  br label %polly.loop_header659.us.1.preheader

polly.cond670.loopexit.us:                        ; preds = %polly.loop_header659.us
  br i1 %.not921, label %polly.loop_header659.us.1.preheader, label %polly.then672.us

polly.loop_header659.us.1.preheader:              ; preds = %polly.then672.us, %polly.cond670.loopexit.us
  br label %polly.loop_header659.us.1

polly.loop_header646.split:                       ; preds = %polly.loop_header646
  br i1 %.not921, label %polly.loop_exit683, label %polly.loop_header652.preheader

polly.loop_header652.preheader:                   ; preds = %polly.loop_header646.split
  %polly.access.call1677 = getelementptr double, double* %polly.access.cast.call1718, i64 %416
  %polly.access.call1677.load = load double, double* %polly.access.call1677, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1510680 = getelementptr double, double* %Packed_MemRef_call1510, i64 %414
  store double %polly.access.call1677.load, double* %polly.access.Packed_MemRef_call1510680, align 8
  %polly.access.add.call1676.1 = or i64 %416, 1
  %polly.access.call1677.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.1
  %polly.access.call1677.load.1 = load double, double* %polly.access.call1677.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510679.1 = add nsw i64 %414, 1200
  %polly.access.Packed_MemRef_call1510680.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.1
  store double %polly.access.call1677.load.1, double* %polly.access.Packed_MemRef_call1510680.1, align 8
  %polly.access.add.call1676.2 = or i64 %416, 2
  %polly.access.call1677.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.2
  %polly.access.call1677.load.2 = load double, double* %polly.access.call1677.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510679.2 = add nsw i64 %414, 2400
  %polly.access.Packed_MemRef_call1510680.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.2
  store double %polly.access.call1677.load.2, double* %polly.access.Packed_MemRef_call1510680.2, align 8
  %polly.access.add.call1676.3 = or i64 %416, 3
  %polly.access.call1677.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.3
  %polly.access.call1677.load.3 = load double, double* %polly.access.call1677.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510679.3 = add nsw i64 %414, 3600
  %polly.access.Packed_MemRef_call1510680.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.3
  store double %polly.access.call1677.load.3, double* %polly.access.Packed_MemRef_call1510680.3, align 8
  br label %polly.loop_exit683

polly.loop_exit683:                               ; preds = %polly.loop_header688.us.3, %middle.block1223, %polly.loop_header646.split, %polly.loop_header652.preheader, %polly.loop_header681.preheader
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next650, 4
  br i1 %exitcond1087.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header681.preheader:                   ; preds = %polly.cond670.loopexit.us.3, %polly.then672.us.3
  %418 = mul nuw nsw i64 %415, 9600
  br i1 %polly.loop_guard6621131, label %polly.loop_header681.us.preheader, label %polly.loop_exit683

polly.loop_header681.us.preheader:                ; preds = %polly.loop_header681.preheader
  %polly.access.add.Packed_MemRef_call2512700.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us, %415
  %polly.access.Packed_MemRef_call2512701.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call2512701.us, align 8
  %polly.access.Packed_MemRef_call1510709.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %414
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1510709.us, align 8
  %min.iters.check1319 = icmp ult i64 %392, 4
  br i1 %min.iters.check1319, label %polly.loop_header688.us.preheader, label %vector.memcheck1304

vector.memcheck1304:                              ; preds = %polly.loop_header681.us.preheader
  %bound01311 = icmp ult i8* %scevgep1305, %scevgep1310
  %bound11312 = icmp ult i8* %malloccall509, %scevgep1308
  %found.conflict1313 = and i1 %bound01311, %bound11312
  br i1 %found.conflict1313, label %polly.loop_header688.us.preheader, label %vector.ph1320

vector.ph1320:                                    ; preds = %vector.memcheck1304
  %n.vec1322 = and i64 %392, -4
  %broadcast.splatinsert1328 = insertelement <4 x double> poison, double %_p_scalar_702.us, i32 0
  %broadcast.splat1329 = shufflevector <4 x double> %broadcast.splatinsert1328, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1331 = insertelement <4 x double> poison, double %_p_scalar_710.us, i32 0
  %broadcast.splat1332 = shufflevector <4 x double> %broadcast.splatinsert1331, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1317 ]
  %419 = add nuw nsw i64 %index1323, %388
  %420 = getelementptr double, double* %Packed_MemRef_call1510, i64 %index1323
  %421 = bitcast double* %420 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %421, align 8, !alias.scope !128
  %422 = fmul fast <4 x double> %broadcast.splat1329, %wide.load1327
  %423 = add nuw nsw i64 %419, %polly.access.mul.Packed_MemRef_call2512699.us
  %424 = getelementptr double, double* %Packed_MemRef_call2512, i64 %423
  %425 = bitcast double* %424 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %425, align 8
  %426 = fmul fast <4 x double> %broadcast.splat1332, %wide.load1330
  %427 = shl i64 %419, 3
  %428 = add nuw nsw i64 %427, %418
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %430, align 8, !alias.scope !131, !noalias !133
  %431 = fadd fast <4 x double> %426, %422
  %432 = fmul fast <4 x double> %431, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %433 = fadd fast <4 x double> %432, %wide.load1333
  %434 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %433, <4 x double>* %434, align 8, !alias.scope !131, !noalias !133
  %index.next1324 = add i64 %index1323, 4
  %435 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %435, label %middle.block1315, label %vector.body1317, !llvm.loop !134

middle.block1315:                                 ; preds = %vector.body1317
  %cmp.n1326 = icmp eq i64 %392, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us.preheader

polly.loop_header688.us.preheader:                ; preds = %vector.memcheck1304, %polly.loop_header681.us.preheader, %middle.block1315
  %polly.indvar692.us.ph = phi i64 [ 0, %vector.memcheck1304 ], [ 0, %polly.loop_header681.us.preheader ], [ %n.vec1322, %middle.block1315 ]
  br label %polly.loop_header688.us

polly.loop_header688.us:                          ; preds = %polly.loop_header688.us.preheader, %polly.loop_header688.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_header688.us ], [ %polly.indvar692.us.ph, %polly.loop_header688.us.preheader ]
  %436 = add nuw nsw i64 %polly.indvar692.us, %388
  %polly.access.Packed_MemRef_call1510697.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.indvar692.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1510697.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_702.us, %_p_scalar_698.us
  %polly.access.add.Packed_MemRef_call2512704.us = add nuw nsw i64 %436, %polly.access.mul.Packed_MemRef_call2512699.us
  %polly.access.Packed_MemRef_call2512705.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2512705.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_710.us, %_p_scalar_706.us
  %437 = shl i64 %436, 3
  %438 = add nuw nsw i64 %437, %418
  %scevgep711.us = getelementptr i8, i8* %call, i64 %438
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_713.us
  store double %p_add42.i.us, double* %scevgep711712.us, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar692.us, %smin1084
  br i1 %exitcond1085.not, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us, !llvm.loop !135

polly.loop_exit690.loopexit.us:                   ; preds = %polly.loop_header688.us, %middle.block1315
  %polly.access.add.Packed_MemRef_call2512700.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us.1, %415
  %polly.access.Packed_MemRef_call2512701.us.1 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us.1
  %_p_scalar_702.us.1 = load double, double* %polly.access.Packed_MemRef_call2512701.us.1, align 8
  %polly.access.add.Packed_MemRef_call1510708.us.1 = add nsw i64 %414, 1200
  %polly.access.Packed_MemRef_call1510709.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1510709.us.1, align 8
  %min.iters.check1289 = icmp ult i64 %399, 4
  br i1 %min.iters.check1289, label %polly.loop_header688.us.1.preheader, label %vector.memcheck1273

vector.memcheck1273:                              ; preds = %polly.loop_exit690.loopexit.us
  %bound01281 = icmp ult i8* %scevgep1274, %scevgep1280
  %bound11282 = icmp ult i8* %scevgep1278, %scevgep1277
  %found.conflict1283 = and i1 %bound01281, %bound11282
  br i1 %found.conflict1283, label %polly.loop_header688.us.1.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %vector.memcheck1273
  %n.vec1292 = and i64 %399, -4
  %broadcast.splatinsert1298 = insertelement <4 x double> poison, double %_p_scalar_702.us.1, i32 0
  %broadcast.splat1299 = shufflevector <4 x double> %broadcast.splatinsert1298, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_710.us.1, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1287 ]
  %439 = add nuw nsw i64 %index1293, %388
  %440 = add nuw nsw i64 %index1293, 1200
  %441 = getelementptr double, double* %Packed_MemRef_call1510, i64 %440
  %442 = bitcast double* %441 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %442, align 8, !alias.scope !136
  %443 = fmul fast <4 x double> %broadcast.splat1299, %wide.load1297
  %444 = add nuw nsw i64 %439, %polly.access.mul.Packed_MemRef_call2512699.us.1
  %445 = getelementptr double, double* %Packed_MemRef_call2512, i64 %444
  %446 = bitcast double* %445 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %446, align 8
  %447 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %448 = shl i64 %439, 3
  %449 = add nuw nsw i64 %448, %418
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %451, align 8, !alias.scope !139, !noalias !141
  %452 = fadd fast <4 x double> %447, %443
  %453 = fmul fast <4 x double> %452, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %454 = fadd fast <4 x double> %453, %wide.load1303
  %455 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %454, <4 x double>* %455, align 8, !alias.scope !139, !noalias !141
  %index.next1294 = add i64 %index1293, 4
  %456 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %456, label %middle.block1285, label %vector.body1287, !llvm.loop !142

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1296 = icmp eq i64 %399, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit690.loopexit.us.1, label %polly.loop_header688.us.1.preheader

polly.loop_header688.us.1.preheader:              ; preds = %vector.memcheck1273, %polly.loop_exit690.loopexit.us, %middle.block1285
  %polly.indvar692.us.1.ph = phi i64 [ 0, %vector.memcheck1273 ], [ 0, %polly.loop_exit690.loopexit.us ], [ %n.vec1292, %middle.block1285 ]
  br label %polly.loop_header688.us.1

polly.loop_header840:                             ; preds = %entry, %polly.loop_exit848
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit848 ], [ 0, %entry ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %entry ]
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %457 = shl nsw i64 %polly.indvar843, 5
  %458 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1124.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1124.not, label %polly.loop_header867, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %459 = mul nsw i64 %polly.indvar849, -32
  %smin = call i64 @llvm.smin.i64(i64 %459, i64 -1168)
  %460 = add nsw i64 %smin, 1200
  %smin1117 = call i64 @llvm.smin.i64(i64 %indvars.iv1115, i64 -1168)
  %461 = shl nsw i64 %polly.indvar849, 5
  %462 = add nsw i64 %smin1117, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1123.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %463 = add nuw nsw i64 %polly.indvar855, %457
  %464 = trunc i64 %463 to i32
  %465 = mul nuw nsw i64 %463, 9600
  %min.iters.check = icmp eq i64 %460, 0
  br i1 %min.iters.check, label %polly.loop_header858, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %461, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %464, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1153
  %index1154 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1159, %vector.body1152 ]
  %466 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %467 = trunc <4 x i64> %466 to <4 x i32>
  %468 = mul <4 x i32> %broadcast.splat1163, %467
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
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %478 = icmp eq i64 %index.next1155, %460
  br i1 %478, label %polly.loop_exit860, label %vector.body1152, !llvm.loop !148

polly.loop_exit860:                               ; preds = %vector.body1152, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar855, %458
  br i1 %exitcond1122.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %479 = add nuw nsw i64 %polly.indvar861, %461
  %480 = trunc i64 %479 to i32
  %481 = mul i32 %480, %464
  %482 = add i32 %481, 3
  %483 = urem i32 %482, 1200
  %p_conv31.i = sitofp i32 %483 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %484 = shl i64 %479, 3
  %485 = add nuw nsw i64 %484, %465
  %scevgep864 = getelementptr i8, i8* %call, i64 %485
  %scevgep864865 = bitcast i8* %scevgep864 to double*
  store double %p_div33.i, double* %scevgep864865, align 8, !alias.scope !143, !noalias !145
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar861, %462
  br i1 %exitcond1118.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !149

polly.loop_header867:                             ; preds = %polly.loop_exit848, %polly.loop_exit875
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -1168)
  %486 = shl nsw i64 %polly.indvar870, 5
  %487 = add nsw i64 %smin1111, 1199
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1114.not = icmp eq i64 %polly.indvar_next871, 38
  br i1 %exitcond1114.not, label %polly.loop_header893, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %488 = mul nsw i64 %polly.indvar876, -32
  %smin1167 = call i64 @llvm.smin.i64(i64 %488, i64 -968)
  %489 = add nsw i64 %smin1167, 1000
  %smin1107 = call i64 @llvm.smin.i64(i64 %indvars.iv1105, i64 -968)
  %490 = shl nsw i64 %polly.indvar876, 5
  %491 = add nsw i64 %smin1107, 999
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next877, 32
  br i1 %exitcond1113.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %polly.indvar882 = phi i64 [ 0, %polly.loop_header873 ], [ %polly.indvar_next883, %polly.loop_exit887 ]
  %492 = add nuw nsw i64 %polly.indvar882, %486
  %493 = trunc i64 %492 to i32
  %494 = mul nuw nsw i64 %492, 8000
  %min.iters.check1168 = icmp eq i64 %489, 0
  br i1 %min.iters.check1168, label %polly.loop_header885, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header879
  %broadcast.splatinsert1178 = insertelement <4 x i64> poison, i64 %490, i32 0
  %broadcast.splat1179 = shufflevector <4 x i64> %broadcast.splatinsert1178, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1166 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1169 ], [ %vec.ind.next1177, %vector.body1166 ]
  %495 = add nuw nsw <4 x i64> %vec.ind1176, %broadcast.splat1179
  %496 = trunc <4 x i64> %495 to <4 x i32>
  %497 = mul <4 x i32> %broadcast.splat1181, %496
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
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %507 = icmp eq i64 %index.next1173, %489
  br i1 %507, label %polly.loop_exit887, label %vector.body1166, !llvm.loop !151

polly.loop_exit887:                               ; preds = %vector.body1166, %polly.loop_header885
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar882, %487
  br i1 %exitcond1112.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_header879, %polly.loop_header885
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_header885 ], [ 0, %polly.loop_header879 ]
  %508 = add nuw nsw i64 %polly.indvar888, %490
  %509 = trunc i64 %508 to i32
  %510 = mul i32 %509, %493
  %511 = add i32 %510, 2
  %512 = urem i32 %511, 1000
  %p_conv10.i = sitofp i32 %512 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %513 = shl i64 %508, 3
  %514 = add nuw nsw i64 %513, %494
  %scevgep891 = getelementptr i8, i8* %call2, i64 %514
  %scevgep891892 = bitcast i8* %scevgep891 to double*
  store double %p_div12.i, double* %scevgep891892, align 8, !alias.scope !147, !noalias !150
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar888, %491
  br i1 %exitcond1108.not, label %polly.loop_exit887, label %polly.loop_header885, !llvm.loop !152

polly.loop_header893:                             ; preds = %polly.loop_exit875, %polly.loop_exit901
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -1168)
  %515 = shl nsw i64 %polly.indvar896, 5
  %516 = add nsw i64 %smin1101, 1199
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1104.not = icmp eq i64 %polly.indvar_next897, 38
  br i1 %exitcond1104.not, label %init_array.exit, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %517 = mul nsw i64 %polly.indvar902, -32
  %smin1185 = call i64 @llvm.smin.i64(i64 %517, i64 -968)
  %518 = add nsw i64 %smin1185, 1000
  %smin1097 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 -968)
  %519 = shl nsw i64 %polly.indvar902, 5
  %520 = add nsw i64 %smin1097, 999
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -32
  %exitcond1103.not = icmp eq i64 %polly.indvar_next903, 32
  br i1 %exitcond1103.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %polly.indvar908 = phi i64 [ 0, %polly.loop_header899 ], [ %polly.indvar_next909, %polly.loop_exit913 ]
  %521 = add nuw nsw i64 %polly.indvar908, %515
  %522 = trunc i64 %521 to i32
  %523 = mul nuw nsw i64 %521, 8000
  %min.iters.check1186 = icmp eq i64 %518, 0
  br i1 %min.iters.check1186, label %polly.loop_header911, label %vector.ph1187

vector.ph1187:                                    ; preds = %polly.loop_header905
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %519, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %522, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1191, %vector.body1184 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1187 ], [ %vec.ind.next1195, %vector.body1184 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1199, %525
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
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1191, %518
  br i1 %536, label %polly.loop_exit913, label %vector.body1184, !llvm.loop !154

polly.loop_exit913:                               ; preds = %vector.body1184, %polly.loop_header911
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar908, %516
  br i1 %exitcond1102.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_header905, %polly.loop_header911
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_header911 ], [ 0, %polly.loop_header905 ]
  %537 = add nuw nsw i64 %polly.indvar914, %519
  %538 = trunc i64 %537 to i32
  %539 = mul i32 %538, %522
  %540 = add i32 %539, 1
  %541 = urem i32 %540, 1200
  %p_conv.i = sitofp i32 %541 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %542 = shl i64 %537, 3
  %543 = add nuw nsw i64 %542, %523
  %scevgep918 = getelementptr i8, i8* %call1, i64 %543
  %scevgep918919 = bitcast i8* %scevgep918 to double*
  store double %p_div.i, double* %scevgep918919, align 8, !alias.scope !146, !noalias !153
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar914, %520
  br i1 %exitcond1098.not, label %polly.loop_exit913, label %polly.loop_header911, !llvm.loop !155

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1.preheader, %polly.loop_header246.us.1
  %polly.indvar249.us.1 = phi i64 [ %polly.indvar_next250.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header246.us.1.preheader ]
  %544 = add nuw nsw i64 %polly.indvar249.us.1, %142
  %polly.access.mul.call1253.us.1 = mul nuw nsw i64 %544, 1000
  %polly.access.add.call1254.us.1 = add nuw nsw i64 %113, %polly.access.mul.call1253.us.1
  %polly.access.call1255.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us.1
  %polly.access.call1255.load.us.1 = load double, double* %polly.access.call1255.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1255.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next250.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1
  %exitcond1040.1.not = icmp eq i64 %polly.indvar249.us.1, %smin1042
  br i1 %exitcond1040.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header246.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header246.us.1
  br i1 %.not, label %polly.loop_header246.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1258.us.1 = or i64 %170, 1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us.1
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
  %polly.access.call1255.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us.2
  %polly.access.call1255.load.us.2 = load double, double* %polly.access.call1255.us.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar249.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1255.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next250.us.2 = add nuw nsw i64 %polly.indvar249.us.2, 1
  %exitcond1040.2.not = icmp eq i64 %polly.indvar249.us.2, %smin1042
  br i1 %exitcond1040.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header246.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header246.us.2
  br i1 %.not, label %polly.loop_header246.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1258.us.2 = or i64 %170, 2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us.2
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
  %polly.access.call1255.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us.3
  %polly.access.call1255.load.us.3 = load double, double* %polly.access.call1255.us.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar249.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1255.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next250.us.3 = add nuw nsw i64 %polly.indvar249.us.3, 1
  %exitcond1040.3.not = icmp eq i64 %polly.indvar249.us.3, %smin1042
  br i1 %exitcond1040.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header246.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header246.us.3
  br i1 %.not, label %polly.loop_header263.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1258.us.3 = or i64 %170, 3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us.3
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
  %exitcond1043.1.not = icmp eq i64 %polly.indvar274.us.1, %smin1042
  br i1 %exitcond1043.1.not, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1, !llvm.loop !156

polly.loop_exit272.loopexit.us.1:                 ; preds = %polly.loop_header270.us.1, %middle.block1559
  %polly.access.add.Packed_MemRef_call2282.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.2, %169
  %polly.access.Packed_MemRef_call2283.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call2283.us.2, align 8
  %polly.access.add.Packed_MemRef_call1290.us.2 = add nsw i64 %168, 2400
  %polly.access.Packed_MemRef_call1291.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call1291.us.2, align 8
  %min.iters.check1532 = icmp ult i64 %160, 4
  br i1 %min.iters.check1532, label %polly.loop_header270.us.2.preheader, label %vector.memcheck1516

vector.memcheck1516:                              ; preds = %polly.loop_exit272.loopexit.us.1
  %bound01524 = icmp ult i8* %scevgep1517, %scevgep1523
  %bound11525 = icmp ult i8* %scevgep1521, %scevgep1520
  %found.conflict1526 = and i1 %bound01524, %bound11525
  br i1 %found.conflict1526, label %polly.loop_header270.us.2.preheader, label %vector.ph1533

vector.ph1533:                                    ; preds = %vector.memcheck1516
  %n.vec1535 = and i64 %160, -4
  %broadcast.splatinsert1541 = insertelement <4 x double> poison, double %_p_scalar_284.us.2, i32 0
  %broadcast.splat1542 = shufflevector <4 x double> %broadcast.splatinsert1541, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1544 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1545 = shufflevector <4 x double> %broadcast.splatinsert1544, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1530

vector.body1530:                                  ; preds = %vector.body1530, %vector.ph1533
  %index1536 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1537, %vector.body1530 ]
  %550 = add nuw nsw i64 %index1536, %142
  %551 = add nuw nsw i64 %index1536, 2400
  %552 = getelementptr double, double* %Packed_MemRef_call1, i64 %551
  %553 = bitcast double* %552 to <4 x double>*
  %wide.load1540 = load <4 x double>, <4 x double>* %553, align 8, !alias.scope !157
  %554 = fmul fast <4 x double> %broadcast.splat1542, %wide.load1540
  %555 = add nuw nsw i64 %550, %polly.access.mul.Packed_MemRef_call2281.us.2
  %556 = getelementptr double, double* %Packed_MemRef_call2, i64 %555
  %557 = bitcast double* %556 to <4 x double>*
  %wide.load1543 = load <4 x double>, <4 x double>* %557, align 8
  %558 = fmul fast <4 x double> %broadcast.splat1545, %wide.load1543
  %559 = shl i64 %550, 3
  %560 = add nuw nsw i64 %559, %172
  %561 = getelementptr i8, i8* %call, i64 %560
  %562 = bitcast i8* %561 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %562, align 8, !alias.scope !160, !noalias !162
  %563 = fadd fast <4 x double> %558, %554
  %564 = fmul fast <4 x double> %563, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %565 = fadd fast <4 x double> %564, %wide.load1546
  %566 = bitcast i8* %561 to <4 x double>*
  store <4 x double> %565, <4 x double>* %566, align 8, !alias.scope !160, !noalias !162
  %index.next1537 = add i64 %index1536, 4
  %567 = icmp eq i64 %index.next1537, %n.vec1535
  br i1 %567, label %middle.block1528, label %vector.body1530, !llvm.loop !163

middle.block1528:                                 ; preds = %vector.body1530
  %cmp.n1539 = icmp eq i64 %160, %n.vec1535
  br i1 %cmp.n1539, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2.preheader

polly.loop_header270.us.2.preheader:              ; preds = %vector.memcheck1516, %polly.loop_exit272.loopexit.us.1, %middle.block1528
  %polly.indvar274.us.2.ph = phi i64 [ 0, %vector.memcheck1516 ], [ 0, %polly.loop_exit272.loopexit.us.1 ], [ %n.vec1535, %middle.block1528 ]
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
  %exitcond1043.2.not = icmp eq i64 %polly.indvar274.us.2, %smin1042
  br i1 %exitcond1043.2.not, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2, !llvm.loop !164

polly.loop_exit272.loopexit.us.2:                 ; preds = %polly.loop_header270.us.2, %middle.block1528
  %polly.access.add.Packed_MemRef_call2282.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.3, %169
  %polly.access.Packed_MemRef_call2283.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call2283.us.3, align 8
  %polly.access.add.Packed_MemRef_call1290.us.3 = add nsw i64 %168, 3600
  %polly.access.Packed_MemRef_call1291.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call1291.us.3, align 8
  %min.iters.check1501 = icmp ult i64 %167, 4
  br i1 %min.iters.check1501, label %polly.loop_header270.us.3.preheader, label %vector.ph1502

vector.ph1502:                                    ; preds = %polly.loop_exit272.loopexit.us.2
  %n.vec1504 = and i64 %167, -4
  %broadcast.splatinsert1510 = insertelement <4 x double> poison, double %_p_scalar_284.us.3, i32 0
  %broadcast.splat1511 = shufflevector <4 x double> %broadcast.splatinsert1510, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1513 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1514 = shufflevector <4 x double> %broadcast.splatinsert1513, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1499

vector.body1499:                                  ; preds = %vector.body1499, %vector.ph1502
  %index1505 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1506, %vector.body1499 ]
  %571 = add nuw nsw i64 %index1505, %142
  %572 = add nuw nsw i64 %index1505, 3600
  %573 = getelementptr double, double* %Packed_MemRef_call1, i64 %572
  %574 = bitcast double* %573 to <4 x double>*
  %wide.load1509 = load <4 x double>, <4 x double>* %574, align 8
  %575 = fmul fast <4 x double> %broadcast.splat1511, %wide.load1509
  %576 = add nuw nsw i64 %571, %polly.access.mul.Packed_MemRef_call2281.us.3
  %577 = getelementptr double, double* %Packed_MemRef_call2, i64 %576
  %578 = bitcast double* %577 to <4 x double>*
  %wide.load1512 = load <4 x double>, <4 x double>* %578, align 8
  %579 = fmul fast <4 x double> %broadcast.splat1514, %wide.load1512
  %580 = shl i64 %571, 3
  %581 = add nuw nsw i64 %580, %172
  %582 = getelementptr i8, i8* %call, i64 %581
  %583 = bitcast i8* %582 to <4 x double>*
  %wide.load1515 = load <4 x double>, <4 x double>* %583, align 8, !alias.scope !64, !noalias !66
  %584 = fadd fast <4 x double> %579, %575
  %585 = fmul fast <4 x double> %584, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %586 = fadd fast <4 x double> %585, %wide.load1515
  %587 = bitcast i8* %582 to <4 x double>*
  store <4 x double> %586, <4 x double>* %587, align 8, !alias.scope !64, !noalias !66
  %index.next1506 = add i64 %index1505, 4
  %588 = icmp eq i64 %index.next1506, %n.vec1504
  br i1 %588, label %middle.block1497, label %vector.body1499, !llvm.loop !165

middle.block1497:                                 ; preds = %vector.body1499
  %cmp.n1508 = icmp eq i64 %167, %n.vec1504
  br i1 %cmp.n1508, label %polly.loop_exit265, label %polly.loop_header270.us.3.preheader

polly.loop_header270.us.3.preheader:              ; preds = %polly.loop_exit272.loopexit.us.2, %middle.block1497
  %polly.indvar274.us.3.ph = phi i64 [ 0, %polly.loop_exit272.loopexit.us.2 ], [ %n.vec1504, %middle.block1497 ]
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
  %exitcond1043.3.not = icmp eq i64 %polly.indvar274.us.3, %smin1042
  br i1 %exitcond1043.3.not, label %polly.loop_exit265, label %polly.loop_header270.us.3, !llvm.loop !166

polly.loop_header450.us.1:                        ; preds = %polly.loop_header450.us.1.preheader, %polly.loop_header450.us.1
  %polly.indvar454.us.1 = phi i64 [ %polly.indvar_next455.us.1, %polly.loop_header450.us.1 ], [ 0, %polly.loop_header450.us.1.preheader ]
  %592 = add nuw nsw i64 %polly.indvar454.us.1, %265
  %polly.access.mul.call1458.us.1 = mul nuw nsw i64 %592, 1000
  %polly.access.add.call1459.us.1 = add nuw nsw i64 %236, %polly.access.mul.call1458.us.1
  %polly.access.call1460.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us.1
  %polly.access.call1460.load.us.1 = load double, double* %polly.access.call1460.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.1 = add nuw nsw i64 %polly.indvar454.us.1, 1200
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.1
  store double %polly.access.call1460.load.us.1, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %polly.indvar_next455.us.1 = add nuw nsw i64 %polly.indvar454.us.1, 1
  %exitcond1061.1.not = icmp eq i64 %polly.indvar454.us.1, %smin1063
  br i1 %exitcond1061.1.not, label %polly.cond461.loopexit.us.1, label %polly.loop_header450.us.1

polly.cond461.loopexit.us.1:                      ; preds = %polly.loop_header450.us.1
  br i1 %.not920, label %polly.loop_header450.us.2.preheader, label %polly.then463.us.1

polly.then463.us.1:                               ; preds = %polly.cond461.loopexit.us.1
  %polly.access.add.call1467.us.1 = or i64 %293, 1
  %polly.access.call1468.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us.1
  %polly.access.call1468.load.us.1 = load double, double* %polly.access.call1468.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301470.us.1 = add nsw i64 %291, 1200
  %polly.access.Packed_MemRef_call1301471.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us.1
  store double %polly.access.call1468.load.us.1, double* %polly.access.Packed_MemRef_call1301471.us.1, align 8
  br label %polly.loop_header450.us.2.preheader

polly.loop_header450.us.2.preheader:              ; preds = %polly.then463.us.1, %polly.cond461.loopexit.us.1
  br label %polly.loop_header450.us.2

polly.loop_header450.us.2:                        ; preds = %polly.loop_header450.us.2.preheader, %polly.loop_header450.us.2
  %polly.indvar454.us.2 = phi i64 [ %polly.indvar_next455.us.2, %polly.loop_header450.us.2 ], [ 0, %polly.loop_header450.us.2.preheader ]
  %593 = add nuw nsw i64 %polly.indvar454.us.2, %265
  %polly.access.mul.call1458.us.2 = mul nuw nsw i64 %593, 1000
  %polly.access.add.call1459.us.2 = add nuw nsw i64 %237, %polly.access.mul.call1458.us.2
  %polly.access.call1460.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us.2
  %polly.access.call1460.load.us.2 = load double, double* %polly.access.call1460.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.2 = add nuw nsw i64 %polly.indvar454.us.2, 2400
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.2
  store double %polly.access.call1460.load.us.2, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %polly.indvar_next455.us.2 = add nuw nsw i64 %polly.indvar454.us.2, 1
  %exitcond1061.2.not = icmp eq i64 %polly.indvar454.us.2, %smin1063
  br i1 %exitcond1061.2.not, label %polly.cond461.loopexit.us.2, label %polly.loop_header450.us.2

polly.cond461.loopexit.us.2:                      ; preds = %polly.loop_header450.us.2
  br i1 %.not920, label %polly.loop_header450.us.3.preheader, label %polly.then463.us.2

polly.then463.us.2:                               ; preds = %polly.cond461.loopexit.us.2
  %polly.access.add.call1467.us.2 = or i64 %293, 2
  %polly.access.call1468.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us.2
  %polly.access.call1468.load.us.2 = load double, double* %polly.access.call1468.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301470.us.2 = add nsw i64 %291, 2400
  %polly.access.Packed_MemRef_call1301471.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us.2
  store double %polly.access.call1468.load.us.2, double* %polly.access.Packed_MemRef_call1301471.us.2, align 8
  br label %polly.loop_header450.us.3.preheader

polly.loop_header450.us.3.preheader:              ; preds = %polly.then463.us.2, %polly.cond461.loopexit.us.2
  br label %polly.loop_header450.us.3

polly.loop_header450.us.3:                        ; preds = %polly.loop_header450.us.3.preheader, %polly.loop_header450.us.3
  %polly.indvar454.us.3 = phi i64 [ %polly.indvar_next455.us.3, %polly.loop_header450.us.3 ], [ 0, %polly.loop_header450.us.3.preheader ]
  %594 = add nuw nsw i64 %polly.indvar454.us.3, %265
  %polly.access.mul.call1458.us.3 = mul nuw nsw i64 %594, 1000
  %polly.access.add.call1459.us.3 = add nuw nsw i64 %238, %polly.access.mul.call1458.us.3
  %polly.access.call1460.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us.3
  %polly.access.call1460.load.us.3 = load double, double* %polly.access.call1460.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.3 = add nuw nsw i64 %polly.indvar454.us.3, 3600
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.3
  store double %polly.access.call1460.load.us.3, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %polly.indvar_next455.us.3 = add nuw nsw i64 %polly.indvar454.us.3, 1
  %exitcond1061.3.not = icmp eq i64 %polly.indvar454.us.3, %smin1063
  br i1 %exitcond1061.3.not, label %polly.cond461.loopexit.us.3, label %polly.loop_header450.us.3

polly.cond461.loopexit.us.3:                      ; preds = %polly.loop_header450.us.3
  br i1 %.not920, label %polly.loop_header472.preheader, label %polly.then463.us.3

polly.then463.us.3:                               ; preds = %polly.cond461.loopexit.us.3
  %polly.access.add.call1467.us.3 = or i64 %293, 3
  %polly.access.call1468.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us.3
  %polly.access.call1468.load.us.3 = load double, double* %polly.access.call1468.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301470.us.3 = add nsw i64 %291, 3600
  %polly.access.Packed_MemRef_call1301471.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us.3
  store double %polly.access.call1468.load.us.3, double* %polly.access.Packed_MemRef_call1301471.us.3, align 8
  br label %polly.loop_header472.preheader

polly.loop_header479.us.1:                        ; preds = %polly.loop_header479.us.1.preheader, %polly.loop_header479.us.1
  %polly.indvar483.us.1 = phi i64 [ %polly.indvar_next484.us.1, %polly.loop_header479.us.1 ], [ %polly.indvar483.us.1.ph, %polly.loop_header479.us.1.preheader ]
  %595 = add nuw nsw i64 %polly.indvar483.us.1, %265
  %polly.access.add.Packed_MemRef_call1301487.us.1 = add nuw nsw i64 %polly.indvar483.us.1, 1200
  %polly.access.Packed_MemRef_call1301488.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us.1
  %_p_scalar_489.us.1 = load double, double* %polly.access.Packed_MemRef_call1301488.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_493.us.1, %_p_scalar_489.us.1
  %polly.access.add.Packed_MemRef_call2303495.us.1 = add nuw nsw i64 %595, %polly.access.mul.Packed_MemRef_call2303490.us.1
  %polly.access.Packed_MemRef_call2303496.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2303496.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %596 = shl i64 %595, 3
  %597 = add nuw nsw i64 %596, %295
  %scevgep502.us.1 = getelementptr i8, i8* %call, i64 %597
  %scevgep502503.us.1 = bitcast i8* %scevgep502.us.1 to double*
  %_p_scalar_504.us.1 = load double, double* %scevgep502503.us.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_504.us.1
  store double %p_add42.i79.us.1, double* %scevgep502503.us.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next484.us.1 = add nuw nsw i64 %polly.indvar483.us.1, 1
  %exitcond1064.1.not = icmp eq i64 %polly.indvar483.us.1, %smin1063
  br i1 %exitcond1064.1.not, label %polly.loop_exit481.loopexit.us.1, label %polly.loop_header479.us.1, !llvm.loop !167

polly.loop_exit481.loopexit.us.1:                 ; preds = %polly.loop_header479.us.1, %middle.block1422
  %polly.access.add.Packed_MemRef_call2303491.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us.2, %292
  %polly.access.Packed_MemRef_call2303492.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call2303492.us.2, align 8
  %polly.access.add.Packed_MemRef_call1301499.us.2 = add nsw i64 %291, 2400
  %polly.access.Packed_MemRef_call1301500.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call1301500.us.2, align 8
  %min.iters.check1395 = icmp ult i64 %283, 4
  br i1 %min.iters.check1395, label %polly.loop_header479.us.2.preheader, label %vector.memcheck1379

vector.memcheck1379:                              ; preds = %polly.loop_exit481.loopexit.us.1
  %bound01387 = icmp ult i8* %scevgep1380, %scevgep1386
  %bound11388 = icmp ult i8* %scevgep1384, %scevgep1383
  %found.conflict1389 = and i1 %bound01387, %bound11388
  br i1 %found.conflict1389, label %polly.loop_header479.us.2.preheader, label %vector.ph1396

vector.ph1396:                                    ; preds = %vector.memcheck1379
  %n.vec1398 = and i64 %283, -4
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_493.us.2, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1400, %vector.body1393 ]
  %598 = add nuw nsw i64 %index1399, %265
  %599 = add nuw nsw i64 %index1399, 2400
  %600 = getelementptr double, double* %Packed_MemRef_call1301, i64 %599
  %601 = bitcast double* %600 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %601, align 8, !alias.scope !168
  %602 = fmul fast <4 x double> %broadcast.splat1405, %wide.load1403
  %603 = add nuw nsw i64 %598, %polly.access.mul.Packed_MemRef_call2303490.us.2
  %604 = getelementptr double, double* %Packed_MemRef_call2303, i64 %603
  %605 = bitcast double* %604 to <4 x double>*
  %wide.load1406 = load <4 x double>, <4 x double>* %605, align 8
  %606 = fmul fast <4 x double> %broadcast.splat1408, %wide.load1406
  %607 = shl i64 %598, 3
  %608 = add nuw nsw i64 %607, %295
  %609 = getelementptr i8, i8* %call, i64 %608
  %610 = bitcast i8* %609 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %610, align 8, !alias.scope !171, !noalias !173
  %611 = fadd fast <4 x double> %606, %602
  %612 = fmul fast <4 x double> %611, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %613 = fadd fast <4 x double> %612, %wide.load1409
  %614 = bitcast i8* %609 to <4 x double>*
  store <4 x double> %613, <4 x double>* %614, align 8, !alias.scope !171, !noalias !173
  %index.next1400 = add i64 %index1399, 4
  %615 = icmp eq i64 %index.next1400, %n.vec1398
  br i1 %615, label %middle.block1391, label %vector.body1393, !llvm.loop !174

middle.block1391:                                 ; preds = %vector.body1393
  %cmp.n1402 = icmp eq i64 %283, %n.vec1398
  br i1 %cmp.n1402, label %polly.loop_exit481.loopexit.us.2, label %polly.loop_header479.us.2.preheader

polly.loop_header479.us.2.preheader:              ; preds = %vector.memcheck1379, %polly.loop_exit481.loopexit.us.1, %middle.block1391
  %polly.indvar483.us.2.ph = phi i64 [ 0, %vector.memcheck1379 ], [ 0, %polly.loop_exit481.loopexit.us.1 ], [ %n.vec1398, %middle.block1391 ]
  br label %polly.loop_header479.us.2

polly.loop_header479.us.2:                        ; preds = %polly.loop_header479.us.2.preheader, %polly.loop_header479.us.2
  %polly.indvar483.us.2 = phi i64 [ %polly.indvar_next484.us.2, %polly.loop_header479.us.2 ], [ %polly.indvar483.us.2.ph, %polly.loop_header479.us.2.preheader ]
  %616 = add nuw nsw i64 %polly.indvar483.us.2, %265
  %polly.access.add.Packed_MemRef_call1301487.us.2 = add nuw nsw i64 %polly.indvar483.us.2, 2400
  %polly.access.Packed_MemRef_call1301488.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us.2
  %_p_scalar_489.us.2 = load double, double* %polly.access.Packed_MemRef_call1301488.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_493.us.2, %_p_scalar_489.us.2
  %polly.access.add.Packed_MemRef_call2303495.us.2 = add nuw nsw i64 %616, %polly.access.mul.Packed_MemRef_call2303490.us.2
  %polly.access.Packed_MemRef_call2303496.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2303496.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %617 = shl i64 %616, 3
  %618 = add nuw nsw i64 %617, %295
  %scevgep502.us.2 = getelementptr i8, i8* %call, i64 %618
  %scevgep502503.us.2 = bitcast i8* %scevgep502.us.2 to double*
  %_p_scalar_504.us.2 = load double, double* %scevgep502503.us.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_504.us.2
  store double %p_add42.i79.us.2, double* %scevgep502503.us.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next484.us.2 = add nuw nsw i64 %polly.indvar483.us.2, 1
  %exitcond1064.2.not = icmp eq i64 %polly.indvar483.us.2, %smin1063
  br i1 %exitcond1064.2.not, label %polly.loop_exit481.loopexit.us.2, label %polly.loop_header479.us.2, !llvm.loop !175

polly.loop_exit481.loopexit.us.2:                 ; preds = %polly.loop_header479.us.2, %middle.block1391
  %polly.access.add.Packed_MemRef_call2303491.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us.3, %292
  %polly.access.Packed_MemRef_call2303492.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call2303492.us.3, align 8
  %polly.access.add.Packed_MemRef_call1301499.us.3 = add nsw i64 %291, 3600
  %polly.access.Packed_MemRef_call1301500.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call1301500.us.3, align 8
  %min.iters.check1364 = icmp ult i64 %290, 4
  br i1 %min.iters.check1364, label %polly.loop_header479.us.3.preheader, label %vector.ph1365

vector.ph1365:                                    ; preds = %polly.loop_exit481.loopexit.us.2
  %n.vec1367 = and i64 %290, -4
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_493.us.3, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1376 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1377 = shufflevector <4 x double> %broadcast.splatinsert1376, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1362 ]
  %619 = add nuw nsw i64 %index1368, %265
  %620 = add nuw nsw i64 %index1368, 3600
  %621 = getelementptr double, double* %Packed_MemRef_call1301, i64 %620
  %622 = bitcast double* %621 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %622, align 8
  %623 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %624 = add nuw nsw i64 %619, %polly.access.mul.Packed_MemRef_call2303490.us.3
  %625 = getelementptr double, double* %Packed_MemRef_call2303, i64 %624
  %626 = bitcast double* %625 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %626, align 8
  %627 = fmul fast <4 x double> %broadcast.splat1377, %wide.load1375
  %628 = shl i64 %619, 3
  %629 = add nuw nsw i64 %628, %295
  %630 = getelementptr i8, i8* %call, i64 %629
  %631 = bitcast i8* %630 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %631, align 8, !alias.scope !91, !noalias !93
  %632 = fadd fast <4 x double> %627, %623
  %633 = fmul fast <4 x double> %632, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %634 = fadd fast <4 x double> %633, %wide.load1378
  %635 = bitcast i8* %630 to <4 x double>*
  store <4 x double> %634, <4 x double>* %635, align 8, !alias.scope !91, !noalias !93
  %index.next1369 = add i64 %index1368, 4
  %636 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %636, label %middle.block1360, label %vector.body1362, !llvm.loop !176

middle.block1360:                                 ; preds = %vector.body1362
  %cmp.n1371 = icmp eq i64 %290, %n.vec1367
  br i1 %cmp.n1371, label %polly.loop_exit474, label %polly.loop_header479.us.3.preheader

polly.loop_header479.us.3.preheader:              ; preds = %polly.loop_exit481.loopexit.us.2, %middle.block1360
  %polly.indvar483.us.3.ph = phi i64 [ 0, %polly.loop_exit481.loopexit.us.2 ], [ %n.vec1367, %middle.block1360 ]
  br label %polly.loop_header479.us.3

polly.loop_header479.us.3:                        ; preds = %polly.loop_header479.us.3.preheader, %polly.loop_header479.us.3
  %polly.indvar483.us.3 = phi i64 [ %polly.indvar_next484.us.3, %polly.loop_header479.us.3 ], [ %polly.indvar483.us.3.ph, %polly.loop_header479.us.3.preheader ]
  %637 = add nuw nsw i64 %polly.indvar483.us.3, %265
  %polly.access.add.Packed_MemRef_call1301487.us.3 = add nuw nsw i64 %polly.indvar483.us.3, 3600
  %polly.access.Packed_MemRef_call1301488.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us.3
  %_p_scalar_489.us.3 = load double, double* %polly.access.Packed_MemRef_call1301488.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_493.us.3, %_p_scalar_489.us.3
  %polly.access.add.Packed_MemRef_call2303495.us.3 = add nuw nsw i64 %637, %polly.access.mul.Packed_MemRef_call2303490.us.3
  %polly.access.Packed_MemRef_call2303496.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2303496.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %638 = shl i64 %637, 3
  %639 = add nuw nsw i64 %638, %295
  %scevgep502.us.3 = getelementptr i8, i8* %call, i64 %639
  %scevgep502503.us.3 = bitcast i8* %scevgep502.us.3 to double*
  %_p_scalar_504.us.3 = load double, double* %scevgep502503.us.3, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_504.us.3
  store double %p_add42.i79.us.3, double* %scevgep502503.us.3, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next484.us.3 = add nuw nsw i64 %polly.indvar483.us.3, 1
  %exitcond1064.3.not = icmp eq i64 %polly.indvar483.us.3, %smin1063
  br i1 %exitcond1064.3.not, label %polly.loop_exit474, label %polly.loop_header479.us.3, !llvm.loop !177

polly.loop_header659.us.1:                        ; preds = %polly.loop_header659.us.1.preheader, %polly.loop_header659.us.1
  %polly.indvar663.us.1 = phi i64 [ %polly.indvar_next664.us.1, %polly.loop_header659.us.1 ], [ 0, %polly.loop_header659.us.1.preheader ]
  %640 = add nuw nsw i64 %polly.indvar663.us.1, %388
  %polly.access.mul.call1667.us.1 = mul nuw nsw i64 %640, 1000
  %polly.access.add.call1668.us.1 = add nuw nsw i64 %359, %polly.access.mul.call1667.us.1
  %polly.access.call1669.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us.1
  %polly.access.call1669.load.us.1 = load double, double* %polly.access.call1669.us.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510.us.1 = add nuw nsw i64 %polly.indvar663.us.1, 1200
  %polly.access.Packed_MemRef_call1510.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us.1
  store double %polly.access.call1669.load.us.1, double* %polly.access.Packed_MemRef_call1510.us.1, align 8
  %polly.indvar_next664.us.1 = add nuw nsw i64 %polly.indvar663.us.1, 1
  %exitcond1082.1.not = icmp eq i64 %polly.indvar663.us.1, %smin1084
  br i1 %exitcond1082.1.not, label %polly.cond670.loopexit.us.1, label %polly.loop_header659.us.1

polly.cond670.loopexit.us.1:                      ; preds = %polly.loop_header659.us.1
  br i1 %.not921, label %polly.loop_header659.us.2.preheader, label %polly.then672.us.1

polly.then672.us.1:                               ; preds = %polly.cond670.loopexit.us.1
  %polly.access.add.call1676.us.1 = or i64 %416, 1
  %polly.access.call1677.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us.1
  %polly.access.call1677.load.us.1 = load double, double* %polly.access.call1677.us.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510679.us.1 = add nsw i64 %414, 1200
  %polly.access.Packed_MemRef_call1510680.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us.1
  store double %polly.access.call1677.load.us.1, double* %polly.access.Packed_MemRef_call1510680.us.1, align 8
  br label %polly.loop_header659.us.2.preheader

polly.loop_header659.us.2.preheader:              ; preds = %polly.then672.us.1, %polly.cond670.loopexit.us.1
  br label %polly.loop_header659.us.2

polly.loop_header659.us.2:                        ; preds = %polly.loop_header659.us.2.preheader, %polly.loop_header659.us.2
  %polly.indvar663.us.2 = phi i64 [ %polly.indvar_next664.us.2, %polly.loop_header659.us.2 ], [ 0, %polly.loop_header659.us.2.preheader ]
  %641 = add nuw nsw i64 %polly.indvar663.us.2, %388
  %polly.access.mul.call1667.us.2 = mul nuw nsw i64 %641, 1000
  %polly.access.add.call1668.us.2 = add nuw nsw i64 %360, %polly.access.mul.call1667.us.2
  %polly.access.call1669.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us.2
  %polly.access.call1669.load.us.2 = load double, double* %polly.access.call1669.us.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510.us.2 = add nuw nsw i64 %polly.indvar663.us.2, 2400
  %polly.access.Packed_MemRef_call1510.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us.2
  store double %polly.access.call1669.load.us.2, double* %polly.access.Packed_MemRef_call1510.us.2, align 8
  %polly.indvar_next664.us.2 = add nuw nsw i64 %polly.indvar663.us.2, 1
  %exitcond1082.2.not = icmp eq i64 %polly.indvar663.us.2, %smin1084
  br i1 %exitcond1082.2.not, label %polly.cond670.loopexit.us.2, label %polly.loop_header659.us.2

polly.cond670.loopexit.us.2:                      ; preds = %polly.loop_header659.us.2
  br i1 %.not921, label %polly.loop_header659.us.3.preheader, label %polly.then672.us.2

polly.then672.us.2:                               ; preds = %polly.cond670.loopexit.us.2
  %polly.access.add.call1676.us.2 = or i64 %416, 2
  %polly.access.call1677.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us.2
  %polly.access.call1677.load.us.2 = load double, double* %polly.access.call1677.us.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510679.us.2 = add nsw i64 %414, 2400
  %polly.access.Packed_MemRef_call1510680.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us.2
  store double %polly.access.call1677.load.us.2, double* %polly.access.Packed_MemRef_call1510680.us.2, align 8
  br label %polly.loop_header659.us.3.preheader

polly.loop_header659.us.3.preheader:              ; preds = %polly.then672.us.2, %polly.cond670.loopexit.us.2
  br label %polly.loop_header659.us.3

polly.loop_header659.us.3:                        ; preds = %polly.loop_header659.us.3.preheader, %polly.loop_header659.us.3
  %polly.indvar663.us.3 = phi i64 [ %polly.indvar_next664.us.3, %polly.loop_header659.us.3 ], [ 0, %polly.loop_header659.us.3.preheader ]
  %642 = add nuw nsw i64 %polly.indvar663.us.3, %388
  %polly.access.mul.call1667.us.3 = mul nuw nsw i64 %642, 1000
  %polly.access.add.call1668.us.3 = add nuw nsw i64 %361, %polly.access.mul.call1667.us.3
  %polly.access.call1669.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us.3
  %polly.access.call1669.load.us.3 = load double, double* %polly.access.call1669.us.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510.us.3 = add nuw nsw i64 %polly.indvar663.us.3, 3600
  %polly.access.Packed_MemRef_call1510.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us.3
  store double %polly.access.call1669.load.us.3, double* %polly.access.Packed_MemRef_call1510.us.3, align 8
  %polly.indvar_next664.us.3 = add nuw nsw i64 %polly.indvar663.us.3, 1
  %exitcond1082.3.not = icmp eq i64 %polly.indvar663.us.3, %smin1084
  br i1 %exitcond1082.3.not, label %polly.cond670.loopexit.us.3, label %polly.loop_header659.us.3

polly.cond670.loopexit.us.3:                      ; preds = %polly.loop_header659.us.3
  br i1 %.not921, label %polly.loop_header681.preheader, label %polly.then672.us.3

polly.then672.us.3:                               ; preds = %polly.cond670.loopexit.us.3
  %polly.access.add.call1676.us.3 = or i64 %416, 3
  %polly.access.call1677.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us.3
  %polly.access.call1677.load.us.3 = load double, double* %polly.access.call1677.us.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1510679.us.3 = add nsw i64 %414, 3600
  %polly.access.Packed_MemRef_call1510680.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us.3
  store double %polly.access.call1677.load.us.3, double* %polly.access.Packed_MemRef_call1510680.us.3, align 8
  br label %polly.loop_header681.preheader

polly.loop_header688.us.1:                        ; preds = %polly.loop_header688.us.1.preheader, %polly.loop_header688.us.1
  %polly.indvar692.us.1 = phi i64 [ %polly.indvar_next693.us.1, %polly.loop_header688.us.1 ], [ %polly.indvar692.us.1.ph, %polly.loop_header688.us.1.preheader ]
  %643 = add nuw nsw i64 %polly.indvar692.us.1, %388
  %polly.access.add.Packed_MemRef_call1510696.us.1 = add nuw nsw i64 %polly.indvar692.us.1, 1200
  %polly.access.Packed_MemRef_call1510697.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us.1
  %_p_scalar_698.us.1 = load double, double* %polly.access.Packed_MemRef_call1510697.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_702.us.1, %_p_scalar_698.us.1
  %polly.access.add.Packed_MemRef_call2512704.us.1 = add nuw nsw i64 %643, %polly.access.mul.Packed_MemRef_call2512699.us.1
  %polly.access.Packed_MemRef_call2512705.us.1 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us.1
  %_p_scalar_706.us.1 = load double, double* %polly.access.Packed_MemRef_call2512705.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_710.us.1, %_p_scalar_706.us.1
  %644 = shl i64 %643, 3
  %645 = add nuw nsw i64 %644, %418
  %scevgep711.us.1 = getelementptr i8, i8* %call, i64 %645
  %scevgep711712.us.1 = bitcast i8* %scevgep711.us.1 to double*
  %_p_scalar_713.us.1 = load double, double* %scevgep711712.us.1, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_713.us.1
  store double %p_add42.i.us.1, double* %scevgep711712.us.1, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next693.us.1 = add nuw nsw i64 %polly.indvar692.us.1, 1
  %exitcond1085.1.not = icmp eq i64 %polly.indvar692.us.1, %smin1084
  br i1 %exitcond1085.1.not, label %polly.loop_exit690.loopexit.us.1, label %polly.loop_header688.us.1, !llvm.loop !178

polly.loop_exit690.loopexit.us.1:                 ; preds = %polly.loop_header688.us.1, %middle.block1285
  %polly.access.add.Packed_MemRef_call2512700.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us.2, %415
  %polly.access.Packed_MemRef_call2512701.us.2 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us.2
  %_p_scalar_702.us.2 = load double, double* %polly.access.Packed_MemRef_call2512701.us.2, align 8
  %polly.access.add.Packed_MemRef_call1510708.us.2 = add nsw i64 %414, 2400
  %polly.access.Packed_MemRef_call1510709.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1510709.us.2, align 8
  %min.iters.check1258 = icmp ult i64 %406, 4
  br i1 %min.iters.check1258, label %polly.loop_header688.us.2.preheader, label %vector.memcheck1242

vector.memcheck1242:                              ; preds = %polly.loop_exit690.loopexit.us.1
  %bound01250 = icmp ult i8* %scevgep1243, %scevgep1249
  %bound11251 = icmp ult i8* %scevgep1247, %scevgep1246
  %found.conflict1252 = and i1 %bound01250, %bound11251
  br i1 %found.conflict1252, label %polly.loop_header688.us.2.preheader, label %vector.ph1259

vector.ph1259:                                    ; preds = %vector.memcheck1242
  %n.vec1261 = and i64 %406, -4
  %broadcast.splatinsert1267 = insertelement <4 x double> poison, double %_p_scalar_702.us.2, i32 0
  %broadcast.splat1268 = shufflevector <4 x double> %broadcast.splatinsert1267, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1270 = insertelement <4 x double> poison, double %_p_scalar_710.us.2, i32 0
  %broadcast.splat1271 = shufflevector <4 x double> %broadcast.splatinsert1270, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1256 ]
  %646 = add nuw nsw i64 %index1262, %388
  %647 = add nuw nsw i64 %index1262, 2400
  %648 = getelementptr double, double* %Packed_MemRef_call1510, i64 %647
  %649 = bitcast double* %648 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %649, align 8, !alias.scope !179
  %650 = fmul fast <4 x double> %broadcast.splat1268, %wide.load1266
  %651 = add nuw nsw i64 %646, %polly.access.mul.Packed_MemRef_call2512699.us.2
  %652 = getelementptr double, double* %Packed_MemRef_call2512, i64 %651
  %653 = bitcast double* %652 to <4 x double>*
  %wide.load1269 = load <4 x double>, <4 x double>* %653, align 8
  %654 = fmul fast <4 x double> %broadcast.splat1271, %wide.load1269
  %655 = shl i64 %646, 3
  %656 = add nuw nsw i64 %655, %418
  %657 = getelementptr i8, i8* %call, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %658, align 8, !alias.scope !182, !noalias !184
  %659 = fadd fast <4 x double> %654, %650
  %660 = fmul fast <4 x double> %659, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %661 = fadd fast <4 x double> %660, %wide.load1272
  %662 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %661, <4 x double>* %662, align 8, !alias.scope !182, !noalias !184
  %index.next1263 = add i64 %index1262, 4
  %663 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %663, label %middle.block1254, label %vector.body1256, !llvm.loop !185

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1265 = icmp eq i64 %406, %n.vec1261
  br i1 %cmp.n1265, label %polly.loop_exit690.loopexit.us.2, label %polly.loop_header688.us.2.preheader

polly.loop_header688.us.2.preheader:              ; preds = %vector.memcheck1242, %polly.loop_exit690.loopexit.us.1, %middle.block1254
  %polly.indvar692.us.2.ph = phi i64 [ 0, %vector.memcheck1242 ], [ 0, %polly.loop_exit690.loopexit.us.1 ], [ %n.vec1261, %middle.block1254 ]
  br label %polly.loop_header688.us.2

polly.loop_header688.us.2:                        ; preds = %polly.loop_header688.us.2.preheader, %polly.loop_header688.us.2
  %polly.indvar692.us.2 = phi i64 [ %polly.indvar_next693.us.2, %polly.loop_header688.us.2 ], [ %polly.indvar692.us.2.ph, %polly.loop_header688.us.2.preheader ]
  %664 = add nuw nsw i64 %polly.indvar692.us.2, %388
  %polly.access.add.Packed_MemRef_call1510696.us.2 = add nuw nsw i64 %polly.indvar692.us.2, 2400
  %polly.access.Packed_MemRef_call1510697.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us.2
  %_p_scalar_698.us.2 = load double, double* %polly.access.Packed_MemRef_call1510697.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_702.us.2, %_p_scalar_698.us.2
  %polly.access.add.Packed_MemRef_call2512704.us.2 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2512699.us.2
  %polly.access.Packed_MemRef_call2512705.us.2 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us.2
  %_p_scalar_706.us.2 = load double, double* %polly.access.Packed_MemRef_call2512705.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_710.us.2, %_p_scalar_706.us.2
  %665 = shl i64 %664, 3
  %666 = add nuw nsw i64 %665, %418
  %scevgep711.us.2 = getelementptr i8, i8* %call, i64 %666
  %scevgep711712.us.2 = bitcast i8* %scevgep711.us.2 to double*
  %_p_scalar_713.us.2 = load double, double* %scevgep711712.us.2, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_713.us.2
  store double %p_add42.i.us.2, double* %scevgep711712.us.2, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next693.us.2 = add nuw nsw i64 %polly.indvar692.us.2, 1
  %exitcond1085.2.not = icmp eq i64 %polly.indvar692.us.2, %smin1084
  br i1 %exitcond1085.2.not, label %polly.loop_exit690.loopexit.us.2, label %polly.loop_header688.us.2, !llvm.loop !186

polly.loop_exit690.loopexit.us.2:                 ; preds = %polly.loop_header688.us.2, %middle.block1254
  %polly.access.add.Packed_MemRef_call2512700.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us.3, %415
  %polly.access.Packed_MemRef_call2512701.us.3 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us.3
  %_p_scalar_702.us.3 = load double, double* %polly.access.Packed_MemRef_call2512701.us.3, align 8
  %polly.access.add.Packed_MemRef_call1510708.us.3 = add nsw i64 %414, 3600
  %polly.access.Packed_MemRef_call1510709.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1510709.us.3, align 8
  %min.iters.check1227 = icmp ult i64 %413, 4
  br i1 %min.iters.check1227, label %polly.loop_header688.us.3.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %polly.loop_exit690.loopexit.us.2
  %n.vec1230 = and i64 %413, -4
  %broadcast.splatinsert1236 = insertelement <4 x double> poison, double %_p_scalar_702.us.3, i32 0
  %broadcast.splat1237 = shufflevector <4 x double> %broadcast.splatinsert1236, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1239 = insertelement <4 x double> poison, double %_p_scalar_710.us.3, i32 0
  %broadcast.splat1240 = shufflevector <4 x double> %broadcast.splatinsert1239, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1225 ]
  %667 = add nuw nsw i64 %index1231, %388
  %668 = add nuw nsw i64 %index1231, 3600
  %669 = getelementptr double, double* %Packed_MemRef_call1510, i64 %668
  %670 = bitcast double* %669 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %670, align 8
  %671 = fmul fast <4 x double> %broadcast.splat1237, %wide.load1235
  %672 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2512699.us.3
  %673 = getelementptr double, double* %Packed_MemRef_call2512, i64 %672
  %674 = bitcast double* %673 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %674, align 8
  %675 = fmul fast <4 x double> %broadcast.splat1240, %wide.load1238
  %676 = shl i64 %667, 3
  %677 = add nuw nsw i64 %676, %418
  %678 = getelementptr i8, i8* %call, i64 %677
  %679 = bitcast i8* %678 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !117, !noalias !119
  %680 = fadd fast <4 x double> %675, %671
  %681 = fmul fast <4 x double> %680, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %682 = fadd fast <4 x double> %681, %wide.load1241
  %683 = bitcast i8* %678 to <4 x double>*
  store <4 x double> %682, <4 x double>* %683, align 8, !alias.scope !117, !noalias !119
  %index.next1232 = add i64 %index1231, 4
  %684 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %684, label %middle.block1223, label %vector.body1225, !llvm.loop !187

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1234 = icmp eq i64 %413, %n.vec1230
  br i1 %cmp.n1234, label %polly.loop_exit683, label %polly.loop_header688.us.3.preheader

polly.loop_header688.us.3.preheader:              ; preds = %polly.loop_exit690.loopexit.us.2, %middle.block1223
  %polly.indvar692.us.3.ph = phi i64 [ 0, %polly.loop_exit690.loopexit.us.2 ], [ %n.vec1230, %middle.block1223 ]
  br label %polly.loop_header688.us.3

polly.loop_header688.us.3:                        ; preds = %polly.loop_header688.us.3.preheader, %polly.loop_header688.us.3
  %polly.indvar692.us.3 = phi i64 [ %polly.indvar_next693.us.3, %polly.loop_header688.us.3 ], [ %polly.indvar692.us.3.ph, %polly.loop_header688.us.3.preheader ]
  %685 = add nuw nsw i64 %polly.indvar692.us.3, %388
  %polly.access.add.Packed_MemRef_call1510696.us.3 = add nuw nsw i64 %polly.indvar692.us.3, 3600
  %polly.access.Packed_MemRef_call1510697.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us.3
  %_p_scalar_698.us.3 = load double, double* %polly.access.Packed_MemRef_call1510697.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_702.us.3, %_p_scalar_698.us.3
  %polly.access.add.Packed_MemRef_call2512704.us.3 = add nuw nsw i64 %685, %polly.access.mul.Packed_MemRef_call2512699.us.3
  %polly.access.Packed_MemRef_call2512705.us.3 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us.3
  %_p_scalar_706.us.3 = load double, double* %polly.access.Packed_MemRef_call2512705.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_710.us.3, %_p_scalar_706.us.3
  %686 = shl i64 %685, 3
  %687 = add nuw nsw i64 %686, %418
  %scevgep711.us.3 = getelementptr i8, i8* %call, i64 %687
  %scevgep711712.us.3 = bitcast i8* %scevgep711.us.3 to double*
  %_p_scalar_713.us.3 = load double, double* %scevgep711712.us.3, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_713.us.3
  store double %p_add42.i.us.3, double* %scevgep711712.us.3, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next693.us.3 = add nuw nsw i64 %polly.indvar692.us.3, 1
  %exitcond1085.3.not = icmp eq i64 %polly.indvar692.us.3, %smin1084
  br i1 %exitcond1085.3.not, label %polly.loop_exit683, label %polly.loop_header688.us.3, !llvm.loop !188
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
!45 = distinct !{!45, !12, !24, !46, !47, !48, !35, !49, !53}
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
