; ModuleID = 'syr2k_exhaustive/mmp_all_XL_5077.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_5077.c"
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
  %call801 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1653 = bitcast i8* %call1 to double*
  %polly.access.call1662 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1662, %call2
  %polly.access.call2682 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2682, %call1
  %2 = or i1 %0, %1
  %polly.access.call702 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call702, %call2
  %4 = icmp ule i8* %polly.access.call2682, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call702, %call1
  %8 = icmp ule i8* %polly.access.call1662, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header775, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv7.i, i64 %index1083
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit836
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start464, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i, i64 %index1148
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting465
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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i52, i64 %index1171
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i91, i64 %index1197
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond983.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1206 = add i64 %indvar1205, 1
  br i1 %exitcond983.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond982.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond982.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv969 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next970, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %pexp.p_div_q = lshr i64 %polly.indvar202, 1
  %97 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar202
  %.inv = icmp ult i64 %97, 18
  %98 = mul nsw i64 %polly.indvar202, -96
  %99 = icmp slt i64 %98, -1104
  %100 = select i1 %99, i64 %98, i64 -1104
  %101 = add nsw i64 %100, 1199
  %102 = mul nuw nsw i64 %polly.indvar202, 96
  %.op = add nuw i64 %97, 2
  %103 = select i1 %.inv, i64 %.op, i64 19
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 96
  %exitcond981.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond981.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %polly.loop_exit213 ], [ %indvars.iv969, %polly.loop_header199 ]
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %104 = shl nsw i64 %polly.indvar208, 6
  %105 = add nsw i64 %104, %98
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  %polly.loop_guard.not = icmp sgt i64 %107, %101
  br i1 %polly.loop_guard.not, label %polly.loop_exit213, label %polly.loop_header211.preheader

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv967, i64 0)
  %108 = add i64 %smax, %indvars.iv971
  %109 = sub nsw i64 %102, %104
  %110 = add nuw nsw i64 %104, 64
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit244, %polly.loop_header205
  %polly.indvar_next209 = add nuw i64 %polly.indvar208, 1
  %indvars.iv.next968 = add i64 %indvars.iv967, 64
  %indvars.iv.next972 = add i64 %indvars.iv971, -64
  %exitcond980.not = icmp eq i64 %polly.indvar_next209, %103
  br i1 %exitcond980.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit244
  %indvars.iv973 = phi i64 [ %108, %polly.loop_header211.preheader ], [ %indvars.iv.next974, %polly.loop_exit244 ]
  %polly.indvar214 = phi i64 [ %107, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit244 ]
  %smin977 = call i64 @llvm.smin.i64(i64 %indvars.iv973, i64 63)
  %111 = add nsw i64 %polly.indvar214, %109
  %polly.loop_guard2271062 = icmp sgt i64 %111, -1
  %112 = add nuw nsw i64 %polly.indvar214, %102
  %.not = icmp ult i64 %112, %110
  %polly.access.mul.call1236 = mul nsw i64 %112, 1000
  br i1 %polly.loop_guard2271062, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %113 = add nuw nsw i64 %polly.indvar228.us, %104
  %polly.access.mul.call1232.us = mul nsw i64 %113, 1000
  %polly.access.add.call1233.us = add nuw nsw i64 %polly.access.mul.call1232.us, %polly.indvar220.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond975.not = icmp eq i64 %polly.indvar228.us, %smin977
  br i1 %exitcond975.not, label %polly.cond.loopexit.us, label %polly.loop_header224.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1236
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1240.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %111
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond976.not, label %polly.loop_header242.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header224.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %.not, label %polly.loop_exit244, label %polly.loop_header217

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header211.split, %polly.loop_header242.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216.not.not = icmp ult i64 %polly.indvar214, %101
  %indvars.iv.next974 = add i64 %indvars.iv973, 1
  br i1 %polly.loop_cond216.not.not, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1237 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1236
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.Packed_MemRef_call1240 = add nsw i64 %polly.access.mul.Packed_MemRef_call1239, %111
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header217

polly.loop_header242.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %114 = mul i64 %112, 8000
  %115 = mul i64 %112, 9600
  br i1 %polly.loop_guard2271062, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %116 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep260.us = getelementptr i8, i8* %call2, i64 %116
  %polly.access.mul.Packed_MemRef_call1256.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  %scevgep261.us = getelementptr i8, i8* %scevgep260.us, i64 %114
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1269.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.us, %111
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header249.us, %polly.loop_header242.us
  %polly.indvar253.us = phi i64 [ 0, %polly.loop_header242.us ], [ %polly.indvar_next254.us, %polly.loop_header249.us ]
  %117 = add nuw nsw i64 %polly.indvar253.us, %104
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1256.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_263.us, %_p_scalar_259.us
  %118 = mul i64 %117, 8000
  %scevgep265.us = getelementptr i8, i8* %scevgep260.us, i64 %118
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_271.us, %_p_scalar_267.us
  %119 = shl i64 %117, 3
  %120 = add i64 %119, %115
  %scevgep272.us = getelementptr i8, i8* %call, i64 %120
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_274.us
  store double %p_add42.i118.us, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond978.not = icmp eq i64 %polly.indvar253.us, %smin977
  br i1 %exitcond978.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_header249.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next246.us, 1000
  br i1 %exitcond979.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.start277:                                   ; preds = %kernel_syr2k.exit
  %malloccall279 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header363

polly.exiting278:                                 ; preds = %polly.loop_exit388
  tail call void @free(i8* %malloccall279)
  br label %kernel_syr2k.exit90

polly.loop_header363:                             ; preds = %polly.loop_exit371, %polly.start277
  %indvar1179 = phi i64 [ %indvar.next1180, %polly.loop_exit371 ], [ 0, %polly.start277 ]
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 1, %polly.start277 ]
  %121 = add i64 %indvar1179, 1
  %122 = mul nuw nsw i64 %polly.indvar366, 9600
  %scevgep375 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1181 = icmp ult i64 %121, 4
  br i1 %min.iters.check1181, label %polly.loop_header369.preheader, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header363
  %n.vec1184 = and i64 %121, -4
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1178 ]
  %123 = shl nuw nsw i64 %index1185, 3
  %124 = getelementptr i8, i8* %scevgep375, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1189 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %126 = fmul fast <4 x double> %wide.load1189, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !74, !noalias !76
  %index.next1186 = add i64 %index1185, 4
  %128 = icmp eq i64 %index.next1186, %n.vec1184
  br i1 %128, label %middle.block1176, label %vector.body1178, !llvm.loop !80

middle.block1176:                                 ; preds = %vector.body1178
  %cmp.n1188 = icmp eq i64 %121, %n.vec1184
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
  %129 = shl nuw nsw i64 %polly.indvar372, 3
  %scevgep376 = getelementptr i8, i8* %scevgep375, i64 %129
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_378, 1.200000e+00
  store double %p_mul.i57, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next373, %polly.indvar366
  br i1 %exitcond1004.not, label %polly.loop_exit371, label %polly.loop_header369, !llvm.loop !81

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_exit388
  %indvars.iv990 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next991, %polly.loop_exit388 ]
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next986, %polly.loop_exit388 ]
  %polly.indvar382 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %polly.indvar_next383, %polly.loop_exit388 ]
  %pexp.p_div_q385 = lshr i64 %polly.indvar382, 1
  %130 = add nuw nsw i64 %pexp.p_div_q385, %polly.indvar382
  %.inv855 = icmp ult i64 %130, 18
  %131 = mul nsw i64 %polly.indvar382, -96
  %132 = icmp slt i64 %131, -1104
  %133 = select i1 %132, i64 %131, i64 -1104
  %134 = add nsw i64 %133, 1199
  %135 = mul nuw nsw i64 %polly.indvar382, 96
  %.op1063 = add nuw i64 %130, 2
  %136 = select i1 %.inv855, i64 %.op1063, i64 19
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit395
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, -96
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 96
  %exitcond1003.not = icmp eq i64 %polly.indvar_next383, 13
  br i1 %exitcond1003.not, label %polly.exiting278, label %polly.loop_header379

polly.loop_header386:                             ; preds = %polly.loop_exit395, %polly.loop_header379
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit395 ], [ %indvars.iv990, %polly.loop_header379 ]
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit395 ], [ %indvars.iv985, %polly.loop_header379 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit395 ], [ 0, %polly.loop_header379 ]
  %137 = shl nsw i64 %polly.indvar389, 6
  %138 = add nsw i64 %137, %131
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %polly.loop_guard396.not = icmp sgt i64 %140, %134
  br i1 %polly.loop_guard396.not, label %polly.loop_exit395, label %polly.loop_header393.preheader

polly.loop_header393.preheader:                   ; preds = %polly.loop_header386
  %smax989 = call i64 @llvm.smax.i64(i64 %indvars.iv987, i64 0)
  %141 = add i64 %smax989, %indvars.iv992
  %142 = sub nsw i64 %135, %137
  %143 = add nuw nsw i64 %137, 64
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit431, %polly.loop_header386
  %polly.indvar_next390 = add nuw i64 %polly.indvar389, 1
  %indvars.iv.next988 = add i64 %indvars.iv987, 64
  %indvars.iv.next993 = add i64 %indvars.iv992, -64
  %exitcond1002.not = icmp eq i64 %polly.indvar_next390, %136
  br i1 %exitcond1002.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header393:                             ; preds = %polly.loop_header393.preheader, %polly.loop_exit431
  %indvars.iv994 = phi i64 [ %141, %polly.loop_header393.preheader ], [ %indvars.iv.next995, %polly.loop_exit431 ]
  %polly.indvar397 = phi i64 [ %140, %polly.loop_header393.preheader ], [ %polly.indvar_next398, %polly.loop_exit431 ]
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv994, i64 63)
  %144 = add nsw i64 %polly.indvar397, %142
  %polly.loop_guard4101064 = icmp sgt i64 %144, -1
  %145 = add nuw nsw i64 %polly.indvar397, %135
  %.not856 = icmp ult i64 %145, %143
  %polly.access.mul.call1423 = mul nsw i64 %145, 1000
  br i1 %polly.loop_guard4101064, label %polly.loop_header400.us, label %polly.loop_header393.split

polly.loop_header400.us:                          ; preds = %polly.loop_header393, %polly.merge419.us
  %polly.indvar403.us = phi i64 [ %polly.indvar_next404.us, %polly.merge419.us ], [ 0, %polly.loop_header393 ]
  %polly.access.mul.Packed_MemRef_call1280.us = mul nuw nsw i64 %polly.indvar403.us, 1200
  br label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header400.us, %polly.loop_header407.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_header407.us ], [ 0, %polly.loop_header400.us ]
  %146 = add nuw nsw i64 %polly.indvar411.us, %137
  %polly.access.mul.call1415.us = mul nsw i64 %146, 1000
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar403.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar411.us, %polly.access.mul.Packed_MemRef_call1280.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar411.us, %smin999
  br i1 %exitcond997.not, label %polly.cond418.loopexit.us, label %polly.loop_header407.us

polly.then420.us:                                 ; preds = %polly.cond418.loopexit.us
  %polly.access.add.call1424.us = add nuw nsw i64 %polly.indvar403.us, %polly.access.mul.call1423
  %polly.access.call1425.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1424.us
  %polly.access.call1425.load.us = load double, double* %polly.access.call1425.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280427.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280.us, %144
  %polly.access.Packed_MemRef_call1280428.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280427.us
  store double %polly.access.call1425.load.us, double* %polly.access.Packed_MemRef_call1280428.us, align 8
  br label %polly.merge419.us

polly.merge419.us:                                ; preds = %polly.then420.us, %polly.cond418.loopexit.us
  %polly.indvar_next404.us = add nuw nsw i64 %polly.indvar403.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next404.us, 1000
  br i1 %exitcond998.not, label %polly.loop_header429.preheader, label %polly.loop_header400.us

polly.cond418.loopexit.us:                        ; preds = %polly.loop_header407.us
  br i1 %.not856, label %polly.merge419.us, label %polly.then420.us

polly.loop_header393.split:                       ; preds = %polly.loop_header393
  br i1 %.not856, label %polly.loop_exit431, label %polly.loop_header400

polly.loop_exit431:                               ; preds = %polly.loop_exit438.loopexit.us, %polly.loop_header393.split, %polly.loop_header429.preheader
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %polly.loop_cond399.not.not = icmp ult i64 %polly.indvar397, %134
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  br i1 %polly.loop_cond399.not.not, label %polly.loop_header393, label %polly.loop_exit395

polly.loop_header400:                             ; preds = %polly.loop_header393.split, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ 0, %polly.loop_header393.split ]
  %polly.access.add.call1424 = add nuw nsw i64 %polly.indvar403, %polly.access.mul.call1423
  %polly.access.call1425 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1424
  %polly.access.call1425.load = load double, double* %polly.access.call1425, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1280426 = mul nuw nsw i64 %polly.indvar403, 1200
  %polly.access.add.Packed_MemRef_call1280427 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280426, %144
  %polly.access.Packed_MemRef_call1280428 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280427
  store double %polly.access.call1425.load, double* %polly.access.Packed_MemRef_call1280428, align 8
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next404, 1000
  br i1 %exitcond984.not, label %polly.loop_header429.preheader, label %polly.loop_header400

polly.loop_header429.preheader:                   ; preds = %polly.loop_header400, %polly.merge419.us
  %147 = mul i64 %145, 8000
  %148 = mul i64 %145, 9600
  br i1 %polly.loop_guard4101064, label %polly.loop_header429.us, label %polly.loop_exit431

polly.loop_header429.us:                          ; preds = %polly.loop_header429.preheader, %polly.loop_exit438.loopexit.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.loop_exit438.loopexit.us ], [ 0, %polly.loop_header429.preheader ]
  %149 = shl nuw nsw i64 %polly.indvar432.us, 3
  %scevgep447.us = getelementptr i8, i8* %call2, i64 %149
  %polly.access.mul.Packed_MemRef_call1280443.us = mul nuw nsw i64 %polly.indvar432.us, 1200
  %scevgep448.us = getelementptr i8, i8* %scevgep447.us, i64 %147
  %scevgep448449.us = bitcast i8* %scevgep448.us to double*
  %_p_scalar_450.us = load double, double* %scevgep448449.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1280456.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280443.us, %144
  %polly.access.Packed_MemRef_call1280457.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280456.us
  %_p_scalar_458.us = load double, double* %polly.access.Packed_MemRef_call1280457.us, align 8
  br label %polly.loop_header436.us

polly.loop_header436.us:                          ; preds = %polly.loop_header436.us, %polly.loop_header429.us
  %polly.indvar440.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next441.us, %polly.loop_header436.us ]
  %150 = add nuw nsw i64 %polly.indvar440.us, %137
  %polly.access.add.Packed_MemRef_call1280444.us = add nuw nsw i64 %polly.indvar440.us, %polly.access.mul.Packed_MemRef_call1280443.us
  %polly.access.Packed_MemRef_call1280445.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280444.us
  %_p_scalar_446.us = load double, double* %polly.access.Packed_MemRef_call1280445.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_450.us, %_p_scalar_446.us
  %151 = mul i64 %150, 8000
  %scevgep452.us = getelementptr i8, i8* %scevgep447.us, i64 %151
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_458.us, %_p_scalar_454.us
  %152 = shl i64 %150, 3
  %153 = add i64 %152, %148
  %scevgep459.us = getelementptr i8, i8* %call, i64 %153
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_461.us
  store double %p_add42.i79.us, double* %scevgep459460.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next441.us = add nuw nsw i64 %polly.indvar440.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar440.us, %smin999
  br i1 %exitcond1000.not, label %polly.loop_exit438.loopexit.us, label %polly.loop_header436.us

polly.loop_exit438.loopexit.us:                   ; preds = %polly.loop_header436.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next433.us, 1000
  br i1 %exitcond1001.not, label %polly.loop_exit431, label %polly.loop_header429.us

polly.start464:                                   ; preds = %init_array.exit
  %malloccall466 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header550

polly.exiting465:                                 ; preds = %polly.loop_exit575
  tail call void @free(i8* %malloccall466)
  br label %kernel_syr2k.exit

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.start464
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit558 ], [ 0, %polly.start464 ]
  %polly.indvar553 = phi i64 [ %polly.indvar_next554, %polly.loop_exit558 ], [ 1, %polly.start464 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar553, 9600
  %scevgep562 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1155 = icmp ult i64 %154, 4
  br i1 %min.iters.check1155, label %polly.loop_header556.preheader, label %vector.ph1156

vector.ph1156:                                    ; preds = %polly.loop_header550
  %n.vec1158 = and i64 %154, -4
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1160, %vector.body1154 ]
  %156 = shl nuw nsw i64 %index1159, 3
  %157 = getelementptr i8, i8* %scevgep562, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1163 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %159 = fmul fast <4 x double> %wide.load1163, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !84, !noalias !86
  %index.next1160 = add i64 %index1159, 4
  %161 = icmp eq i64 %index.next1160, %n.vec1158
  br i1 %161, label %middle.block1152, label %vector.body1154, !llvm.loop !90

middle.block1152:                                 ; preds = %vector.body1154
  %cmp.n1162 = icmp eq i64 %154, %n.vec1158
  br i1 %cmp.n1162, label %polly.loop_exit558, label %polly.loop_header556.preheader

polly.loop_header556.preheader:                   ; preds = %polly.loop_header550, %middle.block1152
  %polly.indvar559.ph = phi i64 [ 0, %polly.loop_header550 ], [ %n.vec1158, %middle.block1152 ]
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556, %middle.block1152
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next554, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1027.not, label %polly.loop_header566.preheader, label %polly.loop_header550

polly.loop_header566.preheader:                   ; preds = %polly.loop_exit558
  %Packed_MemRef_call1467 = bitcast i8* %malloccall466 to double*
  br label %polly.loop_header566

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_header556
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_header556 ], [ %polly.indvar559.ph, %polly.loop_header556.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar559, 3
  %scevgep563 = getelementptr i8, i8* %scevgep562, i64 %162
  %scevgep563564 = bitcast i8* %scevgep563 to double*
  %_p_scalar_565 = load double, double* %scevgep563564, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_565, 1.200000e+00
  store double %p_mul.i, double* %scevgep563564, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next560, %polly.indvar553
  br i1 %exitcond1026.not, label %polly.loop_exit558, label %polly.loop_header556, !llvm.loop !91

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_exit575
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %indvars.iv.next1013, %polly.loop_exit575 ]
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %indvars.iv.next1008, %polly.loop_exit575 ]
  %polly.indvar569 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %polly.indvar_next570, %polly.loop_exit575 ]
  %pexp.p_div_q572 = lshr i64 %polly.indvar569, 1
  %163 = add nuw nsw i64 %pexp.p_div_q572, %polly.indvar569
  %.inv857 = icmp ult i64 %163, 18
  %164 = mul nsw i64 %polly.indvar569, -96
  %165 = icmp slt i64 %164, -1104
  %166 = select i1 %165, i64 %164, i64 -1104
  %167 = add nsw i64 %166, 1199
  %168 = mul nuw nsw i64 %polly.indvar569, 96
  %.op1065 = add nuw i64 %163, 2
  %169 = select i1 %.inv857, i64 %.op1065, i64 19
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, -96
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 96
  %exitcond1025.not = icmp eq i64 %polly.indvar_next570, 13
  br i1 %exitcond1025.not, label %polly.exiting465, label %polly.loop_header566

polly.loop_header573:                             ; preds = %polly.loop_exit582, %polly.loop_header566
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit582 ], [ %indvars.iv1012, %polly.loop_header566 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit582 ], [ %indvars.iv1007, %polly.loop_header566 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ 0, %polly.loop_header566 ]
  %170 = shl nsw i64 %polly.indvar576, 6
  %171 = add nsw i64 %170, %164
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %172, i64 %171, i64 0
  %polly.loop_guard583.not = icmp sgt i64 %173, %167
  br i1 %polly.loop_guard583.not, label %polly.loop_exit582, label %polly.loop_header580.preheader

polly.loop_header580.preheader:                   ; preds = %polly.loop_header573
  %smax1011 = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %174 = add i64 %smax1011, %indvars.iv1014
  %175 = sub nsw i64 %168, %170
  %176 = add nuw nsw i64 %170, 64
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit618, %polly.loop_header573
  %polly.indvar_next577 = add nuw i64 %polly.indvar576, 1
  %indvars.iv.next1010 = add i64 %indvars.iv1009, 64
  %indvars.iv.next1015 = add i64 %indvars.iv1014, -64
  %exitcond1024.not = icmp eq i64 %polly.indvar_next577, %169
  br i1 %exitcond1024.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header580:                             ; preds = %polly.loop_header580.preheader, %polly.loop_exit618
  %indvars.iv1016 = phi i64 [ %174, %polly.loop_header580.preheader ], [ %indvars.iv.next1017, %polly.loop_exit618 ]
  %polly.indvar584 = phi i64 [ %173, %polly.loop_header580.preheader ], [ %polly.indvar_next585, %polly.loop_exit618 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 63)
  %177 = add nsw i64 %polly.indvar584, %175
  %polly.loop_guard5971066 = icmp sgt i64 %177, -1
  %178 = add nuw nsw i64 %polly.indvar584, %168
  %.not858 = icmp ult i64 %178, %176
  %polly.access.mul.call1610 = mul nsw i64 %178, 1000
  br i1 %polly.loop_guard5971066, label %polly.loop_header587.us, label %polly.loop_header580.split

polly.loop_header587.us:                          ; preds = %polly.loop_header580, %polly.merge606.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.merge606.us ], [ 0, %polly.loop_header580 ]
  %polly.access.mul.Packed_MemRef_call1467.us = mul nuw nsw i64 %polly.indvar590.us, 1200
  br label %polly.loop_header594.us

polly.loop_header594.us:                          ; preds = %polly.loop_header587.us, %polly.loop_header594.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header594.us ], [ 0, %polly.loop_header587.us ]
  %179 = add nuw nsw i64 %polly.indvar598.us, %170
  %polly.access.mul.call1602.us = mul nsw i64 %179, 1000
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.access.mul.call1602.us, %polly.indvar590.us
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1467.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call1467.us
  %polly.access.Packed_MemRef_call1467.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1467.us, align 8
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar598.us, %smin1021
  br i1 %exitcond1019.not, label %polly.cond605.loopexit.us, label %polly.loop_header594.us

polly.then607.us:                                 ; preds = %polly.cond605.loopexit.us
  %polly.access.add.call1611.us = add nuw nsw i64 %polly.indvar590.us, %polly.access.mul.call1610
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1467614.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1467.us, %177
  %polly.access.Packed_MemRef_call1467615.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467614.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1467615.us, align 8
  br label %polly.merge606.us

polly.merge606.us:                                ; preds = %polly.then607.us, %polly.cond605.loopexit.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next591.us, 1000
  br i1 %exitcond1020.not, label %polly.loop_header616.preheader, label %polly.loop_header587.us

polly.cond605.loopexit.us:                        ; preds = %polly.loop_header594.us
  br i1 %.not858, label %polly.merge606.us, label %polly.then607.us

polly.loop_header580.split:                       ; preds = %polly.loop_header580
  br i1 %.not858, label %polly.loop_exit618, label %polly.loop_header587

polly.loop_exit618:                               ; preds = %polly.loop_exit625.loopexit.us, %polly.loop_header580.split, %polly.loop_header616.preheader
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586.not.not = icmp ult i64 %polly.indvar584, %167
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  br i1 %polly.loop_cond586.not.not, label %polly.loop_header580, label %polly.loop_exit582

polly.loop_header587:                             ; preds = %polly.loop_header580.split, %polly.loop_header587
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_header587 ], [ 0, %polly.loop_header580.split ]
  %polly.access.add.call1611 = add nuw nsw i64 %polly.indvar590, %polly.access.mul.call1610
  %polly.access.call1612 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1611
  %polly.access.call1612.load = load double, double* %polly.access.call1612, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1467613 = mul nuw nsw i64 %polly.indvar590, 1200
  %polly.access.add.Packed_MemRef_call1467614 = add nsw i64 %polly.access.mul.Packed_MemRef_call1467613, %177
  %polly.access.Packed_MemRef_call1467615 = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467614
  store double %polly.access.call1612.load, double* %polly.access.Packed_MemRef_call1467615, align 8
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next591, 1000
  br i1 %exitcond1006.not, label %polly.loop_header616.preheader, label %polly.loop_header587

polly.loop_header616.preheader:                   ; preds = %polly.loop_header587, %polly.merge606.us
  %180 = mul i64 %178, 8000
  %181 = mul i64 %178, 9600
  br i1 %polly.loop_guard5971066, label %polly.loop_header616.us, label %polly.loop_exit618

polly.loop_header616.us:                          ; preds = %polly.loop_header616.preheader, %polly.loop_exit625.loopexit.us
  %polly.indvar619.us = phi i64 [ %polly.indvar_next620.us, %polly.loop_exit625.loopexit.us ], [ 0, %polly.loop_header616.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar619.us, 3
  %scevgep634.us = getelementptr i8, i8* %call2, i64 %182
  %polly.access.mul.Packed_MemRef_call1467630.us = mul nuw nsw i64 %polly.indvar619.us, 1200
  %scevgep635.us = getelementptr i8, i8* %scevgep634.us, i64 %180
  %scevgep635636.us = bitcast i8* %scevgep635.us to double*
  %_p_scalar_637.us = load double, double* %scevgep635636.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1467643.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1467630.us, %177
  %polly.access.Packed_MemRef_call1467644.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467643.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1467644.us, align 8
  br label %polly.loop_header623.us

polly.loop_header623.us:                          ; preds = %polly.loop_header623.us, %polly.loop_header616.us
  %polly.indvar627.us = phi i64 [ 0, %polly.loop_header616.us ], [ %polly.indvar_next628.us, %polly.loop_header623.us ]
  %183 = add nuw nsw i64 %polly.indvar627.us, %170
  %polly.access.add.Packed_MemRef_call1467631.us = add nuw nsw i64 %polly.indvar627.us, %polly.access.mul.Packed_MemRef_call1467630.us
  %polly.access.Packed_MemRef_call1467632.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467631.us
  %_p_scalar_633.us = load double, double* %polly.access.Packed_MemRef_call1467632.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_637.us, %_p_scalar_633.us
  %184 = mul i64 %183, 8000
  %scevgep639.us = getelementptr i8, i8* %scevgep634.us, i64 %184
  %scevgep639640.us = bitcast i8* %scevgep639.us to double*
  %_p_scalar_641.us = load double, double* %scevgep639640.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_645.us, %_p_scalar_641.us
  %185 = shl i64 %183, 3
  %186 = add i64 %185, %181
  %scevgep646.us = getelementptr i8, i8* %call, i64 %186
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_648.us
  store double %p_add42.i.us, double* %scevgep646647.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next628.us = add nuw nsw i64 %polly.indvar627.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar627.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit625.loopexit.us, label %polly.loop_header623.us

polly.loop_exit625.loopexit.us:                   ; preds = %polly.loop_header623.us
  %polly.indvar_next620.us = add nuw nsw i64 %polly.indvar619.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next620.us, 1000
  br i1 %exitcond1023.not, label %polly.loop_exit618, label %polly.loop_header616.us

polly.loop_header775:                             ; preds = %entry, %polly.loop_exit783
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit783 ], [ 0, %entry ]
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %entry ]
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 -1168)
  %187 = shl nsw i64 %polly.indvar778, 5
  %188 = add nsw i64 %smin1054, 1199
  br label %polly.loop_header781

polly.loop_exit783:                               ; preds = %polly.loop_exit789
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next779, 38
  br i1 %exitcond1057.not, label %polly.loop_header802, label %polly.loop_header775

polly.loop_header781:                             ; preds = %polly.loop_exit789, %polly.loop_header775
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit789 ], [ 0, %polly.loop_header775 ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %polly.loop_header775 ]
  %189 = mul nsw i64 %polly.indvar784, -32
  %smin = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin, 1200
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %191 = shl nsw i64 %polly.indvar784, 5
  %192 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond1056.not, label %polly.loop_exit783, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %polly.indvar790 = phi i64 [ 0, %polly.loop_header781 ], [ %polly.indvar_next791, %polly.loop_exit795 ]
  %193 = add nuw nsw i64 %polly.indvar790, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header793, label %vector.ph1094

vector.ph1094:                                    ; preds = %polly.loop_header787
  %broadcast.splatinsert1101 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat1102 = shufflevector <4 x i64> %broadcast.splatinsert1101, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %vector.ph1094
  %index1095 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1094 ], [ %vec.ind.next1100, %vector.body1093 ]
  %196 = add nuw nsw <4 x i64> %vec.ind1099, %broadcast.splat1102
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat1104, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !94, !noalias !96
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next1096, %190
  br i1 %208, label %polly.loop_exit795, label %vector.body1093, !llvm.loop !99

polly.loop_exit795:                               ; preds = %vector.body1093, %polly.loop_header793
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar790, %188
  br i1 %exitcond1055.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_header787, %polly.loop_header793
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_header793 ], [ 0, %polly.loop_header787 ]
  %209 = add nuw nsw i64 %polly.indvar796, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep799 = getelementptr i8, i8* %call, i64 %215
  %scevgep799800 = bitcast i8* %scevgep799 to double*
  store double %p_div33.i, double* %scevgep799800, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar796, %192
  br i1 %exitcond1051.not, label %polly.loop_exit795, label %polly.loop_header793, !llvm.loop !100

polly.loop_header802:                             ; preds = %polly.loop_exit783, %polly.loop_exit810
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit810 ], [ 0, %polly.loop_exit783 ]
  %polly.indvar805 = phi i64 [ %polly.indvar_next806, %polly.loop_exit810 ], [ 0, %polly.loop_exit783 ]
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 -1168)
  %216 = shl nsw i64 %polly.indvar805, 5
  %217 = add nsw i64 %smin1044, 1199
  br label %polly.loop_header808

polly.loop_exit810:                               ; preds = %polly.loop_exit816
  %polly.indvar_next806 = add nuw nsw i64 %polly.indvar805, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next806, 38
  br i1 %exitcond1047.not, label %polly.loop_header828, label %polly.loop_header802

polly.loop_header808:                             ; preds = %polly.loop_exit816, %polly.loop_header802
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit816 ], [ 0, %polly.loop_header802 ]
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_header802 ]
  %218 = mul nsw i64 %polly.indvar811, -32
  %smin1108 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin1108, 1000
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 -968)
  %220 = shl nsw i64 %polly.indvar811, 5
  %221 = add nsw i64 %smin1040, 999
  br label %polly.loop_header814

polly.loop_exit816:                               ; preds = %polly.loop_exit822
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %exitcond1046.not = icmp eq i64 %polly.indvar_next812, 32
  br i1 %exitcond1046.not, label %polly.loop_exit810, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_exit822, %polly.loop_header808
  %polly.indvar817 = phi i64 [ 0, %polly.loop_header808 ], [ %polly.indvar_next818, %polly.loop_exit822 ]
  %222 = add nuw nsw i64 %polly.indvar817, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check1109 = icmp eq i64 %219, 0
  br i1 %min.iters.check1109, label %polly.loop_header820, label %vector.ph1110

vector.ph1110:                                    ; preds = %polly.loop_header814
  %broadcast.splatinsert1119 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat1120 = shufflevector <4 x i64> %broadcast.splatinsert1119, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1114, %vector.body1107 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1110 ], [ %vec.ind.next1118, %vector.body1107 ]
  %225 = add nuw nsw <4 x i64> %vec.ind1117, %broadcast.splat1120
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat1122, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !98, !noalias !101
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next1114, %219
  br i1 %237, label %polly.loop_exit822, label %vector.body1107, !llvm.loop !102

polly.loop_exit822:                               ; preds = %vector.body1107, %polly.loop_header820
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar817, %217
  br i1 %exitcond1045.not, label %polly.loop_exit816, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_header814, %polly.loop_header820
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_header820 ], [ 0, %polly.loop_header814 ]
  %238 = add nuw nsw i64 %polly.indvar823, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep826 = getelementptr i8, i8* %call2, i64 %244
  %scevgep826827 = bitcast i8* %scevgep826 to double*
  store double %p_div12.i, double* %scevgep826827, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar823, %221
  br i1 %exitcond1041.not, label %polly.loop_exit822, label %polly.loop_header820, !llvm.loop !103

polly.loop_header828:                             ; preds = %polly.loop_exit810, %polly.loop_exit836
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %polly.loop_exit836 ], [ 0, %polly.loop_exit810 ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_exit810 ]
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 -1168)
  %245 = shl nsw i64 %polly.indvar831, 5
  %246 = add nsw i64 %smin1034, 1199
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -32
  %exitcond1037.not = icmp eq i64 %polly.indvar_next832, 38
  br i1 %exitcond1037.not, label %init_array.exit, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %247 = mul nsw i64 %polly.indvar837, -32
  %smin1126 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin1126, 1000
  %smin1030 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 -968)
  %249 = shl nsw i64 %polly.indvar837, 5
  %250 = add nsw i64 %smin1030, 999
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -32
  %exitcond1036.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond1036.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %polly.indvar843 = phi i64 [ 0, %polly.loop_header834 ], [ %polly.indvar_next844, %polly.loop_exit848 ]
  %251 = add nuw nsw i64 %polly.indvar843, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check1127 = icmp eq i64 %248, 0
  br i1 %min.iters.check1127, label %polly.loop_header846, label %vector.ph1128

vector.ph1128:                                    ; preds = %polly.loop_header840
  %broadcast.splatinsert1137 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat1138 = shufflevector <4 x i64> %broadcast.splatinsert1137, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1128
  %index1131 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1132, %vector.body1125 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1128 ], [ %vec.ind.next1136, %vector.body1125 ]
  %254 = add nuw nsw <4 x i64> %vec.ind1135, %broadcast.splat1138
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1140, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !97, !noalias !104
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next1132, %248
  br i1 %266, label %polly.loop_exit848, label %vector.body1125, !llvm.loop !105

polly.loop_exit848:                               ; preds = %vector.body1125, %polly.loop_header846
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar843, %246
  br i1 %exitcond1035.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_header840, %polly.loop_header846
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_header846 ], [ 0, %polly.loop_header840 ]
  %267 = add nuw nsw i64 %polly.indvar849, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep853 = getelementptr i8, i8* %call1, i64 %273
  %scevgep853854 = bitcast i8* %scevgep853 to double*
  store double %p_div.i, double* %scevgep853854, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar849, %250
  br i1 %exitcond1031.not, label %polly.loop_exit848, label %polly.loop_header846, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 64}
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
!48 = !{!"llvm.loop.tile.size", i32 96}
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
