; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4002.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4002.c"
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
  %call807 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1659 = bitcast i8* %call1 to double*
  %polly.access.call1668 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1668, %call2
  %polly.access.call2688 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2688, %call1
  %2 = or i1 %0, %1
  %polly.access.call708 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call708, %call2
  %4 = icmp ule i8* %polly.access.call2688, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call708, %call1
  %8 = icmp ule i8* %polly.access.call1668, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header781, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1072 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1071 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1070 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1069 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1069, %scevgep1072
  %bound1 = icmp ult i8* %scevgep1071, %scevgep1070
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
  br i1 %exitcond18.not.i, label %vector.ph1076, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1076:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1083 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1084 = shufflevector <4 x i64> %broadcast.splatinsert1083, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %vector.ph1076
  %index1077 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1081 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1076 ], [ %vec.ind.next1082, %vector.body1075 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1081, %broadcast.splat1084
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv7.i, i64 %index1077
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1082 = add <4 x i64> %vec.ind1081, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1078, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1075, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1075
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1076, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit842
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start468, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1138 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1138, label %for.body3.i46.preheader1212, label %vector.ph1139

vector.ph1139:                                    ; preds = %for.body3.i46.preheader
  %n.vec1141 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1137 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %index1142
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1143 = add i64 %index1142, 4
  %46 = icmp eq i64 %index.next1143, %n.vec1141
  br i1 %46, label %middle.block1135, label %vector.body1137, !llvm.loop !18

middle.block1135:                                 ; preds = %vector.body1137
  %cmp.n1145 = icmp eq i64 %indvars.iv21.i, %n.vec1141
  br i1 %cmp.n1145, label %for.inc6.i, label %for.body3.i46.preheader1212

for.body3.i46.preheader1212:                      ; preds = %for.body3.i46.preheader, %middle.block1135
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1141, %middle.block1135 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1212, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1212 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1135, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting469
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1161 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1161, label %for.body3.i60.preheader1211, label %vector.ph1162

vector.ph1162:                                    ; preds = %for.body3.i60.preheader
  %n.vec1164 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1162
  %index1165 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1166, %vector.body1160 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1165
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1169 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1169, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1166 = add i64 %index1165, 4
  %57 = icmp eq i64 %index.next1166, %n.vec1164
  br i1 %57, label %middle.block1158, label %vector.body1160, !llvm.loop !54

middle.block1158:                                 ; preds = %vector.body1160
  %cmp.n1168 = icmp eq i64 %indvars.iv21.i52, %n.vec1164
  br i1 %cmp.n1168, label %for.inc6.i63, label %for.body3.i60.preheader1211

for.body3.i60.preheader1211:                      ; preds = %for.body3.i60.preheader, %middle.block1158
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1164, %middle.block1158 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1211, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1211 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1158, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1187 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1187, label %for.body3.i99.preheader1210, label %vector.ph1188

vector.ph1188:                                    ; preds = %for.body3.i99.preheader
  %n.vec1190 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1186 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1191
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1195 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1195, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1192 = add i64 %index1191, 4
  %68 = icmp eq i64 %index.next1192, %n.vec1190
  br i1 %68, label %middle.block1184, label %vector.body1186, !llvm.loop !56

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1194 = icmp eq i64 %indvars.iv21.i91, %n.vec1190
  br i1 %cmp.n1194, label %for.inc6.i102, label %for.body3.i99.preheader1210

for.body3.i99.preheader1210:                      ; preds = %for.body3.i99.preheader, %middle.block1184
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1190, %middle.block1184 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1210, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1210 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1184, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1199 = phi i64 [ %indvar.next1200, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1199, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1201 = icmp ult i64 %88, 4
  br i1 %min.iters.check1201, label %polly.loop_header191.preheader, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header
  %n.vec1204 = and i64 %88, -4
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1198 ]
  %90 = shl nuw nsw i64 %index1205, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1206 = add i64 %index1205, 4
  %95 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %95, label %middle.block1196, label %vector.body1198, !llvm.loop !68

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1208 = icmp eq i64 %88, %n.vec1204
  br i1 %cmp.n1208, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1196
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1204, %middle.block1196 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1196
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1200 = add i64 %indvar1199, 1
  br i1 %exitcond991.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond990.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 5
  %98 = shl nsw i64 %polly.indvar202, 2
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond989.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond989.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %99 = shl nsw i64 %polly.indvar208, 2
  %100 = or i64 %99, 1
  %101 = or i64 %99, 2
  %102 = or i64 %99, 3
  %103 = shl i64 %polly.indvar208, 5
  %104 = shl i64 %polly.indvar208, 5
  %105 = or i64 %104, 8
  %106 = shl i64 %polly.indvar208, 5
  %107 = or i64 %106, 16
  %108 = shl i64 %polly.indvar208, 5
  %109 = or i64 %108, 24
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next209, 250
  br i1 %exitcond988.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %110 = shl nsw i64 %polly.indvar214, 7
  %111 = sub nsw i64 %98, %110
  %112 = add nuw nsw i64 %110, 128
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -128
  %exitcond987.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond987.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit248 ], [ %indvars.iv977, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin983 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 127)
  %113 = add nsw i64 %polly.indvar220, %111
  %polly.loop_guard1064 = icmp sgt i64 %113, -1
  %114 = add nuw nsw i64 %polly.indvar220, %98
  %.not = icmp ult i64 %114, %112
  %polly.access.mul.call1240 = mul nuw nsw i64 %114, 1000
  %115 = add nuw nsw i64 %polly.access.mul.call1240, %99
  br i1 %polly.loop_guard1064, label %polly.loop_header229.us, label %polly.loop_header217.split

polly.loop_header229.us:                          ; preds = %polly.loop_header217, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header217 ]
  %116 = add nuw nsw i64 %polly.indvar232.us, %110
  %polly.access.mul.call1236.us = mul nuw nsw i64 %116, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %99, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar232.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond981.not = icmp eq i64 %polly.indvar232.us, %smin983
  br i1 %exitcond981.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1659, i64 %115
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %113
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.loop_header229.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.loop_header229.us.1.preheader, label %polly.then.us

polly.loop_header229.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header229.us.1

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1659, i64 %115
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !65, !noalias !71
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %113
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.access.add.call1241.1 = or i64 %115, 1
  %polly.access.call1242.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.1
  %polly.access.call1242.load.1 = load double, double* %polly.access.call1242.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.1 = add nsw i64 %113, 1200
  %polly.access.Packed_MemRef_call1245.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.1
  store double %polly.access.call1242.load.1, double* %polly.access.Packed_MemRef_call1245.1, align 8
  %polly.access.add.call1241.2 = or i64 %115, 2
  %polly.access.call1242.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.2
  %polly.access.call1242.load.2 = load double, double* %polly.access.call1242.2, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.2 = add nsw i64 %113, 2400
  %polly.access.Packed_MemRef_call1245.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.2
  store double %polly.access.call1242.load.2, double* %polly.access.Packed_MemRef_call1245.2, align 8
  %polly.access.add.call1241.3 = or i64 %115, 3
  %polly.access.call1242.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.3
  %polly.access.call1242.load.3 = load double, double* %polly.access.call1242.3, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.3 = add nsw i64 %113, 3600
  %polly.access.Packed_MemRef_call1245.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.3
  store double %polly.access.call1242.load.3, double* %polly.access.Packed_MemRef_call1245.3, align 8
  br label %polly.loop_exit248

polly.loop_exit248:                               ; preds = %polly.loop_header253.us.3, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next221, 4
  br i1 %exitcond986.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %117 = mul nuw nsw i64 %114, 8000
  %118 = mul nuw nsw i64 %114, 9600
  br i1 %polly.loop_guard1064, label %polly.loop_header246.us.preheader, label %polly.loop_exit248

polly.loop_header246.us.preheader:                ; preds = %polly.loop_header246.preheader
  %119 = add nuw nsw i64 %103, %117
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %119
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %113
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us.preheader, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us.preheader ]
  %120 = add nuw nsw i64 %polly.indvar257.us, %110
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar257.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %121 = mul nuw nsw i64 %120, 8000
  %122 = add nuw nsw i64 %121, %103
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %123 = shl i64 %120, 3
  %124 = add nuw nsw i64 %123, %118
  %scevgep274.us = getelementptr i8, i8* %call, i64 %124
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar257.us, %smin983
  br i1 %exitcond984.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %125 = add nuw nsw i64 %105, %117
  %scevgep264.us.1 = getelementptr i8, i8* %call2, i64 %125
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us.1 = add nsw i64 %113, 1200
  %polly.access.Packed_MemRef_call1272.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.1
  %_p_scalar_273.us.1 = load double, double* %polly.access.Packed_MemRef_call1272.us.1, align 8
  br label %polly.loop_header253.us.1

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1173 = phi i64 [ %indvar.next1174, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %126 = add i64 %indvar1173, 1
  %127 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1175 = icmp ult i64 %126, 4
  br i1 %min.iters.check1175, label %polly.loop_header371.preheader, label %vector.ph1176

vector.ph1176:                                    ; preds = %polly.loop_header365
  %n.vec1178 = and i64 %126, -4
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1176
  %index1179 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1180, %vector.body1172 ]
  %128 = shl nuw nsw i64 %index1179, 3
  %129 = getelementptr i8, i8* %scevgep377, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1183 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !73, !noalias !75
  %131 = fmul fast <4 x double> %wide.load1183, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !73, !noalias !75
  %index.next1180 = add i64 %index1179, 4
  %133 = icmp eq i64 %index.next1180, %n.vec1178
  br i1 %133, label %middle.block1170, label %vector.body1172, !llvm.loop !79

middle.block1170:                                 ; preds = %vector.body1172
  %cmp.n1182 = icmp eq i64 %126, %n.vec1178
  br i1 %cmp.n1182, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1170
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1178, %middle.block1170 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1170
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1174 = add i64 %indvar1173, 1
  br i1 %exitcond1010.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %134
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1009.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !80

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %indvars.iv993 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next994, %polly.loop_exit389 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit389 ]
  %135 = lshr i64 %polly.indvar384, 5
  %136 = shl nsw i64 %polly.indvar384, 2
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit396
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 4
  %exitcond1008.not = icmp eq i64 %polly.indvar_next385, 300
  br i1 %exitcond1008.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit396, %polly.loop_header381
  %polly.indvar390 = phi i64 [ 0, %polly.loop_header381 ], [ %polly.indvar_next391, %polly.loop_exit396 ]
  %137 = shl nsw i64 %polly.indvar390, 2
  %138 = or i64 %137, 1
  %139 = or i64 %137, 2
  %140 = or i64 %137, 3
  %141 = shl i64 %polly.indvar390, 5
  %142 = shl i64 %polly.indvar390, 5
  %143 = or i64 %142, 8
  %144 = shl i64 %polly.indvar390, 5
  %145 = or i64 %144, 16
  %146 = shl i64 %polly.indvar390, 5
  %147 = or i64 %146, 24
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit402
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next391, 250
  br i1 %exitcond1007.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header387
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %polly.loop_exit402 ], [ %indvars.iv993, %polly.loop_header387 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header387 ]
  %148 = shl nsw i64 %polly.indvar397, 7
  %149 = sub nsw i64 %136, %148
  %150 = add nuw nsw i64 %148, 128
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit437
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, -128
  %exitcond1006.not = icmp eq i64 %polly.indvar397, %135
  br i1 %exitcond1006.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit437, %polly.loop_header394
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit437 ], [ %indvars.iv995, %polly.loop_header394 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit437 ], [ 0, %polly.loop_header394 ]
  %smin1002 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 127)
  %151 = add nsw i64 %polly.indvar403, %149
  %polly.loop_guard4161065 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar403, %136
  %.not861 = icmp ult i64 %152, %150
  %polly.access.mul.call1429 = mul nuw nsw i64 %152, 1000
  %153 = add nuw nsw i64 %polly.access.mul.call1429, %137
  br i1 %polly.loop_guard4161065, label %polly.loop_header413.us, label %polly.loop_header400.split

polly.loop_header413.us:                          ; preds = %polly.loop_header400, %polly.loop_header413.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.loop_header413.us ], [ 0, %polly.loop_header400 ]
  %154 = add nuw nsw i64 %polly.indvar417.us, %148
  %polly.access.mul.call1421.us = mul nuw nsw i64 %154, 1000
  %polly.access.add.call1422.us = add nuw nsw i64 %137, %polly.access.mul.call1421.us
  %polly.access.call1423.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us
  %polly.access.call1423.load.us = load double, double* %polly.access.call1423.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.indvar417.us
  store double %polly.access.call1423.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar417.us, %smin1002
  br i1 %exitcond1000.not, label %polly.cond424.loopexit.us, label %polly.loop_header413.us

polly.then426.us:                                 ; preds = %polly.cond424.loopexit.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1659, i64 %153
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.Packed_MemRef_call1282434.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %151
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1282434.us, align 8
  br label %polly.loop_header413.us.1.preheader

polly.cond424.loopexit.us:                        ; preds = %polly.loop_header413.us
  br i1 %.not861, label %polly.loop_header413.us.1.preheader, label %polly.then426.us

polly.loop_header413.us.1.preheader:              ; preds = %polly.then426.us, %polly.cond424.loopexit.us
  br label %polly.loop_header413.us.1

polly.loop_header400.split:                       ; preds = %polly.loop_header400
  br i1 %.not861, label %polly.loop_exit437, label %polly.loop_header406.preheader

polly.loop_header406.preheader:                   ; preds = %polly.loop_header400.split
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1659, i64 %153
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !76, !noalias !81
  %polly.access.Packed_MemRef_call1282434 = getelementptr double, double* %Packed_MemRef_call1282, i64 %151
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1282434, align 8
  %polly.access.add.call1430.1 = or i64 %153, 1
  %polly.access.call1431.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.1
  %polly.access.call1431.load.1 = load double, double* %polly.access.call1431.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282433.1 = add nsw i64 %151, 1200
  %polly.access.Packed_MemRef_call1282434.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.1
  store double %polly.access.call1431.load.1, double* %polly.access.Packed_MemRef_call1282434.1, align 8
  %polly.access.add.call1430.2 = or i64 %153, 2
  %polly.access.call1431.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.2
  %polly.access.call1431.load.2 = load double, double* %polly.access.call1431.2, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282433.2 = add nsw i64 %151, 2400
  %polly.access.Packed_MemRef_call1282434.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.2
  store double %polly.access.call1431.load.2, double* %polly.access.Packed_MemRef_call1282434.2, align 8
  %polly.access.add.call1430.3 = or i64 %153, 3
  %polly.access.call1431.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.3
  %polly.access.call1431.load.3 = load double, double* %polly.access.call1431.3, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282433.3 = add nsw i64 %151, 3600
  %polly.access.Packed_MemRef_call1282434.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.3
  store double %polly.access.call1431.load.3, double* %polly.access.Packed_MemRef_call1282434.3, align 8
  br label %polly.loop_exit437

polly.loop_exit437:                               ; preds = %polly.loop_header442.us.3, %polly.loop_header400.split, %polly.loop_header406.preheader, %polly.loop_header435.preheader
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next404, 4
  br i1 %exitcond1005.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header435.preheader:                   ; preds = %polly.cond424.loopexit.us.3, %polly.then426.us.3
  %155 = mul nuw nsw i64 %152, 8000
  %156 = mul nuw nsw i64 %152, 9600
  br i1 %polly.loop_guard4161065, label %polly.loop_header435.us.preheader, label %polly.loop_exit437

polly.loop_header435.us.preheader:                ; preds = %polly.loop_header435.preheader
  %157 = add nuw nsw i64 %141, %155
  %scevgep453.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep453454.us = bitcast i8* %scevgep453.us to double*
  %_p_scalar_455.us = load double, double* %scevgep453454.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1282461.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %151
  %_p_scalar_462.us = load double, double* %polly.access.Packed_MemRef_call1282461.us, align 8
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us.preheader, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us.preheader ]
  %158 = add nuw nsw i64 %polly.indvar446.us, %148
  %polly.access.Packed_MemRef_call1282451.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.indvar446.us
  %_p_scalar_452.us = load double, double* %polly.access.Packed_MemRef_call1282451.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_455.us, %_p_scalar_452.us
  %159 = mul nuw nsw i64 %158, 8000
  %160 = add nuw nsw i64 %159, %141
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %161 = shl i64 %158, 3
  %162 = add nuw nsw i64 %161, %156
  %scevgep463.us = getelementptr i8, i8* %call, i64 %162
  %scevgep463464.us = bitcast i8* %scevgep463.us to double*
  %_p_scalar_465.us = load double, double* %scevgep463464.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_465.us
  store double %p_add42.i79.us, double* %scevgep463464.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar446.us, %smin1002
  br i1 %exitcond1003.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  %163 = add nuw nsw i64 %143, %155
  %scevgep453.us.1 = getelementptr i8, i8* %call2, i64 %163
  %scevgep453454.us.1 = bitcast i8* %scevgep453.us.1 to double*
  %_p_scalar_455.us.1 = load double, double* %scevgep453454.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282460.us.1 = add nsw i64 %151, 1200
  %polly.access.Packed_MemRef_call1282461.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.1
  %_p_scalar_462.us.1 = load double, double* %polly.access.Packed_MemRef_call1282461.us.1, align 8
  br label %polly.loop_header442.us.1

polly.start468:                                   ; preds = %init_array.exit
  %malloccall470 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header554

polly.exiting469:                                 ; preds = %polly.loop_exit578
  tail call void @free(i8* %malloccall470)
  br label %kernel_syr2k.exit

polly.loop_header554:                             ; preds = %polly.loop_exit562, %polly.start468
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit562 ], [ 0, %polly.start468 ]
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_exit562 ], [ 1, %polly.start468 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar557, 9600
  %scevgep566 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1149 = icmp ult i64 %164, 4
  br i1 %min.iters.check1149, label %polly.loop_header560.preheader, label %vector.ph1150

vector.ph1150:                                    ; preds = %polly.loop_header554
  %n.vec1152 = and i64 %164, -4
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1150
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1154, %vector.body1148 ]
  %166 = shl nuw nsw i64 %index1153, 3
  %167 = getelementptr i8, i8* %scevgep566, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1157 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !83, !noalias !85
  %169 = fmul fast <4 x double> %wide.load1157, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !83, !noalias !85
  %index.next1154 = add i64 %index1153, 4
  %171 = icmp eq i64 %index.next1154, %n.vec1152
  br i1 %171, label %middle.block1146, label %vector.body1148, !llvm.loop !89

middle.block1146:                                 ; preds = %vector.body1148
  %cmp.n1156 = icmp eq i64 %164, %n.vec1152
  br i1 %cmp.n1156, label %polly.loop_exit562, label %polly.loop_header560.preheader

polly.loop_header560.preheader:                   ; preds = %polly.loop_header554, %middle.block1146
  %polly.indvar563.ph = phi i64 [ 0, %polly.loop_header554 ], [ %n.vec1152, %middle.block1146 ]
  br label %polly.loop_header560

polly.loop_exit562:                               ; preds = %polly.loop_header560, %middle.block1146
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next558, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1029.not, label %polly.loop_header570.preheader, label %polly.loop_header554

polly.loop_header570.preheader:                   ; preds = %polly.loop_exit562
  %Packed_MemRef_call1471 = bitcast i8* %malloccall470 to double*
  br label %polly.loop_header570

polly.loop_header560:                             ; preds = %polly.loop_header560.preheader, %polly.loop_header560
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_header560 ], [ %polly.indvar563.ph, %polly.loop_header560.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar563, 3
  %scevgep567 = getelementptr i8, i8* %scevgep566, i64 %172
  %scevgep567568 = bitcast i8* %scevgep567 to double*
  %_p_scalar_569 = load double, double* %scevgep567568, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_569, 1.200000e+00
  store double %p_mul.i, double* %scevgep567568, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next564, %polly.indvar557
  br i1 %exitcond1028.not, label %polly.loop_exit562, label %polly.loop_header560, !llvm.loop !90

polly.loop_header570:                             ; preds = %polly.loop_header570.preheader, %polly.loop_exit578
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1013, %polly.loop_exit578 ]
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %polly.indvar_next574, %polly.loop_exit578 ]
  %173 = lshr i64 %polly.indvar573, 5
  %174 = shl nsw i64 %polly.indvar573, 2
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_exit585
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 4
  %exitcond1027.not = icmp eq i64 %polly.indvar_next574, 300
  br i1 %exitcond1027.not, label %polly.exiting469, label %polly.loop_header570

polly.loop_header576:                             ; preds = %polly.loop_exit585, %polly.loop_header570
  %polly.indvar579 = phi i64 [ 0, %polly.loop_header570 ], [ %polly.indvar_next580, %polly.loop_exit585 ]
  %175 = shl nsw i64 %polly.indvar579, 2
  %176 = or i64 %175, 1
  %177 = or i64 %175, 2
  %178 = or i64 %175, 3
  %179 = shl i64 %polly.indvar579, 5
  %180 = shl i64 %polly.indvar579, 5
  %181 = or i64 %180, 8
  %182 = shl i64 %polly.indvar579, 5
  %183 = or i64 %182, 16
  %184 = shl i64 %polly.indvar579, 5
  %185 = or i64 %184, 24
  br label %polly.loop_header583

polly.loop_exit585:                               ; preds = %polly.loop_exit591
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next580, 250
  br i1 %exitcond1026.not, label %polly.loop_exit578, label %polly.loop_header576

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header576
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit591 ], [ %indvars.iv1012, %polly.loop_header576 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 0, %polly.loop_header576 ]
  %186 = shl nsw i64 %polly.indvar586, 7
  %187 = sub nsw i64 %174, %186
  %188 = add nuw nsw i64 %186, 128
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_exit626
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -128
  %exitcond1025.not = icmp eq i64 %polly.indvar586, %173
  br i1 %exitcond1025.not, label %polly.loop_exit585, label %polly.loop_header583

polly.loop_header589:                             ; preds = %polly.loop_exit626, %polly.loop_header583
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit626 ], [ %indvars.iv1014, %polly.loop_header583 ]
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_exit626 ], [ 0, %polly.loop_header583 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 127)
  %189 = add nsw i64 %polly.indvar592, %187
  %polly.loop_guard6051066 = icmp sgt i64 %189, -1
  %190 = add nuw nsw i64 %polly.indvar592, %174
  %.not862 = icmp ult i64 %190, %188
  %polly.access.mul.call1618 = mul nuw nsw i64 %190, 1000
  %191 = add nuw nsw i64 %polly.access.mul.call1618, %175
  br i1 %polly.loop_guard6051066, label %polly.loop_header602.us, label %polly.loop_header589.split

polly.loop_header602.us:                          ; preds = %polly.loop_header589, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header589 ]
  %192 = add nuw nsw i64 %polly.indvar606.us, %186
  %polly.access.mul.call1610.us = mul nuw nsw i64 %192, 1000
  %polly.access.add.call1611.us = add nuw nsw i64 %175, %polly.access.mul.call1610.us
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call1471.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.indvar606.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1471.us, align 8
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar606.us, %smin1021
  br i1 %exitcond1019.not, label %polly.cond613.loopexit.us, label %polly.loop_header602.us

polly.then615.us:                                 ; preds = %polly.cond613.loopexit.us
  %polly.access.call1620.us = getelementptr double, double* %polly.access.cast.call1659, i64 %191
  %polly.access.call1620.load.us = load double, double* %polly.access.call1620.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call1471623.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %189
  store double %polly.access.call1620.load.us, double* %polly.access.Packed_MemRef_call1471623.us, align 8
  br label %polly.loop_header602.us.1.preheader

polly.cond613.loopexit.us:                        ; preds = %polly.loop_header602.us
  br i1 %.not862, label %polly.loop_header602.us.1.preheader, label %polly.then615.us

polly.loop_header602.us.1.preheader:              ; preds = %polly.then615.us, %polly.cond613.loopexit.us
  br label %polly.loop_header602.us.1

polly.loop_header589.split:                       ; preds = %polly.loop_header589
  br i1 %.not862, label %polly.loop_exit626, label %polly.loop_header595.preheader

polly.loop_header595.preheader:                   ; preds = %polly.loop_header589.split
  %polly.access.call1620 = getelementptr double, double* %polly.access.cast.call1659, i64 %191
  %polly.access.call1620.load = load double, double* %polly.access.call1620, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call1471623 = getelementptr double, double* %Packed_MemRef_call1471, i64 %189
  store double %polly.access.call1620.load, double* %polly.access.Packed_MemRef_call1471623, align 8
  %polly.access.add.call1619.1 = or i64 %191, 1
  %polly.access.call1620.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.1
  %polly.access.call1620.load.1 = load double, double* %polly.access.call1620.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471622.1 = add nsw i64 %189, 1200
  %polly.access.Packed_MemRef_call1471623.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.1
  store double %polly.access.call1620.load.1, double* %polly.access.Packed_MemRef_call1471623.1, align 8
  %polly.access.add.call1619.2 = or i64 %191, 2
  %polly.access.call1620.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.2
  %polly.access.call1620.load.2 = load double, double* %polly.access.call1620.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471622.2 = add nsw i64 %189, 2400
  %polly.access.Packed_MemRef_call1471623.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.2
  store double %polly.access.call1620.load.2, double* %polly.access.Packed_MemRef_call1471623.2, align 8
  %polly.access.add.call1619.3 = or i64 %191, 3
  %polly.access.call1620.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.3
  %polly.access.call1620.load.3 = load double, double* %polly.access.call1620.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471622.3 = add nsw i64 %189, 3600
  %polly.access.Packed_MemRef_call1471623.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.3
  store double %polly.access.call1620.load.3, double* %polly.access.Packed_MemRef_call1471623.3, align 8
  br label %polly.loop_exit626

polly.loop_exit626:                               ; preds = %polly.loop_header631.us.3, %polly.loop_header589.split, %polly.loop_header595.preheader, %polly.loop_header624.preheader
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next593, 4
  br i1 %exitcond1024.not, label %polly.loop_exit591, label %polly.loop_header589

polly.loop_header624.preheader:                   ; preds = %polly.cond613.loopexit.us.3, %polly.then615.us.3
  %193 = mul nuw nsw i64 %190, 8000
  %194 = mul nuw nsw i64 %190, 9600
  br i1 %polly.loop_guard6051066, label %polly.loop_header624.us.preheader, label %polly.loop_exit626

polly.loop_header624.us.preheader:                ; preds = %polly.loop_header624.preheader
  %195 = add nuw nsw i64 %179, %193
  %scevgep642.us = getelementptr i8, i8* %call2, i64 %195
  %scevgep642643.us = bitcast i8* %scevgep642.us to double*
  %_p_scalar_644.us = load double, double* %scevgep642643.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1471650.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %189
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1471650.us, align 8
  br label %polly.loop_header631.us

polly.loop_header631.us:                          ; preds = %polly.loop_header624.us.preheader, %polly.loop_header631.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_header631.us ], [ 0, %polly.loop_header624.us.preheader ]
  %196 = add nuw nsw i64 %polly.indvar635.us, %186
  %polly.access.Packed_MemRef_call1471640.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.indvar635.us
  %_p_scalar_641.us = load double, double* %polly.access.Packed_MemRef_call1471640.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_644.us, %_p_scalar_641.us
  %197 = mul nuw nsw i64 %196, 8000
  %198 = add nuw nsw i64 %197, %179
  %scevgep645.us = getelementptr i8, i8* %call2, i64 %198
  %scevgep645646.us = bitcast i8* %scevgep645.us to double*
  %_p_scalar_647.us = load double, double* %scevgep645646.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_651.us, %_p_scalar_647.us
  %199 = shl i64 %196, 3
  %200 = add nuw nsw i64 %199, %194
  %scevgep652.us = getelementptr i8, i8* %call, i64 %200
  %scevgep652653.us = bitcast i8* %scevgep652.us to double*
  %_p_scalar_654.us = load double, double* %scevgep652653.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_654.us
  store double %p_add42.i.us, double* %scevgep652653.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar635.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit633.loopexit.us, label %polly.loop_header631.us

polly.loop_exit633.loopexit.us:                   ; preds = %polly.loop_header631.us
  %201 = add nuw nsw i64 %181, %193
  %scevgep642.us.1 = getelementptr i8, i8* %call2, i64 %201
  %scevgep642643.us.1 = bitcast i8* %scevgep642.us.1 to double*
  %_p_scalar_644.us.1 = load double, double* %scevgep642643.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471649.us.1 = add nsw i64 %189, 1200
  %polly.access.Packed_MemRef_call1471650.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.1
  %_p_scalar_651.us.1 = load double, double* %polly.access.Packed_MemRef_call1471650.us.1, align 8
  br label %polly.loop_header631.us.1

polly.loop_header781:                             ; preds = %entry, %polly.loop_exit789
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit789 ], [ 0, %entry ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %entry ]
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -1168)
  %202 = shl nsw i64 %polly.indvar784, 5
  %203 = add nsw i64 %smin1056, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1059.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond1059.not, label %polly.loop_header808, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %204 = mul nsw i64 %polly.indvar790, -32
  %smin = call i64 @llvm.smin.i64(i64 %204, i64 -1168)
  %205 = add nsw i64 %smin, 1200
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 -1168)
  %206 = shl nsw i64 %polly.indvar790, 5
  %207 = add nsw i64 %smin1052, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1058.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %polly.indvar796 = phi i64 [ 0, %polly.loop_header787 ], [ %polly.indvar_next797, %polly.loop_exit801 ]
  %208 = add nuw nsw i64 %polly.indvar796, %202
  %209 = trunc i64 %208 to i32
  %210 = mul nuw nsw i64 %208, 9600
  %min.iters.check = icmp eq i64 %205, 0
  br i1 %min.iters.check, label %polly.loop_header799, label %vector.ph1088

vector.ph1088:                                    ; preds = %polly.loop_header793
  %broadcast.splatinsert1095 = insertelement <4 x i64> poison, i64 %206, i32 0
  %broadcast.splat1096 = shufflevector <4 x i64> %broadcast.splatinsert1095, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %vector.ph1088
  %index1089 = phi i64 [ 0, %vector.ph1088 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1093 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1088 ], [ %vec.ind.next1094, %vector.body1087 ]
  %211 = add nuw nsw <4 x i64> %vec.ind1093, %broadcast.splat1096
  %212 = trunc <4 x i64> %211 to <4 x i32>
  %213 = mul <4 x i32> %broadcast.splat1098, %212
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 1200, i32 1200, i32 1200, i32 1200>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %218 = extractelement <4 x i64> %211, i32 0
  %219 = shl i64 %218, 3
  %220 = add nuw nsw i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %217, <4 x double>* %222, align 8, !alias.scope !93, !noalias !95
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1094 = add <4 x i64> %vec.ind1093, <i64 4, i64 4, i64 4, i64 4>
  %223 = icmp eq i64 %index.next1090, %205
  br i1 %223, label %polly.loop_exit801, label %vector.body1087, !llvm.loop !98

polly.loop_exit801:                               ; preds = %vector.body1087, %polly.loop_header799
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar796, %203
  br i1 %exitcond1057.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_header793, %polly.loop_header799
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_header799 ], [ 0, %polly.loop_header793 ]
  %224 = add nuw nsw i64 %polly.indvar802, %206
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %225, %209
  %227 = add i32 %226, 3
  %228 = urem i32 %227, 1200
  %p_conv31.i = sitofp i32 %228 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %229 = shl i64 %224, 3
  %230 = add nuw nsw i64 %229, %210
  %scevgep805 = getelementptr i8, i8* %call, i64 %230
  %scevgep805806 = bitcast i8* %scevgep805 to double*
  store double %p_div33.i, double* %scevgep805806, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar802, %207
  br i1 %exitcond1053.not, label %polly.loop_exit801, label %polly.loop_header799, !llvm.loop !99

polly.loop_header808:                             ; preds = %polly.loop_exit789, %polly.loop_exit816
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %231 = shl nsw i64 %polly.indvar811, 5
  %232 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header814

polly.loop_exit816:                               ; preds = %polly.loop_exit822
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next812, 38
  br i1 %exitcond1049.not, label %polly.loop_header834, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_exit822, %polly.loop_header808
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %233 = mul nsw i64 %polly.indvar817, -32
  %smin1102 = call i64 @llvm.smin.i64(i64 %233, i64 -968)
  %234 = add nsw i64 %smin1102, 1000
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 -968)
  %235 = shl nsw i64 %polly.indvar817, 5
  %236 = add nsw i64 %smin1042, 999
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next818, 32
  br i1 %exitcond1048.not, label %polly.loop_exit816, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %polly.indvar823 = phi i64 [ 0, %polly.loop_header814 ], [ %polly.indvar_next824, %polly.loop_exit828 ]
  %237 = add nuw nsw i64 %polly.indvar823, %231
  %238 = trunc i64 %237 to i32
  %239 = mul nuw nsw i64 %237, 8000
  %min.iters.check1103 = icmp eq i64 %234, 0
  br i1 %min.iters.check1103, label %polly.loop_header826, label %vector.ph1104

vector.ph1104:                                    ; preds = %polly.loop_header820
  %broadcast.splatinsert1113 = insertelement <4 x i64> poison, i64 %235, i32 0
  %broadcast.splat1114 = shufflevector <4 x i64> %broadcast.splatinsert1113, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %vector.ph1104
  %index1107 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1108, %vector.body1101 ]
  %vec.ind1111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1104 ], [ %vec.ind.next1112, %vector.body1101 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1111, %broadcast.splat1114
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1116, %241
  %243 = add <4 x i32> %242, <i32 2, i32 2, i32 2, i32 2>
  %244 = urem <4 x i32> %243, <i32 1000, i32 1000, i32 1000, i32 1000>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %239
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !97, !noalias !100
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1112 = add <4 x i64> %vec.ind1111, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1108, %234
  br i1 %252, label %polly.loop_exit828, label %vector.body1101, !llvm.loop !101

polly.loop_exit828:                               ; preds = %vector.body1101, %polly.loop_header826
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar823, %232
  br i1 %exitcond1047.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_header820, %polly.loop_header826
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_header826 ], [ 0, %polly.loop_header820 ]
  %253 = add nuw nsw i64 %polly.indvar829, %235
  %254 = trunc i64 %253 to i32
  %255 = mul i32 %254, %238
  %256 = add i32 %255, 2
  %257 = urem i32 %256, 1000
  %p_conv10.i = sitofp i32 %257 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %258 = shl i64 %253, 3
  %259 = add nuw nsw i64 %258, %239
  %scevgep832 = getelementptr i8, i8* %call2, i64 %259
  %scevgep832833 = bitcast i8* %scevgep832 to double*
  store double %p_div12.i, double* %scevgep832833, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar829, %236
  br i1 %exitcond1043.not, label %polly.loop_exit828, label %polly.loop_header826, !llvm.loop !102

polly.loop_header834:                             ; preds = %polly.loop_exit816, %polly.loop_exit842
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -1168)
  %260 = shl nsw i64 %polly.indvar837, 5
  %261 = add nsw i64 %smin1036, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1039.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1039.not, label %init_array.exit, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %262 = mul nsw i64 %polly.indvar843, -32
  %smin1120 = call i64 @llvm.smin.i64(i64 %262, i64 -968)
  %263 = add nsw i64 %smin1120, 1000
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -968)
  %264 = shl nsw i64 %polly.indvar843, 5
  %265 = add nsw i64 %smin1032, 999
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next844, 32
  br i1 %exitcond1038.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %polly.indvar849 = phi i64 [ 0, %polly.loop_header840 ], [ %polly.indvar_next850, %polly.loop_exit854 ]
  %266 = add nuw nsw i64 %polly.indvar849, %260
  %267 = trunc i64 %266 to i32
  %268 = mul nuw nsw i64 %266, 8000
  %min.iters.check1121 = icmp eq i64 %263, 0
  br i1 %min.iters.check1121, label %polly.loop_header852, label %vector.ph1122

vector.ph1122:                                    ; preds = %polly.loop_header846
  %broadcast.splatinsert1131 = insertelement <4 x i64> poison, i64 %264, i32 0
  %broadcast.splat1132 = shufflevector <4 x i64> %broadcast.splatinsert1131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %vector.ph1122
  %index1125 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1126, %vector.body1119 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1122 ], [ %vec.ind.next1130, %vector.body1119 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1129, %broadcast.splat1132
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1134, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 1200, i32 1200, i32 1200, i32 1200>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %268
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !96, !noalias !103
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1126, %263
  br i1 %281, label %polly.loop_exit854, label %vector.body1119, !llvm.loop !104

polly.loop_exit854:                               ; preds = %vector.body1119, %polly.loop_header852
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar849, %261
  br i1 %exitcond1037.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_header846, %polly.loop_header852
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_header852 ], [ 0, %polly.loop_header846 ]
  %282 = add nuw nsw i64 %polly.indvar855, %264
  %283 = trunc i64 %282 to i32
  %284 = mul i32 %283, %267
  %285 = add i32 %284, 1
  %286 = urem i32 %285, 1200
  %p_conv.i = sitofp i32 %286 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %287 = shl i64 %282, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep859 = getelementptr i8, i8* %call1, i64 %288
  %scevgep859860 = bitcast i8* %scevgep859 to double*
  store double %p_div.i, double* %scevgep859860, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar855, %265
  br i1 %exitcond1033.not, label %polly.loop_exit854, label %polly.loop_header852, !llvm.loop !105

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1.preheader, %polly.loop_header229.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header229.us.1.preheader ]
  %289 = add nuw nsw i64 %polly.indvar232.us.1, %110
  %polly.access.mul.call1236.us.1 = mul nuw nsw i64 %289, 1000
  %polly.access.add.call1237.us.1 = add nuw nsw i64 %100, %polly.access.mul.call1236.us.1
  %polly.access.call1238.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.1
  %polly.access.call1238.load.us.1 = load double, double* %polly.access.call1238.us.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1238.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond981.1.not = icmp eq i64 %polly.indvar232.us.1, %smin983
  br i1 %exitcond981.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header229.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header229.us.1
  br i1 %.not, label %polly.loop_header229.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1241.us.1 = or i64 %115, 1
  %polly.access.call1242.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.1
  %polly.access.call1242.load.us.1 = load double, double* %polly.access.call1242.us.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us.1 = add nsw i64 %113, 1200
  %polly.access.Packed_MemRef_call1245.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.1
  store double %polly.access.call1242.load.us.1, double* %polly.access.Packed_MemRef_call1245.us.1, align 8
  br label %polly.loop_header229.us.2.preheader

polly.loop_header229.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2.preheader, %polly.loop_header229.us.2
  %polly.indvar232.us.2 = phi i64 [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ], [ 0, %polly.loop_header229.us.2.preheader ]
  %290 = add nuw nsw i64 %polly.indvar232.us.2, %110
  %polly.access.mul.call1236.us.2 = mul nuw nsw i64 %290, 1000
  %polly.access.add.call1237.us.2 = add nuw nsw i64 %101, %polly.access.mul.call1236.us.2
  %polly.access.call1238.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.2
  %polly.access.call1238.load.us.2 = load double, double* %polly.access.call1238.us.2, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1238.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond981.2.not = icmp eq i64 %polly.indvar232.us.2, %smin983
  br i1 %exitcond981.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header229.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header229.us.2
  br i1 %.not, label %polly.loop_header229.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1241.us.2 = or i64 %115, 2
  %polly.access.call1242.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.2
  %polly.access.call1242.load.us.2 = load double, double* %polly.access.call1242.us.2, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us.2 = add nsw i64 %113, 2400
  %polly.access.Packed_MemRef_call1245.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.2
  store double %polly.access.call1242.load.us.2, double* %polly.access.Packed_MemRef_call1245.us.2, align 8
  br label %polly.loop_header229.us.3.preheader

polly.loop_header229.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3.preheader, %polly.loop_header229.us.3
  %polly.indvar232.us.3 = phi i64 [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ], [ 0, %polly.loop_header229.us.3.preheader ]
  %291 = add nuw nsw i64 %polly.indvar232.us.3, %110
  %polly.access.mul.call1236.us.3 = mul nuw nsw i64 %291, 1000
  %polly.access.add.call1237.us.3 = add nuw nsw i64 %102, %polly.access.mul.call1236.us.3
  %polly.access.call1238.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.3
  %polly.access.call1238.load.us.3 = load double, double* %polly.access.call1238.us.3, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1238.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond981.3.not = icmp eq i64 %polly.indvar232.us.3, %smin983
  br i1 %exitcond981.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header229.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header229.us.3
  br i1 %.not, label %polly.loop_header246.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1241.us.3 = or i64 %115, 3
  %polly.access.call1242.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.3
  %polly.access.call1242.load.us.3 = load double, double* %polly.access.call1242.us.3, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us.3 = add nsw i64 %113, 3600
  %polly.access.Packed_MemRef_call1245.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.3
  store double %polly.access.call1242.load.us.3, double* %polly.access.Packed_MemRef_call1245.us.3, align 8
  br label %polly.loop_header246.preheader

polly.loop_header253.us.1:                        ; preds = %polly.loop_header253.us.1, %polly.loop_exit255.loopexit.us
  %polly.indvar257.us.1 = phi i64 [ %polly.indvar_next258.us.1, %polly.loop_header253.us.1 ], [ 0, %polly.loop_exit255.loopexit.us ]
  %292 = add nuw nsw i64 %polly.indvar257.us.1, %110
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %293 = mul nuw nsw i64 %292, 8000
  %294 = add nuw nsw i64 %293, %105
  %scevgep267.us.1 = getelementptr i8, i8* %call2, i64 %294
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_273.us.1, %_p_scalar_269.us.1
  %295 = shl i64 %292, 3
  %296 = add nuw nsw i64 %295, %118
  %scevgep274.us.1 = getelementptr i8, i8* %call, i64 %296
  %scevgep274275.us.1 = bitcast i8* %scevgep274.us.1 to double*
  %_p_scalar_276.us.1 = load double, double* %scevgep274275.us.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_276.us.1
  store double %p_add42.i118.us.1, double* %scevgep274275.us.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1
  %exitcond984.1.not = icmp eq i64 %polly.indvar257.us.1, %smin983
  br i1 %exitcond984.1.not, label %polly.loop_exit255.loopexit.us.1, label %polly.loop_header253.us.1

polly.loop_exit255.loopexit.us.1:                 ; preds = %polly.loop_header253.us.1
  %297 = add nuw nsw i64 %107, %117
  %scevgep264.us.2 = getelementptr i8, i8* %call2, i64 %297
  %scevgep264265.us.2 = bitcast i8* %scevgep264.us.2 to double*
  %_p_scalar_266.us.2 = load double, double* %scevgep264265.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us.2 = add nsw i64 %113, 2400
  %polly.access.Packed_MemRef_call1272.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.2
  %_p_scalar_273.us.2 = load double, double* %polly.access.Packed_MemRef_call1272.us.2, align 8
  br label %polly.loop_header253.us.2

polly.loop_header253.us.2:                        ; preds = %polly.loop_header253.us.2, %polly.loop_exit255.loopexit.us.1
  %polly.indvar257.us.2 = phi i64 [ %polly.indvar_next258.us.2, %polly.loop_header253.us.2 ], [ 0, %polly.loop_exit255.loopexit.us.1 ]
  %298 = add nuw nsw i64 %polly.indvar257.us.2, %110
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nuw nsw i64 %polly.indvar257.us.2, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  %_p_scalar_263.us.2 = load double, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_266.us.2, %_p_scalar_263.us.2
  %299 = mul nuw nsw i64 %298, 8000
  %300 = add nuw nsw i64 %299, %107
  %scevgep267.us.2 = getelementptr i8, i8* %call2, i64 %300
  %scevgep267268.us.2 = bitcast i8* %scevgep267.us.2 to double*
  %_p_scalar_269.us.2 = load double, double* %scevgep267268.us.2, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_273.us.2, %_p_scalar_269.us.2
  %301 = shl i64 %298, 3
  %302 = add nuw nsw i64 %301, %118
  %scevgep274.us.2 = getelementptr i8, i8* %call, i64 %302
  %scevgep274275.us.2 = bitcast i8* %scevgep274.us.2 to double*
  %_p_scalar_276.us.2 = load double, double* %scevgep274275.us.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_276.us.2
  store double %p_add42.i118.us.2, double* %scevgep274275.us.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us.2 = add nuw nsw i64 %polly.indvar257.us.2, 1
  %exitcond984.2.not = icmp eq i64 %polly.indvar257.us.2, %smin983
  br i1 %exitcond984.2.not, label %polly.loop_exit255.loopexit.us.2, label %polly.loop_header253.us.2

polly.loop_exit255.loopexit.us.2:                 ; preds = %polly.loop_header253.us.2
  %303 = add nuw nsw i64 %109, %117
  %scevgep264.us.3 = getelementptr i8, i8* %call2, i64 %303
  %scevgep264265.us.3 = bitcast i8* %scevgep264.us.3 to double*
  %_p_scalar_266.us.3 = load double, double* %scevgep264265.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us.3 = add nsw i64 %113, 3600
  %polly.access.Packed_MemRef_call1272.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.3
  %_p_scalar_273.us.3 = load double, double* %polly.access.Packed_MemRef_call1272.us.3, align 8
  br label %polly.loop_header253.us.3

polly.loop_header253.us.3:                        ; preds = %polly.loop_header253.us.3, %polly.loop_exit255.loopexit.us.2
  %polly.indvar257.us.3 = phi i64 [ %polly.indvar_next258.us.3, %polly.loop_header253.us.3 ], [ 0, %polly.loop_exit255.loopexit.us.2 ]
  %304 = add nuw nsw i64 %polly.indvar257.us.3, %110
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nuw nsw i64 %polly.indvar257.us.3, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  %_p_scalar_263.us.3 = load double, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_266.us.3, %_p_scalar_263.us.3
  %305 = mul nuw nsw i64 %304, 8000
  %306 = add nuw nsw i64 %305, %109
  %scevgep267.us.3 = getelementptr i8, i8* %call2, i64 %306
  %scevgep267268.us.3 = bitcast i8* %scevgep267.us.3 to double*
  %_p_scalar_269.us.3 = load double, double* %scevgep267268.us.3, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_273.us.3, %_p_scalar_269.us.3
  %307 = shl i64 %304, 3
  %308 = add nuw nsw i64 %307, %118
  %scevgep274.us.3 = getelementptr i8, i8* %call, i64 %308
  %scevgep274275.us.3 = bitcast i8* %scevgep274.us.3 to double*
  %_p_scalar_276.us.3 = load double, double* %scevgep274275.us.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_276.us.3
  store double %p_add42.i118.us.3, double* %scevgep274275.us.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us.3 = add nuw nsw i64 %polly.indvar257.us.3, 1
  %exitcond984.3.not = icmp eq i64 %polly.indvar257.us.3, %smin983
  br i1 %exitcond984.3.not, label %polly.loop_exit248, label %polly.loop_header253.us.3

polly.loop_header413.us.1:                        ; preds = %polly.loop_header413.us.1.preheader, %polly.loop_header413.us.1
  %polly.indvar417.us.1 = phi i64 [ %polly.indvar_next418.us.1, %polly.loop_header413.us.1 ], [ 0, %polly.loop_header413.us.1.preheader ]
  %309 = add nuw nsw i64 %polly.indvar417.us.1, %148
  %polly.access.mul.call1421.us.1 = mul nuw nsw i64 %309, 1000
  %polly.access.add.call1422.us.1 = add nuw nsw i64 %138, %polly.access.mul.call1421.us.1
  %polly.access.call1423.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.1
  %polly.access.call1423.load.us.1 = load double, double* %polly.access.call1423.us.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar417.us.1, 1200
  %polly.access.Packed_MemRef_call1282.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  store double %polly.access.call1423.load.us.1, double* %polly.access.Packed_MemRef_call1282.us.1, align 8
  %polly.indvar_next418.us.1 = add nuw nsw i64 %polly.indvar417.us.1, 1
  %exitcond1000.1.not = icmp eq i64 %polly.indvar417.us.1, %smin1002
  br i1 %exitcond1000.1.not, label %polly.cond424.loopexit.us.1, label %polly.loop_header413.us.1

polly.cond424.loopexit.us.1:                      ; preds = %polly.loop_header413.us.1
  br i1 %.not861, label %polly.loop_header413.us.2.preheader, label %polly.then426.us.1

polly.then426.us.1:                               ; preds = %polly.cond424.loopexit.us.1
  %polly.access.add.call1430.us.1 = or i64 %153, 1
  %polly.access.call1431.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.1
  %polly.access.call1431.load.us.1 = load double, double* %polly.access.call1431.us.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282433.us.1 = add nsw i64 %151, 1200
  %polly.access.Packed_MemRef_call1282434.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.1
  store double %polly.access.call1431.load.us.1, double* %polly.access.Packed_MemRef_call1282434.us.1, align 8
  br label %polly.loop_header413.us.2.preheader

polly.loop_header413.us.2.preheader:              ; preds = %polly.then426.us.1, %polly.cond424.loopexit.us.1
  br label %polly.loop_header413.us.2

polly.loop_header413.us.2:                        ; preds = %polly.loop_header413.us.2.preheader, %polly.loop_header413.us.2
  %polly.indvar417.us.2 = phi i64 [ %polly.indvar_next418.us.2, %polly.loop_header413.us.2 ], [ 0, %polly.loop_header413.us.2.preheader ]
  %310 = add nuw nsw i64 %polly.indvar417.us.2, %148
  %polly.access.mul.call1421.us.2 = mul nuw nsw i64 %310, 1000
  %polly.access.add.call1422.us.2 = add nuw nsw i64 %139, %polly.access.mul.call1421.us.2
  %polly.access.call1423.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.2
  %polly.access.call1423.load.us.2 = load double, double* %polly.access.call1423.us.2, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar417.us.2, 2400
  %polly.access.Packed_MemRef_call1282.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  store double %polly.access.call1423.load.us.2, double* %polly.access.Packed_MemRef_call1282.us.2, align 8
  %polly.indvar_next418.us.2 = add nuw nsw i64 %polly.indvar417.us.2, 1
  %exitcond1000.2.not = icmp eq i64 %polly.indvar417.us.2, %smin1002
  br i1 %exitcond1000.2.not, label %polly.cond424.loopexit.us.2, label %polly.loop_header413.us.2

polly.cond424.loopexit.us.2:                      ; preds = %polly.loop_header413.us.2
  br i1 %.not861, label %polly.loop_header413.us.3.preheader, label %polly.then426.us.2

polly.then426.us.2:                               ; preds = %polly.cond424.loopexit.us.2
  %polly.access.add.call1430.us.2 = or i64 %153, 2
  %polly.access.call1431.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.2
  %polly.access.call1431.load.us.2 = load double, double* %polly.access.call1431.us.2, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282433.us.2 = add nsw i64 %151, 2400
  %polly.access.Packed_MemRef_call1282434.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.2
  store double %polly.access.call1431.load.us.2, double* %polly.access.Packed_MemRef_call1282434.us.2, align 8
  br label %polly.loop_header413.us.3.preheader

polly.loop_header413.us.3.preheader:              ; preds = %polly.then426.us.2, %polly.cond424.loopexit.us.2
  br label %polly.loop_header413.us.3

polly.loop_header413.us.3:                        ; preds = %polly.loop_header413.us.3.preheader, %polly.loop_header413.us.3
  %polly.indvar417.us.3 = phi i64 [ %polly.indvar_next418.us.3, %polly.loop_header413.us.3 ], [ 0, %polly.loop_header413.us.3.preheader ]
  %311 = add nuw nsw i64 %polly.indvar417.us.3, %148
  %polly.access.mul.call1421.us.3 = mul nuw nsw i64 %311, 1000
  %polly.access.add.call1422.us.3 = add nuw nsw i64 %140, %polly.access.mul.call1421.us.3
  %polly.access.call1423.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.3
  %polly.access.call1423.load.us.3 = load double, double* %polly.access.call1423.us.3, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar417.us.3, 3600
  %polly.access.Packed_MemRef_call1282.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  store double %polly.access.call1423.load.us.3, double* %polly.access.Packed_MemRef_call1282.us.3, align 8
  %polly.indvar_next418.us.3 = add nuw nsw i64 %polly.indvar417.us.3, 1
  %exitcond1000.3.not = icmp eq i64 %polly.indvar417.us.3, %smin1002
  br i1 %exitcond1000.3.not, label %polly.cond424.loopexit.us.3, label %polly.loop_header413.us.3

polly.cond424.loopexit.us.3:                      ; preds = %polly.loop_header413.us.3
  br i1 %.not861, label %polly.loop_header435.preheader, label %polly.then426.us.3

polly.then426.us.3:                               ; preds = %polly.cond424.loopexit.us.3
  %polly.access.add.call1430.us.3 = or i64 %153, 3
  %polly.access.call1431.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.3
  %polly.access.call1431.load.us.3 = load double, double* %polly.access.call1431.us.3, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282433.us.3 = add nsw i64 %151, 3600
  %polly.access.Packed_MemRef_call1282434.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.3
  store double %polly.access.call1431.load.us.3, double* %polly.access.Packed_MemRef_call1282434.us.3, align 8
  br label %polly.loop_header435.preheader

polly.loop_header442.us.1:                        ; preds = %polly.loop_header442.us.1, %polly.loop_exit444.loopexit.us
  %polly.indvar446.us.1 = phi i64 [ %polly.indvar_next447.us.1, %polly.loop_header442.us.1 ], [ 0, %polly.loop_exit444.loopexit.us ]
  %312 = add nuw nsw i64 %polly.indvar446.us.1, %148
  %polly.access.add.Packed_MemRef_call1282450.us.1 = add nuw nsw i64 %polly.indvar446.us.1, 1200
  %polly.access.Packed_MemRef_call1282451.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.1
  %_p_scalar_452.us.1 = load double, double* %polly.access.Packed_MemRef_call1282451.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_455.us.1, %_p_scalar_452.us.1
  %313 = mul nuw nsw i64 %312, 8000
  %314 = add nuw nsw i64 %313, %143
  %scevgep456.us.1 = getelementptr i8, i8* %call2, i64 %314
  %scevgep456457.us.1 = bitcast i8* %scevgep456.us.1 to double*
  %_p_scalar_458.us.1 = load double, double* %scevgep456457.us.1, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_462.us.1, %_p_scalar_458.us.1
  %315 = shl i64 %312, 3
  %316 = add nuw nsw i64 %315, %156
  %scevgep463.us.1 = getelementptr i8, i8* %call, i64 %316
  %scevgep463464.us.1 = bitcast i8* %scevgep463.us.1 to double*
  %_p_scalar_465.us.1 = load double, double* %scevgep463464.us.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_465.us.1
  store double %p_add42.i79.us.1, double* %scevgep463464.us.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next447.us.1 = add nuw nsw i64 %polly.indvar446.us.1, 1
  %exitcond1003.1.not = icmp eq i64 %polly.indvar446.us.1, %smin1002
  br i1 %exitcond1003.1.not, label %polly.loop_exit444.loopexit.us.1, label %polly.loop_header442.us.1

polly.loop_exit444.loopexit.us.1:                 ; preds = %polly.loop_header442.us.1
  %317 = add nuw nsw i64 %145, %155
  %scevgep453.us.2 = getelementptr i8, i8* %call2, i64 %317
  %scevgep453454.us.2 = bitcast i8* %scevgep453.us.2 to double*
  %_p_scalar_455.us.2 = load double, double* %scevgep453454.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282460.us.2 = add nsw i64 %151, 2400
  %polly.access.Packed_MemRef_call1282461.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.2
  %_p_scalar_462.us.2 = load double, double* %polly.access.Packed_MemRef_call1282461.us.2, align 8
  br label %polly.loop_header442.us.2

polly.loop_header442.us.2:                        ; preds = %polly.loop_header442.us.2, %polly.loop_exit444.loopexit.us.1
  %polly.indvar446.us.2 = phi i64 [ %polly.indvar_next447.us.2, %polly.loop_header442.us.2 ], [ 0, %polly.loop_exit444.loopexit.us.1 ]
  %318 = add nuw nsw i64 %polly.indvar446.us.2, %148
  %polly.access.add.Packed_MemRef_call1282450.us.2 = add nuw nsw i64 %polly.indvar446.us.2, 2400
  %polly.access.Packed_MemRef_call1282451.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.2
  %_p_scalar_452.us.2 = load double, double* %polly.access.Packed_MemRef_call1282451.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_455.us.2, %_p_scalar_452.us.2
  %319 = mul nuw nsw i64 %318, 8000
  %320 = add nuw nsw i64 %319, %145
  %scevgep456.us.2 = getelementptr i8, i8* %call2, i64 %320
  %scevgep456457.us.2 = bitcast i8* %scevgep456.us.2 to double*
  %_p_scalar_458.us.2 = load double, double* %scevgep456457.us.2, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_462.us.2, %_p_scalar_458.us.2
  %321 = shl i64 %318, 3
  %322 = add nuw nsw i64 %321, %156
  %scevgep463.us.2 = getelementptr i8, i8* %call, i64 %322
  %scevgep463464.us.2 = bitcast i8* %scevgep463.us.2 to double*
  %_p_scalar_465.us.2 = load double, double* %scevgep463464.us.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_465.us.2
  store double %p_add42.i79.us.2, double* %scevgep463464.us.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next447.us.2 = add nuw nsw i64 %polly.indvar446.us.2, 1
  %exitcond1003.2.not = icmp eq i64 %polly.indvar446.us.2, %smin1002
  br i1 %exitcond1003.2.not, label %polly.loop_exit444.loopexit.us.2, label %polly.loop_header442.us.2

polly.loop_exit444.loopexit.us.2:                 ; preds = %polly.loop_header442.us.2
  %323 = add nuw nsw i64 %147, %155
  %scevgep453.us.3 = getelementptr i8, i8* %call2, i64 %323
  %scevgep453454.us.3 = bitcast i8* %scevgep453.us.3 to double*
  %_p_scalar_455.us.3 = load double, double* %scevgep453454.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282460.us.3 = add nsw i64 %151, 3600
  %polly.access.Packed_MemRef_call1282461.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.3
  %_p_scalar_462.us.3 = load double, double* %polly.access.Packed_MemRef_call1282461.us.3, align 8
  br label %polly.loop_header442.us.3

polly.loop_header442.us.3:                        ; preds = %polly.loop_header442.us.3, %polly.loop_exit444.loopexit.us.2
  %polly.indvar446.us.3 = phi i64 [ %polly.indvar_next447.us.3, %polly.loop_header442.us.3 ], [ 0, %polly.loop_exit444.loopexit.us.2 ]
  %324 = add nuw nsw i64 %polly.indvar446.us.3, %148
  %polly.access.add.Packed_MemRef_call1282450.us.3 = add nuw nsw i64 %polly.indvar446.us.3, 3600
  %polly.access.Packed_MemRef_call1282451.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.3
  %_p_scalar_452.us.3 = load double, double* %polly.access.Packed_MemRef_call1282451.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_455.us.3, %_p_scalar_452.us.3
  %325 = mul nuw nsw i64 %324, 8000
  %326 = add nuw nsw i64 %325, %147
  %scevgep456.us.3 = getelementptr i8, i8* %call2, i64 %326
  %scevgep456457.us.3 = bitcast i8* %scevgep456.us.3 to double*
  %_p_scalar_458.us.3 = load double, double* %scevgep456457.us.3, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_462.us.3, %_p_scalar_458.us.3
  %327 = shl i64 %324, 3
  %328 = add nuw nsw i64 %327, %156
  %scevgep463.us.3 = getelementptr i8, i8* %call, i64 %328
  %scevgep463464.us.3 = bitcast i8* %scevgep463.us.3 to double*
  %_p_scalar_465.us.3 = load double, double* %scevgep463464.us.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_465.us.3
  store double %p_add42.i79.us.3, double* %scevgep463464.us.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next447.us.3 = add nuw nsw i64 %polly.indvar446.us.3, 1
  %exitcond1003.3.not = icmp eq i64 %polly.indvar446.us.3, %smin1002
  br i1 %exitcond1003.3.not, label %polly.loop_exit437, label %polly.loop_header442.us.3

polly.loop_header602.us.1:                        ; preds = %polly.loop_header602.us.1.preheader, %polly.loop_header602.us.1
  %polly.indvar606.us.1 = phi i64 [ %polly.indvar_next607.us.1, %polly.loop_header602.us.1 ], [ 0, %polly.loop_header602.us.1.preheader ]
  %329 = add nuw nsw i64 %polly.indvar606.us.1, %186
  %polly.access.mul.call1610.us.1 = mul nuw nsw i64 %329, 1000
  %polly.access.add.call1611.us.1 = add nuw nsw i64 %176, %polly.access.mul.call1610.us.1
  %polly.access.call1612.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.1
  %polly.access.call1612.load.us.1 = load double, double* %polly.access.call1612.us.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1200
  %polly.access.Packed_MemRef_call1471.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.1
  store double %polly.access.call1612.load.us.1, double* %polly.access.Packed_MemRef_call1471.us.1, align 8
  %polly.indvar_next607.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1
  %exitcond1019.1.not = icmp eq i64 %polly.indvar606.us.1, %smin1021
  br i1 %exitcond1019.1.not, label %polly.cond613.loopexit.us.1, label %polly.loop_header602.us.1

polly.cond613.loopexit.us.1:                      ; preds = %polly.loop_header602.us.1
  br i1 %.not862, label %polly.loop_header602.us.2.preheader, label %polly.then615.us.1

polly.then615.us.1:                               ; preds = %polly.cond613.loopexit.us.1
  %polly.access.add.call1619.us.1 = or i64 %191, 1
  %polly.access.call1620.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.1
  %polly.access.call1620.load.us.1 = load double, double* %polly.access.call1620.us.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471622.us.1 = add nsw i64 %189, 1200
  %polly.access.Packed_MemRef_call1471623.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.1
  store double %polly.access.call1620.load.us.1, double* %polly.access.Packed_MemRef_call1471623.us.1, align 8
  br label %polly.loop_header602.us.2.preheader

polly.loop_header602.us.2.preheader:              ; preds = %polly.then615.us.1, %polly.cond613.loopexit.us.1
  br label %polly.loop_header602.us.2

polly.loop_header602.us.2:                        ; preds = %polly.loop_header602.us.2.preheader, %polly.loop_header602.us.2
  %polly.indvar606.us.2 = phi i64 [ %polly.indvar_next607.us.2, %polly.loop_header602.us.2 ], [ 0, %polly.loop_header602.us.2.preheader ]
  %330 = add nuw nsw i64 %polly.indvar606.us.2, %186
  %polly.access.mul.call1610.us.2 = mul nuw nsw i64 %330, 1000
  %polly.access.add.call1611.us.2 = add nuw nsw i64 %177, %polly.access.mul.call1610.us.2
  %polly.access.call1612.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.2
  %polly.access.call1612.load.us.2 = load double, double* %polly.access.call1612.us.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 2400
  %polly.access.Packed_MemRef_call1471.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.2
  store double %polly.access.call1612.load.us.2, double* %polly.access.Packed_MemRef_call1471.us.2, align 8
  %polly.indvar_next607.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 1
  %exitcond1019.2.not = icmp eq i64 %polly.indvar606.us.2, %smin1021
  br i1 %exitcond1019.2.not, label %polly.cond613.loopexit.us.2, label %polly.loop_header602.us.2

polly.cond613.loopexit.us.2:                      ; preds = %polly.loop_header602.us.2
  br i1 %.not862, label %polly.loop_header602.us.3.preheader, label %polly.then615.us.2

polly.then615.us.2:                               ; preds = %polly.cond613.loopexit.us.2
  %polly.access.add.call1619.us.2 = or i64 %191, 2
  %polly.access.call1620.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.2
  %polly.access.call1620.load.us.2 = load double, double* %polly.access.call1620.us.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471622.us.2 = add nsw i64 %189, 2400
  %polly.access.Packed_MemRef_call1471623.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.2
  store double %polly.access.call1620.load.us.2, double* %polly.access.Packed_MemRef_call1471623.us.2, align 8
  br label %polly.loop_header602.us.3.preheader

polly.loop_header602.us.3.preheader:              ; preds = %polly.then615.us.2, %polly.cond613.loopexit.us.2
  br label %polly.loop_header602.us.3

polly.loop_header602.us.3:                        ; preds = %polly.loop_header602.us.3.preheader, %polly.loop_header602.us.3
  %polly.indvar606.us.3 = phi i64 [ %polly.indvar_next607.us.3, %polly.loop_header602.us.3 ], [ 0, %polly.loop_header602.us.3.preheader ]
  %331 = add nuw nsw i64 %polly.indvar606.us.3, %186
  %polly.access.mul.call1610.us.3 = mul nuw nsw i64 %331, 1000
  %polly.access.add.call1611.us.3 = add nuw nsw i64 %178, %polly.access.mul.call1610.us.3
  %polly.access.call1612.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.3
  %polly.access.call1612.load.us.3 = load double, double* %polly.access.call1612.us.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 3600
  %polly.access.Packed_MemRef_call1471.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.3
  store double %polly.access.call1612.load.us.3, double* %polly.access.Packed_MemRef_call1471.us.3, align 8
  %polly.indvar_next607.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 1
  %exitcond1019.3.not = icmp eq i64 %polly.indvar606.us.3, %smin1021
  br i1 %exitcond1019.3.not, label %polly.cond613.loopexit.us.3, label %polly.loop_header602.us.3

polly.cond613.loopexit.us.3:                      ; preds = %polly.loop_header602.us.3
  br i1 %.not862, label %polly.loop_header624.preheader, label %polly.then615.us.3

polly.then615.us.3:                               ; preds = %polly.cond613.loopexit.us.3
  %polly.access.add.call1619.us.3 = or i64 %191, 3
  %polly.access.call1620.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.3
  %polly.access.call1620.load.us.3 = load double, double* %polly.access.call1620.us.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1471622.us.3 = add nsw i64 %189, 3600
  %polly.access.Packed_MemRef_call1471623.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.3
  store double %polly.access.call1620.load.us.3, double* %polly.access.Packed_MemRef_call1471623.us.3, align 8
  br label %polly.loop_header624.preheader

polly.loop_header631.us.1:                        ; preds = %polly.loop_header631.us.1, %polly.loop_exit633.loopexit.us
  %polly.indvar635.us.1 = phi i64 [ %polly.indvar_next636.us.1, %polly.loop_header631.us.1 ], [ 0, %polly.loop_exit633.loopexit.us ]
  %332 = add nuw nsw i64 %polly.indvar635.us.1, %186
  %polly.access.add.Packed_MemRef_call1471639.us.1 = add nuw nsw i64 %polly.indvar635.us.1, 1200
  %polly.access.Packed_MemRef_call1471640.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.1
  %_p_scalar_641.us.1 = load double, double* %polly.access.Packed_MemRef_call1471640.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_644.us.1, %_p_scalar_641.us.1
  %333 = mul nuw nsw i64 %332, 8000
  %334 = add nuw nsw i64 %333, %181
  %scevgep645.us.1 = getelementptr i8, i8* %call2, i64 %334
  %scevgep645646.us.1 = bitcast i8* %scevgep645.us.1 to double*
  %_p_scalar_647.us.1 = load double, double* %scevgep645646.us.1, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_651.us.1, %_p_scalar_647.us.1
  %335 = shl i64 %332, 3
  %336 = add nuw nsw i64 %335, %194
  %scevgep652.us.1 = getelementptr i8, i8* %call, i64 %336
  %scevgep652653.us.1 = bitcast i8* %scevgep652.us.1 to double*
  %_p_scalar_654.us.1 = load double, double* %scevgep652653.us.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_654.us.1
  store double %p_add42.i.us.1, double* %scevgep652653.us.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next636.us.1 = add nuw nsw i64 %polly.indvar635.us.1, 1
  %exitcond1022.1.not = icmp eq i64 %polly.indvar635.us.1, %smin1021
  br i1 %exitcond1022.1.not, label %polly.loop_exit633.loopexit.us.1, label %polly.loop_header631.us.1

polly.loop_exit633.loopexit.us.1:                 ; preds = %polly.loop_header631.us.1
  %337 = add nuw nsw i64 %183, %193
  %scevgep642.us.2 = getelementptr i8, i8* %call2, i64 %337
  %scevgep642643.us.2 = bitcast i8* %scevgep642.us.2 to double*
  %_p_scalar_644.us.2 = load double, double* %scevgep642643.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471649.us.2 = add nsw i64 %189, 2400
  %polly.access.Packed_MemRef_call1471650.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.2
  %_p_scalar_651.us.2 = load double, double* %polly.access.Packed_MemRef_call1471650.us.2, align 8
  br label %polly.loop_header631.us.2

polly.loop_header631.us.2:                        ; preds = %polly.loop_header631.us.2, %polly.loop_exit633.loopexit.us.1
  %polly.indvar635.us.2 = phi i64 [ %polly.indvar_next636.us.2, %polly.loop_header631.us.2 ], [ 0, %polly.loop_exit633.loopexit.us.1 ]
  %338 = add nuw nsw i64 %polly.indvar635.us.2, %186
  %polly.access.add.Packed_MemRef_call1471639.us.2 = add nuw nsw i64 %polly.indvar635.us.2, 2400
  %polly.access.Packed_MemRef_call1471640.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.2
  %_p_scalar_641.us.2 = load double, double* %polly.access.Packed_MemRef_call1471640.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_644.us.2, %_p_scalar_641.us.2
  %339 = mul nuw nsw i64 %338, 8000
  %340 = add nuw nsw i64 %339, %183
  %scevgep645.us.2 = getelementptr i8, i8* %call2, i64 %340
  %scevgep645646.us.2 = bitcast i8* %scevgep645.us.2 to double*
  %_p_scalar_647.us.2 = load double, double* %scevgep645646.us.2, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_651.us.2, %_p_scalar_647.us.2
  %341 = shl i64 %338, 3
  %342 = add nuw nsw i64 %341, %194
  %scevgep652.us.2 = getelementptr i8, i8* %call, i64 %342
  %scevgep652653.us.2 = bitcast i8* %scevgep652.us.2 to double*
  %_p_scalar_654.us.2 = load double, double* %scevgep652653.us.2, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_654.us.2
  store double %p_add42.i.us.2, double* %scevgep652653.us.2, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next636.us.2 = add nuw nsw i64 %polly.indvar635.us.2, 1
  %exitcond1022.2.not = icmp eq i64 %polly.indvar635.us.2, %smin1021
  br i1 %exitcond1022.2.not, label %polly.loop_exit633.loopexit.us.2, label %polly.loop_header631.us.2

polly.loop_exit633.loopexit.us.2:                 ; preds = %polly.loop_header631.us.2
  %343 = add nuw nsw i64 %185, %193
  %scevgep642.us.3 = getelementptr i8, i8* %call2, i64 %343
  %scevgep642643.us.3 = bitcast i8* %scevgep642.us.3 to double*
  %_p_scalar_644.us.3 = load double, double* %scevgep642643.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471649.us.3 = add nsw i64 %189, 3600
  %polly.access.Packed_MemRef_call1471650.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.3
  %_p_scalar_651.us.3 = load double, double* %polly.access.Packed_MemRef_call1471650.us.3, align 8
  br label %polly.loop_header631.us.3

polly.loop_header631.us.3:                        ; preds = %polly.loop_header631.us.3, %polly.loop_exit633.loopexit.us.2
  %polly.indvar635.us.3 = phi i64 [ %polly.indvar_next636.us.3, %polly.loop_header631.us.3 ], [ 0, %polly.loop_exit633.loopexit.us.2 ]
  %344 = add nuw nsw i64 %polly.indvar635.us.3, %186
  %polly.access.add.Packed_MemRef_call1471639.us.3 = add nuw nsw i64 %polly.indvar635.us.3, 3600
  %polly.access.Packed_MemRef_call1471640.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.3
  %_p_scalar_641.us.3 = load double, double* %polly.access.Packed_MemRef_call1471640.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_644.us.3, %_p_scalar_641.us.3
  %345 = mul nuw nsw i64 %344, 8000
  %346 = add nuw nsw i64 %345, %185
  %scevgep645.us.3 = getelementptr i8, i8* %call2, i64 %346
  %scevgep645646.us.3 = bitcast i8* %scevgep645.us.3 to double*
  %_p_scalar_647.us.3 = load double, double* %scevgep645646.us.3, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_651.us.3, %_p_scalar_647.us.3
  %347 = shl i64 %344, 3
  %348 = add nuw nsw i64 %347, %194
  %scevgep652.us.3 = getelementptr i8, i8* %call, i64 %348
  %scevgep652653.us.3 = bitcast i8* %scevgep652.us.3 to double*
  %_p_scalar_654.us.3 = load double, double* %scevgep652653.us.3, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_654.us.3
  store double %p_add42.i.us.3, double* %scevgep652653.us.3, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next636.us.3 = add nuw nsw i64 %polly.indvar635.us.3, 1
  %exitcond1022.3.not = icmp eq i64 %polly.indvar635.us.3, %smin1021
  br i1 %exitcond1022.3.not, label %polly.loop_exit626, label %polly.loop_header631.us.3
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !34, !48, !51}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
