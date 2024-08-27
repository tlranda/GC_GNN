; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2185.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2185.c"
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
  %scevgep1141 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1140 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1139 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1138 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1138, %scevgep1141
  %bound1 = icmp ult i8* %scevgep1140, %scevgep1139
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
  br i1 %exitcond18.not.i, label %vector.ph1145, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1145:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1152 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1153 = shufflevector <4 x i64> %broadcast.splatinsert1152, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1145
  %index1146 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1150 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1145 ], [ %vec.ind.next1151, %vector.body1144 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1150, %broadcast.splat1153
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1146
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1151 = add <4 x i64> %vec.ind1150, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1147, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1144, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1144
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1145, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1207 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1207, label %for.body3.i46.preheader1614, label %vector.ph1208

vector.ph1208:                                    ; preds = %for.body3.i46.preheader
  %n.vec1210 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1206 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1211
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %46 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %46, label %middle.block1204, label %vector.body1206, !llvm.loop !18

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i, %n.vec1210
  br i1 %cmp.n1214, label %for.inc6.i, label %for.body3.i46.preheader1614

for.body3.i46.preheader1614:                      ; preds = %for.body3.i46.preheader, %middle.block1204
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1210, %middle.block1204 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1614, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1614 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1204, %for.cond1.preheader.i45
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
  %min.iters.check1341 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1341, label %for.body3.i60.preheader1613, label %vector.ph1342

vector.ph1342:                                    ; preds = %for.body3.i60.preheader
  %n.vec1344 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1342
  %index1345 = phi i64 [ 0, %vector.ph1342 ], [ %index.next1346, %vector.body1340 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1345
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1349 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1349, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1346 = add i64 %index1345, 4
  %57 = icmp eq i64 %index.next1346, %n.vec1344
  br i1 %57, label %middle.block1338, label %vector.body1340, !llvm.loop !56

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1348 = icmp eq i64 %indvars.iv21.i52, %n.vec1344
  br i1 %cmp.n1348, label %for.inc6.i63, label %for.body3.i60.preheader1613

for.body3.i60.preheader1613:                      ; preds = %for.body3.i60.preheader, %middle.block1338
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1344, %middle.block1338 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1613, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1613 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1338, %for.cond1.preheader.i54
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
  %min.iters.check1478 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1478, label %for.body3.i99.preheader1612, label %vector.ph1479

vector.ph1479:                                    ; preds = %for.body3.i99.preheader
  %n.vec1481 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1477

vector.body1477:                                  ; preds = %vector.body1477, %vector.ph1479
  %index1482 = phi i64 [ 0, %vector.ph1479 ], [ %index.next1483, %vector.body1477 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1482
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1486 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1486, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1483 = add i64 %index1482, 4
  %68 = icmp eq i64 %index.next1483, %n.vec1481
  br i1 %68, label %middle.block1475, label %vector.body1477, !llvm.loop !58

middle.block1475:                                 ; preds = %vector.body1477
  %cmp.n1485 = icmp eq i64 %indvars.iv21.i91, %n.vec1481
  br i1 %cmp.n1485, label %for.inc6.i102, label %for.body3.i99.preheader1612

for.body3.i99.preheader1612:                      ; preds = %for.body3.i99.preheader, %middle.block1475
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1481, %middle.block1475 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1612, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1612 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1475, %for.cond1.preheader.i93
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
  %indvar1490 = phi i64 [ %indvar.next1491, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1490, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1492 = icmp ult i64 %88, 4
  br i1 %min.iters.check1492, label %polly.loop_header192.preheader, label %vector.ph1493

vector.ph1493:                                    ; preds = %polly.loop_header
  %n.vec1495 = and i64 %88, -4
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.body1489, %vector.ph1493
  %index1496 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1497, %vector.body1489 ]
  %90 = shl nuw nsw i64 %index1496, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1500, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1497 = add i64 %index1496, 4
  %95 = icmp eq i64 %index.next1497, %n.vec1495
  br i1 %95, label %middle.block1487, label %vector.body1489, !llvm.loop !71

middle.block1487:                                 ; preds = %vector.body1489
  %cmp.n1499 = icmp eq i64 %88, %n.vec1495
  br i1 %cmp.n1499, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1487
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1495, %middle.block1487 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1487
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1491 = add i64 %indvar1490, 1
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
  %scevgep1525 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1526 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1556 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1557 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1587 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 1, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar219, 80
  %98 = mul nuw nsw i64 %polly.indvar219, 768000
  %99 = or i64 %98, 8
  %100 = mul nuw nsw i64 %polly.indvar219, 80
  %101 = mul nuw nsw i64 %polly.indvar219, 80
  %102 = mul nuw nsw i64 %polly.indvar219, 768000
  %103 = or i64 %102, 8
  %104 = mul nuw nsw i64 %polly.indvar219, 80
  %105 = mul nuw nsw i64 %polly.indvar219, 80
  %106 = mul nuw nsw i64 %polly.indvar219, 768000
  %107 = or i64 %106, 8
  %108 = mul nuw nsw i64 %polly.indvar219, 80
  %109 = mul nuw nsw i64 %polly.indvar219, 80
  %110 = mul nuw nsw i64 %polly.indvar219, 80
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 80
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 15
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %111 = shl nsw i64 %polly.indvar225, 2
  %112 = or i64 %111, 1
  %113 = or i64 %111, 2
  %114 = or i64 %111, 3
  %polly.access.mul.Packed_MemRef_call2281.us = mul nsw i64 %polly.indvar225, 4800
  %115 = or i64 %111, 1
  %polly.access.mul.Packed_MemRef_call2281.us.1 = mul nuw nsw i64 %115, 1200
  %116 = or i64 %111, 2
  %polly.access.mul.Packed_MemRef_call2281.us.2 = mul nuw nsw i64 %116, 1200
  %117 = or i64 %111, 3
  %polly.access.mul.Packed_MemRef_call2281.us.3 = mul nuw nsw i64 %117, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %118 = mul nsw i64 %polly.indvar231, -80
  %119 = add i64 %97, %118
  %120 = mul nuw nsw i64 %polly.indvar231, 640
  %121 = add nuw i64 %98, %120
  %122 = add nuw i64 %99, %120
  %123 = mul nsw i64 %polly.indvar231, -80
  %124 = add i64 %100, %123
  %125 = mul nsw i64 %polly.indvar231, -80
  %126 = add i64 %101, %125
  %127 = mul nuw nsw i64 %polly.indvar231, 640
  %128 = add nuw i64 %102, %127
  %129 = add nuw i64 %103, %127
  %130 = mul nsw i64 %polly.indvar231, -80
  %131 = add i64 %104, %130
  %132 = mul nsw i64 %polly.indvar231, -80
  %133 = add i64 %105, %132
  %134 = mul nuw nsw i64 %polly.indvar231, 640
  %135 = add nuw i64 %106, %134
  %136 = add nuw i64 %107, %134
  %137 = mul nsw i64 %polly.indvar231, -80
  %138 = add i64 %108, %137
  %139 = mul nsw i64 %polly.indvar231, -80
  %140 = add i64 %109, %139
  %141 = mul nuw nsw i64 %polly.indvar231, 80
  %142 = sub nsw i64 %110, %141
  %143 = add nuw nsw i64 %141, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -80
  %exitcond1046.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1044
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit265 ], [ %indvars.iv1034, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %144 = add i64 %119, %polly.indvar237
  %smin1596 = call i64 @llvm.smin.i64(i64 %144, i64 79)
  %145 = add nsw i64 %smin1596, 1
  %146 = mul nuw nsw i64 %polly.indvar237, 9600
  %147 = add i64 %121, %146
  %scevgep1583 = getelementptr i8, i8* %call, i64 %147
  %148 = add i64 %122, %146
  %scevgep1584 = getelementptr i8, i8* %call, i64 %148
  %149 = add i64 %124, %polly.indvar237
  %smin1585 = call i64 @llvm.smin.i64(i64 %149, i64 79)
  %150 = shl nsw i64 %smin1585, 3
  %scevgep1586 = getelementptr i8, i8* %scevgep1584, i64 %150
  %scevgep1588 = getelementptr i8, i8* %scevgep1587, i64 %150
  %151 = add i64 %126, %polly.indvar237
  %smin1566 = call i64 @llvm.smin.i64(i64 %151, i64 79)
  %152 = add nsw i64 %smin1566, 1
  %153 = mul nuw nsw i64 %polly.indvar237, 9600
  %154 = add i64 %128, %153
  %scevgep1552 = getelementptr i8, i8* %call, i64 %154
  %155 = add i64 %129, %153
  %scevgep1553 = getelementptr i8, i8* %call, i64 %155
  %156 = add i64 %131, %polly.indvar237
  %smin1554 = call i64 @llvm.smin.i64(i64 %156, i64 79)
  %157 = shl nsw i64 %smin1554, 3
  %scevgep1555 = getelementptr i8, i8* %scevgep1553, i64 %157
  %scevgep1558 = getelementptr i8, i8* %scevgep1557, i64 %157
  %158 = add i64 %133, %polly.indvar237
  %smin1535 = call i64 @llvm.smin.i64(i64 %158, i64 79)
  %159 = add nsw i64 %smin1535, 1
  %160 = mul nuw nsw i64 %polly.indvar237, 9600
  %161 = add i64 %135, %160
  %scevgep1521 = getelementptr i8, i8* %call, i64 %161
  %162 = add i64 %136, %160
  %scevgep1522 = getelementptr i8, i8* %call, i64 %162
  %163 = add i64 %138, %polly.indvar237
  %smin1523 = call i64 @llvm.smin.i64(i64 %163, i64 79)
  %164 = shl nsw i64 %smin1523, 3
  %scevgep1524 = getelementptr i8, i8* %scevgep1522, i64 %164
  %scevgep1527 = getelementptr i8, i8* %scevgep1526, i64 %164
  %165 = add i64 %140, %polly.indvar237
  %smin1504 = call i64 @llvm.smin.i64(i64 %165, i64 79)
  %166 = add nsw i64 %smin1504, 1
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 79)
  %167 = add nsw i64 %polly.indvar237, %142
  %polly.loop_guard1133 = icmp sgt i64 %167, -1
  %168 = add nuw nsw i64 %polly.indvar237, %110
  %.not = icmp ult i64 %168, %143
  %polly.access.mul.call1257 = mul nuw nsw i64 %168, 1000
  %169 = add nuw nsw i64 %polly.access.mul.call1257, %111
  br i1 %polly.loop_guard1133, label %polly.loop_header246.us, label %polly.loop_header234.split

polly.loop_header246.us:                          ; preds = %polly.loop_header234, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header234 ]
  %170 = add nuw nsw i64 %polly.indvar249.us, %141
  %polly.access.mul.call1253.us = mul nuw nsw i64 %170, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %111, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar249.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar249.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1716, i64 %169
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %167
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.loop_header246.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.loop_header246.us.1.preheader, label %polly.then.us

polly.loop_header246.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header246.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1716, i64 %169
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %167
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %169, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %167, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %169, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %167, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %169, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %167, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_header270.us.3, %middle.block1501, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next238, 80
  br i1 %exitcond1043.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %171 = mul nuw nsw i64 %168, 9600
  br i1 %polly.loop_guard1133, label %polly.loop_header263.us.preheader, label %polly.loop_exit265

polly.loop_header263.us.preheader:                ; preds = %polly.loop_header263.preheader
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %168
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %167
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1597 = icmp ult i64 %145, 4
  br i1 %min.iters.check1597, label %polly.loop_header270.us.preheader, label %vector.memcheck1582

vector.memcheck1582:                              ; preds = %polly.loop_header263.us.preheader
  %bound01589 = icmp ult i8* %scevgep1583, %scevgep1588
  %bound11590 = icmp ult i8* %malloccall, %scevgep1586
  %found.conflict1591 = and i1 %bound01589, %bound11590
  br i1 %found.conflict1591, label %polly.loop_header270.us.preheader, label %vector.ph1598

vector.ph1598:                                    ; preds = %vector.memcheck1582
  %n.vec1600 = and i64 %145, -4
  %broadcast.splatinsert1606 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1607 = shufflevector <4 x double> %broadcast.splatinsert1606, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1609 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1610 = shufflevector <4 x double> %broadcast.splatinsert1609, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1595

vector.body1595:                                  ; preds = %vector.body1595, %vector.ph1598
  %index1601 = phi i64 [ 0, %vector.ph1598 ], [ %index.next1602, %vector.body1595 ]
  %172 = add nuw nsw i64 %index1601, %141
  %173 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1601
  %174 = bitcast double* %173 to <4 x double>*
  %wide.load1605 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !76
  %175 = fmul fast <4 x double> %broadcast.splat1607, %wide.load1605
  %176 = add nuw nsw i64 %172, %polly.access.mul.Packed_MemRef_call2281.us
  %177 = getelementptr double, double* %Packed_MemRef_call2, i64 %176
  %178 = bitcast double* %177 to <4 x double>*
  %wide.load1608 = load <4 x double>, <4 x double>* %178, align 8
  %179 = fmul fast <4 x double> %broadcast.splat1610, %wide.load1608
  %180 = shl i64 %172, 3
  %181 = add nuw nsw i64 %180, %171
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  %wide.load1611 = load <4 x double>, <4 x double>* %183, align 8, !alias.scope !79, !noalias !81
  %184 = fadd fast <4 x double> %179, %175
  %185 = fmul fast <4 x double> %184, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %186 = fadd fast <4 x double> %185, %wide.load1611
  %187 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %186, <4 x double>* %187, align 8, !alias.scope !79, !noalias !81
  %index.next1602 = add i64 %index1601, 4
  %188 = icmp eq i64 %index.next1602, %n.vec1600
  br i1 %188, label %middle.block1593, label %vector.body1595, !llvm.loop !82

middle.block1593:                                 ; preds = %vector.body1595
  %cmp.n1604 = icmp eq i64 %145, %n.vec1600
  br i1 %cmp.n1604, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1582, %polly.loop_header263.us.preheader, %middle.block1593
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1582 ], [ 0, %polly.loop_header263.us.preheader ], [ %n.vec1600, %middle.block1593 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %189 = add nuw nsw i64 %polly.indvar274.us, %141
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar274.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %190 = shl i64 %189, 3
  %191 = add nuw nsw i64 %190, %171
  %scevgep293.us = getelementptr i8, i8* %call, i64 %191
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar274.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !83

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1593
  %polly.access.add.Packed_MemRef_call2282.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.1, %168
  %polly.access.Packed_MemRef_call2283.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call2283.us.1, align 8
  %polly.access.add.Packed_MemRef_call1290.us.1 = add nsw i64 %167, 1200
  %polly.access.Packed_MemRef_call1291.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call1291.us.1, align 8
  %min.iters.check1567 = icmp ult i64 %152, 4
  br i1 %min.iters.check1567, label %polly.loop_header270.us.1.preheader, label %vector.memcheck1551

vector.memcheck1551:                              ; preds = %polly.loop_exit272.loopexit.us
  %bound01559 = icmp ult i8* %scevgep1552, %scevgep1558
  %bound11560 = icmp ult i8* %scevgep1556, %scevgep1555
  %found.conflict1561 = and i1 %bound01559, %bound11560
  br i1 %found.conflict1561, label %polly.loop_header270.us.1.preheader, label %vector.ph1568

vector.ph1568:                                    ; preds = %vector.memcheck1551
  %n.vec1570 = and i64 %152, -4
  %broadcast.splatinsert1576 = insertelement <4 x double> poison, double %_p_scalar_284.us.1, i32 0
  %broadcast.splat1577 = shufflevector <4 x double> %broadcast.splatinsert1576, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1579 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1580 = shufflevector <4 x double> %broadcast.splatinsert1579, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1565

vector.body1565:                                  ; preds = %vector.body1565, %vector.ph1568
  %index1571 = phi i64 [ 0, %vector.ph1568 ], [ %index.next1572, %vector.body1565 ]
  %192 = add nuw nsw i64 %index1571, %141
  %193 = add nuw nsw i64 %index1571, 1200
  %194 = getelementptr double, double* %Packed_MemRef_call1, i64 %193
  %195 = bitcast double* %194 to <4 x double>*
  %wide.load1575 = load <4 x double>, <4 x double>* %195, align 8, !alias.scope !84
  %196 = fmul fast <4 x double> %broadcast.splat1577, %wide.load1575
  %197 = add nuw nsw i64 %192, %polly.access.mul.Packed_MemRef_call2281.us.1
  %198 = getelementptr double, double* %Packed_MemRef_call2, i64 %197
  %199 = bitcast double* %198 to <4 x double>*
  %wide.load1578 = load <4 x double>, <4 x double>* %199, align 8
  %200 = fmul fast <4 x double> %broadcast.splat1580, %wide.load1578
  %201 = shl i64 %192, 3
  %202 = add nuw nsw i64 %201, %171
  %203 = getelementptr i8, i8* %call, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  %wide.load1581 = load <4 x double>, <4 x double>* %204, align 8, !alias.scope !87, !noalias !89
  %205 = fadd fast <4 x double> %200, %196
  %206 = fmul fast <4 x double> %205, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %207 = fadd fast <4 x double> %206, %wide.load1581
  %208 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %207, <4 x double>* %208, align 8, !alias.scope !87, !noalias !89
  %index.next1572 = add i64 %index1571, 4
  %209 = icmp eq i64 %index.next1572, %n.vec1570
  br i1 %209, label %middle.block1563, label %vector.body1565, !llvm.loop !90

middle.block1563:                                 ; preds = %vector.body1565
  %cmp.n1574 = icmp eq i64 %152, %n.vec1570
  br i1 %cmp.n1574, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1.preheader

polly.loop_header270.us.1.preheader:              ; preds = %vector.memcheck1551, %polly.loop_exit272.loopexit.us, %middle.block1563
  %polly.indvar274.us.1.ph = phi i64 [ 0, %vector.memcheck1551 ], [ 0, %polly.loop_exit272.loopexit.us ], [ %n.vec1570, %middle.block1563 ]
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
  %indvar1353 = phi i64 [ %indvar.next1354, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %210 = add i64 %indvar1353, 1
  %211 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %211
  %min.iters.check1355 = icmp ult i64 %210, 4
  br i1 %min.iters.check1355, label %polly.loop_header392.preheader, label %vector.ph1356

vector.ph1356:                                    ; preds = %polly.loop_header386
  %n.vec1358 = and i64 %210, -4
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %vector.ph1356
  %index1359 = phi i64 [ 0, %vector.ph1356 ], [ %index.next1360, %vector.body1352 ]
  %212 = shl nuw nsw i64 %index1359, 3
  %213 = getelementptr i8, i8* %scevgep398, i64 %212
  %214 = bitcast i8* %213 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !91, !noalias !93
  %215 = fmul fast <4 x double> %wide.load1363, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %216 = bitcast i8* %213 to <4 x double>*
  store <4 x double> %215, <4 x double>* %216, align 8, !alias.scope !91, !noalias !93
  %index.next1360 = add i64 %index1359, 4
  %217 = icmp eq i64 %index.next1360, %n.vec1358
  br i1 %217, label %middle.block1350, label %vector.body1352, !llvm.loop !98

middle.block1350:                                 ; preds = %vector.body1352
  %cmp.n1362 = icmp eq i64 %210, %n.vec1358
  br i1 %cmp.n1362, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1350
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1358, %middle.block1350 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1350
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1354 = add i64 %indvar1353, 1
  br i1 %exitcond1075.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %218 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %218
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !91, !noalias !93
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1074.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !99

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1073.not, label %polly.loop_header418.preheader, label %polly.loop_header402

polly.loop_header418.preheader:                   ; preds = %polly.loop_exit410
  %scevgep1388 = getelementptr i8, i8* %malloccall300, i64 19200
  %scevgep1389 = getelementptr i8, i8* %malloccall300, i64 19208
  %scevgep1419 = getelementptr i8, i8* %malloccall300, i64 9600
  %scevgep1420 = getelementptr i8, i8* %malloccall300, i64 9608
  %scevgep1450 = getelementptr i8, i8* %malloccall300, i64 8
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
  %exitcond1072.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1072.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_header418.preheader, %polly.loop_exit426
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit426 ], [ 1, %polly.loop_header418.preheader ]
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %219 = mul nuw nsw i64 %polly.indvar421, 80
  %220 = mul nuw nsw i64 %polly.indvar421, 768000
  %221 = or i64 %220, 8
  %222 = mul nuw nsw i64 %polly.indvar421, 80
  %223 = mul nuw nsw i64 %polly.indvar421, 80
  %224 = mul nuw nsw i64 %polly.indvar421, 768000
  %225 = or i64 %224, 8
  %226 = mul nuw nsw i64 %polly.indvar421, 80
  %227 = mul nuw nsw i64 %polly.indvar421, 80
  %228 = mul nuw nsw i64 %polly.indvar421, 768000
  %229 = or i64 %228, 8
  %230 = mul nuw nsw i64 %polly.indvar421, 80
  %231 = mul nuw nsw i64 %polly.indvar421, 80
  %232 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 80
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next422, 15
  br i1 %exitcond1071.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %233 = shl nsw i64 %polly.indvar427, 2
  %234 = or i64 %233, 1
  %235 = or i64 %233, 2
  %236 = or i64 %233, 3
  %polly.access.mul.Packed_MemRef_call2303489.us = mul nsw i64 %polly.indvar427, 4800
  %237 = or i64 %233, 1
  %polly.access.mul.Packed_MemRef_call2303489.us.1 = mul nuw nsw i64 %237, 1200
  %238 = or i64 %233, 2
  %polly.access.mul.Packed_MemRef_call2303489.us.2 = mul nuw nsw i64 %238, 1200
  %239 = or i64 %233, 3
  %polly.access.mul.Packed_MemRef_call2303489.us.3 = mul nuw nsw i64 %239, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_exit438
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next428, 250
  br i1 %exitcond1070.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_exit438, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit438 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit438 ], [ 0, %polly.loop_header424 ]
  %240 = mul nsw i64 %polly.indvar433, -80
  %241 = add i64 %219, %240
  %242 = mul nuw nsw i64 %polly.indvar433, 640
  %243 = add nuw i64 %220, %242
  %244 = add nuw i64 %221, %242
  %245 = mul nsw i64 %polly.indvar433, -80
  %246 = add i64 %222, %245
  %247 = mul nsw i64 %polly.indvar433, -80
  %248 = add i64 %223, %247
  %249 = mul nuw nsw i64 %polly.indvar433, 640
  %250 = add nuw i64 %224, %249
  %251 = add nuw i64 %225, %249
  %252 = mul nsw i64 %polly.indvar433, -80
  %253 = add i64 %226, %252
  %254 = mul nsw i64 %polly.indvar433, -80
  %255 = add i64 %227, %254
  %256 = mul nuw nsw i64 %polly.indvar433, 640
  %257 = add nuw i64 %228, %256
  %258 = add nuw i64 %229, %256
  %259 = mul nsw i64 %polly.indvar433, -80
  %260 = add i64 %230, %259
  %261 = mul nsw i64 %polly.indvar433, -80
  %262 = add i64 %231, %261
  %263 = mul nuw nsw i64 %polly.indvar433, 80
  %264 = sub nsw i64 %232, %263
  %265 = add nuw nsw i64 %263, 80
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit473
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -80
  %exitcond1069.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1067
  br i1 %exitcond1069.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header436:                             ; preds = %polly.loop_exit473, %polly.loop_header430
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit473 ], [ %indvars.iv1056, %polly.loop_header430 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit473 ], [ 0, %polly.loop_header430 ]
  %266 = add i64 %241, %polly.indvar439
  %smin1459 = call i64 @llvm.smin.i64(i64 %266, i64 79)
  %267 = add nsw i64 %smin1459, 1
  %268 = mul nuw nsw i64 %polly.indvar439, 9600
  %269 = add i64 %243, %268
  %scevgep1446 = getelementptr i8, i8* %call, i64 %269
  %270 = add i64 %244, %268
  %scevgep1447 = getelementptr i8, i8* %call, i64 %270
  %271 = add i64 %246, %polly.indvar439
  %smin1448 = call i64 @llvm.smin.i64(i64 %271, i64 79)
  %272 = shl nsw i64 %smin1448, 3
  %scevgep1449 = getelementptr i8, i8* %scevgep1447, i64 %272
  %scevgep1451 = getelementptr i8, i8* %scevgep1450, i64 %272
  %273 = add i64 %248, %polly.indvar439
  %smin1429 = call i64 @llvm.smin.i64(i64 %273, i64 79)
  %274 = add nsw i64 %smin1429, 1
  %275 = mul nuw nsw i64 %polly.indvar439, 9600
  %276 = add i64 %250, %275
  %scevgep1415 = getelementptr i8, i8* %call, i64 %276
  %277 = add i64 %251, %275
  %scevgep1416 = getelementptr i8, i8* %call, i64 %277
  %278 = add i64 %253, %polly.indvar439
  %smin1417 = call i64 @llvm.smin.i64(i64 %278, i64 79)
  %279 = shl nsw i64 %smin1417, 3
  %scevgep1418 = getelementptr i8, i8* %scevgep1416, i64 %279
  %scevgep1421 = getelementptr i8, i8* %scevgep1420, i64 %279
  %280 = add i64 %255, %polly.indvar439
  %smin1398 = call i64 @llvm.smin.i64(i64 %280, i64 79)
  %281 = add nsw i64 %smin1398, 1
  %282 = mul nuw nsw i64 %polly.indvar439, 9600
  %283 = add i64 %257, %282
  %scevgep1384 = getelementptr i8, i8* %call, i64 %283
  %284 = add i64 %258, %282
  %scevgep1385 = getelementptr i8, i8* %call, i64 %284
  %285 = add i64 %260, %polly.indvar439
  %smin1386 = call i64 @llvm.smin.i64(i64 %285, i64 79)
  %286 = shl nsw i64 %smin1386, 3
  %scevgep1387 = getelementptr i8, i8* %scevgep1385, i64 %286
  %scevgep1390 = getelementptr i8, i8* %scevgep1389, i64 %286
  %287 = add i64 %262, %polly.indvar439
  %smin1367 = call i64 @llvm.smin.i64(i64 %287, i64 79)
  %288 = add nsw i64 %smin1367, 1
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 79)
  %289 = add nsw i64 %polly.indvar439, %264
  %polly.loop_guard4521134 = icmp sgt i64 %289, -1
  %290 = add nuw nsw i64 %polly.indvar439, %232
  %.not918 = icmp ult i64 %290, %265
  %polly.access.mul.call1465 = mul nuw nsw i64 %290, 1000
  %291 = add nuw nsw i64 %polly.access.mul.call1465, %233
  br i1 %polly.loop_guard4521134, label %polly.loop_header449.us, label %polly.loop_header436.split

polly.loop_header449.us:                          ; preds = %polly.loop_header436, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header436 ]
  %292 = add nuw nsw i64 %polly.indvar453.us, %263
  %polly.access.mul.call1457.us = mul nuw nsw i64 %292, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %233, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar453.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar453.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond460.loopexit.us, label %polly.loop_header449.us

polly.then462.us:                                 ; preds = %polly.cond460.loopexit.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1716, i64 %291
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301470.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %289
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1301470.us, align 8
  br label %polly.loop_header449.us.1.preheader

polly.cond460.loopexit.us:                        ; preds = %polly.loop_header449.us
  br i1 %.not918, label %polly.loop_header449.us.1.preheader, label %polly.then462.us

polly.loop_header449.us.1.preheader:              ; preds = %polly.then462.us, %polly.cond460.loopexit.us
  br label %polly.loop_header449.us.1

polly.loop_header436.split:                       ; preds = %polly.loop_header436
  br i1 %.not918, label %polly.loop_exit473, label %polly.loop_header442.preheader

polly.loop_header442.preheader:                   ; preds = %polly.loop_header436.split
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1716, i64 %291
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1301470 = getelementptr double, double* %Packed_MemRef_call1301, i64 %289
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1301470, align 8
  %polly.access.add.call1466.1 = or i64 %291, 1
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.1 = add nsw i64 %289, 1200
  %polly.access.Packed_MemRef_call1301470.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1301470.1, align 8
  %polly.access.add.call1466.2 = or i64 %291, 2
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.2 = add nsw i64 %289, 2400
  %polly.access.Packed_MemRef_call1301470.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1301470.2, align 8
  %polly.access.add.call1466.3 = or i64 %291, 3
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.3 = add nsw i64 %289, 3600
  %polly.access.Packed_MemRef_call1301470.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1301470.3, align 8
  br label %polly.loop_exit473

polly.loop_exit473:                               ; preds = %polly.loop_header478.us.3, %middle.block1364, %polly.loop_header436.split, %polly.loop_header442.preheader, %polly.loop_header471.preheader
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next440, 80
  br i1 %exitcond1066.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header471.preheader:                   ; preds = %polly.cond460.loopexit.us.3, %polly.then462.us.3
  %293 = mul nuw nsw i64 %290, 9600
  br i1 %polly.loop_guard4521134, label %polly.loop_header471.us.preheader, label %polly.loop_exit473

polly.loop_header471.us.preheader:                ; preds = %polly.loop_header471.preheader
  %polly.access.add.Packed_MemRef_call2303490.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us, %290
  %polly.access.Packed_MemRef_call2303491.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2303491.us, align 8
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %289
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %min.iters.check1460 = icmp ult i64 %267, 4
  br i1 %min.iters.check1460, label %polly.loop_header478.us.preheader, label %vector.memcheck1445

vector.memcheck1445:                              ; preds = %polly.loop_header471.us.preheader
  %bound01452 = icmp ult i8* %scevgep1446, %scevgep1451
  %bound11453 = icmp ult i8* %malloccall300, %scevgep1449
  %found.conflict1454 = and i1 %bound01452, %bound11453
  br i1 %found.conflict1454, label %polly.loop_header478.us.preheader, label %vector.ph1461

vector.ph1461:                                    ; preds = %vector.memcheck1445
  %n.vec1463 = and i64 %267, -4
  %broadcast.splatinsert1469 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1470 = shufflevector <4 x double> %broadcast.splatinsert1469, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1472 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1473 = shufflevector <4 x double> %broadcast.splatinsert1472, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1461
  %index1464 = phi i64 [ 0, %vector.ph1461 ], [ %index.next1465, %vector.body1458 ]
  %294 = add nuw nsw i64 %index1464, %263
  %295 = getelementptr double, double* %Packed_MemRef_call1301, i64 %index1464
  %296 = bitcast double* %295 to <4 x double>*
  %wide.load1468 = load <4 x double>, <4 x double>* %296, align 8, !alias.scope !102
  %297 = fmul fast <4 x double> %broadcast.splat1470, %wide.load1468
  %298 = add nuw nsw i64 %294, %polly.access.mul.Packed_MemRef_call2303489.us
  %299 = getelementptr double, double* %Packed_MemRef_call2303, i64 %298
  %300 = bitcast double* %299 to <4 x double>*
  %wide.load1471 = load <4 x double>, <4 x double>* %300, align 8
  %301 = fmul fast <4 x double> %broadcast.splat1473, %wide.load1471
  %302 = shl i64 %294, 3
  %303 = add nuw nsw i64 %302, %293
  %304 = getelementptr i8, i8* %call, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  %wide.load1474 = load <4 x double>, <4 x double>* %305, align 8, !alias.scope !105, !noalias !107
  %306 = fadd fast <4 x double> %301, %297
  %307 = fmul fast <4 x double> %306, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %308 = fadd fast <4 x double> %307, %wide.load1474
  %309 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %308, <4 x double>* %309, align 8, !alias.scope !105, !noalias !107
  %index.next1465 = add i64 %index1464, 4
  %310 = icmp eq i64 %index.next1465, %n.vec1463
  br i1 %310, label %middle.block1456, label %vector.body1458, !llvm.loop !108

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1467 = icmp eq i64 %267, %n.vec1463
  br i1 %cmp.n1467, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us.preheader

polly.loop_header478.us.preheader:                ; preds = %vector.memcheck1445, %polly.loop_header471.us.preheader, %middle.block1456
  %polly.indvar482.us.ph = phi i64 [ 0, %vector.memcheck1445 ], [ 0, %polly.loop_header471.us.preheader ], [ %n.vec1463, %middle.block1456 ]
  br label %polly.loop_header478.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.us.preheader, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ %polly.indvar482.us.ph, %polly.loop_header478.us.preheader ]
  %311 = add nuw nsw i64 %polly.indvar482.us, %263
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar482.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.add.Packed_MemRef_call2303494.us = add nuw nsw i64 %311, %polly.access.mul.Packed_MemRef_call2303489.us
  %polly.access.Packed_MemRef_call2303495.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2303495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %312 = shl i64 %311, 3
  %313 = add nuw nsw i64 %312, %293
  %scevgep501.us = getelementptr i8, i8* %call, i64 %313
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar482.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us, !llvm.loop !109

polly.loop_exit480.loopexit.us:                   ; preds = %polly.loop_header478.us, %middle.block1456
  %polly.access.add.Packed_MemRef_call2303490.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us.1, %290
  %polly.access.Packed_MemRef_call2303491.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us.1
  %_p_scalar_492.us.1 = load double, double* %polly.access.Packed_MemRef_call2303491.us.1, align 8
  %polly.access.add.Packed_MemRef_call1301498.us.1 = add nsw i64 %289, 1200
  %polly.access.Packed_MemRef_call1301499.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call1301499.us.1, align 8
  %min.iters.check1430 = icmp ult i64 %274, 4
  br i1 %min.iters.check1430, label %polly.loop_header478.us.1.preheader, label %vector.memcheck1414

vector.memcheck1414:                              ; preds = %polly.loop_exit480.loopexit.us
  %bound01422 = icmp ult i8* %scevgep1415, %scevgep1421
  %bound11423 = icmp ult i8* %scevgep1419, %scevgep1418
  %found.conflict1424 = and i1 %bound01422, %bound11423
  br i1 %found.conflict1424, label %polly.loop_header478.us.1.preheader, label %vector.ph1431

vector.ph1431:                                    ; preds = %vector.memcheck1414
  %n.vec1433 = and i64 %274, -4
  %broadcast.splatinsert1439 = insertelement <4 x double> poison, double %_p_scalar_492.us.1, i32 0
  %broadcast.splat1440 = shufflevector <4 x double> %broadcast.splatinsert1439, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1442 = insertelement <4 x double> poison, double %_p_scalar_500.us.1, i32 0
  %broadcast.splat1443 = shufflevector <4 x double> %broadcast.splatinsert1442, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1431
  %index1434 = phi i64 [ 0, %vector.ph1431 ], [ %index.next1435, %vector.body1428 ]
  %314 = add nuw nsw i64 %index1434, %263
  %315 = add nuw nsw i64 %index1434, 1200
  %316 = getelementptr double, double* %Packed_MemRef_call1301, i64 %315
  %317 = bitcast double* %316 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %317, align 8, !alias.scope !110
  %318 = fmul fast <4 x double> %broadcast.splat1440, %wide.load1438
  %319 = add nuw nsw i64 %314, %polly.access.mul.Packed_MemRef_call2303489.us.1
  %320 = getelementptr double, double* %Packed_MemRef_call2303, i64 %319
  %321 = bitcast double* %320 to <4 x double>*
  %wide.load1441 = load <4 x double>, <4 x double>* %321, align 8
  %322 = fmul fast <4 x double> %broadcast.splat1443, %wide.load1441
  %323 = shl i64 %314, 3
  %324 = add nuw nsw i64 %323, %293
  %325 = getelementptr i8, i8* %call, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %326, align 8, !alias.scope !113, !noalias !115
  %327 = fadd fast <4 x double> %322, %318
  %328 = fmul fast <4 x double> %327, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %329 = fadd fast <4 x double> %328, %wide.load1444
  %330 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %329, <4 x double>* %330, align 8, !alias.scope !113, !noalias !115
  %index.next1435 = add i64 %index1434, 4
  %331 = icmp eq i64 %index.next1435, %n.vec1433
  br i1 %331, label %middle.block1426, label %vector.body1428, !llvm.loop !116

middle.block1426:                                 ; preds = %vector.body1428
  %cmp.n1437 = icmp eq i64 %274, %n.vec1433
  br i1 %cmp.n1437, label %polly.loop_exit480.loopexit.us.1, label %polly.loop_header478.us.1.preheader

polly.loop_header478.us.1.preheader:              ; preds = %vector.memcheck1414, %polly.loop_exit480.loopexit.us, %middle.block1426
  %polly.indvar482.us.1.ph = phi i64 [ 0, %vector.memcheck1414 ], [ 0, %polly.loop_exit480.loopexit.us ], [ %n.vec1433, %middle.block1426 ]
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
  %332 = add i64 %indvar, 1
  %333 = mul nuw nsw i64 %polly.indvar597, 9600
  %scevgep606 = getelementptr i8, i8* %call, i64 %333
  %min.iters.check1218 = icmp ult i64 %332, 4
  br i1 %min.iters.check1218, label %polly.loop_header600.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header594
  %n.vec1221 = and i64 %332, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %334 = shl nuw nsw i64 %index1222, 3
  %335 = getelementptr i8, i8* %scevgep606, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %336, align 8, !alias.scope !117, !noalias !119
  %337 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %338 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %337, <4 x double>* %338, align 8, !alias.scope !117, !noalias !119
  %index.next1223 = add i64 %index1222, 4
  %339 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %339, label %middle.block1215, label %vector.body1217, !llvm.loop !124

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %332, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1215
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1221, %middle.block1215 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1215
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next598, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1098.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %340 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %340
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !117, !noalias !119
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1097.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !125

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_header610.preheader ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar613, 1200
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next614, 1000
  br i1 %exitcond1096.not, label %polly.loop_header626.preheader, label %polly.loop_header610

polly.loop_header626.preheader:                   ; preds = %polly.loop_exit618
  %scevgep1251 = getelementptr i8, i8* %malloccall508, i64 19200
  %scevgep1252 = getelementptr i8, i8* %malloccall508, i64 19208
  %scevgep1282 = getelementptr i8, i8* %malloccall508, i64 9600
  %scevgep1283 = getelementptr i8, i8* %malloccall508, i64 9608
  %scevgep1313 = getelementptr i8, i8* %malloccall508, i64 8
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
  %exitcond1095.not = icmp eq i64 %polly.indvar_next620, 1200
  br i1 %exitcond1095.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header626:                             ; preds = %polly.loop_header626.preheader, %polly.loop_exit634
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit634 ], [ 1, %polly.loop_header626.preheader ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit634 ], [ 0, %polly.loop_header626.preheader ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_header626.preheader ]
  %341 = mul nuw nsw i64 %polly.indvar629, 80
  %342 = mul nuw nsw i64 %polly.indvar629, 768000
  %343 = or i64 %342, 8
  %344 = mul nuw nsw i64 %polly.indvar629, 80
  %345 = mul nuw nsw i64 %polly.indvar629, 80
  %346 = mul nuw nsw i64 %polly.indvar629, 768000
  %347 = or i64 %346, 8
  %348 = mul nuw nsw i64 %polly.indvar629, 80
  %349 = mul nuw nsw i64 %polly.indvar629, 80
  %350 = mul nuw nsw i64 %polly.indvar629, 768000
  %351 = or i64 %350, 8
  %352 = mul nuw nsw i64 %polly.indvar629, 80
  %353 = mul nuw nsw i64 %polly.indvar629, 80
  %354 = mul nuw nsw i64 %polly.indvar629, 80
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit640
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 80
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next630, 15
  br i1 %exitcond1094.not, label %polly.exiting507, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_exit640, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_exit640 ]
  %355 = shl nsw i64 %polly.indvar635, 2
  %356 = or i64 %355, 1
  %357 = or i64 %355, 2
  %358 = or i64 %355, 3
  %polly.access.mul.Packed_MemRef_call2511697.us = mul nsw i64 %polly.indvar635, 4800
  %359 = or i64 %355, 1
  %polly.access.mul.Packed_MemRef_call2511697.us.1 = mul nuw nsw i64 %359, 1200
  %360 = or i64 %355, 2
  %polly.access.mul.Packed_MemRef_call2511697.us.2 = mul nuw nsw i64 %360, 1200
  %361 = or i64 %355, 3
  %polly.access.mul.Packed_MemRef_call2511697.us.3 = mul nuw nsw i64 %361, 1200
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit646
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next636, 250
  br i1 %exitcond1093.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_exit646, %polly.loop_header632
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit646 ], [ %indvars.iv1077, %polly.loop_header632 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit646 ], [ 0, %polly.loop_header632 ]
  %362 = mul nsw i64 %polly.indvar641, -80
  %363 = add i64 %341, %362
  %364 = mul nuw nsw i64 %polly.indvar641, 640
  %365 = add nuw i64 %342, %364
  %366 = add nuw i64 %343, %364
  %367 = mul nsw i64 %polly.indvar641, -80
  %368 = add i64 %344, %367
  %369 = mul nsw i64 %polly.indvar641, -80
  %370 = add i64 %345, %369
  %371 = mul nuw nsw i64 %polly.indvar641, 640
  %372 = add nuw i64 %346, %371
  %373 = add nuw i64 %347, %371
  %374 = mul nsw i64 %polly.indvar641, -80
  %375 = add i64 %348, %374
  %376 = mul nsw i64 %polly.indvar641, -80
  %377 = add i64 %349, %376
  %378 = mul nuw nsw i64 %polly.indvar641, 640
  %379 = add nuw i64 %350, %378
  %380 = add nuw i64 %351, %378
  %381 = mul nsw i64 %polly.indvar641, -80
  %382 = add i64 %352, %381
  %383 = mul nsw i64 %polly.indvar641, -80
  %384 = add i64 %353, %383
  %385 = mul nuw nsw i64 %polly.indvar641, 80
  %386 = sub nsw i64 %354, %385
  %387 = add nuw nsw i64 %385, 80
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit681
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -80
  %exitcond1092.not = icmp eq i64 %polly.indvar_next642, %indvars.iv1090
  br i1 %exitcond1092.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_exit681, %polly.loop_header638
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit681 ], [ %indvars.iv1079, %polly.loop_header638 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit681 ], [ 0, %polly.loop_header638 ]
  %388 = add i64 %363, %polly.indvar647
  %smin1322 = call i64 @llvm.smin.i64(i64 %388, i64 79)
  %389 = add nsw i64 %smin1322, 1
  %390 = mul nuw nsw i64 %polly.indvar647, 9600
  %391 = add i64 %365, %390
  %scevgep1309 = getelementptr i8, i8* %call, i64 %391
  %392 = add i64 %366, %390
  %scevgep1310 = getelementptr i8, i8* %call, i64 %392
  %393 = add i64 %368, %polly.indvar647
  %smin1311 = call i64 @llvm.smin.i64(i64 %393, i64 79)
  %394 = shl nsw i64 %smin1311, 3
  %scevgep1312 = getelementptr i8, i8* %scevgep1310, i64 %394
  %scevgep1314 = getelementptr i8, i8* %scevgep1313, i64 %394
  %395 = add i64 %370, %polly.indvar647
  %smin1292 = call i64 @llvm.smin.i64(i64 %395, i64 79)
  %396 = add nsw i64 %smin1292, 1
  %397 = mul nuw nsw i64 %polly.indvar647, 9600
  %398 = add i64 %372, %397
  %scevgep1278 = getelementptr i8, i8* %call, i64 %398
  %399 = add i64 %373, %397
  %scevgep1279 = getelementptr i8, i8* %call, i64 %399
  %400 = add i64 %375, %polly.indvar647
  %smin1280 = call i64 @llvm.smin.i64(i64 %400, i64 79)
  %401 = shl nsw i64 %smin1280, 3
  %scevgep1281 = getelementptr i8, i8* %scevgep1279, i64 %401
  %scevgep1284 = getelementptr i8, i8* %scevgep1283, i64 %401
  %402 = add i64 %377, %polly.indvar647
  %smin1261 = call i64 @llvm.smin.i64(i64 %402, i64 79)
  %403 = add nsw i64 %smin1261, 1
  %404 = mul nuw nsw i64 %polly.indvar647, 9600
  %405 = add i64 %379, %404
  %scevgep1247 = getelementptr i8, i8* %call, i64 %405
  %406 = add i64 %380, %404
  %scevgep1248 = getelementptr i8, i8* %call, i64 %406
  %407 = add i64 %382, %polly.indvar647
  %smin1249 = call i64 @llvm.smin.i64(i64 %407, i64 79)
  %408 = shl nsw i64 %smin1249, 3
  %scevgep1250 = getelementptr i8, i8* %scevgep1248, i64 %408
  %scevgep1253 = getelementptr i8, i8* %scevgep1252, i64 %408
  %409 = add i64 %384, %polly.indvar647
  %smin1230 = call i64 @llvm.smin.i64(i64 %409, i64 79)
  %410 = add nsw i64 %smin1230, 1
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 79)
  %411 = add nsw i64 %polly.indvar647, %386
  %polly.loop_guard6601135 = icmp sgt i64 %411, -1
  %412 = add nuw nsw i64 %polly.indvar647, %354
  %.not919 = icmp ult i64 %412, %387
  %polly.access.mul.call1673 = mul nuw nsw i64 %412, 1000
  %413 = add nuw nsw i64 %polly.access.mul.call1673, %355
  br i1 %polly.loop_guard6601135, label %polly.loop_header657.us, label %polly.loop_header644.split

polly.loop_header657.us:                          ; preds = %polly.loop_header644, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header644 ]
  %414 = add nuw nsw i64 %polly.indvar661.us, %385
  %polly.access.mul.call1665.us = mul nuw nsw i64 %414, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %355, %polly.access.mul.call1665.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.indvar661.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar661.us, %smin1086
  br i1 %exitcond1084.not, label %polly.cond668.loopexit.us, label %polly.loop_header657.us

polly.then670.us:                                 ; preds = %polly.cond668.loopexit.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1716, i64 %413
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1509678.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %411
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1509678.us, align 8
  br label %polly.loop_header657.us.1.preheader

polly.cond668.loopexit.us:                        ; preds = %polly.loop_header657.us
  br i1 %.not919, label %polly.loop_header657.us.1.preheader, label %polly.then670.us

polly.loop_header657.us.1.preheader:              ; preds = %polly.then670.us, %polly.cond668.loopexit.us
  br label %polly.loop_header657.us.1

polly.loop_header644.split:                       ; preds = %polly.loop_header644
  br i1 %.not919, label %polly.loop_exit681, label %polly.loop_header650.preheader

polly.loop_header650.preheader:                   ; preds = %polly.loop_header644.split
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1716, i64 %413
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !120, !noalias !127
  %polly.access.Packed_MemRef_call1509678 = getelementptr double, double* %Packed_MemRef_call1509, i64 %411
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1509678, align 8
  %polly.access.add.call1674.1 = or i64 %413, 1
  %polly.access.call1675.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.1
  %polly.access.call1675.load.1 = load double, double* %polly.access.call1675.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.1 = add nsw i64 %411, 1200
  %polly.access.Packed_MemRef_call1509678.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.1
  store double %polly.access.call1675.load.1, double* %polly.access.Packed_MemRef_call1509678.1, align 8
  %polly.access.add.call1674.2 = or i64 %413, 2
  %polly.access.call1675.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.2
  %polly.access.call1675.load.2 = load double, double* %polly.access.call1675.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.2 = add nsw i64 %411, 2400
  %polly.access.Packed_MemRef_call1509678.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.2
  store double %polly.access.call1675.load.2, double* %polly.access.Packed_MemRef_call1509678.2, align 8
  %polly.access.add.call1674.3 = or i64 %413, 3
  %polly.access.call1675.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.3
  %polly.access.call1675.load.3 = load double, double* %polly.access.call1675.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.3 = add nsw i64 %411, 3600
  %polly.access.Packed_MemRef_call1509678.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.3
  store double %polly.access.call1675.load.3, double* %polly.access.Packed_MemRef_call1509678.3, align 8
  br label %polly.loop_exit681

polly.loop_exit681:                               ; preds = %polly.loop_header686.us.3, %middle.block1227, %polly.loop_header644.split, %polly.loop_header650.preheader, %polly.loop_header679.preheader
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next648, 80
  br i1 %exitcond1089.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.cond668.loopexit.us.3, %polly.then670.us.3
  %415 = mul nuw nsw i64 %412, 9600
  br i1 %polly.loop_guard6601135, label %polly.loop_header679.us.preheader, label %polly.loop_exit681

polly.loop_header679.us.preheader:                ; preds = %polly.loop_header679.preheader
  %polly.access.add.Packed_MemRef_call2511698.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us, %412
  %polly.access.Packed_MemRef_call2511699.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2511699.us, align 8
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %411
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %min.iters.check1323 = icmp ult i64 %389, 4
  br i1 %min.iters.check1323, label %polly.loop_header686.us.preheader, label %vector.memcheck1308

vector.memcheck1308:                              ; preds = %polly.loop_header679.us.preheader
  %bound01315 = icmp ult i8* %scevgep1309, %scevgep1314
  %bound11316 = icmp ult i8* %malloccall508, %scevgep1312
  %found.conflict1317 = and i1 %bound01315, %bound11316
  br i1 %found.conflict1317, label %polly.loop_header686.us.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %vector.memcheck1308
  %n.vec1326 = and i64 %389, -4
  %broadcast.splatinsert1332 = insertelement <4 x double> poison, double %_p_scalar_700.us, i32 0
  %broadcast.splat1333 = shufflevector <4 x double> %broadcast.splatinsert1332, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1335 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1336 = shufflevector <4 x double> %broadcast.splatinsert1335, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1328, %vector.body1321 ]
  %416 = add nuw nsw i64 %index1327, %385
  %417 = getelementptr double, double* %Packed_MemRef_call1509, i64 %index1327
  %418 = bitcast double* %417 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %418, align 8, !alias.scope !128
  %419 = fmul fast <4 x double> %broadcast.splat1333, %wide.load1331
  %420 = add nuw nsw i64 %416, %polly.access.mul.Packed_MemRef_call2511697.us
  %421 = getelementptr double, double* %Packed_MemRef_call2511, i64 %420
  %422 = bitcast double* %421 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %422, align 8
  %423 = fmul fast <4 x double> %broadcast.splat1336, %wide.load1334
  %424 = shl i64 %416, 3
  %425 = add nuw nsw i64 %424, %415
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %427, align 8, !alias.scope !131, !noalias !133
  %428 = fadd fast <4 x double> %423, %419
  %429 = fmul fast <4 x double> %428, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %430 = fadd fast <4 x double> %429, %wide.load1337
  %431 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %430, <4 x double>* %431, align 8, !alias.scope !131, !noalias !133
  %index.next1328 = add i64 %index1327, 4
  %432 = icmp eq i64 %index.next1328, %n.vec1326
  br i1 %432, label %middle.block1319, label %vector.body1321, !llvm.loop !134

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1330 = icmp eq i64 %389, %n.vec1326
  br i1 %cmp.n1330, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us.preheader

polly.loop_header686.us.preheader:                ; preds = %vector.memcheck1308, %polly.loop_header679.us.preheader, %middle.block1319
  %polly.indvar690.us.ph = phi i64 [ 0, %vector.memcheck1308 ], [ 0, %polly.loop_header679.us.preheader ], [ %n.vec1326, %middle.block1319 ]
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ %polly.indvar690.us.ph, %polly.loop_header686.us.preheader ]
  %433 = add nuw nsw i64 %polly.indvar690.us, %385
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.indvar690.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %polly.access.add.Packed_MemRef_call2511702.us = add nuw nsw i64 %433, %polly.access.mul.Packed_MemRef_call2511697.us
  %polly.access.Packed_MemRef_call2511703.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call2511703.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %434 = shl i64 %433, 3
  %435 = add nuw nsw i64 %434, %415
  %scevgep709.us = getelementptr i8, i8* %call, i64 %435
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar690.us, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us, !llvm.loop !135

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_header686.us, %middle.block1319
  %polly.access.add.Packed_MemRef_call2511698.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us.1, %412
  %polly.access.Packed_MemRef_call2511699.us.1 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us.1
  %_p_scalar_700.us.1 = load double, double* %polly.access.Packed_MemRef_call2511699.us.1, align 8
  %polly.access.add.Packed_MemRef_call1509706.us.1 = add nsw i64 %411, 1200
  %polly.access.Packed_MemRef_call1509707.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us.1
  %_p_scalar_708.us.1 = load double, double* %polly.access.Packed_MemRef_call1509707.us.1, align 8
  %min.iters.check1293 = icmp ult i64 %396, 4
  br i1 %min.iters.check1293, label %polly.loop_header686.us.1.preheader, label %vector.memcheck1277

vector.memcheck1277:                              ; preds = %polly.loop_exit688.loopexit.us
  %bound01285 = icmp ult i8* %scevgep1278, %scevgep1284
  %bound11286 = icmp ult i8* %scevgep1282, %scevgep1281
  %found.conflict1287 = and i1 %bound01285, %bound11286
  br i1 %found.conflict1287, label %polly.loop_header686.us.1.preheader, label %vector.ph1294

vector.ph1294:                                    ; preds = %vector.memcheck1277
  %n.vec1296 = and i64 %396, -4
  %broadcast.splatinsert1302 = insertelement <4 x double> poison, double %_p_scalar_700.us.1, i32 0
  %broadcast.splat1303 = shufflevector <4 x double> %broadcast.splatinsert1302, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1305 = insertelement <4 x double> poison, double %_p_scalar_708.us.1, i32 0
  %broadcast.splat1306 = shufflevector <4 x double> %broadcast.splatinsert1305, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1294
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1298, %vector.body1291 ]
  %436 = add nuw nsw i64 %index1297, %385
  %437 = add nuw nsw i64 %index1297, 1200
  %438 = getelementptr double, double* %Packed_MemRef_call1509, i64 %437
  %439 = bitcast double* %438 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %439, align 8, !alias.scope !136
  %440 = fmul fast <4 x double> %broadcast.splat1303, %wide.load1301
  %441 = add nuw nsw i64 %436, %polly.access.mul.Packed_MemRef_call2511697.us.1
  %442 = getelementptr double, double* %Packed_MemRef_call2511, i64 %441
  %443 = bitcast double* %442 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %443, align 8
  %444 = fmul fast <4 x double> %broadcast.splat1306, %wide.load1304
  %445 = shl i64 %436, 3
  %446 = add nuw nsw i64 %445, %415
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %448, align 8, !alias.scope !139, !noalias !141
  %449 = fadd fast <4 x double> %444, %440
  %450 = fmul fast <4 x double> %449, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %451 = fadd fast <4 x double> %450, %wide.load1307
  %452 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %451, <4 x double>* %452, align 8, !alias.scope !139, !noalias !141
  %index.next1298 = add i64 %index1297, 4
  %453 = icmp eq i64 %index.next1298, %n.vec1296
  br i1 %453, label %middle.block1289, label %vector.body1291, !llvm.loop !142

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1300 = icmp eq i64 %396, %n.vec1296
  br i1 %cmp.n1300, label %polly.loop_exit688.loopexit.us.1, label %polly.loop_header686.us.1.preheader

polly.loop_header686.us.1.preheader:              ; preds = %vector.memcheck1277, %polly.loop_exit688.loopexit.us, %middle.block1289
  %polly.indvar690.us.1.ph = phi i64 [ 0, %vector.memcheck1277 ], [ 0, %polly.loop_exit688.loopexit.us ], [ %n.vec1296, %middle.block1289 ]
  br label %polly.loop_header686.us.1

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 -1168)
  %454 = shl nsw i64 %polly.indvar841, 5
  %455 = add nsw i64 %smin1125, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1128.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %456 = mul nsw i64 %polly.indvar847, -32
  %smin = call i64 @llvm.smin.i64(i64 %456, i64 -1168)
  %457 = add nsw i64 %smin, 1200
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %458 = shl nsw i64 %polly.indvar847, 5
  %459 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1127.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %460 = add nuw nsw i64 %polly.indvar853, %454
  %461 = trunc i64 %460 to i32
  %462 = mul nuw nsw i64 %460, 9600
  %min.iters.check = icmp eq i64 %457, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1157

vector.ph1157:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1164 = insertelement <4 x i64> poison, i64 %458, i32 0
  %broadcast.splat1165 = shufflevector <4 x i64> %broadcast.splatinsert1164, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1157
  %index1158 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1157 ], [ %vec.ind.next1163, %vector.body1156 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1162, %broadcast.splat1165
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1167, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 1200, i32 1200, i32 1200, i32 1200>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %462
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !143, !noalias !145
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1159, %457
  br i1 %475, label %polly.loop_exit858, label %vector.body1156, !llvm.loop !148

polly.loop_exit858:                               ; preds = %vector.body1156, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar853, %455
  br i1 %exitcond1126.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %476 = add nuw nsw i64 %polly.indvar859, %458
  %477 = trunc i64 %476 to i32
  %478 = mul i32 %477, %461
  %479 = add i32 %478, 3
  %480 = urem i32 %479, 1200
  %p_conv31.i = sitofp i32 %480 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %481 = shl i64 %476, 3
  %482 = add nuw nsw i64 %481, %462
  %scevgep862 = getelementptr i8, i8* %call, i64 %482
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !143, !noalias !145
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar859, %459
  br i1 %exitcond1122.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !149

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %483 = shl nsw i64 %polly.indvar868, 5
  %484 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1118.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %485 = mul nsw i64 %polly.indvar874, -32
  %smin1171 = call i64 @llvm.smin.i64(i64 %485, i64 -968)
  %486 = add nsw i64 %smin1171, 1000
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -968)
  %487 = shl nsw i64 %polly.indvar874, 5
  %488 = add nsw i64 %smin1111, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1117.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %489 = add nuw nsw i64 %polly.indvar880, %483
  %490 = trunc i64 %489 to i32
  %491 = mul nuw nsw i64 %489, 8000
  %min.iters.check1172 = icmp eq i64 %486, 0
  br i1 %min.iters.check1172, label %polly.loop_header883, label %vector.ph1173

vector.ph1173:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1182 = insertelement <4 x i64> poison, i64 %487, i32 0
  %broadcast.splat1183 = shufflevector <4 x i64> %broadcast.splatinsert1182, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1177, %vector.body1170 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1173 ], [ %vec.ind.next1181, %vector.body1170 ]
  %492 = add nuw nsw <4 x i64> %vec.ind1180, %broadcast.splat1183
  %493 = trunc <4 x i64> %492 to <4 x i32>
  %494 = mul <4 x i32> %broadcast.splat1185, %493
  %495 = add <4 x i32> %494, <i32 2, i32 2, i32 2, i32 2>
  %496 = urem <4 x i32> %495, <i32 1000, i32 1000, i32 1000, i32 1000>
  %497 = sitofp <4 x i32> %496 to <4 x double>
  %498 = fmul fast <4 x double> %497, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %499 = extractelement <4 x i64> %492, i32 0
  %500 = shl i64 %499, 3
  %501 = add nuw nsw i64 %500, %491
  %502 = getelementptr i8, i8* %call2, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %498, <4 x double>* %503, align 8, !alias.scope !147, !noalias !150
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %504 = icmp eq i64 %index.next1177, %486
  br i1 %504, label %polly.loop_exit885, label %vector.body1170, !llvm.loop !151

polly.loop_exit885:                               ; preds = %vector.body1170, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar880, %484
  br i1 %exitcond1116.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %505 = add nuw nsw i64 %polly.indvar886, %487
  %506 = trunc i64 %505 to i32
  %507 = mul i32 %506, %490
  %508 = add i32 %507, 2
  %509 = urem i32 %508, 1000
  %p_conv10.i = sitofp i32 %509 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %510 = shl i64 %505, 3
  %511 = add nuw nsw i64 %510, %491
  %scevgep889 = getelementptr i8, i8* %call2, i64 %511
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !147, !noalias !150
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar886, %488
  br i1 %exitcond1112.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !152

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -1168)
  %512 = shl nsw i64 %polly.indvar894, 5
  %513 = add nsw i64 %smin1105, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1108.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %514 = mul nsw i64 %polly.indvar900, -32
  %smin1189 = call i64 @llvm.smin.i64(i64 %514, i64 -968)
  %515 = add nsw i64 %smin1189, 1000
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -968)
  %516 = shl nsw i64 %polly.indvar900, 5
  %517 = add nsw i64 %smin1101, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1107.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %518 = add nuw nsw i64 %polly.indvar906, %512
  %519 = trunc i64 %518 to i32
  %520 = mul nuw nsw i64 %518, 8000
  %min.iters.check1190 = icmp eq i64 %515, 0
  br i1 %min.iters.check1190, label %polly.loop_header909, label %vector.ph1191

vector.ph1191:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1200 = insertelement <4 x i64> poison, i64 %516, i32 0
  %broadcast.splat1201 = shufflevector <4 x i64> %broadcast.splatinsert1200, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %519, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1188 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1191 ], [ %vec.ind.next1199, %vector.body1188 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1198, %broadcast.splat1201
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1203, %522
  %524 = add <4 x i32> %523, <i32 1, i32 1, i32 1, i32 1>
  %525 = urem <4 x i32> %524, <i32 1200, i32 1200, i32 1200, i32 1200>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %520
  %531 = getelementptr i8, i8* %call1, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !146, !noalias !153
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1195, %515
  br i1 %533, label %polly.loop_exit911, label %vector.body1188, !llvm.loop !154

polly.loop_exit911:                               ; preds = %vector.body1188, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar906, %513
  br i1 %exitcond1106.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %534 = add nuw nsw i64 %polly.indvar912, %516
  %535 = trunc i64 %534 to i32
  %536 = mul i32 %535, %519
  %537 = add i32 %536, 1
  %538 = urem i32 %537, 1200
  %p_conv.i = sitofp i32 %538 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %539 = shl i64 %534, 3
  %540 = add nuw nsw i64 %539, %520
  %scevgep916 = getelementptr i8, i8* %call1, i64 %540
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !146, !noalias !153
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar912, %517
  br i1 %exitcond1102.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !155

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1.preheader, %polly.loop_header246.us.1
  %polly.indvar249.us.1 = phi i64 [ %polly.indvar_next250.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header246.us.1.preheader ]
  %541 = add nuw nsw i64 %polly.indvar249.us.1, %141
  %polly.access.mul.call1253.us.1 = mul nuw nsw i64 %541, 1000
  %polly.access.add.call1254.us.1 = add nuw nsw i64 %112, %polly.access.mul.call1253.us.1
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
  %polly.access.add.call1258.us.1 = or i64 %169, 1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nsw i64 %167, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  br label %polly.loop_header246.us.2.preheader

polly.loop_header246.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2.preheader, %polly.loop_header246.us.2
  %polly.indvar249.us.2 = phi i64 [ %polly.indvar_next250.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_header246.us.2.preheader ]
  %542 = add nuw nsw i64 %polly.indvar249.us.2, %141
  %polly.access.mul.call1253.us.2 = mul nuw nsw i64 %542, 1000
  %polly.access.add.call1254.us.2 = add nuw nsw i64 %113, %polly.access.mul.call1253.us.2
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
  %polly.access.add.call1258.us.2 = or i64 %169, 2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nsw i64 %167, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  br label %polly.loop_header246.us.3.preheader

polly.loop_header246.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header246.us.3

polly.loop_header246.us.3:                        ; preds = %polly.loop_header246.us.3.preheader, %polly.loop_header246.us.3
  %polly.indvar249.us.3 = phi i64 [ %polly.indvar_next250.us.3, %polly.loop_header246.us.3 ], [ 0, %polly.loop_header246.us.3.preheader ]
  %543 = add nuw nsw i64 %polly.indvar249.us.3, %141
  %polly.access.mul.call1253.us.3 = mul nuw nsw i64 %543, 1000
  %polly.access.add.call1254.us.3 = add nuw nsw i64 %114, %polly.access.mul.call1253.us.3
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
  %polly.access.add.call1258.us.3 = or i64 %169, 3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nsw i64 %167, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  br label %polly.loop_header263.preheader

polly.loop_header270.us.1:                        ; preds = %polly.loop_header270.us.1.preheader, %polly.loop_header270.us.1
  %polly.indvar274.us.1 = phi i64 [ %polly.indvar_next275.us.1, %polly.loop_header270.us.1 ], [ %polly.indvar274.us.1.ph, %polly.loop_header270.us.1.preheader ]
  %544 = add nuw nsw i64 %polly.indvar274.us.1, %141
  %polly.access.add.Packed_MemRef_call1278.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1200
  %polly.access.Packed_MemRef_call1279.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.1
  %_p_scalar_280.us.1 = load double, double* %polly.access.Packed_MemRef_call1279.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_284.us.1, %_p_scalar_280.us.1
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %544, %polly.access.mul.Packed_MemRef_call2281.us.1
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %545 = shl i64 %544, 3
  %546 = add nuw nsw i64 %545, %171
  %scevgep293.us.1 = getelementptr i8, i8* %call, i64 %546
  %scevgep293294.us.1 = bitcast i8* %scevgep293.us.1 to double*
  %_p_scalar_295.us.1 = load double, double* %scevgep293294.us.1, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_295.us.1
  store double %p_add42.i118.us.1, double* %scevgep293294.us.1, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1
  %exitcond1041.1.not = icmp eq i64 %polly.indvar274.us.1, %smin1040
  br i1 %exitcond1041.1.not, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1, !llvm.loop !156

polly.loop_exit272.loopexit.us.1:                 ; preds = %polly.loop_header270.us.1, %middle.block1563
  %polly.access.add.Packed_MemRef_call2282.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.2, %168
  %polly.access.Packed_MemRef_call2283.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call2283.us.2, align 8
  %polly.access.add.Packed_MemRef_call1290.us.2 = add nsw i64 %167, 2400
  %polly.access.Packed_MemRef_call1291.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call1291.us.2, align 8
  %min.iters.check1536 = icmp ult i64 %159, 4
  br i1 %min.iters.check1536, label %polly.loop_header270.us.2.preheader, label %vector.memcheck1520

vector.memcheck1520:                              ; preds = %polly.loop_exit272.loopexit.us.1
  %bound01528 = icmp ult i8* %scevgep1521, %scevgep1527
  %bound11529 = icmp ult i8* %scevgep1525, %scevgep1524
  %found.conflict1530 = and i1 %bound01528, %bound11529
  br i1 %found.conflict1530, label %polly.loop_header270.us.2.preheader, label %vector.ph1537

vector.ph1537:                                    ; preds = %vector.memcheck1520
  %n.vec1539 = and i64 %159, -4
  %broadcast.splatinsert1545 = insertelement <4 x double> poison, double %_p_scalar_284.us.2, i32 0
  %broadcast.splat1546 = shufflevector <4 x double> %broadcast.splatinsert1545, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1548 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1549 = shufflevector <4 x double> %broadcast.splatinsert1548, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1537
  %index1540 = phi i64 [ 0, %vector.ph1537 ], [ %index.next1541, %vector.body1534 ]
  %547 = add nuw nsw i64 %index1540, %141
  %548 = add nuw nsw i64 %index1540, 2400
  %549 = getelementptr double, double* %Packed_MemRef_call1, i64 %548
  %550 = bitcast double* %549 to <4 x double>*
  %wide.load1544 = load <4 x double>, <4 x double>* %550, align 8, !alias.scope !157
  %551 = fmul fast <4 x double> %broadcast.splat1546, %wide.load1544
  %552 = add nuw nsw i64 %547, %polly.access.mul.Packed_MemRef_call2281.us.2
  %553 = getelementptr double, double* %Packed_MemRef_call2, i64 %552
  %554 = bitcast double* %553 to <4 x double>*
  %wide.load1547 = load <4 x double>, <4 x double>* %554, align 8
  %555 = fmul fast <4 x double> %broadcast.splat1549, %wide.load1547
  %556 = shl i64 %547, 3
  %557 = add nuw nsw i64 %556, %171
  %558 = getelementptr i8, i8* %call, i64 %557
  %559 = bitcast i8* %558 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %559, align 8, !alias.scope !160, !noalias !162
  %560 = fadd fast <4 x double> %555, %551
  %561 = fmul fast <4 x double> %560, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %562 = fadd fast <4 x double> %561, %wide.load1550
  %563 = bitcast i8* %558 to <4 x double>*
  store <4 x double> %562, <4 x double>* %563, align 8, !alias.scope !160, !noalias !162
  %index.next1541 = add i64 %index1540, 4
  %564 = icmp eq i64 %index.next1541, %n.vec1539
  br i1 %564, label %middle.block1532, label %vector.body1534, !llvm.loop !163

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1543 = icmp eq i64 %159, %n.vec1539
  br i1 %cmp.n1543, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2.preheader

polly.loop_header270.us.2.preheader:              ; preds = %vector.memcheck1520, %polly.loop_exit272.loopexit.us.1, %middle.block1532
  %polly.indvar274.us.2.ph = phi i64 [ 0, %vector.memcheck1520 ], [ 0, %polly.loop_exit272.loopexit.us.1 ], [ %n.vec1539, %middle.block1532 ]
  br label %polly.loop_header270.us.2

polly.loop_header270.us.2:                        ; preds = %polly.loop_header270.us.2.preheader, %polly.loop_header270.us.2
  %polly.indvar274.us.2 = phi i64 [ %polly.indvar_next275.us.2, %polly.loop_header270.us.2 ], [ %polly.indvar274.us.2.ph, %polly.loop_header270.us.2.preheader ]
  %565 = add nuw nsw i64 %polly.indvar274.us.2, %141
  %polly.access.add.Packed_MemRef_call1278.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 2400
  %polly.access.Packed_MemRef_call1279.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.2
  %_p_scalar_280.us.2 = load double, double* %polly.access.Packed_MemRef_call1279.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_284.us.2, %_p_scalar_280.us.2
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %565, %polly.access.mul.Packed_MemRef_call2281.us.2
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %566 = shl i64 %565, 3
  %567 = add nuw nsw i64 %566, %171
  %scevgep293.us.2 = getelementptr i8, i8* %call, i64 %567
  %scevgep293294.us.2 = bitcast i8* %scevgep293.us.2 to double*
  %_p_scalar_295.us.2 = load double, double* %scevgep293294.us.2, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_295.us.2
  store double %p_add42.i118.us.2, double* %scevgep293294.us.2, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 1
  %exitcond1041.2.not = icmp eq i64 %polly.indvar274.us.2, %smin1040
  br i1 %exitcond1041.2.not, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2, !llvm.loop !164

polly.loop_exit272.loopexit.us.2:                 ; preds = %polly.loop_header270.us.2, %middle.block1532
  %polly.access.add.Packed_MemRef_call2282.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.3, %168
  %polly.access.Packed_MemRef_call2283.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call2283.us.3, align 8
  %polly.access.add.Packed_MemRef_call1290.us.3 = add nsw i64 %167, 3600
  %polly.access.Packed_MemRef_call1291.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call1291.us.3, align 8
  %min.iters.check1505 = icmp ult i64 %166, 4
  br i1 %min.iters.check1505, label %polly.loop_header270.us.3.preheader, label %vector.ph1506

vector.ph1506:                                    ; preds = %polly.loop_exit272.loopexit.us.2
  %n.vec1508 = and i64 %166, -4
  %broadcast.splatinsert1514 = insertelement <4 x double> poison, double %_p_scalar_284.us.3, i32 0
  %broadcast.splat1515 = shufflevector <4 x double> %broadcast.splatinsert1514, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1517 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1518 = shufflevector <4 x double> %broadcast.splatinsert1517, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1503 ]
  %568 = add nuw nsw i64 %index1509, %141
  %569 = add nuw nsw i64 %index1509, 3600
  %570 = getelementptr double, double* %Packed_MemRef_call1, i64 %569
  %571 = bitcast double* %570 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %571, align 8
  %572 = fmul fast <4 x double> %broadcast.splat1515, %wide.load1513
  %573 = add nuw nsw i64 %568, %polly.access.mul.Packed_MemRef_call2281.us.3
  %574 = getelementptr double, double* %Packed_MemRef_call2, i64 %573
  %575 = bitcast double* %574 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %575, align 8
  %576 = fmul fast <4 x double> %broadcast.splat1518, %wide.load1516
  %577 = shl i64 %568, 3
  %578 = add nuw nsw i64 %577, %171
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %580, align 8, !alias.scope !64, !noalias !66
  %581 = fadd fast <4 x double> %576, %572
  %582 = fmul fast <4 x double> %581, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %583 = fadd fast <4 x double> %582, %wide.load1519
  %584 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %583, <4 x double>* %584, align 8, !alias.scope !64, !noalias !66
  %index.next1510 = add i64 %index1509, 4
  %585 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %585, label %middle.block1501, label %vector.body1503, !llvm.loop !165

middle.block1501:                                 ; preds = %vector.body1503
  %cmp.n1512 = icmp eq i64 %166, %n.vec1508
  br i1 %cmp.n1512, label %polly.loop_exit265, label %polly.loop_header270.us.3.preheader

polly.loop_header270.us.3.preheader:              ; preds = %polly.loop_exit272.loopexit.us.2, %middle.block1501
  %polly.indvar274.us.3.ph = phi i64 [ 0, %polly.loop_exit272.loopexit.us.2 ], [ %n.vec1508, %middle.block1501 ]
  br label %polly.loop_header270.us.3

polly.loop_header270.us.3:                        ; preds = %polly.loop_header270.us.3.preheader, %polly.loop_header270.us.3
  %polly.indvar274.us.3 = phi i64 [ %polly.indvar_next275.us.3, %polly.loop_header270.us.3 ], [ %polly.indvar274.us.3.ph, %polly.loop_header270.us.3.preheader ]
  %586 = add nuw nsw i64 %polly.indvar274.us.3, %141
  %polly.access.add.Packed_MemRef_call1278.us.3 = add nuw nsw i64 %polly.indvar274.us.3, 3600
  %polly.access.Packed_MemRef_call1279.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.3
  %_p_scalar_280.us.3 = load double, double* %polly.access.Packed_MemRef_call1279.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_284.us.3, %_p_scalar_280.us.3
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %586, %polly.access.mul.Packed_MemRef_call2281.us.3
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %587 = shl i64 %586, 3
  %588 = add nuw nsw i64 %587, %171
  %scevgep293.us.3 = getelementptr i8, i8* %call, i64 %588
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
  %589 = add nuw nsw i64 %polly.indvar453.us.1, %263
  %polly.access.mul.call1457.us.1 = mul nuw nsw i64 %589, 1000
  %polly.access.add.call1458.us.1 = add nuw nsw i64 %234, %polly.access.mul.call1457.us.1
  %polly.access.call1459.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us.1
  %polly.access.call1459.load.us.1 = load double, double* %polly.access.call1459.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.1 = add nuw nsw i64 %polly.indvar453.us.1, 1200
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.1
  store double %polly.access.call1459.load.us.1, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %polly.indvar_next454.us.1 = add nuw nsw i64 %polly.indvar453.us.1, 1
  %exitcond1061.1.not = icmp eq i64 %polly.indvar453.us.1, %smin1063
  br i1 %exitcond1061.1.not, label %polly.cond460.loopexit.us.1, label %polly.loop_header449.us.1

polly.cond460.loopexit.us.1:                      ; preds = %polly.loop_header449.us.1
  br i1 %.not918, label %polly.loop_header449.us.2.preheader, label %polly.then462.us.1

polly.then462.us.1:                               ; preds = %polly.cond460.loopexit.us.1
  %polly.access.add.call1466.us.1 = or i64 %291, 1
  %polly.access.call1467.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us.1
  %polly.access.call1467.load.us.1 = load double, double* %polly.access.call1467.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.us.1 = add nsw i64 %289, 1200
  %polly.access.Packed_MemRef_call1301470.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us.1
  store double %polly.access.call1467.load.us.1, double* %polly.access.Packed_MemRef_call1301470.us.1, align 8
  br label %polly.loop_header449.us.2.preheader

polly.loop_header449.us.2.preheader:              ; preds = %polly.then462.us.1, %polly.cond460.loopexit.us.1
  br label %polly.loop_header449.us.2

polly.loop_header449.us.2:                        ; preds = %polly.loop_header449.us.2.preheader, %polly.loop_header449.us.2
  %polly.indvar453.us.2 = phi i64 [ %polly.indvar_next454.us.2, %polly.loop_header449.us.2 ], [ 0, %polly.loop_header449.us.2.preheader ]
  %590 = add nuw nsw i64 %polly.indvar453.us.2, %263
  %polly.access.mul.call1457.us.2 = mul nuw nsw i64 %590, 1000
  %polly.access.add.call1458.us.2 = add nuw nsw i64 %235, %polly.access.mul.call1457.us.2
  %polly.access.call1459.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us.2
  %polly.access.call1459.load.us.2 = load double, double* %polly.access.call1459.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.2 = add nuw nsw i64 %polly.indvar453.us.2, 2400
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.2
  store double %polly.access.call1459.load.us.2, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %polly.indvar_next454.us.2 = add nuw nsw i64 %polly.indvar453.us.2, 1
  %exitcond1061.2.not = icmp eq i64 %polly.indvar453.us.2, %smin1063
  br i1 %exitcond1061.2.not, label %polly.cond460.loopexit.us.2, label %polly.loop_header449.us.2

polly.cond460.loopexit.us.2:                      ; preds = %polly.loop_header449.us.2
  br i1 %.not918, label %polly.loop_header449.us.3.preheader, label %polly.then462.us.2

polly.then462.us.2:                               ; preds = %polly.cond460.loopexit.us.2
  %polly.access.add.call1466.us.2 = or i64 %291, 2
  %polly.access.call1467.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us.2
  %polly.access.call1467.load.us.2 = load double, double* %polly.access.call1467.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.us.2 = add nsw i64 %289, 2400
  %polly.access.Packed_MemRef_call1301470.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us.2
  store double %polly.access.call1467.load.us.2, double* %polly.access.Packed_MemRef_call1301470.us.2, align 8
  br label %polly.loop_header449.us.3.preheader

polly.loop_header449.us.3.preheader:              ; preds = %polly.then462.us.2, %polly.cond460.loopexit.us.2
  br label %polly.loop_header449.us.3

polly.loop_header449.us.3:                        ; preds = %polly.loop_header449.us.3.preheader, %polly.loop_header449.us.3
  %polly.indvar453.us.3 = phi i64 [ %polly.indvar_next454.us.3, %polly.loop_header449.us.3 ], [ 0, %polly.loop_header449.us.3.preheader ]
  %591 = add nuw nsw i64 %polly.indvar453.us.3, %263
  %polly.access.mul.call1457.us.3 = mul nuw nsw i64 %591, 1000
  %polly.access.add.call1458.us.3 = add nuw nsw i64 %236, %polly.access.mul.call1457.us.3
  %polly.access.call1459.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us.3
  %polly.access.call1459.load.us.3 = load double, double* %polly.access.call1459.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301.us.3 = add nuw nsw i64 %polly.indvar453.us.3, 3600
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.3
  store double %polly.access.call1459.load.us.3, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %polly.indvar_next454.us.3 = add nuw nsw i64 %polly.indvar453.us.3, 1
  %exitcond1061.3.not = icmp eq i64 %polly.indvar453.us.3, %smin1063
  br i1 %exitcond1061.3.not, label %polly.cond460.loopexit.us.3, label %polly.loop_header449.us.3

polly.cond460.loopexit.us.3:                      ; preds = %polly.loop_header449.us.3
  br i1 %.not918, label %polly.loop_header471.preheader, label %polly.then462.us.3

polly.then462.us.3:                               ; preds = %polly.cond460.loopexit.us.3
  %polly.access.add.call1466.us.3 = or i64 %291, 3
  %polly.access.call1467.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us.3
  %polly.access.call1467.load.us.3 = load double, double* %polly.access.call1467.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1301469.us.3 = add nsw i64 %289, 3600
  %polly.access.Packed_MemRef_call1301470.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us.3
  store double %polly.access.call1467.load.us.3, double* %polly.access.Packed_MemRef_call1301470.us.3, align 8
  br label %polly.loop_header471.preheader

polly.loop_header478.us.1:                        ; preds = %polly.loop_header478.us.1.preheader, %polly.loop_header478.us.1
  %polly.indvar482.us.1 = phi i64 [ %polly.indvar_next483.us.1, %polly.loop_header478.us.1 ], [ %polly.indvar482.us.1.ph, %polly.loop_header478.us.1.preheader ]
  %592 = add nuw nsw i64 %polly.indvar482.us.1, %263
  %polly.access.add.Packed_MemRef_call1301486.us.1 = add nuw nsw i64 %polly.indvar482.us.1, 1200
  %polly.access.Packed_MemRef_call1301487.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us.1
  %_p_scalar_488.us.1 = load double, double* %polly.access.Packed_MemRef_call1301487.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_492.us.1, %_p_scalar_488.us.1
  %polly.access.add.Packed_MemRef_call2303494.us.1 = add nuw nsw i64 %592, %polly.access.mul.Packed_MemRef_call2303489.us.1
  %polly.access.Packed_MemRef_call2303495.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us.1
  %_p_scalar_496.us.1 = load double, double* %polly.access.Packed_MemRef_call2303495.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_500.us.1, %_p_scalar_496.us.1
  %593 = shl i64 %592, 3
  %594 = add nuw nsw i64 %593, %293
  %scevgep501.us.1 = getelementptr i8, i8* %call, i64 %594
  %scevgep501502.us.1 = bitcast i8* %scevgep501.us.1 to double*
  %_p_scalar_503.us.1 = load double, double* %scevgep501502.us.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_503.us.1
  store double %p_add42.i79.us.1, double* %scevgep501502.us.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us.1 = add nuw nsw i64 %polly.indvar482.us.1, 1
  %exitcond1064.1.not = icmp eq i64 %polly.indvar482.us.1, %smin1063
  br i1 %exitcond1064.1.not, label %polly.loop_exit480.loopexit.us.1, label %polly.loop_header478.us.1, !llvm.loop !167

polly.loop_exit480.loopexit.us.1:                 ; preds = %polly.loop_header478.us.1, %middle.block1426
  %polly.access.add.Packed_MemRef_call2303490.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us.2, %290
  %polly.access.Packed_MemRef_call2303491.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us.2
  %_p_scalar_492.us.2 = load double, double* %polly.access.Packed_MemRef_call2303491.us.2, align 8
  %polly.access.add.Packed_MemRef_call1301498.us.2 = add nsw i64 %289, 2400
  %polly.access.Packed_MemRef_call1301499.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call1301499.us.2, align 8
  %min.iters.check1399 = icmp ult i64 %281, 4
  br i1 %min.iters.check1399, label %polly.loop_header478.us.2.preheader, label %vector.memcheck1383

vector.memcheck1383:                              ; preds = %polly.loop_exit480.loopexit.us.1
  %bound01391 = icmp ult i8* %scevgep1384, %scevgep1390
  %bound11392 = icmp ult i8* %scevgep1388, %scevgep1387
  %found.conflict1393 = and i1 %bound01391, %bound11392
  br i1 %found.conflict1393, label %polly.loop_header478.us.2.preheader, label %vector.ph1400

vector.ph1400:                                    ; preds = %vector.memcheck1383
  %n.vec1402 = and i64 %281, -4
  %broadcast.splatinsert1408 = insertelement <4 x double> poison, double %_p_scalar_492.us.2, i32 0
  %broadcast.splat1409 = shufflevector <4 x double> %broadcast.splatinsert1408, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1411 = insertelement <4 x double> poison, double %_p_scalar_500.us.2, i32 0
  %broadcast.splat1412 = shufflevector <4 x double> %broadcast.splatinsert1411, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1400
  %index1403 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1404, %vector.body1397 ]
  %595 = add nuw nsw i64 %index1403, %263
  %596 = add nuw nsw i64 %index1403, 2400
  %597 = getelementptr double, double* %Packed_MemRef_call1301, i64 %596
  %598 = bitcast double* %597 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %598, align 8, !alias.scope !168
  %599 = fmul fast <4 x double> %broadcast.splat1409, %wide.load1407
  %600 = add nuw nsw i64 %595, %polly.access.mul.Packed_MemRef_call2303489.us.2
  %601 = getelementptr double, double* %Packed_MemRef_call2303, i64 %600
  %602 = bitcast double* %601 to <4 x double>*
  %wide.load1410 = load <4 x double>, <4 x double>* %602, align 8
  %603 = fmul fast <4 x double> %broadcast.splat1412, %wide.load1410
  %604 = shl i64 %595, 3
  %605 = add nuw nsw i64 %604, %293
  %606 = getelementptr i8, i8* %call, i64 %605
  %607 = bitcast i8* %606 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %607, align 8, !alias.scope !171, !noalias !173
  %608 = fadd fast <4 x double> %603, %599
  %609 = fmul fast <4 x double> %608, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %610 = fadd fast <4 x double> %609, %wide.load1413
  %611 = bitcast i8* %606 to <4 x double>*
  store <4 x double> %610, <4 x double>* %611, align 8, !alias.scope !171, !noalias !173
  %index.next1404 = add i64 %index1403, 4
  %612 = icmp eq i64 %index.next1404, %n.vec1402
  br i1 %612, label %middle.block1395, label %vector.body1397, !llvm.loop !174

middle.block1395:                                 ; preds = %vector.body1397
  %cmp.n1406 = icmp eq i64 %281, %n.vec1402
  br i1 %cmp.n1406, label %polly.loop_exit480.loopexit.us.2, label %polly.loop_header478.us.2.preheader

polly.loop_header478.us.2.preheader:              ; preds = %vector.memcheck1383, %polly.loop_exit480.loopexit.us.1, %middle.block1395
  %polly.indvar482.us.2.ph = phi i64 [ 0, %vector.memcheck1383 ], [ 0, %polly.loop_exit480.loopexit.us.1 ], [ %n.vec1402, %middle.block1395 ]
  br label %polly.loop_header478.us.2

polly.loop_header478.us.2:                        ; preds = %polly.loop_header478.us.2.preheader, %polly.loop_header478.us.2
  %polly.indvar482.us.2 = phi i64 [ %polly.indvar_next483.us.2, %polly.loop_header478.us.2 ], [ %polly.indvar482.us.2.ph, %polly.loop_header478.us.2.preheader ]
  %613 = add nuw nsw i64 %polly.indvar482.us.2, %263
  %polly.access.add.Packed_MemRef_call1301486.us.2 = add nuw nsw i64 %polly.indvar482.us.2, 2400
  %polly.access.Packed_MemRef_call1301487.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us.2
  %_p_scalar_488.us.2 = load double, double* %polly.access.Packed_MemRef_call1301487.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_492.us.2, %_p_scalar_488.us.2
  %polly.access.add.Packed_MemRef_call2303494.us.2 = add nuw nsw i64 %613, %polly.access.mul.Packed_MemRef_call2303489.us.2
  %polly.access.Packed_MemRef_call2303495.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us.2
  %_p_scalar_496.us.2 = load double, double* %polly.access.Packed_MemRef_call2303495.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_500.us.2, %_p_scalar_496.us.2
  %614 = shl i64 %613, 3
  %615 = add nuw nsw i64 %614, %293
  %scevgep501.us.2 = getelementptr i8, i8* %call, i64 %615
  %scevgep501502.us.2 = bitcast i8* %scevgep501.us.2 to double*
  %_p_scalar_503.us.2 = load double, double* %scevgep501502.us.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_503.us.2
  store double %p_add42.i79.us.2, double* %scevgep501502.us.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us.2 = add nuw nsw i64 %polly.indvar482.us.2, 1
  %exitcond1064.2.not = icmp eq i64 %polly.indvar482.us.2, %smin1063
  br i1 %exitcond1064.2.not, label %polly.loop_exit480.loopexit.us.2, label %polly.loop_header478.us.2, !llvm.loop !175

polly.loop_exit480.loopexit.us.2:                 ; preds = %polly.loop_header478.us.2, %middle.block1395
  %polly.access.add.Packed_MemRef_call2303490.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us.3, %290
  %polly.access.Packed_MemRef_call2303491.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us.3
  %_p_scalar_492.us.3 = load double, double* %polly.access.Packed_MemRef_call2303491.us.3, align 8
  %polly.access.add.Packed_MemRef_call1301498.us.3 = add nsw i64 %289, 3600
  %polly.access.Packed_MemRef_call1301499.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call1301499.us.3, align 8
  %min.iters.check1368 = icmp ult i64 %288, 4
  br i1 %min.iters.check1368, label %polly.loop_header478.us.3.preheader, label %vector.ph1369

vector.ph1369:                                    ; preds = %polly.loop_exit480.loopexit.us.2
  %n.vec1371 = and i64 %288, -4
  %broadcast.splatinsert1377 = insertelement <4 x double> poison, double %_p_scalar_492.us.3, i32 0
  %broadcast.splat1378 = shufflevector <4 x double> %broadcast.splatinsert1377, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1380 = insertelement <4 x double> poison, double %_p_scalar_500.us.3, i32 0
  %broadcast.splat1381 = shufflevector <4 x double> %broadcast.splatinsert1380, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1369
  %index1372 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1373, %vector.body1366 ]
  %616 = add nuw nsw i64 %index1372, %263
  %617 = add nuw nsw i64 %index1372, 3600
  %618 = getelementptr double, double* %Packed_MemRef_call1301, i64 %617
  %619 = bitcast double* %618 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %619, align 8
  %620 = fmul fast <4 x double> %broadcast.splat1378, %wide.load1376
  %621 = add nuw nsw i64 %616, %polly.access.mul.Packed_MemRef_call2303489.us.3
  %622 = getelementptr double, double* %Packed_MemRef_call2303, i64 %621
  %623 = bitcast double* %622 to <4 x double>*
  %wide.load1379 = load <4 x double>, <4 x double>* %623, align 8
  %624 = fmul fast <4 x double> %broadcast.splat1381, %wide.load1379
  %625 = shl i64 %616, 3
  %626 = add nuw nsw i64 %625, %293
  %627 = getelementptr i8, i8* %call, i64 %626
  %628 = bitcast i8* %627 to <4 x double>*
  %wide.load1382 = load <4 x double>, <4 x double>* %628, align 8, !alias.scope !91, !noalias !93
  %629 = fadd fast <4 x double> %624, %620
  %630 = fmul fast <4 x double> %629, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %631 = fadd fast <4 x double> %630, %wide.load1382
  %632 = bitcast i8* %627 to <4 x double>*
  store <4 x double> %631, <4 x double>* %632, align 8, !alias.scope !91, !noalias !93
  %index.next1373 = add i64 %index1372, 4
  %633 = icmp eq i64 %index.next1373, %n.vec1371
  br i1 %633, label %middle.block1364, label %vector.body1366, !llvm.loop !176

middle.block1364:                                 ; preds = %vector.body1366
  %cmp.n1375 = icmp eq i64 %288, %n.vec1371
  br i1 %cmp.n1375, label %polly.loop_exit473, label %polly.loop_header478.us.3.preheader

polly.loop_header478.us.3.preheader:              ; preds = %polly.loop_exit480.loopexit.us.2, %middle.block1364
  %polly.indvar482.us.3.ph = phi i64 [ 0, %polly.loop_exit480.loopexit.us.2 ], [ %n.vec1371, %middle.block1364 ]
  br label %polly.loop_header478.us.3

polly.loop_header478.us.3:                        ; preds = %polly.loop_header478.us.3.preheader, %polly.loop_header478.us.3
  %polly.indvar482.us.3 = phi i64 [ %polly.indvar_next483.us.3, %polly.loop_header478.us.3 ], [ %polly.indvar482.us.3.ph, %polly.loop_header478.us.3.preheader ]
  %634 = add nuw nsw i64 %polly.indvar482.us.3, %263
  %polly.access.add.Packed_MemRef_call1301486.us.3 = add nuw nsw i64 %polly.indvar482.us.3, 3600
  %polly.access.Packed_MemRef_call1301487.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us.3
  %_p_scalar_488.us.3 = load double, double* %polly.access.Packed_MemRef_call1301487.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_492.us.3, %_p_scalar_488.us.3
  %polly.access.add.Packed_MemRef_call2303494.us.3 = add nuw nsw i64 %634, %polly.access.mul.Packed_MemRef_call2303489.us.3
  %polly.access.Packed_MemRef_call2303495.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us.3
  %_p_scalar_496.us.3 = load double, double* %polly.access.Packed_MemRef_call2303495.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_500.us.3, %_p_scalar_496.us.3
  %635 = shl i64 %634, 3
  %636 = add nuw nsw i64 %635, %293
  %scevgep501.us.3 = getelementptr i8, i8* %call, i64 %636
  %scevgep501502.us.3 = bitcast i8* %scevgep501.us.3 to double*
  %_p_scalar_503.us.3 = load double, double* %scevgep501502.us.3, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_503.us.3
  store double %p_add42.i79.us.3, double* %scevgep501502.us.3, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next483.us.3 = add nuw nsw i64 %polly.indvar482.us.3, 1
  %exitcond1064.3.not = icmp eq i64 %polly.indvar482.us.3, %smin1063
  br i1 %exitcond1064.3.not, label %polly.loop_exit473, label %polly.loop_header478.us.3, !llvm.loop !177

polly.loop_header657.us.1:                        ; preds = %polly.loop_header657.us.1.preheader, %polly.loop_header657.us.1
  %polly.indvar661.us.1 = phi i64 [ %polly.indvar_next662.us.1, %polly.loop_header657.us.1 ], [ 0, %polly.loop_header657.us.1.preheader ]
  %637 = add nuw nsw i64 %polly.indvar661.us.1, %385
  %polly.access.mul.call1665.us.1 = mul nuw nsw i64 %637, 1000
  %polly.access.add.call1666.us.1 = add nuw nsw i64 %356, %polly.access.mul.call1665.us.1
  %polly.access.call1667.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us.1
  %polly.access.call1667.load.us.1 = load double, double* %polly.access.call1667.us.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509.us.1 = add nuw nsw i64 %polly.indvar661.us.1, 1200
  %polly.access.Packed_MemRef_call1509.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.1
  store double %polly.access.call1667.load.us.1, double* %polly.access.Packed_MemRef_call1509.us.1, align 8
  %polly.indvar_next662.us.1 = add nuw nsw i64 %polly.indvar661.us.1, 1
  %exitcond1084.1.not = icmp eq i64 %polly.indvar661.us.1, %smin1086
  br i1 %exitcond1084.1.not, label %polly.cond668.loopexit.us.1, label %polly.loop_header657.us.1

polly.cond668.loopexit.us.1:                      ; preds = %polly.loop_header657.us.1
  br i1 %.not919, label %polly.loop_header657.us.2.preheader, label %polly.then670.us.1

polly.then670.us.1:                               ; preds = %polly.cond668.loopexit.us.1
  %polly.access.add.call1674.us.1 = or i64 %413, 1
  %polly.access.call1675.us.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us.1
  %polly.access.call1675.load.us.1 = load double, double* %polly.access.call1675.us.1, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.us.1 = add nsw i64 %411, 1200
  %polly.access.Packed_MemRef_call1509678.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us.1
  store double %polly.access.call1675.load.us.1, double* %polly.access.Packed_MemRef_call1509678.us.1, align 8
  br label %polly.loop_header657.us.2.preheader

polly.loop_header657.us.2.preheader:              ; preds = %polly.then670.us.1, %polly.cond668.loopexit.us.1
  br label %polly.loop_header657.us.2

polly.loop_header657.us.2:                        ; preds = %polly.loop_header657.us.2.preheader, %polly.loop_header657.us.2
  %polly.indvar661.us.2 = phi i64 [ %polly.indvar_next662.us.2, %polly.loop_header657.us.2 ], [ 0, %polly.loop_header657.us.2.preheader ]
  %638 = add nuw nsw i64 %polly.indvar661.us.2, %385
  %polly.access.mul.call1665.us.2 = mul nuw nsw i64 %638, 1000
  %polly.access.add.call1666.us.2 = add nuw nsw i64 %357, %polly.access.mul.call1665.us.2
  %polly.access.call1667.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us.2
  %polly.access.call1667.load.us.2 = load double, double* %polly.access.call1667.us.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509.us.2 = add nuw nsw i64 %polly.indvar661.us.2, 2400
  %polly.access.Packed_MemRef_call1509.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.2
  store double %polly.access.call1667.load.us.2, double* %polly.access.Packed_MemRef_call1509.us.2, align 8
  %polly.indvar_next662.us.2 = add nuw nsw i64 %polly.indvar661.us.2, 1
  %exitcond1084.2.not = icmp eq i64 %polly.indvar661.us.2, %smin1086
  br i1 %exitcond1084.2.not, label %polly.cond668.loopexit.us.2, label %polly.loop_header657.us.2

polly.cond668.loopexit.us.2:                      ; preds = %polly.loop_header657.us.2
  br i1 %.not919, label %polly.loop_header657.us.3.preheader, label %polly.then670.us.2

polly.then670.us.2:                               ; preds = %polly.cond668.loopexit.us.2
  %polly.access.add.call1674.us.2 = or i64 %413, 2
  %polly.access.call1675.us.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us.2
  %polly.access.call1675.load.us.2 = load double, double* %polly.access.call1675.us.2, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.us.2 = add nsw i64 %411, 2400
  %polly.access.Packed_MemRef_call1509678.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us.2
  store double %polly.access.call1675.load.us.2, double* %polly.access.Packed_MemRef_call1509678.us.2, align 8
  br label %polly.loop_header657.us.3.preheader

polly.loop_header657.us.3.preheader:              ; preds = %polly.then670.us.2, %polly.cond668.loopexit.us.2
  br label %polly.loop_header657.us.3

polly.loop_header657.us.3:                        ; preds = %polly.loop_header657.us.3.preheader, %polly.loop_header657.us.3
  %polly.indvar661.us.3 = phi i64 [ %polly.indvar_next662.us.3, %polly.loop_header657.us.3 ], [ 0, %polly.loop_header657.us.3.preheader ]
  %639 = add nuw nsw i64 %polly.indvar661.us.3, %385
  %polly.access.mul.call1665.us.3 = mul nuw nsw i64 %639, 1000
  %polly.access.add.call1666.us.3 = add nuw nsw i64 %358, %polly.access.mul.call1665.us.3
  %polly.access.call1667.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us.3
  %polly.access.call1667.load.us.3 = load double, double* %polly.access.call1667.us.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509.us.3 = add nuw nsw i64 %polly.indvar661.us.3, 3600
  %polly.access.Packed_MemRef_call1509.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us.3
  store double %polly.access.call1667.load.us.3, double* %polly.access.Packed_MemRef_call1509.us.3, align 8
  %polly.indvar_next662.us.3 = add nuw nsw i64 %polly.indvar661.us.3, 1
  %exitcond1084.3.not = icmp eq i64 %polly.indvar661.us.3, %smin1086
  br i1 %exitcond1084.3.not, label %polly.cond668.loopexit.us.3, label %polly.loop_header657.us.3

polly.cond668.loopexit.us.3:                      ; preds = %polly.loop_header657.us.3
  br i1 %.not919, label %polly.loop_header679.preheader, label %polly.then670.us.3

polly.then670.us.3:                               ; preds = %polly.cond668.loopexit.us.3
  %polly.access.add.call1674.us.3 = or i64 %413, 3
  %polly.access.call1675.us.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us.3
  %polly.access.call1675.load.us.3 = load double, double* %polly.access.call1675.us.3, align 8, !alias.scope !120, !noalias !127
  %polly.access.add.Packed_MemRef_call1509677.us.3 = add nsw i64 %411, 3600
  %polly.access.Packed_MemRef_call1509678.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us.3
  store double %polly.access.call1675.load.us.3, double* %polly.access.Packed_MemRef_call1509678.us.3, align 8
  br label %polly.loop_header679.preheader

polly.loop_header686.us.1:                        ; preds = %polly.loop_header686.us.1.preheader, %polly.loop_header686.us.1
  %polly.indvar690.us.1 = phi i64 [ %polly.indvar_next691.us.1, %polly.loop_header686.us.1 ], [ %polly.indvar690.us.1.ph, %polly.loop_header686.us.1.preheader ]
  %640 = add nuw nsw i64 %polly.indvar690.us.1, %385
  %polly.access.add.Packed_MemRef_call1509694.us.1 = add nuw nsw i64 %polly.indvar690.us.1, 1200
  %polly.access.Packed_MemRef_call1509695.us.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us.1
  %_p_scalar_696.us.1 = load double, double* %polly.access.Packed_MemRef_call1509695.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_700.us.1, %_p_scalar_696.us.1
  %polly.access.add.Packed_MemRef_call2511702.us.1 = add nuw nsw i64 %640, %polly.access.mul.Packed_MemRef_call2511697.us.1
  %polly.access.Packed_MemRef_call2511703.us.1 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us.1
  %_p_scalar_704.us.1 = load double, double* %polly.access.Packed_MemRef_call2511703.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_708.us.1, %_p_scalar_704.us.1
  %641 = shl i64 %640, 3
  %642 = add nuw nsw i64 %641, %415
  %scevgep709.us.1 = getelementptr i8, i8* %call, i64 %642
  %scevgep709710.us.1 = bitcast i8* %scevgep709.us.1 to double*
  %_p_scalar_711.us.1 = load double, double* %scevgep709710.us.1, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_711.us.1
  store double %p_add42.i.us.1, double* %scevgep709710.us.1, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us.1 = add nuw nsw i64 %polly.indvar690.us.1, 1
  %exitcond1087.1.not = icmp eq i64 %polly.indvar690.us.1, %smin1086
  br i1 %exitcond1087.1.not, label %polly.loop_exit688.loopexit.us.1, label %polly.loop_header686.us.1, !llvm.loop !178

polly.loop_exit688.loopexit.us.1:                 ; preds = %polly.loop_header686.us.1, %middle.block1289
  %polly.access.add.Packed_MemRef_call2511698.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us.2, %412
  %polly.access.Packed_MemRef_call2511699.us.2 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us.2
  %_p_scalar_700.us.2 = load double, double* %polly.access.Packed_MemRef_call2511699.us.2, align 8
  %polly.access.add.Packed_MemRef_call1509706.us.2 = add nsw i64 %411, 2400
  %polly.access.Packed_MemRef_call1509707.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us.2
  %_p_scalar_708.us.2 = load double, double* %polly.access.Packed_MemRef_call1509707.us.2, align 8
  %min.iters.check1262 = icmp ult i64 %403, 4
  br i1 %min.iters.check1262, label %polly.loop_header686.us.2.preheader, label %vector.memcheck1246

vector.memcheck1246:                              ; preds = %polly.loop_exit688.loopexit.us.1
  %bound01254 = icmp ult i8* %scevgep1247, %scevgep1253
  %bound11255 = icmp ult i8* %scevgep1251, %scevgep1250
  %found.conflict1256 = and i1 %bound01254, %bound11255
  br i1 %found.conflict1256, label %polly.loop_header686.us.2.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %vector.memcheck1246
  %n.vec1265 = and i64 %403, -4
  %broadcast.splatinsert1271 = insertelement <4 x double> poison, double %_p_scalar_700.us.2, i32 0
  %broadcast.splat1272 = shufflevector <4 x double> %broadcast.splatinsert1271, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x double> poison, double %_p_scalar_708.us.2, i32 0
  %broadcast.splat1275 = shufflevector <4 x double> %broadcast.splatinsert1274, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1260 ]
  %643 = add nuw nsw i64 %index1266, %385
  %644 = add nuw nsw i64 %index1266, 2400
  %645 = getelementptr double, double* %Packed_MemRef_call1509, i64 %644
  %646 = bitcast double* %645 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %646, align 8, !alias.scope !179
  %647 = fmul fast <4 x double> %broadcast.splat1272, %wide.load1270
  %648 = add nuw nsw i64 %643, %polly.access.mul.Packed_MemRef_call2511697.us.2
  %649 = getelementptr double, double* %Packed_MemRef_call2511, i64 %648
  %650 = bitcast double* %649 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %650, align 8
  %651 = fmul fast <4 x double> %broadcast.splat1275, %wide.load1273
  %652 = shl i64 %643, 3
  %653 = add nuw nsw i64 %652, %415
  %654 = getelementptr i8, i8* %call, i64 %653
  %655 = bitcast i8* %654 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %655, align 8, !alias.scope !182, !noalias !184
  %656 = fadd fast <4 x double> %651, %647
  %657 = fmul fast <4 x double> %656, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %658 = fadd fast <4 x double> %657, %wide.load1276
  %659 = bitcast i8* %654 to <4 x double>*
  store <4 x double> %658, <4 x double>* %659, align 8, !alias.scope !182, !noalias !184
  %index.next1267 = add i64 %index1266, 4
  %660 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %660, label %middle.block1258, label %vector.body1260, !llvm.loop !185

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1269 = icmp eq i64 %403, %n.vec1265
  br i1 %cmp.n1269, label %polly.loop_exit688.loopexit.us.2, label %polly.loop_header686.us.2.preheader

polly.loop_header686.us.2.preheader:              ; preds = %vector.memcheck1246, %polly.loop_exit688.loopexit.us.1, %middle.block1258
  %polly.indvar690.us.2.ph = phi i64 [ 0, %vector.memcheck1246 ], [ 0, %polly.loop_exit688.loopexit.us.1 ], [ %n.vec1265, %middle.block1258 ]
  br label %polly.loop_header686.us.2

polly.loop_header686.us.2:                        ; preds = %polly.loop_header686.us.2.preheader, %polly.loop_header686.us.2
  %polly.indvar690.us.2 = phi i64 [ %polly.indvar_next691.us.2, %polly.loop_header686.us.2 ], [ %polly.indvar690.us.2.ph, %polly.loop_header686.us.2.preheader ]
  %661 = add nuw nsw i64 %polly.indvar690.us.2, %385
  %polly.access.add.Packed_MemRef_call1509694.us.2 = add nuw nsw i64 %polly.indvar690.us.2, 2400
  %polly.access.Packed_MemRef_call1509695.us.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us.2
  %_p_scalar_696.us.2 = load double, double* %polly.access.Packed_MemRef_call1509695.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_700.us.2, %_p_scalar_696.us.2
  %polly.access.add.Packed_MemRef_call2511702.us.2 = add nuw nsw i64 %661, %polly.access.mul.Packed_MemRef_call2511697.us.2
  %polly.access.Packed_MemRef_call2511703.us.2 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us.2
  %_p_scalar_704.us.2 = load double, double* %polly.access.Packed_MemRef_call2511703.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_708.us.2, %_p_scalar_704.us.2
  %662 = shl i64 %661, 3
  %663 = add nuw nsw i64 %662, %415
  %scevgep709.us.2 = getelementptr i8, i8* %call, i64 %663
  %scevgep709710.us.2 = bitcast i8* %scevgep709.us.2 to double*
  %_p_scalar_711.us.2 = load double, double* %scevgep709710.us.2, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_711.us.2
  store double %p_add42.i.us.2, double* %scevgep709710.us.2, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us.2 = add nuw nsw i64 %polly.indvar690.us.2, 1
  %exitcond1087.2.not = icmp eq i64 %polly.indvar690.us.2, %smin1086
  br i1 %exitcond1087.2.not, label %polly.loop_exit688.loopexit.us.2, label %polly.loop_header686.us.2, !llvm.loop !186

polly.loop_exit688.loopexit.us.2:                 ; preds = %polly.loop_header686.us.2, %middle.block1258
  %polly.access.add.Packed_MemRef_call2511698.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us.3, %412
  %polly.access.Packed_MemRef_call2511699.us.3 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us.3
  %_p_scalar_700.us.3 = load double, double* %polly.access.Packed_MemRef_call2511699.us.3, align 8
  %polly.access.add.Packed_MemRef_call1509706.us.3 = add nsw i64 %411, 3600
  %polly.access.Packed_MemRef_call1509707.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us.3
  %_p_scalar_708.us.3 = load double, double* %polly.access.Packed_MemRef_call1509707.us.3, align 8
  %min.iters.check1231 = icmp ult i64 %410, 4
  br i1 %min.iters.check1231, label %polly.loop_header686.us.3.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_exit688.loopexit.us.2
  %n.vec1234 = and i64 %410, -4
  %broadcast.splatinsert1240 = insertelement <4 x double> poison, double %_p_scalar_700.us.3, i32 0
  %broadcast.splat1241 = shufflevector <4 x double> %broadcast.splatinsert1240, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1243 = insertelement <4 x double> poison, double %_p_scalar_708.us.3, i32 0
  %broadcast.splat1244 = shufflevector <4 x double> %broadcast.splatinsert1243, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1229 ]
  %664 = add nuw nsw i64 %index1235, %385
  %665 = add nuw nsw i64 %index1235, 3600
  %666 = getelementptr double, double* %Packed_MemRef_call1509, i64 %665
  %667 = bitcast double* %666 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %667, align 8
  %668 = fmul fast <4 x double> %broadcast.splat1241, %wide.load1239
  %669 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2511697.us.3
  %670 = getelementptr double, double* %Packed_MemRef_call2511, i64 %669
  %671 = bitcast double* %670 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %671, align 8
  %672 = fmul fast <4 x double> %broadcast.splat1244, %wide.load1242
  %673 = shl i64 %664, 3
  %674 = add nuw nsw i64 %673, %415
  %675 = getelementptr i8, i8* %call, i64 %674
  %676 = bitcast i8* %675 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %676, align 8, !alias.scope !117, !noalias !119
  %677 = fadd fast <4 x double> %672, %668
  %678 = fmul fast <4 x double> %677, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %679 = fadd fast <4 x double> %678, %wide.load1245
  %680 = bitcast i8* %675 to <4 x double>*
  store <4 x double> %679, <4 x double>* %680, align 8, !alias.scope !117, !noalias !119
  %index.next1236 = add i64 %index1235, 4
  %681 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %681, label %middle.block1227, label %vector.body1229, !llvm.loop !187

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1238 = icmp eq i64 %410, %n.vec1234
  br i1 %cmp.n1238, label %polly.loop_exit681, label %polly.loop_header686.us.3.preheader

polly.loop_header686.us.3.preheader:              ; preds = %polly.loop_exit688.loopexit.us.2, %middle.block1227
  %polly.indvar690.us.3.ph = phi i64 [ 0, %polly.loop_exit688.loopexit.us.2 ], [ %n.vec1234, %middle.block1227 ]
  br label %polly.loop_header686.us.3

polly.loop_header686.us.3:                        ; preds = %polly.loop_header686.us.3.preheader, %polly.loop_header686.us.3
  %polly.indvar690.us.3 = phi i64 [ %polly.indvar_next691.us.3, %polly.loop_header686.us.3 ], [ %polly.indvar690.us.3.ph, %polly.loop_header686.us.3.preheader ]
  %682 = add nuw nsw i64 %polly.indvar690.us.3, %385
  %polly.access.add.Packed_MemRef_call1509694.us.3 = add nuw nsw i64 %polly.indvar690.us.3, 3600
  %polly.access.Packed_MemRef_call1509695.us.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us.3
  %_p_scalar_696.us.3 = load double, double* %polly.access.Packed_MemRef_call1509695.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_700.us.3, %_p_scalar_696.us.3
  %polly.access.add.Packed_MemRef_call2511702.us.3 = add nuw nsw i64 %682, %polly.access.mul.Packed_MemRef_call2511697.us.3
  %polly.access.Packed_MemRef_call2511703.us.3 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us.3
  %_p_scalar_704.us.3 = load double, double* %polly.access.Packed_MemRef_call2511703.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_708.us.3, %_p_scalar_704.us.3
  %683 = shl i64 %682, 3
  %684 = add nuw nsw i64 %683, %415
  %scevgep709.us.3 = getelementptr i8, i8* %call, i64 %684
  %scevgep709710.us.3 = bitcast i8* %scevgep709.us.3 to double*
  %_p_scalar_711.us.3 = load double, double* %scevgep709710.us.3, align 8, !alias.scope !117, !noalias !119
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_711.us.3
  store double %p_add42.i.us.3, double* %scevgep709710.us.3, align 8, !alias.scope !117, !noalias !119
  %polly.indvar_next691.us.3 = add nuw nsw i64 %polly.indvar690.us.3, 1
  %exitcond1087.3.not = icmp eq i64 %polly.indvar690.us.3, %smin1086
  br i1 %exitcond1087.3.not, label %polly.loop_exit681, label %polly.loop_header686.us.3, !llvm.loop !188
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
