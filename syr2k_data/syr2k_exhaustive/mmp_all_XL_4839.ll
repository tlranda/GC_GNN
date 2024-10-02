; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4839.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4839.c"
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
  %call795 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1647 = bitcast i8* %call1 to double*
  %polly.access.call1656 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1656, %call2
  %polly.access.call2676 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2676, %call1
  %2 = or i1 %0, %1
  %polly.access.call696 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call696, %call2
  %4 = icmp ule i8* %polly.access.call2676, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call696, %call1
  %8 = icmp ule i8* %polly.access.call1656, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header769, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv7.i, i64 %index1077
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit830
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start460, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1138 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1138, label %for.body3.i46.preheader1215, label %vector.ph1139

vector.ph1139:                                    ; preds = %for.body3.i46.preheader
  %n.vec1141 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1137 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv21.i, i64 %index1142
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
  br i1 %cmp.n1145, label %for.inc6.i, label %for.body3.i46.preheader1215

for.body3.i46.preheader1215:                      ; preds = %for.body3.i46.preheader, %middle.block1135
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1141, %middle.block1135 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1215, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1215 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting461
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start275, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1161 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1161, label %for.body3.i60.preheader1213, label %vector.ph1162

vector.ph1162:                                    ; preds = %for.body3.i60.preheader
  %n.vec1164 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1162
  %index1165 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1166, %vector.body1160 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv21.i52, i64 %index1165
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1169 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1169, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1166 = add i64 %index1165, 4
  %57 = icmp eq i64 %index.next1166, %n.vec1164
  br i1 %57, label %middle.block1158, label %vector.body1160, !llvm.loop !55

middle.block1158:                                 ; preds = %vector.body1160
  %cmp.n1168 = icmp eq i64 %indvars.iv21.i52, %n.vec1164
  br i1 %cmp.n1168, label %for.inc6.i63, label %for.body3.i60.preheader1213

for.body3.i60.preheader1213:                      ; preds = %for.body3.i60.preheader, %middle.block1158
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1164, %middle.block1158 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1213, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1213 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting276
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
  br i1 %min.iters.check1187, label %for.body3.i99.preheader1211, label %vector.ph1188

vector.ph1188:                                    ; preds = %for.body3.i99.preheader
  %n.vec1190 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1186 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv21.i91, i64 %index1191
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1195 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1195, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1192 = add i64 %index1191, 4
  %68 = icmp eq i64 %index.next1192, %n.vec1190
  br i1 %68, label %middle.block1184, label %vector.body1186, !llvm.loop !57

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1194 = icmp eq i64 %indvars.iv21.i91, %n.vec1190
  br i1 %cmp.n1194, label %for.inc6.i102, label %for.body3.i99.preheader1211

for.body3.i99.preheader1211:                      ; preds = %for.body3.i99.preheader, %middle.block1184
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1190, %middle.block1184 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1211, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1211 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call795, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
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
  %wide.load1209 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1206 = add i64 %index1205, 4
  %95 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %95, label %middle.block1196, label %vector.body1198, !llvm.loop !69

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1208 = icmp eq i64 %88, %n.vec1204
  br i1 %cmp.n1208, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1196
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1204, %middle.block1196 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1196
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1200 = add i64 %indvar1199, 1
  br i1 %exitcond981.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond980.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv974 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next975, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 2
  %smin976 = call i64 @llvm.smin.i64(i64 %indvars.iv974, i64 -1136)
  %98 = shl nsw i64 %polly.indvar202, 6
  %99 = add nsw i64 %smin976, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next975 = add nsw i64 %indvars.iv974, -64
  %exitcond979.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond979.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %100 = shl nsw i64 %polly.indvar208, 8
  %101 = sub nsw i64 %98, %100
  %102 = add nuw nsw i64 %100, 256
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit242
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, -256
  %exitcond978.not = icmp eq i64 %polly.indvar208, %97
  br i1 %exitcond978.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit242, %polly.loop_header205
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit242 ], [ %indvars.iv965, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit242 ], [ 0, %polly.loop_header205 ]
  %smin971 = call i64 @llvm.smin.i64(i64 %indvars.iv967, i64 255)
  %103 = add nsw i64 %polly.indvar214, %101
  %polly.loop_guard1058 = icmp sgt i64 %103, -1
  %104 = add nuw nsw i64 %polly.indvar214, %98
  %.not = icmp ult i64 %104, %102
  %polly.access.mul.call1234 = mul nuw nsw i64 %104, 1000
  br i1 %polly.loop_guard1058, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %105 = add nuw nsw i64 %polly.indvar226.us, %100
  %polly.access.mul.call1230.us = mul nuw nsw i64 %105, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %polly.indvar220.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond969.not = icmp eq i64 %polly.indvar226.us, %smin971
  br i1 %exitcond969.not, label %polly.cond.loopexit.us, label %polly.loop_header223.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1234
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1238.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %103
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond970.not, label %polly.loop_header240.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header223.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %.not, label %polly.loop_exit242, label %polly.loop_header217

polly.loop_exit242:                               ; preds = %polly.loop_exit249.loopexit.us, %polly.loop_header211.split, %polly.loop_header240.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, 1
  %exitcond977.not = icmp eq i64 %polly.indvar214, %99
  br i1 %exitcond977.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1235 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1234
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1237 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.Packed_MemRef_call1238 = add nsw i64 %polly.access.mul.Packed_MemRef_call1237, %103
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 1000
  br i1 %exitcond.not, label %polly.loop_header240.preheader, label %polly.loop_header217

polly.loop_header240.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %106 = mul nuw nsw i64 %104, 8000
  %107 = mul nuw nsw i64 %104, 9600
  br i1 %polly.loop_guard1058, label %polly.loop_header240.us, label %polly.loop_exit242

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.preheader ]
  %108 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep258.us = getelementptr i8, i8* %call2, i64 %108
  %polly.access.mul.Packed_MemRef_call1254.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  %scevgep259.us = getelementptr i8, i8* %scevgep258.us, i64 %106
  %scevgep259260.us = bitcast i8* %scevgep259.us to double*
  %_p_scalar_261.us = load double, double* %scevgep259260.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1267.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1254.us, %103
  %polly.access.Packed_MemRef_call1268.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1267.us
  %_p_scalar_269.us = load double, double* %polly.access.Packed_MemRef_call1268.us, align 8
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header247.us, %polly.loop_header240.us
  %polly.indvar251.us = phi i64 [ 0, %polly.loop_header240.us ], [ %polly.indvar_next252.us, %polly.loop_header247.us ]
  %109 = add nuw nsw i64 %polly.indvar251.us, %100
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1254.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %110 = mul nuw nsw i64 %109, 8000
  %scevgep263.us = getelementptr i8, i8* %scevgep258.us, i64 %110
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %111 = shl i64 %109, 3
  %112 = add nuw nsw i64 %111, %107
  %scevgep270.us = getelementptr i8, i8* %call, i64 %112
  %scevgep270271.us = bitcast i8* %scevgep270.us to double*
  %_p_scalar_272.us = load double, double* %scevgep270271.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_272.us
  store double %p_add42.i118.us, double* %scevgep270271.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond972.not = icmp eq i64 %polly.indvar251.us, %smin971
  br i1 %exitcond972.not, label %polly.loop_exit249.loopexit.us, label %polly.loop_header247.us

polly.loop_exit249.loopexit.us:                   ; preds = %polly.loop_header247.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next244.us, 1000
  br i1 %exitcond973.not, label %polly.loop_exit242, label %polly.loop_header240.us

polly.start275:                                   ; preds = %kernel_syr2k.exit
  %malloccall277 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header361

polly.exiting276:                                 ; preds = %polly.loop_exit386
  tail call void @free(i8* %malloccall277)
  br label %kernel_syr2k.exit90

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.start275
  %indvar1173 = phi i64 [ %indvar.next1174, %polly.loop_exit369 ], [ 0, %polly.start275 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 1, %polly.start275 ]
  %113 = add i64 %indvar1173, 1
  %114 = mul nuw nsw i64 %polly.indvar364, 9600
  %scevgep373 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check1175 = icmp ult i64 %113, 4
  br i1 %min.iters.check1175, label %polly.loop_header367.preheader, label %vector.ph1176

vector.ph1176:                                    ; preds = %polly.loop_header361
  %n.vec1178 = and i64 %113, -4
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1176
  %index1179 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1180, %vector.body1172 ]
  %115 = shl nuw nsw i64 %index1179, 3
  %116 = getelementptr i8, i8* %scevgep373, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1183 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !74, !noalias !76
  %118 = fmul fast <4 x double> %wide.load1183, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !74, !noalias !76
  %index.next1180 = add i64 %index1179, 4
  %120 = icmp eq i64 %index.next1180, %n.vec1178
  br i1 %120, label %middle.block1170, label %vector.body1172, !llvm.loop !80

middle.block1170:                                 ; preds = %vector.body1172
  %cmp.n1182 = icmp eq i64 %113, %n.vec1178
  br i1 %cmp.n1182, label %polly.loop_exit369, label %polly.loop_header367.preheader

polly.loop_header367.preheader:                   ; preds = %polly.loop_header361, %middle.block1170
  %polly.indvar370.ph = phi i64 [ 0, %polly.loop_header361 ], [ %n.vec1178, %middle.block1170 ]
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_header367, %middle.block1170
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next365, 1200
  %indvar.next1174 = add i64 %indvar1173, 1
  br i1 %exitcond1002.not, label %polly.loop_header377.preheader, label %polly.loop_header361

polly.loop_header377.preheader:                   ; preds = %polly.loop_exit369
  %Packed_MemRef_call1278 = bitcast i8* %malloccall277 to double*
  br label %polly.loop_header377

polly.loop_header367:                             ; preds = %polly.loop_header367.preheader, %polly.loop_header367
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_header367 ], [ %polly.indvar370.ph, %polly.loop_header367.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar370, 3
  %scevgep374 = getelementptr i8, i8* %scevgep373, i64 %121
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %_p_scalar_376 = load double, double* %scevgep374375, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_376, 1.200000e+00
  store double %p_mul.i57, double* %scevgep374375, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next371, %polly.indvar364
  br i1 %exitcond1001.not, label %polly.loop_exit369, label %polly.loop_header367, !llvm.loop !81

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_exit386
  %indvars.iv995 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next996, %polly.loop_exit386 ]
  %indvars.iv983 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next984, %polly.loop_exit386 ]
  %polly.indvar380 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %polly.indvar_next381, %polly.loop_exit386 ]
  %122 = lshr i64 %polly.indvar380, 2
  %smin997 = call i64 @llvm.smin.i64(i64 %indvars.iv995, i64 -1136)
  %123 = shl nsw i64 %polly.indvar380, 6
  %124 = add nsw i64 %smin997, 1199
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit392
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %indvars.iv.next984 = add nuw nsw i64 %indvars.iv983, 64
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, -64
  %exitcond1000.not = icmp eq i64 %polly.indvar_next381, 19
  br i1 %exitcond1000.not, label %polly.exiting276, label %polly.loop_header377

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header377
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit392 ], [ %indvars.iv983, %polly.loop_header377 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 0, %polly.loop_header377 ]
  %125 = shl nsw i64 %polly.indvar387, 8
  %126 = sub nsw i64 %123, %125
  %127 = add nuw nsw i64 %125, 256
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit427
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, -256
  %exitcond999.not = icmp eq i64 %polly.indvar387, %122
  br i1 %exitcond999.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit427, %polly.loop_header384
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit427 ], [ %indvars.iv985, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit427 ], [ 0, %polly.loop_header384 ]
  %smin992 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 255)
  %128 = add nsw i64 %polly.indvar393, %126
  %polly.loop_guard4061059 = icmp sgt i64 %128, -1
  %129 = add nuw nsw i64 %polly.indvar393, %123
  %.not849 = icmp ult i64 %129, %127
  %polly.access.mul.call1419 = mul nuw nsw i64 %129, 1000
  br i1 %polly.loop_guard4061059, label %polly.loop_header396.us, label %polly.loop_header390.split

polly.loop_header396.us:                          ; preds = %polly.loop_header390, %polly.merge415.us
  %polly.indvar399.us = phi i64 [ %polly.indvar_next400.us, %polly.merge415.us ], [ 0, %polly.loop_header390 ]
  %polly.access.mul.Packed_MemRef_call1278.us = mul nuw nsw i64 %polly.indvar399.us, 1200
  br label %polly.loop_header403.us

polly.loop_header403.us:                          ; preds = %polly.loop_header396.us, %polly.loop_header403.us
  %polly.indvar407.us = phi i64 [ %polly.indvar_next408.us, %polly.loop_header403.us ], [ 0, %polly.loop_header396.us ]
  %130 = add nuw nsw i64 %polly.indvar407.us, %125
  %polly.access.mul.call1411.us = mul nuw nsw i64 %130, 1000
  %polly.access.add.call1412.us = add nuw nsw i64 %polly.access.mul.call1411.us, %polly.indvar399.us
  %polly.access.call1413.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1412.us
  %polly.access.call1413.load.us = load double, double* %polly.access.call1413.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar407.us, %polly.access.mul.Packed_MemRef_call1278.us
  %polly.access.Packed_MemRef_call1278.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278.us
  store double %polly.access.call1413.load.us, double* %polly.access.Packed_MemRef_call1278.us, align 8
  %polly.indvar_next408.us = add nuw nsw i64 %polly.indvar407.us, 1
  %exitcond990.not = icmp eq i64 %polly.indvar407.us, %smin992
  br i1 %exitcond990.not, label %polly.cond414.loopexit.us, label %polly.loop_header403.us

polly.then416.us:                                 ; preds = %polly.cond414.loopexit.us
  %polly.access.add.call1420.us = add nuw nsw i64 %polly.indvar399.us, %polly.access.mul.call1419
  %polly.access.call1421.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1420.us
  %polly.access.call1421.load.us = load double, double* %polly.access.call1421.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1278423.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278.us, %128
  %polly.access.Packed_MemRef_call1278424.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278423.us
  store double %polly.access.call1421.load.us, double* %polly.access.Packed_MemRef_call1278424.us, align 8
  br label %polly.merge415.us

polly.merge415.us:                                ; preds = %polly.then416.us, %polly.cond414.loopexit.us
  %polly.indvar_next400.us = add nuw nsw i64 %polly.indvar399.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next400.us, 1000
  br i1 %exitcond991.not, label %polly.loop_header425.preheader, label %polly.loop_header396.us

polly.cond414.loopexit.us:                        ; preds = %polly.loop_header403.us
  br i1 %.not849, label %polly.merge415.us, label %polly.then416.us

polly.loop_header390.split:                       ; preds = %polly.loop_header390
  br i1 %.not849, label %polly.loop_exit427, label %polly.loop_header396

polly.loop_exit427:                               ; preds = %polly.loop_exit434.loopexit.us, %polly.loop_header390.split, %polly.loop_header425.preheader
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, 1
  %exitcond998.not = icmp eq i64 %polly.indvar393, %124
  br i1 %exitcond998.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header390.split, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ 0, %polly.loop_header390.split ]
  %polly.access.add.call1420 = add nuw nsw i64 %polly.indvar399, %polly.access.mul.call1419
  %polly.access.call1421 = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1420
  %polly.access.call1421.load = load double, double* %polly.access.call1421, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1278422 = mul nuw nsw i64 %polly.indvar399, 1200
  %polly.access.add.Packed_MemRef_call1278423 = add nsw i64 %polly.access.mul.Packed_MemRef_call1278422, %128
  %polly.access.Packed_MemRef_call1278424 = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278423
  store double %polly.access.call1421.load, double* %polly.access.Packed_MemRef_call1278424, align 8
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next400, 1000
  br i1 %exitcond982.not, label %polly.loop_header425.preheader, label %polly.loop_header396

polly.loop_header425.preheader:                   ; preds = %polly.loop_header396, %polly.merge415.us
  %131 = mul nuw nsw i64 %129, 8000
  %132 = mul nuw nsw i64 %129, 9600
  br i1 %polly.loop_guard4061059, label %polly.loop_header425.us, label %polly.loop_exit427

polly.loop_header425.us:                          ; preds = %polly.loop_header425.preheader, %polly.loop_exit434.loopexit.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_exit434.loopexit.us ], [ 0, %polly.loop_header425.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar428.us, 3
  %scevgep443.us = getelementptr i8, i8* %call2, i64 %133
  %polly.access.mul.Packed_MemRef_call1278439.us = mul nuw nsw i64 %polly.indvar428.us, 1200
  %scevgep444.us = getelementptr i8, i8* %scevgep443.us, i64 %131
  %scevgep444445.us = bitcast i8* %scevgep444.us to double*
  %_p_scalar_446.us = load double, double* %scevgep444445.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1278452.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278439.us, %128
  %polly.access.Packed_MemRef_call1278453.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278452.us
  %_p_scalar_454.us = load double, double* %polly.access.Packed_MemRef_call1278453.us, align 8
  br label %polly.loop_header432.us

polly.loop_header432.us:                          ; preds = %polly.loop_header432.us, %polly.loop_header425.us
  %polly.indvar436.us = phi i64 [ 0, %polly.loop_header425.us ], [ %polly.indvar_next437.us, %polly.loop_header432.us ]
  %134 = add nuw nsw i64 %polly.indvar436.us, %125
  %polly.access.add.Packed_MemRef_call1278440.us = add nuw nsw i64 %polly.indvar436.us, %polly.access.mul.Packed_MemRef_call1278439.us
  %polly.access.Packed_MemRef_call1278441.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278440.us
  %_p_scalar_442.us = load double, double* %polly.access.Packed_MemRef_call1278441.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_446.us, %_p_scalar_442.us
  %135 = mul nuw nsw i64 %134, 8000
  %scevgep448.us = getelementptr i8, i8* %scevgep443.us, i64 %135
  %scevgep448449.us = bitcast i8* %scevgep448.us to double*
  %_p_scalar_450.us = load double, double* %scevgep448449.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_454.us, %_p_scalar_450.us
  %136 = shl i64 %134, 3
  %137 = add nuw nsw i64 %136, %132
  %scevgep455.us = getelementptr i8, i8* %call, i64 %137
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_457.us
  store double %p_add42.i79.us, double* %scevgep455456.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar436.us, %smin992
  br i1 %exitcond993.not, label %polly.loop_exit434.loopexit.us, label %polly.loop_header432.us

polly.loop_exit434.loopexit.us:                   ; preds = %polly.loop_header432.us
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next429.us, 1000
  br i1 %exitcond994.not, label %polly.loop_exit427, label %polly.loop_header425.us

polly.start460:                                   ; preds = %init_array.exit
  %malloccall462 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header546

polly.exiting461:                                 ; preds = %polly.loop_exit571
  tail call void @free(i8* %malloccall462)
  br label %kernel_syr2k.exit

polly.loop_header546:                             ; preds = %polly.loop_exit554, %polly.start460
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit554 ], [ 0, %polly.start460 ]
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_exit554 ], [ 1, %polly.start460 ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar549, 9600
  %scevgep558 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check1149 = icmp ult i64 %138, 4
  br i1 %min.iters.check1149, label %polly.loop_header552.preheader, label %vector.ph1150

vector.ph1150:                                    ; preds = %polly.loop_header546
  %n.vec1152 = and i64 %138, -4
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1150
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1154, %vector.body1148 ]
  %140 = shl nuw nsw i64 %index1153, 3
  %141 = getelementptr i8, i8* %scevgep558, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1157 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !84, !noalias !86
  %143 = fmul fast <4 x double> %wide.load1157, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !84, !noalias !86
  %index.next1154 = add i64 %index1153, 4
  %145 = icmp eq i64 %index.next1154, %n.vec1152
  br i1 %145, label %middle.block1146, label %vector.body1148, !llvm.loop !90

middle.block1146:                                 ; preds = %vector.body1148
  %cmp.n1156 = icmp eq i64 %138, %n.vec1152
  br i1 %cmp.n1156, label %polly.loop_exit554, label %polly.loop_header552.preheader

polly.loop_header552.preheader:                   ; preds = %polly.loop_header546, %middle.block1146
  %polly.indvar555.ph = phi i64 [ 0, %polly.loop_header546 ], [ %n.vec1152, %middle.block1146 ]
  br label %polly.loop_header552

polly.loop_exit554:                               ; preds = %polly.loop_header552, %middle.block1146
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next550, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1023.not, label %polly.loop_header562.preheader, label %polly.loop_header546

polly.loop_header562.preheader:                   ; preds = %polly.loop_exit554
  %Packed_MemRef_call1463 = bitcast i8* %malloccall462 to double*
  br label %polly.loop_header562

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_header552
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_header552 ], [ %polly.indvar555.ph, %polly.loop_header552.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar555, 3
  %scevgep559 = getelementptr i8, i8* %scevgep558, i64 %146
  %scevgep559560 = bitcast i8* %scevgep559 to double*
  %_p_scalar_561 = load double, double* %scevgep559560, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_561, 1.200000e+00
  store double %p_mul.i, double* %scevgep559560, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next556, %polly.indvar549
  br i1 %exitcond1022.not, label %polly.loop_exit554, label %polly.loop_header552, !llvm.loop !91

polly.loop_header562:                             ; preds = %polly.loop_header562.preheader, %polly.loop_exit571
  %indvars.iv1016 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %indvars.iv.next1017, %polly.loop_exit571 ]
  %indvars.iv1004 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %indvars.iv.next1005, %polly.loop_exit571 ]
  %polly.indvar565 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %polly.indvar_next566, %polly.loop_exit571 ]
  %147 = lshr i64 %polly.indvar565, 2
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 -1136)
  %148 = shl nsw i64 %polly.indvar565, 6
  %149 = add nsw i64 %smin1018, 1199
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_exit577
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 64
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -64
  %exitcond1021.not = icmp eq i64 %polly.indvar_next566, 19
  br i1 %exitcond1021.not, label %polly.exiting461, label %polly.loop_header562

polly.loop_header569:                             ; preds = %polly.loop_exit577, %polly.loop_header562
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit577 ], [ %indvars.iv1004, %polly.loop_header562 ]
  %polly.indvar572 = phi i64 [ %polly.indvar_next573, %polly.loop_exit577 ], [ 0, %polly.loop_header562 ]
  %150 = shl nsw i64 %polly.indvar572, 8
  %151 = sub nsw i64 %148, %150
  %152 = add nuw nsw i64 %150, 256
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit612
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -256
  %exitcond1020.not = icmp eq i64 %polly.indvar572, %147
  br i1 %exitcond1020.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit612, %polly.loop_header569
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit612 ], [ %indvars.iv1006, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit612 ], [ 0, %polly.loop_header569 ]
  %smin1013 = call i64 @llvm.smin.i64(i64 %indvars.iv1008, i64 255)
  %153 = add nsw i64 %polly.indvar578, %151
  %polly.loop_guard5911060 = icmp sgt i64 %153, -1
  %154 = add nuw nsw i64 %polly.indvar578, %148
  %.not850 = icmp ult i64 %154, %152
  %polly.access.mul.call1604 = mul nuw nsw i64 %154, 1000
  br i1 %polly.loop_guard5911060, label %polly.loop_header581.us, label %polly.loop_header575.split

polly.loop_header581.us:                          ; preds = %polly.loop_header575, %polly.merge600.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.merge600.us ], [ 0, %polly.loop_header575 ]
  %polly.access.mul.Packed_MemRef_call1463.us = mul nuw nsw i64 %polly.indvar584.us, 1200
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header581.us, %polly.loop_header588.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_header588.us ], [ 0, %polly.loop_header581.us ]
  %155 = add nuw nsw i64 %polly.indvar592.us, %150
  %polly.access.mul.call1596.us = mul nuw nsw i64 %155, 1000
  %polly.access.add.call1597.us = add nuw nsw i64 %polly.access.mul.call1596.us, %polly.indvar584.us
  %polly.access.call1598.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1597.us
  %polly.access.call1598.load.us = load double, double* %polly.access.call1598.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1463.us = add nuw nsw i64 %polly.indvar592.us, %polly.access.mul.Packed_MemRef_call1463.us
  %polly.access.Packed_MemRef_call1463.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463.us
  store double %polly.access.call1598.load.us, double* %polly.access.Packed_MemRef_call1463.us, align 8
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar592.us, %smin1013
  br i1 %exitcond1011.not, label %polly.cond599.loopexit.us, label %polly.loop_header588.us

polly.then601.us:                                 ; preds = %polly.cond599.loopexit.us
  %polly.access.add.call1605.us = add nuw nsw i64 %polly.indvar584.us, %polly.access.mul.call1604
  %polly.access.call1606.us = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1605.us
  %polly.access.call1606.load.us = load double, double* %polly.access.call1606.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1463608.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1463.us, %153
  %polly.access.Packed_MemRef_call1463609.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463608.us
  store double %polly.access.call1606.load.us, double* %polly.access.Packed_MemRef_call1463609.us, align 8
  br label %polly.merge600.us

polly.merge600.us:                                ; preds = %polly.then601.us, %polly.cond599.loopexit.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next585.us, 1000
  br i1 %exitcond1012.not, label %polly.loop_header610.preheader, label %polly.loop_header581.us

polly.cond599.loopexit.us:                        ; preds = %polly.loop_header588.us
  br i1 %.not850, label %polly.merge600.us, label %polly.then601.us

polly.loop_header575.split:                       ; preds = %polly.loop_header575
  br i1 %.not850, label %polly.loop_exit612, label %polly.loop_header581

polly.loop_exit612:                               ; preds = %polly.loop_exit619.loopexit.us, %polly.loop_header575.split, %polly.loop_header610.preheader
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar578, %149
  br i1 %exitcond1019.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_header575.split, %polly.loop_header581
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_header581 ], [ 0, %polly.loop_header575.split ]
  %polly.access.add.call1605 = add nuw nsw i64 %polly.indvar584, %polly.access.mul.call1604
  %polly.access.call1606 = getelementptr double, double* %polly.access.cast.call1647, i64 %polly.access.add.call1605
  %polly.access.call1606.load = load double, double* %polly.access.call1606, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1463607 = mul nuw nsw i64 %polly.indvar584, 1200
  %polly.access.add.Packed_MemRef_call1463608 = add nsw i64 %polly.access.mul.Packed_MemRef_call1463607, %153
  %polly.access.Packed_MemRef_call1463609 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463608
  store double %polly.access.call1606.load, double* %polly.access.Packed_MemRef_call1463609, align 8
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next585, 1000
  br i1 %exitcond1003.not, label %polly.loop_header610.preheader, label %polly.loop_header581

polly.loop_header610.preheader:                   ; preds = %polly.loop_header581, %polly.merge600.us
  %156 = mul nuw nsw i64 %154, 8000
  %157 = mul nuw nsw i64 %154, 9600
  br i1 %polly.loop_guard5911060, label %polly.loop_header610.us, label %polly.loop_exit612

polly.loop_header610.us:                          ; preds = %polly.loop_header610.preheader, %polly.loop_exit619.loopexit.us
  %polly.indvar613.us = phi i64 [ %polly.indvar_next614.us, %polly.loop_exit619.loopexit.us ], [ 0, %polly.loop_header610.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar613.us, 3
  %scevgep628.us = getelementptr i8, i8* %call2, i64 %158
  %polly.access.mul.Packed_MemRef_call1463624.us = mul nuw nsw i64 %polly.indvar613.us, 1200
  %scevgep629.us = getelementptr i8, i8* %scevgep628.us, i64 %156
  %scevgep629630.us = bitcast i8* %scevgep629.us to double*
  %_p_scalar_631.us = load double, double* %scevgep629630.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1463637.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1463624.us, %153
  %polly.access.Packed_MemRef_call1463638.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1463638.us, align 8
  br label %polly.loop_header617.us

polly.loop_header617.us:                          ; preds = %polly.loop_header617.us, %polly.loop_header610.us
  %polly.indvar621.us = phi i64 [ 0, %polly.loop_header610.us ], [ %polly.indvar_next622.us, %polly.loop_header617.us ]
  %159 = add nuw nsw i64 %polly.indvar621.us, %150
  %polly.access.add.Packed_MemRef_call1463625.us = add nuw nsw i64 %polly.indvar621.us, %polly.access.mul.Packed_MemRef_call1463624.us
  %polly.access.Packed_MemRef_call1463626.us = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463625.us
  %_p_scalar_627.us = load double, double* %polly.access.Packed_MemRef_call1463626.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_631.us, %_p_scalar_627.us
  %160 = mul nuw nsw i64 %159, 8000
  %scevgep633.us = getelementptr i8, i8* %scevgep628.us, i64 %160
  %scevgep633634.us = bitcast i8* %scevgep633.us to double*
  %_p_scalar_635.us = load double, double* %scevgep633634.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_639.us, %_p_scalar_635.us
  %161 = shl i64 %159, 3
  %162 = add nuw nsw i64 %161, %157
  %scevgep640.us = getelementptr i8, i8* %call, i64 %162
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_642.us
  store double %p_add42.i.us, double* %scevgep640641.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next622.us = add nuw nsw i64 %polly.indvar621.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar621.us, %smin1013
  br i1 %exitcond1014.not, label %polly.loop_exit619.loopexit.us, label %polly.loop_header617.us

polly.loop_exit619.loopexit.us:                   ; preds = %polly.loop_header617.us
  %polly.indvar_next614.us = add nuw nsw i64 %polly.indvar613.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next614.us, 1000
  br i1 %exitcond1015.not, label %polly.loop_exit612, label %polly.loop_header610.us

polly.loop_header769:                             ; preds = %entry, %polly.loop_exit777
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit777 ], [ 0, %entry ]
  %polly.indvar772 = phi i64 [ %polly.indvar_next773, %polly.loop_exit777 ], [ 0, %entry ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %163 = shl nsw i64 %polly.indvar772, 5
  %164 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header775

polly.loop_exit777:                               ; preds = %polly.loop_exit783
  %polly.indvar_next773 = add nuw nsw i64 %polly.indvar772, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next773, 38
  br i1 %exitcond1053.not, label %polly.loop_header796, label %polly.loop_header769

polly.loop_header775:                             ; preds = %polly.loop_exit783, %polly.loop_header769
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit783 ], [ 0, %polly.loop_header769 ]
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_header769 ]
  %165 = mul nsw i64 %polly.indvar778, -32
  %smin = call i64 @llvm.smin.i64(i64 %165, i64 -1168)
  %166 = add nsw i64 %smin, 1200
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %167 = shl nsw i64 %polly.indvar778, 5
  %168 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header781

polly.loop_exit783:                               ; preds = %polly.loop_exit789
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next779, 38
  br i1 %exitcond1052.not, label %polly.loop_exit777, label %polly.loop_header775

polly.loop_header781:                             ; preds = %polly.loop_exit789, %polly.loop_header775
  %polly.indvar784 = phi i64 [ 0, %polly.loop_header775 ], [ %polly.indvar_next785, %polly.loop_exit789 ]
  %169 = add nuw nsw i64 %polly.indvar784, %163
  %170 = trunc i64 %169 to i32
  %171 = mul nuw nsw i64 %169, 9600
  %min.iters.check = icmp eq i64 %166, 0
  br i1 %min.iters.check, label %polly.loop_header787, label %vector.ph1088

vector.ph1088:                                    ; preds = %polly.loop_header781
  %broadcast.splatinsert1095 = insertelement <4 x i64> poison, i64 %167, i32 0
  %broadcast.splat1096 = shufflevector <4 x i64> %broadcast.splatinsert1095, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %vector.ph1088
  %index1089 = phi i64 [ 0, %vector.ph1088 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1093 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1088 ], [ %vec.ind.next1094, %vector.body1087 ]
  %172 = add nuw nsw <4 x i64> %vec.ind1093, %broadcast.splat1096
  %173 = trunc <4 x i64> %172 to <4 x i32>
  %174 = mul <4 x i32> %broadcast.splat1098, %173
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 1200, i32 1200, i32 1200, i32 1200>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %179 = extractelement <4 x i64> %172, i32 0
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %171
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %178, <4 x double>* %183, align 8, !alias.scope !94, !noalias !96
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1094 = add <4 x i64> %vec.ind1093, <i64 4, i64 4, i64 4, i64 4>
  %184 = icmp eq i64 %index.next1090, %166
  br i1 %184, label %polly.loop_exit789, label %vector.body1087, !llvm.loop !99

polly.loop_exit789:                               ; preds = %vector.body1087, %polly.loop_header787
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar784, %164
  br i1 %exitcond1051.not, label %polly.loop_exit783, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_header781, %polly.loop_header787
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_header787 ], [ 0, %polly.loop_header781 ]
  %185 = add nuw nsw i64 %polly.indvar790, %167
  %186 = trunc i64 %185 to i32
  %187 = mul i32 %186, %170
  %188 = add i32 %187, 3
  %189 = urem i32 %188, 1200
  %p_conv31.i = sitofp i32 %189 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %190 = shl i64 %185, 3
  %191 = add nuw nsw i64 %190, %171
  %scevgep793 = getelementptr i8, i8* %call, i64 %191
  %scevgep793794 = bitcast i8* %scevgep793 to double*
  store double %p_div33.i, double* %scevgep793794, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar790, %168
  br i1 %exitcond1047.not, label %polly.loop_exit789, label %polly.loop_header787, !llvm.loop !100

polly.loop_header796:                             ; preds = %polly.loop_exit777, %polly.loop_exit804
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit804 ], [ 0, %polly.loop_exit777 ]
  %polly.indvar799 = phi i64 [ %polly.indvar_next800, %polly.loop_exit804 ], [ 0, %polly.loop_exit777 ]
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 -1168)
  %192 = shl nsw i64 %polly.indvar799, 5
  %193 = add nsw i64 %smin1040, 1199
  br label %polly.loop_header802

polly.loop_exit804:                               ; preds = %polly.loop_exit810
  %polly.indvar_next800 = add nuw nsw i64 %polly.indvar799, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %exitcond1043.not = icmp eq i64 %polly.indvar_next800, 38
  br i1 %exitcond1043.not, label %polly.loop_header822, label %polly.loop_header796

polly.loop_header802:                             ; preds = %polly.loop_exit810, %polly.loop_header796
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit810 ], [ 0, %polly.loop_header796 ]
  %polly.indvar805 = phi i64 [ %polly.indvar_next806, %polly.loop_exit810 ], [ 0, %polly.loop_header796 ]
  %194 = mul nsw i64 %polly.indvar805, -32
  %smin1102 = call i64 @llvm.smin.i64(i64 %194, i64 -968)
  %195 = add nsw i64 %smin1102, 1000
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -968)
  %196 = shl nsw i64 %polly.indvar805, 5
  %197 = add nsw i64 %smin1036, 999
  br label %polly.loop_header808

polly.loop_exit810:                               ; preds = %polly.loop_exit816
  %polly.indvar_next806 = add nuw nsw i64 %polly.indvar805, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1042.not = icmp eq i64 %polly.indvar_next806, 32
  br i1 %exitcond1042.not, label %polly.loop_exit804, label %polly.loop_header802

polly.loop_header808:                             ; preds = %polly.loop_exit816, %polly.loop_header802
  %polly.indvar811 = phi i64 [ 0, %polly.loop_header802 ], [ %polly.indvar_next812, %polly.loop_exit816 ]
  %198 = add nuw nsw i64 %polly.indvar811, %192
  %199 = trunc i64 %198 to i32
  %200 = mul nuw nsw i64 %198, 8000
  %min.iters.check1103 = icmp eq i64 %195, 0
  br i1 %min.iters.check1103, label %polly.loop_header814, label %vector.ph1104

vector.ph1104:                                    ; preds = %polly.loop_header808
  %broadcast.splatinsert1113 = insertelement <4 x i64> poison, i64 %196, i32 0
  %broadcast.splat1114 = shufflevector <4 x i64> %broadcast.splatinsert1113, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %199, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %vector.ph1104
  %index1107 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1108, %vector.body1101 ]
  %vec.ind1111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1104 ], [ %vec.ind.next1112, %vector.body1101 ]
  %201 = add nuw nsw <4 x i64> %vec.ind1111, %broadcast.splat1114
  %202 = trunc <4 x i64> %201 to <4 x i32>
  %203 = mul <4 x i32> %broadcast.splat1116, %202
  %204 = add <4 x i32> %203, <i32 2, i32 2, i32 2, i32 2>
  %205 = urem <4 x i32> %204, <i32 1000, i32 1000, i32 1000, i32 1000>
  %206 = sitofp <4 x i32> %205 to <4 x double>
  %207 = fmul fast <4 x double> %206, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %208 = extractelement <4 x i64> %201, i32 0
  %209 = shl i64 %208, 3
  %210 = add nuw nsw i64 %209, %200
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %207, <4 x double>* %212, align 8, !alias.scope !98, !noalias !101
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1112 = add <4 x i64> %vec.ind1111, <i64 4, i64 4, i64 4, i64 4>
  %213 = icmp eq i64 %index.next1108, %195
  br i1 %213, label %polly.loop_exit816, label %vector.body1101, !llvm.loop !102

polly.loop_exit816:                               ; preds = %vector.body1101, %polly.loop_header814
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar811, %193
  br i1 %exitcond1041.not, label %polly.loop_exit810, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_header808, %polly.loop_header814
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_header814 ], [ 0, %polly.loop_header808 ]
  %214 = add nuw nsw i64 %polly.indvar817, %196
  %215 = trunc i64 %214 to i32
  %216 = mul i32 %215, %199
  %217 = add i32 %216, 2
  %218 = urem i32 %217, 1000
  %p_conv10.i = sitofp i32 %218 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %219 = shl i64 %214, 3
  %220 = add nuw nsw i64 %219, %200
  %scevgep820 = getelementptr i8, i8* %call2, i64 %220
  %scevgep820821 = bitcast i8* %scevgep820 to double*
  store double %p_div12.i, double* %scevgep820821, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar817, %197
  br i1 %exitcond1037.not, label %polly.loop_exit816, label %polly.loop_header814, !llvm.loop !103

polly.loop_header822:                             ; preds = %polly.loop_exit804, %polly.loop_exit830
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit830 ], [ 0, %polly.loop_exit804 ]
  %polly.indvar825 = phi i64 [ %polly.indvar_next826, %polly.loop_exit830 ], [ 0, %polly.loop_exit804 ]
  %smin1030 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 -1168)
  %221 = shl nsw i64 %polly.indvar825, 5
  %222 = add nsw i64 %smin1030, 1199
  br label %polly.loop_header828

polly.loop_exit830:                               ; preds = %polly.loop_exit836
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -32
  %exitcond1033.not = icmp eq i64 %polly.indvar_next826, 38
  br i1 %exitcond1033.not, label %init_array.exit, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_exit836, %polly.loop_header822
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %223 = mul nsw i64 %polly.indvar831, -32
  %smin1120 = call i64 @llvm.smin.i64(i64 %223, i64 -968)
  %224 = add nsw i64 %smin1120, 1000
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 -968)
  %225 = shl nsw i64 %polly.indvar831, 5
  %226 = add nsw i64 %smin1026, 999
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, -32
  %exitcond1032.not = icmp eq i64 %polly.indvar_next832, 32
  br i1 %exitcond1032.not, label %polly.loop_exit830, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %polly.indvar837 = phi i64 [ 0, %polly.loop_header828 ], [ %polly.indvar_next838, %polly.loop_exit842 ]
  %227 = add nuw nsw i64 %polly.indvar837, %221
  %228 = trunc i64 %227 to i32
  %229 = mul nuw nsw i64 %227, 8000
  %min.iters.check1121 = icmp eq i64 %224, 0
  br i1 %min.iters.check1121, label %polly.loop_header840, label %vector.ph1122

vector.ph1122:                                    ; preds = %polly.loop_header834
  %broadcast.splatinsert1131 = insertelement <4 x i64> poison, i64 %225, i32 0
  %broadcast.splat1132 = shufflevector <4 x i64> %broadcast.splatinsert1131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %vector.ph1122
  %index1125 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1126, %vector.body1119 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1122 ], [ %vec.ind.next1130, %vector.body1119 ]
  %230 = add nuw nsw <4 x i64> %vec.ind1129, %broadcast.splat1132
  %231 = trunc <4 x i64> %230 to <4 x i32>
  %232 = mul <4 x i32> %broadcast.splat1134, %231
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 1200, i32 1200, i32 1200, i32 1200>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %237 = extractelement <4 x i64> %230, i32 0
  %238 = shl i64 %237, 3
  %239 = add nuw nsw i64 %238, %229
  %240 = getelementptr i8, i8* %call1, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %236, <4 x double>* %241, align 8, !alias.scope !97, !noalias !104
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %242 = icmp eq i64 %index.next1126, %224
  br i1 %242, label %polly.loop_exit842, label %vector.body1119, !llvm.loop !105

polly.loop_exit842:                               ; preds = %vector.body1119, %polly.loop_header840
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar837, %222
  br i1 %exitcond1031.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_header834, %polly.loop_header840
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_header840 ], [ 0, %polly.loop_header834 ]
  %243 = add nuw nsw i64 %polly.indvar843, %225
  %244 = trunc i64 %243 to i32
  %245 = mul i32 %244, %228
  %246 = add i32 %245, 1
  %247 = urem i32 %246, 1200
  %p_conv.i = sitofp i32 %247 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %248 = shl i64 %243, 3
  %249 = add nuw nsw i64 %248, %229
  %scevgep847 = getelementptr i8, i8* %call1, i64 %249
  %scevgep847848 = bitcast i8* %scevgep847 to double*
  store double %p_div.i, double* %scevgep847848, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar843, %226
  br i1 %exitcond1027.not, label %polly.loop_exit842, label %polly.loop_header840, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 64}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
