; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4953.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4953.c"
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
  %call799 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1651 = bitcast i8* %call1 to double*
  %polly.access.call1660 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1660, %call2
  %polly.access.call2680 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2680, %call1
  %2 = or i1 %0, %1
  %polly.access.call700 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call700, %call2
  %4 = icmp ule i8* %polly.access.call2680, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call700, %call1
  %8 = icmp ule i8* %polly.access.call1660, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header773, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1078 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1077 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1076 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1075 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1075, %scevgep1078
  %bound1 = icmp ult i8* %scevgep1077, %scevgep1076
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
  br i1 %exitcond18.not.i, label %vector.ph1082, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1082:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1089 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1090 = shufflevector <4 x i64> %broadcast.splatinsert1089, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1082
  %index1083 = phi i64 [ 0, %vector.ph1082 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1082 ], [ %vec.ind.next1088, %vector.body1081 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1087, %broadcast.splat1090
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv7.i, i64 %index1083
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1084, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1081, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1081
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1082, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit834
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start463, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1144 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1144, label %for.body3.i46.preheader1221, label %vector.ph1145

vector.ph1145:                                    ; preds = %for.body3.i46.preheader
  %n.vec1147 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %vector.ph1145
  %index1148 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1149, %vector.body1143 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv21.i, i64 %index1148
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1149 = add i64 %index1148, 4
  %46 = icmp eq i64 %index.next1149, %n.vec1147
  br i1 %46, label %middle.block1141, label %vector.body1143, !llvm.loop !18

middle.block1141:                                 ; preds = %vector.body1143
  %cmp.n1151 = icmp eq i64 %indvars.iv21.i, %n.vec1147
  br i1 %cmp.n1151, label %for.inc6.i, label %for.body3.i46.preheader1221

for.body3.i46.preheader1221:                      ; preds = %for.body3.i46.preheader, %middle.block1141
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1147, %middle.block1141 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1221, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1221 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1141, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting464
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start277, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1167 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1167, label %for.body3.i60.preheader1219, label %vector.ph1168

vector.ph1168:                                    ; preds = %for.body3.i60.preheader
  %n.vec1170 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1168
  %index1171 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1172, %vector.body1166 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv21.i52, i64 %index1171
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1175 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1175, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1172 = add i64 %index1171, 4
  %57 = icmp eq i64 %index.next1172, %n.vec1170
  br i1 %57, label %middle.block1164, label %vector.body1166, !llvm.loop !55

middle.block1164:                                 ; preds = %vector.body1166
  %cmp.n1174 = icmp eq i64 %indvars.iv21.i52, %n.vec1170
  br i1 %cmp.n1174, label %for.inc6.i63, label %for.body3.i60.preheader1219

for.body3.i60.preheader1219:                      ; preds = %for.body3.i60.preheader, %middle.block1164
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1170, %middle.block1164 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1219, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1219 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1164, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting278
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1193 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1193, label %for.body3.i99.preheader1217, label %vector.ph1194

vector.ph1194:                                    ; preds = %for.body3.i99.preheader
  %n.vec1196 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1194
  %index1197 = phi i64 [ 0, %vector.ph1194 ], [ %index.next1198, %vector.body1192 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv21.i91, i64 %index1197
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1201 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1201, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1198 = add i64 %index1197, 4
  %68 = icmp eq i64 %index.next1198, %n.vec1196
  br i1 %68, label %middle.block1190, label %vector.body1192, !llvm.loop !57

middle.block1190:                                 ; preds = %vector.body1192
  %cmp.n1200 = icmp eq i64 %indvars.iv21.i91, %n.vec1196
  br i1 %cmp.n1200, label %for.inc6.i102, label %for.body3.i99.preheader1217

for.body3.i99.preheader1217:                      ; preds = %for.body3.i99.preheader, %middle.block1190
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1196, %middle.block1190 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1217, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1217 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1190, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call799, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1205 = phi i64 [ %indvar.next1206, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1205, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1207 = icmp ult i64 %88, 4
  br i1 %min.iters.check1207, label %polly.loop_header191.preheader, label %vector.ph1208

vector.ph1208:                                    ; preds = %polly.loop_header
  %n.vec1210 = and i64 %88, -4
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1204 ]
  %90 = shl nuw nsw i64 %index1211, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1215 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1215, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1212 = add i64 %index1211, 4
  %95 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %95, label %middle.block1202, label %vector.body1204, !llvm.loop !69

middle.block1202:                                 ; preds = %vector.body1204
  %cmp.n1214 = icmp eq i64 %88, %n.vec1210
  br i1 %cmp.n1214, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1202
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1210, %middle.block1202 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1202
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1206 = add i64 %indvar1205, 1
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
  %indvars.iv976 = phi i64 [ 4, %polly.loop_header199.preheader ], [ %indvars.iv.next977, %polly.loop_exit207 ]
  %indvars.iv965 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next966, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nsw i64 %polly.indvar202, -80
  %98 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 80
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 4
  %exitcond979.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond979.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit213 ], [ %indvars.iv965, %polly.loop_header199 ]
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = mul nuw nsw i64 %polly.indvar208, 20
  %100 = add nsw i64 %99, %97
  %101 = icmp sgt i64 %100, 0
  %102 = select i1 %101, i64 %100, i64 0
  %polly.loop_guard = icmp slt i64 %102, 80
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv963, i64 0)
  %103 = add i64 %smax, %indvars.iv967
  %104 = sub nsw i64 %98, %99
  %105 = add nuw nsw i64 %99, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit244, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, 20
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -20
  %exitcond978.not = icmp eq i64 %polly.indvar_next209, %indvars.iv976
  br i1 %exitcond978.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit244
  %indvars.iv969 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %indvars.iv.next970, %polly.loop_exit244 ]
  %polly.indvar214 = phi i64 [ %102, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit244 ]
  %smin973 = call i64 @llvm.smin.i64(i64 %indvars.iv969, i64 19)
  %106 = add nsw i64 %polly.indvar214, %104
  %polly.loop_guard2271064 = icmp sgt i64 %106, -1
  %107 = add nuw nsw i64 %polly.indvar214, %98
  %.not = icmp ult i64 %107, %105
  %polly.access.mul.call1236 = mul nsw i64 %107, 1000
  br i1 %polly.loop_guard2271064, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %108 = add nuw nsw i64 %polly.indvar228.us, %99
  %polly.access.mul.call1232.us = mul nuw nsw i64 %108, 1000
  %polly.access.add.call1233.us = add nuw nsw i64 %polly.access.mul.call1232.us, %polly.indvar220.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond971.not = icmp eq i64 %polly.indvar228.us, %smin973
  br i1 %exitcond971.not, label %polly.cond.loopexit.us, label %polly.loop_header224.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1236
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1240.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %106
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond972.not, label %polly.loop_header242.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header224.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %.not, label %polly.loop_exit244, label %polly.loop_header217

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header211.split, %polly.loop_header242.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 79
  %indvars.iv.next970 = add i64 %indvars.iv969, 1
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1237 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1236
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.Packed_MemRef_call1240 = add nsw i64 %polly.access.mul.Packed_MemRef_call1239, %106
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header217

polly.loop_header242.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %109 = mul i64 %107, 8000
  %110 = mul i64 %107, 9600
  br i1 %polly.loop_guard2271064, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep260.us = getelementptr i8, i8* %call2, i64 %111
  %polly.access.mul.Packed_MemRef_call1256.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  %scevgep261.us = getelementptr i8, i8* %scevgep260.us, i64 %109
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1269.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.us, %106
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header249.us, %polly.loop_header242.us
  %polly.indvar253.us = phi i64 [ 0, %polly.loop_header242.us ], [ %polly.indvar_next254.us, %polly.loop_header249.us ]
  %112 = add nuw nsw i64 %polly.indvar253.us, %99
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1256.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_263.us, %_p_scalar_259.us
  %113 = mul nuw nsw i64 %112, 8000
  %scevgep265.us = getelementptr i8, i8* %scevgep260.us, i64 %113
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_271.us, %_p_scalar_267.us
  %114 = shl i64 %112, 3
  %115 = add i64 %114, %110
  %scevgep272.us = getelementptr i8, i8* %call, i64 %115
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_274.us
  store double %p_add42.i118.us, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar253.us, %smin973
  br i1 %exitcond974.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_header249.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next246.us, 1000
  br i1 %exitcond975.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.start277:                                   ; preds = %kernel_syr2k.exit
  %malloccall279 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header363

polly.exiting278:                                 ; preds = %polly.loop_exit387
  tail call void @free(i8* %malloccall279)
  br label %kernel_syr2k.exit90

polly.loop_header363:                             ; preds = %polly.loop_exit371, %polly.start277
  %indvar1179 = phi i64 [ %indvar.next1180, %polly.loop_exit371 ], [ 0, %polly.start277 ]
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 1, %polly.start277 ]
  %116 = add i64 %indvar1179, 1
  %117 = mul nuw nsw i64 %polly.indvar366, 9600
  %scevgep375 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1181 = icmp ult i64 %116, 4
  br i1 %min.iters.check1181, label %polly.loop_header369.preheader, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header363
  %n.vec1184 = and i64 %116, -4
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1178 ]
  %118 = shl nuw nsw i64 %index1185, 3
  %119 = getelementptr i8, i8* %scevgep375, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1189 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !74, !noalias !76
  %121 = fmul fast <4 x double> %wide.load1189, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !74, !noalias !76
  %index.next1186 = add i64 %index1185, 4
  %123 = icmp eq i64 %index.next1186, %n.vec1184
  br i1 %123, label %middle.block1176, label %vector.body1178, !llvm.loop !80

middle.block1176:                                 ; preds = %vector.body1178
  %cmp.n1188 = icmp eq i64 %116, %n.vec1184
  br i1 %cmp.n1188, label %polly.loop_exit371, label %polly.loop_header369.preheader

polly.loop_header369.preheader:                   ; preds = %polly.loop_header363, %middle.block1176
  %polly.indvar372.ph = phi i64 [ 0, %polly.loop_header363 ], [ %n.vec1184, %middle.block1176 ]
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369, %middle.block1176
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next367, 1200
  %indvar.next1180 = add i64 %indvar1179, 1
  br i1 %exitcond1005.not, label %polly.loop_header379.preheader, label %polly.loop_header363

polly.loop_header379.preheader:                   ; preds = %polly.loop_exit371
  %Packed_MemRef_call1280 = bitcast i8* %malloccall279 to double*
  br label %polly.loop_header379

polly.loop_header369:                             ; preds = %polly.loop_header369.preheader, %polly.loop_header369
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_header369 ], [ %polly.indvar372.ph, %polly.loop_header369.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar372, 3
  %scevgep376 = getelementptr i8, i8* %scevgep375, i64 %124
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_378, 1.200000e+00
  store double %p_mul.i57, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next373, %polly.indvar366
  br i1 %exitcond1004.not, label %polly.loop_exit371, label %polly.loop_header369, !llvm.loop !81

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_exit387
  %indvars.iv1000 = phi i64 [ 4, %polly.loop_header379.preheader ], [ %indvars.iv.next1001, %polly.loop_exit387 ]
  %indvars.iv988 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next989, %polly.loop_exit387 ]
  %indvars.iv983 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next984, %polly.loop_exit387 ]
  %polly.indvar382 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %polly.indvar_next383, %polly.loop_exit387 ]
  %125 = mul nsw i64 %polly.indvar382, -80
  %126 = mul nuw nsw i64 %polly.indvar382, 80
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_exit394
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, -80
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 80
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 4
  %exitcond1003.not = icmp eq i64 %polly.indvar_next383, 15
  br i1 %exitcond1003.not, label %polly.exiting278, label %polly.loop_header379

polly.loop_header385:                             ; preds = %polly.loop_exit394, %polly.loop_header379
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %polly.loop_exit394 ], [ %indvars.iv988, %polly.loop_header379 ]
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit394 ], [ %indvars.iv983, %polly.loop_header379 ]
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit394 ], [ 0, %polly.loop_header379 ]
  %127 = mul nuw nsw i64 %polly.indvar388, 20
  %128 = add nsw i64 %127, %125
  %129 = icmp sgt i64 %128, 0
  %130 = select i1 %129, i64 %128, i64 0
  %polly.loop_guard395 = icmp slt i64 %130, 80
  br i1 %polly.loop_guard395, label %polly.loop_header392.preheader, label %polly.loop_exit394

polly.loop_header392.preheader:                   ; preds = %polly.loop_header385
  %smax987 = call i64 @llvm.smax.i64(i64 %indvars.iv985, i64 0)
  %131 = add i64 %smax987, %indvars.iv990
  %132 = sub nsw i64 %126, %127
  %133 = add nuw nsw i64 %127, 20
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_exit430, %polly.loop_header385
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, 20
  %indvars.iv.next991 = add nsw i64 %indvars.iv990, -20
  %exitcond1002.not = icmp eq i64 %polly.indvar_next389, %indvars.iv1000
  br i1 %exitcond1002.not, label %polly.loop_exit387, label %polly.loop_header385

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_exit430
  %indvars.iv992 = phi i64 [ %131, %polly.loop_header392.preheader ], [ %indvars.iv.next993, %polly.loop_exit430 ]
  %polly.indvar396 = phi i64 [ %130, %polly.loop_header392.preheader ], [ %polly.indvar_next397, %polly.loop_exit430 ]
  %smin997 = call i64 @llvm.smin.i64(i64 %indvars.iv992, i64 19)
  %134 = add nsw i64 %polly.indvar396, %132
  %polly.loop_guard4091065 = icmp sgt i64 %134, -1
  %135 = add nuw nsw i64 %polly.indvar396, %126
  %.not853 = icmp ult i64 %135, %133
  %polly.access.mul.call1422 = mul nsw i64 %135, 1000
  br i1 %polly.loop_guard4091065, label %polly.loop_header399.us, label %polly.loop_header392.split

polly.loop_header399.us:                          ; preds = %polly.loop_header392, %polly.merge418.us
  %polly.indvar402.us = phi i64 [ %polly.indvar_next403.us, %polly.merge418.us ], [ 0, %polly.loop_header392 ]
  %polly.access.mul.Packed_MemRef_call1280.us = mul nuw nsw i64 %polly.indvar402.us, 1200
  br label %polly.loop_header406.us

polly.loop_header406.us:                          ; preds = %polly.loop_header399.us, %polly.loop_header406.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_header406.us ], [ 0, %polly.loop_header399.us ]
  %136 = add nuw nsw i64 %polly.indvar410.us, %127
  %polly.access.mul.call1414.us = mul nuw nsw i64 %136, 1000
  %polly.access.add.call1415.us = add nuw nsw i64 %polly.access.mul.call1414.us, %polly.indvar402.us
  %polly.access.call1416.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1415.us
  %polly.access.call1416.load.us = load double, double* %polly.access.call1416.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar410.us, %polly.access.mul.Packed_MemRef_call1280.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280.us
  store double %polly.access.call1416.load.us, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond995.not = icmp eq i64 %polly.indvar410.us, %smin997
  br i1 %exitcond995.not, label %polly.cond417.loopexit.us, label %polly.loop_header406.us

polly.then419.us:                                 ; preds = %polly.cond417.loopexit.us
  %polly.access.add.call1423.us = add nuw nsw i64 %polly.indvar402.us, %polly.access.mul.call1422
  %polly.access.call1424.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1423.us
  %polly.access.call1424.load.us = load double, double* %polly.access.call1424.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280426.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280.us, %134
  %polly.access.Packed_MemRef_call1280427.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280426.us
  store double %polly.access.call1424.load.us, double* %polly.access.Packed_MemRef_call1280427.us, align 8
  br label %polly.merge418.us

polly.merge418.us:                                ; preds = %polly.then419.us, %polly.cond417.loopexit.us
  %polly.indvar_next403.us = add nuw nsw i64 %polly.indvar402.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next403.us, 1000
  br i1 %exitcond996.not, label %polly.loop_header428.preheader, label %polly.loop_header399.us

polly.cond417.loopexit.us:                        ; preds = %polly.loop_header406.us
  br i1 %.not853, label %polly.merge418.us, label %polly.then419.us

polly.loop_header392.split:                       ; preds = %polly.loop_header392
  br i1 %.not853, label %polly.loop_exit430, label %polly.loop_header399

polly.loop_exit430:                               ; preds = %polly.loop_exit437.loopexit.us, %polly.loop_header392.split, %polly.loop_header428.preheader
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %polly.loop_cond398 = icmp ult i64 %polly.indvar396, 79
  %indvars.iv.next993 = add i64 %indvars.iv992, 1
  br i1 %polly.loop_cond398, label %polly.loop_header392, label %polly.loop_exit394

polly.loop_header399:                             ; preds = %polly.loop_header392.split, %polly.loop_header399
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_header399 ], [ 0, %polly.loop_header392.split ]
  %polly.access.add.call1423 = add nuw nsw i64 %polly.indvar402, %polly.access.mul.call1422
  %polly.access.call1424 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1423
  %polly.access.call1424.load = load double, double* %polly.access.call1424, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1280425 = mul nuw nsw i64 %polly.indvar402, 1200
  %polly.access.add.Packed_MemRef_call1280426 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280425, %134
  %polly.access.Packed_MemRef_call1280427 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280426
  store double %polly.access.call1424.load, double* %polly.access.Packed_MemRef_call1280427, align 8
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next403, 1000
  br i1 %exitcond982.not, label %polly.loop_header428.preheader, label %polly.loop_header399

polly.loop_header428.preheader:                   ; preds = %polly.loop_header399, %polly.merge418.us
  %137 = mul i64 %135, 8000
  %138 = mul i64 %135, 9600
  br i1 %polly.loop_guard4091065, label %polly.loop_header428.us, label %polly.loop_exit430

polly.loop_header428.us:                          ; preds = %polly.loop_header428.preheader, %polly.loop_exit437.loopexit.us
  %polly.indvar431.us = phi i64 [ %polly.indvar_next432.us, %polly.loop_exit437.loopexit.us ], [ 0, %polly.loop_header428.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar431.us, 3
  %scevgep446.us = getelementptr i8, i8* %call2, i64 %139
  %polly.access.mul.Packed_MemRef_call1280442.us = mul nuw nsw i64 %polly.indvar431.us, 1200
  %scevgep447.us = getelementptr i8, i8* %scevgep446.us, i64 %137
  %scevgep447448.us = bitcast i8* %scevgep447.us to double*
  %_p_scalar_449.us = load double, double* %scevgep447448.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1280455.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280442.us, %134
  %polly.access.Packed_MemRef_call1280456.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280455.us
  %_p_scalar_457.us = load double, double* %polly.access.Packed_MemRef_call1280456.us, align 8
  br label %polly.loop_header435.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header428.us
  %polly.indvar439.us = phi i64 [ 0, %polly.loop_header428.us ], [ %polly.indvar_next440.us, %polly.loop_header435.us ]
  %140 = add nuw nsw i64 %polly.indvar439.us, %127
  %polly.access.add.Packed_MemRef_call1280443.us = add nuw nsw i64 %polly.indvar439.us, %polly.access.mul.Packed_MemRef_call1280442.us
  %polly.access.Packed_MemRef_call1280444.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280443.us
  %_p_scalar_445.us = load double, double* %polly.access.Packed_MemRef_call1280444.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_449.us, %_p_scalar_445.us
  %141 = mul nuw nsw i64 %140, 8000
  %scevgep451.us = getelementptr i8, i8* %scevgep446.us, i64 %141
  %scevgep451452.us = bitcast i8* %scevgep451.us to double*
  %_p_scalar_453.us = load double, double* %scevgep451452.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_457.us, %_p_scalar_453.us
  %142 = shl i64 %140, 3
  %143 = add i64 %142, %138
  %scevgep458.us = getelementptr i8, i8* %call, i64 %143
  %scevgep458459.us = bitcast i8* %scevgep458.us to double*
  %_p_scalar_460.us = load double, double* %scevgep458459.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_460.us
  store double %p_add42.i79.us, double* %scevgep458459.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next440.us = add nuw nsw i64 %polly.indvar439.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar439.us, %smin997
  br i1 %exitcond998.not, label %polly.loop_exit437.loopexit.us, label %polly.loop_header435.us

polly.loop_exit437.loopexit.us:                   ; preds = %polly.loop_header435.us
  %polly.indvar_next432.us = add nuw nsw i64 %polly.indvar431.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next432.us, 1000
  br i1 %exitcond999.not, label %polly.loop_exit430, label %polly.loop_header428.us

polly.start463:                                   ; preds = %init_array.exit
  %malloccall465 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header549

polly.exiting464:                                 ; preds = %polly.loop_exit573
  tail call void @free(i8* %malloccall465)
  br label %kernel_syr2k.exit

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.start463
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit557 ], [ 0, %polly.start463 ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ 1, %polly.start463 ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar552, 9600
  %scevgep561 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1155 = icmp ult i64 %144, 4
  br i1 %min.iters.check1155, label %polly.loop_header555.preheader, label %vector.ph1156

vector.ph1156:                                    ; preds = %polly.loop_header549
  %n.vec1158 = and i64 %144, -4
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1160, %vector.body1154 ]
  %146 = shl nuw nsw i64 %index1159, 3
  %147 = getelementptr i8, i8* %scevgep561, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1163 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !84, !noalias !86
  %149 = fmul fast <4 x double> %wide.load1163, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %index.next1160 = add i64 %index1159, 4
  %151 = icmp eq i64 %index.next1160, %n.vec1158
  br i1 %151, label %middle.block1152, label %vector.body1154, !llvm.loop !90

middle.block1152:                                 ; preds = %vector.body1154
  %cmp.n1162 = icmp eq i64 %144, %n.vec1158
  br i1 %cmp.n1162, label %polly.loop_exit557, label %polly.loop_header555.preheader

polly.loop_header555.preheader:                   ; preds = %polly.loop_header549, %middle.block1152
  %polly.indvar558.ph = phi i64 [ 0, %polly.loop_header549 ], [ %n.vec1158, %middle.block1152 ]
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555, %middle.block1152
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next553, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1029.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %Packed_MemRef_call1466 = bitcast i8* %malloccall465 to double*
  br label %polly.loop_header565

polly.loop_header555:                             ; preds = %polly.loop_header555.preheader, %polly.loop_header555
  %polly.indvar558 = phi i64 [ %polly.indvar_next559, %polly.loop_header555 ], [ %polly.indvar558.ph, %polly.loop_header555.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar558, 3
  %scevgep562 = getelementptr i8, i8* %scevgep561, i64 %152
  %scevgep562563 = bitcast i8* %scevgep562 to double*
  %_p_scalar_564 = load double, double* %scevgep562563, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_564, 1.200000e+00
  store double %p_mul.i, double* %scevgep562563, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next559, %polly.indvar552
  br i1 %exitcond1028.not, label %polly.loop_exit557, label %polly.loop_header555, !llvm.loop !91

polly.loop_header565:                             ; preds = %polly.loop_header565.preheader, %polly.loop_exit573
  %indvars.iv1024 = phi i64 [ 4, %polly.loop_header565.preheader ], [ %indvars.iv.next1025, %polly.loop_exit573 ]
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header565.preheader ], [ %indvars.iv.next1013, %polly.loop_exit573 ]
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_header565.preheader ], [ %indvars.iv.next1008, %polly.loop_exit573 ]
  %polly.indvar568 = phi i64 [ 0, %polly.loop_header565.preheader ], [ %polly.indvar_next569, %polly.loop_exit573 ]
  %153 = mul nsw i64 %polly.indvar568, -80
  %154 = mul nuw nsw i64 %polly.indvar568, 80
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit580
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, -80
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 80
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 4
  %exitcond1027.not = icmp eq i64 %polly.indvar_next569, 15
  br i1 %exitcond1027.not, label %polly.exiting464, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit580, %polly.loop_header565
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit580 ], [ %indvars.iv1012, %polly.loop_header565 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit580 ], [ %indvars.iv1007, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit580 ], [ 0, %polly.loop_header565 ]
  %155 = mul nuw nsw i64 %polly.indvar574, 20
  %156 = add nsw i64 %155, %153
  %157 = icmp sgt i64 %156, 0
  %158 = select i1 %157, i64 %156, i64 0
  %polly.loop_guard581 = icmp slt i64 %158, 80
  br i1 %polly.loop_guard581, label %polly.loop_header578.preheader, label %polly.loop_exit580

polly.loop_header578.preheader:                   ; preds = %polly.loop_header571
  %smax1011 = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %159 = add i64 %smax1011, %indvars.iv1014
  %160 = sub nsw i64 %154, %155
  %161 = add nuw nsw i64 %155, 20
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit616, %polly.loop_header571
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, 20
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -20
  %exitcond1026.not = icmp eq i64 %polly.indvar_next575, %indvars.iv1024
  br i1 %exitcond1026.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit616
  %indvars.iv1016 = phi i64 [ %159, %polly.loop_header578.preheader ], [ %indvars.iv.next1017, %polly.loop_exit616 ]
  %polly.indvar582 = phi i64 [ %158, %polly.loop_header578.preheader ], [ %polly.indvar_next583, %polly.loop_exit616 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 19)
  %162 = add nsw i64 %polly.indvar582, %160
  %polly.loop_guard5951066 = icmp sgt i64 %162, -1
  %163 = add nuw nsw i64 %polly.indvar582, %154
  %.not854 = icmp ult i64 %163, %161
  %polly.access.mul.call1608 = mul nsw i64 %163, 1000
  br i1 %polly.loop_guard5951066, label %polly.loop_header585.us, label %polly.loop_header578.split

polly.loop_header585.us:                          ; preds = %polly.loop_header578, %polly.merge604.us
  %polly.indvar588.us = phi i64 [ %polly.indvar_next589.us, %polly.merge604.us ], [ 0, %polly.loop_header578 ]
  %polly.access.mul.Packed_MemRef_call1466.us = mul nuw nsw i64 %polly.indvar588.us, 1200
  br label %polly.loop_header592.us

polly.loop_header592.us:                          ; preds = %polly.loop_header585.us, %polly.loop_header592.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_header592.us ], [ 0, %polly.loop_header585.us ]
  %164 = add nuw nsw i64 %polly.indvar596.us, %155
  %polly.access.mul.call1600.us = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1601.us = add nuw nsw i64 %polly.access.mul.call1600.us, %polly.indvar588.us
  %polly.access.call1602.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1601.us
  %polly.access.call1602.load.us = load double, double* %polly.access.call1602.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1466.us = add nuw nsw i64 %polly.indvar596.us, %polly.access.mul.Packed_MemRef_call1466.us
  %polly.access.Packed_MemRef_call1466.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.us
  store double %polly.access.call1602.load.us, double* %polly.access.Packed_MemRef_call1466.us, align 8
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar596.us, %smin1021
  br i1 %exitcond1019.not, label %polly.cond603.loopexit.us, label %polly.loop_header592.us

polly.then605.us:                                 ; preds = %polly.cond603.loopexit.us
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.indvar588.us, %polly.access.mul.call1608
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1466612.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1466.us, %162
  %polly.access.Packed_MemRef_call1466613.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466612.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1466613.us, align 8
  br label %polly.merge604.us

polly.merge604.us:                                ; preds = %polly.then605.us, %polly.cond603.loopexit.us
  %polly.indvar_next589.us = add nuw nsw i64 %polly.indvar588.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next589.us, 1000
  br i1 %exitcond1020.not, label %polly.loop_header614.preheader, label %polly.loop_header585.us

polly.cond603.loopexit.us:                        ; preds = %polly.loop_header592.us
  br i1 %.not854, label %polly.merge604.us, label %polly.then605.us

polly.loop_header578.split:                       ; preds = %polly.loop_header578
  br i1 %.not854, label %polly.loop_exit616, label %polly.loop_header585

polly.loop_exit616:                               ; preds = %polly.loop_exit623.loopexit.us, %polly.loop_header578.split, %polly.loop_header614.preheader
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %polly.loop_cond584 = icmp ult i64 %polly.indvar582, 79
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  br i1 %polly.loop_cond584, label %polly.loop_header578, label %polly.loop_exit580

polly.loop_header585:                             ; preds = %polly.loop_header578.split, %polly.loop_header585
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_header585 ], [ 0, %polly.loop_header578.split ]
  %polly.access.add.call1609 = add nuw nsw i64 %polly.indvar588, %polly.access.mul.call1608
  %polly.access.call1610 = getelementptr double, double* %polly.access.cast.call1651, i64 %polly.access.add.call1609
  %polly.access.call1610.load = load double, double* %polly.access.call1610, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1466611 = mul nuw nsw i64 %polly.indvar588, 1200
  %polly.access.add.Packed_MemRef_call1466612 = add nsw i64 %polly.access.mul.Packed_MemRef_call1466611, %162
  %polly.access.Packed_MemRef_call1466613 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466612
  store double %polly.access.call1610.load, double* %polly.access.Packed_MemRef_call1466613, align 8
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next589, 1000
  br i1 %exitcond1006.not, label %polly.loop_header614.preheader, label %polly.loop_header585

polly.loop_header614.preheader:                   ; preds = %polly.loop_header585, %polly.merge604.us
  %165 = mul i64 %163, 8000
  %166 = mul i64 %163, 9600
  br i1 %polly.loop_guard5951066, label %polly.loop_header614.us, label %polly.loop_exit616

polly.loop_header614.us:                          ; preds = %polly.loop_header614.preheader, %polly.loop_exit623.loopexit.us
  %polly.indvar617.us = phi i64 [ %polly.indvar_next618.us, %polly.loop_exit623.loopexit.us ], [ 0, %polly.loop_header614.preheader ]
  %167 = shl nuw nsw i64 %polly.indvar617.us, 3
  %scevgep632.us = getelementptr i8, i8* %call2, i64 %167
  %polly.access.mul.Packed_MemRef_call1466628.us = mul nuw nsw i64 %polly.indvar617.us, 1200
  %scevgep633.us = getelementptr i8, i8* %scevgep632.us, i64 %165
  %scevgep633634.us = bitcast i8* %scevgep633.us to double*
  %_p_scalar_635.us = load double, double* %scevgep633634.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1466641.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1466628.us, %162
  %polly.access.Packed_MemRef_call1466642.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466641.us
  %_p_scalar_643.us = load double, double* %polly.access.Packed_MemRef_call1466642.us, align 8
  br label %polly.loop_header621.us

polly.loop_header621.us:                          ; preds = %polly.loop_header621.us, %polly.loop_header614.us
  %polly.indvar625.us = phi i64 [ 0, %polly.loop_header614.us ], [ %polly.indvar_next626.us, %polly.loop_header621.us ]
  %168 = add nuw nsw i64 %polly.indvar625.us, %155
  %polly.access.add.Packed_MemRef_call1466629.us = add nuw nsw i64 %polly.indvar625.us, %polly.access.mul.Packed_MemRef_call1466628.us
  %polly.access.Packed_MemRef_call1466630.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466629.us
  %_p_scalar_631.us = load double, double* %polly.access.Packed_MemRef_call1466630.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_635.us, %_p_scalar_631.us
  %169 = mul nuw nsw i64 %168, 8000
  %scevgep637.us = getelementptr i8, i8* %scevgep632.us, i64 %169
  %scevgep637638.us = bitcast i8* %scevgep637.us to double*
  %_p_scalar_639.us = load double, double* %scevgep637638.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_643.us, %_p_scalar_639.us
  %170 = shl i64 %168, 3
  %171 = add i64 %170, %166
  %scevgep644.us = getelementptr i8, i8* %call, i64 %171
  %scevgep644645.us = bitcast i8* %scevgep644.us to double*
  %_p_scalar_646.us = load double, double* %scevgep644645.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_646.us
  store double %p_add42.i.us, double* %scevgep644645.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar625.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit623.loopexit.us, label %polly.loop_header621.us

polly.loop_exit623.loopexit.us:                   ; preds = %polly.loop_header621.us
  %polly.indvar_next618.us = add nuw nsw i64 %polly.indvar617.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next618.us, 1000
  br i1 %exitcond1023.not, label %polly.loop_exit616, label %polly.loop_header614.us

polly.loop_header773:                             ; preds = %entry, %polly.loop_exit781
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit781 ], [ 0, %entry ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %entry ]
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -1168)
  %172 = shl nsw i64 %polly.indvar776, 5
  %173 = add nsw i64 %smin1056, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1059.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond1059.not, label %polly.loop_header800, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %174 = mul nsw i64 %polly.indvar782, -32
  %smin = call i64 @llvm.smin.i64(i64 %174, i64 -1168)
  %175 = add nsw i64 %smin, 1200
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 -1168)
  %176 = shl nsw i64 %polly.indvar782, 5
  %177 = add nsw i64 %smin1052, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond1058.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %178 = add nuw nsw i64 %polly.indvar788, %172
  %179 = trunc i64 %178 to i32
  %180 = mul nuw nsw i64 %178, 9600
  %min.iters.check = icmp eq i64 %175, 0
  br i1 %min.iters.check, label %polly.loop_header791, label %vector.ph1094

vector.ph1094:                                    ; preds = %polly.loop_header785
  %broadcast.splatinsert1101 = insertelement <4 x i64> poison, i64 %176, i32 0
  %broadcast.splat1102 = shufflevector <4 x i64> %broadcast.splatinsert1101, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %vector.ph1094
  %index1095 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1094 ], [ %vec.ind.next1100, %vector.body1093 ]
  %181 = add nuw nsw <4 x i64> %vec.ind1099, %broadcast.splat1102
  %182 = trunc <4 x i64> %181 to <4 x i32>
  %183 = mul <4 x i32> %broadcast.splat1104, %182
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 1200, i32 1200, i32 1200, i32 1200>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %188 = extractelement <4 x i64> %181, i32 0
  %189 = shl i64 %188, 3
  %190 = add nuw nsw i64 %189, %180
  %191 = getelementptr i8, i8* %call, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %187, <4 x double>* %192, align 8, !alias.scope !94, !noalias !96
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %193 = icmp eq i64 %index.next1096, %175
  br i1 %193, label %polly.loop_exit793, label %vector.body1093, !llvm.loop !99

polly.loop_exit793:                               ; preds = %vector.body1093, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar788, %173
  br i1 %exitcond1057.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %194 = add nuw nsw i64 %polly.indvar794, %176
  %195 = trunc i64 %194 to i32
  %196 = mul i32 %195, %179
  %197 = add i32 %196, 3
  %198 = urem i32 %197, 1200
  %p_conv31.i = sitofp i32 %198 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %199 = shl i64 %194, 3
  %200 = add nuw nsw i64 %199, %180
  %scevgep797 = getelementptr i8, i8* %call, i64 %200
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div33.i, double* %scevgep797798, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar794, %177
  br i1 %exitcond1053.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !100

polly.loop_header800:                             ; preds = %polly.loop_exit781, %polly.loop_exit808
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit808 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar803 = phi i64 [ %polly.indvar_next804, %polly.loop_exit808 ], [ 0, %polly.loop_exit781 ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %201 = shl nsw i64 %polly.indvar803, 5
  %202 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header806

polly.loop_exit808:                               ; preds = %polly.loop_exit814
  %polly.indvar_next804 = add nuw nsw i64 %polly.indvar803, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next804, 38
  br i1 %exitcond1049.not, label %polly.loop_header826, label %polly.loop_header800

polly.loop_header806:                             ; preds = %polly.loop_exit814, %polly.loop_header800
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit814 ], [ 0, %polly.loop_header800 ]
  %polly.indvar809 = phi i64 [ %polly.indvar_next810, %polly.loop_exit814 ], [ 0, %polly.loop_header800 ]
  %203 = mul nsw i64 %polly.indvar809, -32
  %smin1108 = call i64 @llvm.smin.i64(i64 %203, i64 -968)
  %204 = add nsw i64 %smin1108, 1000
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 -968)
  %205 = shl nsw i64 %polly.indvar809, 5
  %206 = add nsw i64 %smin1042, 999
  br label %polly.loop_header812

polly.loop_exit814:                               ; preds = %polly.loop_exit820
  %polly.indvar_next810 = add nuw nsw i64 %polly.indvar809, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next810, 32
  br i1 %exitcond1048.not, label %polly.loop_exit808, label %polly.loop_header806

polly.loop_header812:                             ; preds = %polly.loop_exit820, %polly.loop_header806
  %polly.indvar815 = phi i64 [ 0, %polly.loop_header806 ], [ %polly.indvar_next816, %polly.loop_exit820 ]
  %207 = add nuw nsw i64 %polly.indvar815, %201
  %208 = trunc i64 %207 to i32
  %209 = mul nuw nsw i64 %207, 8000
  %min.iters.check1109 = icmp eq i64 %204, 0
  br i1 %min.iters.check1109, label %polly.loop_header818, label %vector.ph1110

vector.ph1110:                                    ; preds = %polly.loop_header812
  %broadcast.splatinsert1119 = insertelement <4 x i64> poison, i64 %205, i32 0
  %broadcast.splat1120 = shufflevector <4 x i64> %broadcast.splatinsert1119, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %208, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1114, %vector.body1107 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1110 ], [ %vec.ind.next1118, %vector.body1107 ]
  %210 = add nuw nsw <4 x i64> %vec.ind1117, %broadcast.splat1120
  %211 = trunc <4 x i64> %210 to <4 x i32>
  %212 = mul <4 x i32> %broadcast.splat1122, %211
  %213 = add <4 x i32> %212, <i32 2, i32 2, i32 2, i32 2>
  %214 = urem <4 x i32> %213, <i32 1000, i32 1000, i32 1000, i32 1000>
  %215 = sitofp <4 x i32> %214 to <4 x double>
  %216 = fmul fast <4 x double> %215, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %217 = extractelement <4 x i64> %210, i32 0
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %209
  %220 = getelementptr i8, i8* %call2, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %216, <4 x double>* %221, align 8, !alias.scope !98, !noalias !101
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %222 = icmp eq i64 %index.next1114, %204
  br i1 %222, label %polly.loop_exit820, label %vector.body1107, !llvm.loop !102

polly.loop_exit820:                               ; preds = %vector.body1107, %polly.loop_header818
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar815, %202
  br i1 %exitcond1047.not, label %polly.loop_exit814, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_header812, %polly.loop_header818
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_header818 ], [ 0, %polly.loop_header812 ]
  %223 = add nuw nsw i64 %polly.indvar821, %205
  %224 = trunc i64 %223 to i32
  %225 = mul i32 %224, %208
  %226 = add i32 %225, 2
  %227 = urem i32 %226, 1000
  %p_conv10.i = sitofp i32 %227 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %228 = shl i64 %223, 3
  %229 = add nuw nsw i64 %228, %209
  %scevgep824 = getelementptr i8, i8* %call2, i64 %229
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div12.i, double* %scevgep824825, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar821, %206
  br i1 %exitcond1043.not, label %polly.loop_exit820, label %polly.loop_header818, !llvm.loop !103

polly.loop_header826:                             ; preds = %polly.loop_exit808, %polly.loop_exit834
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit834 ], [ 0, %polly.loop_exit808 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_exit808 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -1168)
  %230 = shl nsw i64 %polly.indvar829, 5
  %231 = add nsw i64 %smin1036, 1199
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1039.not = icmp eq i64 %polly.indvar_next830, 38
  br i1 %exitcond1039.not, label %init_array.exit, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit840 ], [ 0, %polly.loop_header826 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_header826 ]
  %232 = mul nsw i64 %polly.indvar835, -32
  %smin1126 = call i64 @llvm.smin.i64(i64 %232, i64 -968)
  %233 = add nsw i64 %smin1126, 1000
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -968)
  %234 = shl nsw i64 %polly.indvar835, 5
  %235 = add nsw i64 %smin1032, 999
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next836, 32
  br i1 %exitcond1038.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %polly.indvar841 = phi i64 [ 0, %polly.loop_header832 ], [ %polly.indvar_next842, %polly.loop_exit846 ]
  %236 = add nuw nsw i64 %polly.indvar841, %230
  %237 = trunc i64 %236 to i32
  %238 = mul nuw nsw i64 %236, 8000
  %min.iters.check1127 = icmp eq i64 %233, 0
  br i1 %min.iters.check1127, label %polly.loop_header844, label %vector.ph1128

vector.ph1128:                                    ; preds = %polly.loop_header838
  %broadcast.splatinsert1137 = insertelement <4 x i64> poison, i64 %234, i32 0
  %broadcast.splat1138 = shufflevector <4 x i64> %broadcast.splatinsert1137, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1128
  %index1131 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1132, %vector.body1125 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1128 ], [ %vec.ind.next1136, %vector.body1125 ]
  %239 = add nuw nsw <4 x i64> %vec.ind1135, %broadcast.splat1138
  %240 = trunc <4 x i64> %239 to <4 x i32>
  %241 = mul <4 x i32> %broadcast.splat1140, %240
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 1200, i32 1200, i32 1200, i32 1200>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %246 = extractelement <4 x i64> %239, i32 0
  %247 = shl i64 %246, 3
  %248 = add nuw nsw i64 %247, %238
  %249 = getelementptr i8, i8* %call1, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %245, <4 x double>* %250, align 8, !alias.scope !97, !noalias !104
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %251 = icmp eq i64 %index.next1132, %233
  br i1 %251, label %polly.loop_exit846, label %vector.body1125, !llvm.loop !105

polly.loop_exit846:                               ; preds = %vector.body1125, %polly.loop_header844
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar841, %231
  br i1 %exitcond1037.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_header838, %polly.loop_header844
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_header844 ], [ 0, %polly.loop_header838 ]
  %252 = add nuw nsw i64 %polly.indvar847, %234
  %253 = trunc i64 %252 to i32
  %254 = mul i32 %253, %237
  %255 = add i32 %254, 1
  %256 = urem i32 %255, 1200
  %p_conv.i = sitofp i32 %256 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %257 = shl i64 %252, 3
  %258 = add nuw nsw i64 %257, %238
  %scevgep851 = getelementptr i8, i8* %call1, i64 %258
  %scevgep851852 = bitcast i8* %scevgep851 to double*
  store double %p_div.i, double* %scevgep851852, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar847, %235
  br i1 %exitcond1033.not, label %polly.loop_exit846, label %polly.loop_header844, !llvm.loop !106
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 20}
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
!48 = !{!"llvm.loop.tile.size", i32 80}
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
