; ModuleID = 'syr2k_exhaustive/mmp_all_SM_56.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_56.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #8
  %call874 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1726 = bitcast i8* %call1 to double*
  %polly.access.call1735 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2736 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1735, %call2
  %polly.access.call2755 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2755, %call1
  %2 = or i1 %0, %1
  %polly.access.call775 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call775, %call2
  %4 = icmp ule i8* %polly.access.call2755, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call775, %call1
  %8 = icmp ule i8* %polly.access.call1735, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header848, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1064 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1063 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1062 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1061 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1061, %scevgep1064
  %bound1 = icmp ult i8* %scevgep1063, %scevgep1062
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
  br i1 %exitcond18.not.i, label %vector.ph1068, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1068:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1075 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1076 = shufflevector <4 x i64> %broadcast.splatinsert1075, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1068
  %index1069 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1073 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1068 ], [ %vec.ind.next1074, %vector.body1067 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1073, %broadcast.splat1076
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv7.i, i64 %index1069
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1074 = add <4 x i64> %vec.ind1073, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1070, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1067, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1067
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1068, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit909
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start514, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1131 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1131, label %for.body3.i46.preheader1282, label %vector.ph1132

vector.ph1132:                                    ; preds = %for.body3.i46.preheader
  %n.vec1134 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1132
  %index1135 = phi i64 [ 0, %vector.ph1132 ], [ %index.next1136, %vector.body1130 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %index1135
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1136 = add i64 %index1135, 4
  %46 = icmp eq i64 %index.next1136, %n.vec1134
  br i1 %46, label %middle.block1128, label %vector.body1130, !llvm.loop !18

middle.block1128:                                 ; preds = %vector.body1130
  %cmp.n1138 = icmp eq i64 %indvars.iv21.i, %n.vec1134
  br i1 %cmp.n1138, label %for.inc6.i, label %for.body3.i46.preheader1282

for.body3.i46.preheader1282:                      ; preds = %for.body3.i46.preheader, %middle.block1128
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1134, %middle.block1128 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1282, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1282 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1128, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting515
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1176 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1176, label %for.body3.i60.preheader1280, label %vector.ph1177

vector.ph1177:                                    ; preds = %for.body3.i60.preheader
  %n.vec1179 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1175 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %index1180
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1184 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1184, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1181 = add i64 %index1180, 4
  %57 = icmp eq i64 %index.next1181, %n.vec1179
  br i1 %57, label %middle.block1173, label %vector.body1175, !llvm.loop !64

middle.block1173:                                 ; preds = %vector.body1175
  %cmp.n1183 = icmp eq i64 %indvars.iv21.i52, %n.vec1179
  br i1 %cmp.n1183, label %for.inc6.i63, label %for.body3.i60.preheader1280

for.body3.i60.preheader1280:                      ; preds = %for.body3.i60.preheader, %middle.block1173
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1179, %middle.block1173 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1280, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1280 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1173, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting305
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1228 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1228, label %for.body3.i99.preheader1278, label %vector.ph1229

vector.ph1229:                                    ; preds = %for.body3.i99.preheader
  %n.vec1231 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1233, %vector.body1227 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %index1232
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1236 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1236, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1233 = add i64 %index1232, 4
  %68 = icmp eq i64 %index.next1233, %n.vec1231
  br i1 %68, label %middle.block1225, label %vector.body1227, !llvm.loop !66

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %indvars.iv21.i91, %n.vec1231
  br i1 %cmp.n1235, label %for.inc6.i102, label %for.body3.i99.preheader1278

for.body3.i99.preheader1278:                      ; preds = %for.body3.i99.preheader, %middle.block1225
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1231, %middle.block1225 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1278, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1278 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1225, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #8
  %malloccall136 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1240 = phi i64 [ %indvar.next1241, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1240, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1242 = icmp ult i64 %88, 4
  br i1 %min.iters.check1242, label %polly.loop_header192.preheader, label %vector.ph1243

vector.ph1243:                                    ; preds = %polly.loop_header
  %n.vec1245 = and i64 %88, -4
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1243
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1247, %vector.body1239 ]
  %90 = shl nuw nsw i64 %index1246, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1250 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1250, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1247 = add i64 %index1246, 4
  %95 = icmp eq i64 %index.next1247, %n.vec1245
  br i1 %95, label %middle.block1237, label %vector.body1239, !llvm.loop !79

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1249 = icmp eq i64 %88, %n.vec1245
  br i1 %cmp.n1249, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1237
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1245, %middle.block1237 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1237
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond978.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1241 = add i64 %indvar1240, 1
  br i1 %exitcond978.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond977.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond976.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %99 = mul nsw i64 %polly.indvar209, -8
  %100 = shl nuw nsw i64 %polly.indvar209, 1
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond975.not = icmp eq i64 %polly.indvar_next210, 150
  br i1 %exitcond975.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %101 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next216, 50
  br i1 %exitcond963.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %102 = add nuw nsw i64 %polly.indvar221, %98
  %polly.access.mul.call2225 = mul nuw nsw i64 %102, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %101, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2736, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1254 = phi i64 [ %indvar.next1255, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %100, %polly.loop_exit214 ]
  %103 = shl nuw nsw i64 %indvar1254, 2
  %104 = or i64 %103, 3
  %smin1256 = call i64 @llvm.smin.i64(i64 %104, i64 7)
  %105 = shl nsw i64 %polly.indvar231, 2
  %106 = add nsw i64 %105, %99
  %107 = add nsw i64 %106, -1
  %.inv = icmp ugt i64 %106, 7
  %108 = select i1 %.inv, i64 7, i64 %107
  %polly.loop_guard = icmp sgt i64 %108, -1
  %109 = or i64 %106, 3
  %110 = add nuw nsw i64 %106, %98
  %polly.access.mul.call1259.us = mul nuw nsw i64 %110, 1000
  %polly.indvar_next256.us = or i64 %106, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %106, %109
  %111 = add nuw nsw i64 %polly.indvar_next256.us, %98
  %polly.access.mul.call1259.us.1 = mul nuw nsw i64 %111, 1000
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar_next256.us, 1
  %112 = add nuw nsw i64 %polly.indvar_next256.us.1, %98
  %polly.access.mul.call1259.us.2 = mul nuw nsw i64 %112, 1000
  %polly.indvar_next256.us.2 = or i64 %106, 3
  %113 = add nuw nsw i64 %polly.indvar_next256.us.2, %98
  %polly.access.mul.call1259.us.3 = mul nuw nsw i64 %113, 1000
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %114 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %115 = add nuw nsw i64 %polly.indvar243.us, %98
  %polly.access.mul.call1247.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %114, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond965.not = icmp eq i64 %polly.indvar243.us, %108
  br i1 %exitcond965.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond966.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.access.add.call1260.us = add nuw nsw i64 %114, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %106, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us.1, label %polly.loop_exit253.us

polly.loop_exit267:                               ; preds = %polly.loop_exit279.3
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 4
  %exitcond974.not = icmp eq i64 %polly.indvar_next232, 300
  %indvar.next1255 = add i64 %indvar1254, 1
  br i1 %exitcond974.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228 ]
  %116 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.call1260 = add nuw nsw i64 %116, %polly.access.mul.call1259.us
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %106, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.1, label %polly.loop_exit253

polly.loop_exit253:                               ; preds = %polly.loop_header251.1, %polly.loop_header234
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next238, 50
  br i1 %exitcond964.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv967, i64 7)
  %117 = mul nsw i64 %polly.indvar231, 38400
  %indvars.iv.next970 = or i64 %indvars.iv967, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next970, i64 7)
  %118 = or i64 %106, 1
  %119 = or i64 %105, 1
  %120 = mul nuw nsw i64 %119, 9600
  %indvars.iv.next970.1 = add nuw nsw i64 %indvars.iv.next970, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next970.1, i64 7)
  %121 = or i64 %106, 2
  %122 = or i64 %105, 2
  %123 = mul nuw nsw i64 %122, 9600
  %124 = or i64 %106, 3
  %125 = or i64 %105, 3
  %126 = mul nuw nsw i64 %125, 9600
  br label %polly.loop_header265

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit279.3
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit279.3 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1283 = mul nuw nsw i64 %polly.indvar268, 1200
  %polly.access.add.Packed_MemRef_call2288 = add nuw nsw i64 %106, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.access.Packed_MemRef_call1297 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call1297, align 8
  br label %polly.loop_header277

polly.loop_exit279:                               ; preds = %polly.loop_header277
  %polly.access.add.Packed_MemRef_call2288.1 = add nuw nsw i64 %118, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call2289.1, align 8
  %polly.access.Packed_MemRef_call1297.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.1
  %_p_scalar_298.1 = load double, double* %polly.access.Packed_MemRef_call1297.1, align 8
  br label %polly.loop_header277.1

polly.loop_header277:                             ; preds = %polly.loop_header277, %polly.loop_header265
  %polly.indvar280 = phi i64 [ 0, %polly.loop_header265 ], [ %polly.indvar_next281, %polly.loop_header277 ]
  %127 = add nuw nsw i64 %polly.indvar280, %98
  %polly.access.add.Packed_MemRef_call1284 = add nuw nsw i64 %polly.indvar280, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call1285, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_298, %_p_scalar_294
  %128 = shl i64 %127, 3
  %129 = add nuw nsw i64 %128, %117
  %scevgep299 = getelementptr i8, i8* %call, i64 %129
  %scevgep299300 = bitcast i8* %scevgep299 to double*
  %_p_scalar_301 = load double, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_301
  store double %p_add42.i118, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281 = add nuw nsw i64 %polly.indvar280, 1
  %exitcond971.not = icmp eq i64 %polly.indvar280, %smin
  br i1 %exitcond971.not, label %polly.loop_exit279, label %polly.loop_header277

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #8
  %malloccall308 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #8
  br label %polly.loop_header392

polly.exiting305:                                 ; preds = %polly.loop_exit416
  tail call void @free(i8* nonnull %malloccall306)
  tail call void @free(i8* nonnull %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start304
  %indvar1188 = phi i64 [ %indvar.next1189, %polly.loop_exit400 ], [ 0, %polly.start304 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start304 ]
  %130 = add i64 %indvar1188, 1
  %131 = mul nuw nsw i64 %polly.indvar395, 9600
  %scevgep404 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1190 = icmp ult i64 %130, 4
  br i1 %min.iters.check1190, label %polly.loop_header398.preheader, label %vector.ph1191

vector.ph1191:                                    ; preds = %polly.loop_header392
  %n.vec1193 = and i64 %130, -4
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1187 ]
  %132 = shl nuw nsw i64 %index1194, 3
  %133 = getelementptr i8, i8* %scevgep404, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1198 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !84, !noalias !86
  %135 = fmul fast <4 x double> %wide.load1198, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !84, !noalias !86
  %index.next1195 = add i64 %index1194, 4
  %137 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %137, label %middle.block1185, label %vector.body1187, !llvm.loop !91

middle.block1185:                                 ; preds = %vector.body1187
  %cmp.n1197 = icmp eq i64 %130, %n.vec1193
  br i1 %cmp.n1197, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1185
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1193, %middle.block1185 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1185
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next396, 1200
  %indvar.next1189 = add i64 %indvar1188, 1
  br i1 %exitcond998.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  %Packed_MemRef_call2309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %138
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !84, !noalias !86
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond997.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !92

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit416
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit416 ], [ 0, %polly.loop_header408.preheader ]
  %139 = mul nuw nsw i64 %polly.indvar411, 50
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit438
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next412, 20
  br i1 %exitcond996.not, label %polly.exiting305, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_exit438, %polly.loop_header408
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit438 ], [ 1200, %polly.loop_header408 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit438 ], [ 0, %polly.loop_header408 ]
  %140 = shl nsw i64 %polly.indvar417, 3
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit428
  %141 = mul nsw i64 %polly.indvar417, -8
  %142 = shl nuw nsw i64 %polly.indvar417, 1
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit477
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, -8
  %exitcond995.not = icmp eq i64 %polly.indvar_next418, 150
  br i1 %exitcond995.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit428, %polly.loop_header414
  %polly.indvar423 = phi i64 [ 0, %polly.loop_header414 ], [ %polly.indvar_next424, %polly.loop_exit428 ]
  %143 = add nuw nsw i64 %polly.indvar423, %139
  %polly.access.mul.Packed_MemRef_call2309 = mul nuw nsw i64 %polly.indvar423, 1200
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_header426
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next424, 50
  br i1 %exitcond982.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_header426, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_header426 ]
  %144 = add nuw nsw i64 %polly.indvar429, %140
  %polly.access.mul.call2433 = mul nuw nsw i64 %144, 1000
  %polly.access.add.call2434 = add nuw nsw i64 %143, %polly.access.mul.call2433
  %polly.access.call2435 = getelementptr double, double* %polly.access.cast.call2736, i64 %polly.access.add.call2434
  %polly.access.call2435.load = load double, double* %polly.access.call2435, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call2309 = add nuw nsw i64 %polly.indvar429, %polly.access.mul.Packed_MemRef_call2309
  %polly.access.Packed_MemRef_call2309 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309
  store double %polly.access.call2435.load, double* %polly.access.Packed_MemRef_call2309, align 8
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next430, %indvars.iv979
  br i1 %exitcond981.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header436:                             ; preds = %polly.loop_exit477, %polly.loop_exit422
  %indvar1202 = phi i64 [ %indvar.next1203, %polly.loop_exit477 ], [ 0, %polly.loop_exit422 ]
  %indvars.iv986 = phi i64 [ %indvars.iv.next987, %polly.loop_exit477 ], [ 0, %polly.loop_exit422 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit477 ], [ %142, %polly.loop_exit422 ]
  %145 = shl nuw nsw i64 %indvar1202, 2
  %146 = or i64 %145, 3
  %smin1204 = call i64 @llvm.smin.i64(i64 %146, i64 7)
  %147 = shl nsw i64 %polly.indvar439, 2
  %148 = add nsw i64 %147, %141
  %149 = add nsw i64 %148, -1
  %.inv928 = icmp ugt i64 %148, 7
  %150 = select i1 %.inv928, i64 7, i64 %149
  %polly.loop_guard452 = icmp sgt i64 %150, -1
  %151 = or i64 %148, 3
  %152 = add nuw nsw i64 %148, %140
  %polly.access.mul.call1469.us = mul nuw nsw i64 %152, 1000
  %polly.indvar_next466.us = or i64 %148, 1
  %polly.loop_cond467.not.not.us = icmp ult i64 %148, %151
  %153 = add nuw nsw i64 %polly.indvar_next466.us, %140
  %polly.access.mul.call1469.us.1 = mul nuw nsw i64 %153, 1000
  %polly.indvar_next466.us.1 = add nuw nsw i64 %polly.indvar_next466.us, 1
  %154 = add nuw nsw i64 %polly.indvar_next466.us.1, %140
  %polly.access.mul.call1469.us.2 = mul nuw nsw i64 %154, 1000
  %polly.indvar_next466.us.2 = or i64 %148, 3
  %155 = add nuw nsw i64 %polly.indvar_next466.us.2, %140
  %polly.access.mul.call1469.us.3 = mul nuw nsw i64 %155, 1000
  br i1 %polly.loop_guard452, label %polly.loop_header442.us, label %polly.loop_header442

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.loop_exit463.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_exit463.us ], [ 0, %polly.loop_header436 ]
  %156 = add nuw nsw i64 %polly.indvar445.us, %139
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar445.us, 1200
  br label %polly.loop_header449.us

polly.loop_header449.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header442.us ]
  %157 = add nuw nsw i64 %polly.indvar453.us, %140
  %polly.access.mul.call1457.us = mul nuw nsw i64 %157, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %156, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next454.us = add nuw i64 %polly.indvar453.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar453.us, %150
  br i1 %exitcond984.not, label %polly.loop_exit451.loopexit.us, label %polly.loop_header449.us

polly.loop_exit463.us:                            ; preds = %polly.loop_header461.us.1, %polly.loop_exit451.loopexit.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next446.us, 50
  br i1 %exitcond985.not, label %polly.loop_header475.preheader, label %polly.loop_header442.us

polly.loop_exit451.loopexit.us:                   ; preds = %polly.loop_header449.us
  %polly.access.add.call1470.us = add nuw nsw i64 %156, %polly.access.mul.call1469.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1307474.us, align 8
  br i1 %polly.loop_cond467.not.not.us, label %polly.loop_header461.us.1, label %polly.loop_exit463.us

polly.loop_exit477:                               ; preds = %polly.loop_exit489.3
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 4
  %exitcond994.not = icmp eq i64 %polly.indvar_next440, 300
  %indvar.next1203 = add i64 %indvar1202, 1
  br i1 %exitcond994.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header442:                             ; preds = %polly.loop_header436, %polly.loop_exit463
  %polly.indvar445 = phi i64 [ %polly.indvar_next446, %polly.loop_exit463 ], [ 0, %polly.loop_header436 ]
  %158 = add nuw nsw i64 %polly.indvar445, %139
  %polly.access.mul.Packed_MemRef_call1307472 = mul nuw nsw i64 %polly.indvar445, 1200
  %polly.access.add.call1470 = add nuw nsw i64 %158, %polly.access.mul.call1469.us
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473 = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1307474, align 8
  br i1 %polly.loop_cond467.not.not.us, label %polly.loop_header461.1, label %polly.loop_exit463

polly.loop_exit463:                               ; preds = %polly.loop_header461.1, %polly.loop_header442
  %polly.indvar_next446 = add nuw nsw i64 %polly.indvar445, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next446, 50
  br i1 %exitcond983.not, label %polly.loop_header475.preheader, label %polly.loop_header442

polly.loop_header475.preheader:                   ; preds = %polly.loop_exit463, %polly.loop_exit463.us
  %smin990 = call i64 @llvm.smin.i64(i64 %indvars.iv986, i64 7)
  %159 = mul nsw i64 %polly.indvar439, 38400
  %indvars.iv.next989 = or i64 %indvars.iv986, 1
  %smin990.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next989, i64 7)
  %160 = or i64 %148, 1
  %161 = or i64 %147, 1
  %162 = mul nuw nsw i64 %161, 9600
  %indvars.iv.next989.1 = add nuw nsw i64 %indvars.iv.next989, 1
  %smin990.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next989.1, i64 7)
  %163 = or i64 %148, 2
  %164 = or i64 %147, 2
  %165 = mul nuw nsw i64 %164, 9600
  %166 = or i64 %148, 3
  %167 = or i64 %147, 3
  %168 = mul nuw nsw i64 %167, 9600
  br label %polly.loop_header475

polly.loop_header475:                             ; preds = %polly.loop_header475.preheader, %polly.loop_exit489.3
  %polly.indvar478 = phi i64 [ %polly.indvar_next479, %polly.loop_exit489.3 ], [ 0, %polly.loop_header475.preheader ]
  %polly.access.mul.Packed_MemRef_call1307493 = mul nuw nsw i64 %polly.indvar478, 1200
  %polly.access.add.Packed_MemRef_call2309498 = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call2309499 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2309499, align 8
  %polly.access.Packed_MemRef_call1307507 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498
  %_p_scalar_508 = load double, double* %polly.access.Packed_MemRef_call1307507, align 8
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_header487
  %polly.access.add.Packed_MemRef_call2309498.1 = add nuw nsw i64 %160, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call2309499.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call2309499.1, align 8
  %polly.access.Packed_MemRef_call1307507.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498.1
  %_p_scalar_508.1 = load double, double* %polly.access.Packed_MemRef_call1307507.1, align 8
  br label %polly.loop_header487.1

polly.loop_header487:                             ; preds = %polly.loop_header487, %polly.loop_header475
  %polly.indvar490 = phi i64 [ 0, %polly.loop_header475 ], [ %polly.indvar_next491, %polly.loop_header487 ]
  %169 = add nuw nsw i64 %polly.indvar490, %140
  %polly.access.add.Packed_MemRef_call1307494 = add nuw nsw i64 %polly.indvar490, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307495 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call1307495, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_500, %_p_scalar_496
  %polly.access.Packed_MemRef_call2309503 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call2309503, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_508, %_p_scalar_504
  %170 = shl i64 %169, 3
  %171 = add nuw nsw i64 %170, %159
  %scevgep509 = getelementptr i8, i8* %call, i64 %171
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_511
  store double %p_add42.i79, double* %scevgep509510, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond991.not = icmp eq i64 %polly.indvar490, %smin990
  br i1 %exitcond991.not, label %polly.loop_exit489, label %polly.loop_header487

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #8
  %malloccall518 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #8
  br label %polly.loop_header602

polly.exiting515:                                 ; preds = %polly.loop_exit626
  tail call void @free(i8* nonnull %malloccall516)
  tail call void @free(i8* nonnull %malloccall518)
  br label %kernel_syr2k.exit

polly.loop_header602:                             ; preds = %polly.loop_exit610, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit610 ], [ 0, %polly.start514 ]
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 1, %polly.start514 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar605, 9600
  %scevgep614 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1142 = icmp ult i64 %172, 4
  br i1 %min.iters.check1142, label %polly.loop_header608.preheader, label %vector.ph1143

vector.ph1143:                                    ; preds = %polly.loop_header602
  %n.vec1145 = and i64 %172, -4
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1143
  %index1146 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1147, %vector.body1141 ]
  %174 = shl nuw nsw i64 %index1146, 3
  %175 = getelementptr i8, i8* %scevgep614, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1150 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !95, !noalias !97
  %177 = fmul fast <4 x double> %wide.load1150, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !95, !noalias !97
  %index.next1147 = add i64 %index1146, 4
  %179 = icmp eq i64 %index.next1147, %n.vec1145
  br i1 %179, label %middle.block1139, label %vector.body1141, !llvm.loop !102

middle.block1139:                                 ; preds = %vector.body1141
  %cmp.n1149 = icmp eq i64 %172, %n.vec1145
  br i1 %cmp.n1149, label %polly.loop_exit610, label %polly.loop_header608.preheader

polly.loop_header608.preheader:                   ; preds = %polly.loop_header602, %middle.block1139
  %polly.indvar611.ph = phi i64 [ 0, %polly.loop_header602 ], [ %n.vec1145, %middle.block1139 ]
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608, %middle.block1139
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next606, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1018.not, label %polly.loop_header618.preheader, label %polly.loop_header602

polly.loop_header618.preheader:                   ; preds = %polly.loop_exit610
  %Packed_MemRef_call1517 = bitcast i8* %malloccall516 to double*
  %Packed_MemRef_call2519 = bitcast i8* %malloccall518 to double*
  br label %polly.loop_header618

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_header608
  %polly.indvar611 = phi i64 [ %polly.indvar_next612, %polly.loop_header608 ], [ %polly.indvar611.ph, %polly.loop_header608.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar611, 3
  %scevgep615 = getelementptr i8, i8* %scevgep614, i64 %180
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !95, !noalias !97
  %p_mul.i = fmul fast double %_p_scalar_617, 1.200000e+00
  store double %p_mul.i, double* %scevgep615616, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next612, %polly.indvar605
  br i1 %exitcond1017.not, label %polly.loop_exit610, label %polly.loop_header608, !llvm.loop !103

polly.loop_header618:                             ; preds = %polly.loop_header618.preheader, %polly.loop_exit626
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit626 ], [ 0, %polly.loop_header618.preheader ]
  %181 = mul nuw nsw i64 %polly.indvar621, 50
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit648
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next622, 20
  br i1 %exitcond1016.not, label %polly.exiting515, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit648, %polly.loop_header618
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit648 ], [ 1200, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit648 ], [ 0, %polly.loop_header618 ]
  %182 = shl nsw i64 %polly.indvar627, 3
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_exit638
  %183 = mul nsw i64 %polly.indvar627, -8
  %184 = shl nuw nsw i64 %polly.indvar627, 1
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit687
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, -8
  %exitcond1015.not = icmp eq i64 %polly.indvar_next628, 150
  br i1 %exitcond1015.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header630:                             ; preds = %polly.loop_exit638, %polly.loop_header624
  %polly.indvar633 = phi i64 [ 0, %polly.loop_header624 ], [ %polly.indvar_next634, %polly.loop_exit638 ]
  %185 = add nuw nsw i64 %polly.indvar633, %181
  %polly.access.mul.Packed_MemRef_call2519 = mul nuw nsw i64 %polly.indvar633, 1200
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_header636
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next634, 50
  br i1 %exitcond1002.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_header636, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_header636 ]
  %186 = add nuw nsw i64 %polly.indvar639, %182
  %polly.access.mul.call2643 = mul nuw nsw i64 %186, 1000
  %polly.access.add.call2644 = add nuw nsw i64 %185, %polly.access.mul.call2643
  %polly.access.call2645 = getelementptr double, double* %polly.access.cast.call2736, i64 %polly.access.add.call2644
  %polly.access.call2645.load = load double, double* %polly.access.call2645, align 8, !alias.scope !99, !noalias !104
  %polly.access.add.Packed_MemRef_call2519 = add nuw nsw i64 %polly.indvar639, %polly.access.mul.Packed_MemRef_call2519
  %polly.access.Packed_MemRef_call2519 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519
  store double %polly.access.call2645.load, double* %polly.access.Packed_MemRef_call2519, align 8
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next640, %indvars.iv999
  br i1 %exitcond1001.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header646:                             ; preds = %polly.loop_exit687, %polly.loop_exit632
  %indvar1154 = phi i64 [ %indvar.next1155, %polly.loop_exit687 ], [ 0, %polly.loop_exit632 ]
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit687 ], [ 0, %polly.loop_exit632 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit687 ], [ %184, %polly.loop_exit632 ]
  %187 = shl nuw nsw i64 %indvar1154, 2
  %188 = or i64 %187, 3
  %smin1156 = call i64 @llvm.smin.i64(i64 %188, i64 7)
  %189 = shl nsw i64 %polly.indvar649, 2
  %190 = add nsw i64 %189, %183
  %191 = add nsw i64 %190, -1
  %.inv929 = icmp ugt i64 %190, 7
  %192 = select i1 %.inv929, i64 7, i64 %191
  %polly.loop_guard662 = icmp sgt i64 %192, -1
  %193 = or i64 %190, 3
  %194 = add nuw nsw i64 %190, %182
  %polly.access.mul.call1679.us = mul nuw nsw i64 %194, 1000
  %polly.indvar_next676.us = or i64 %190, 1
  %polly.loop_cond677.not.not.us = icmp ult i64 %190, %193
  %195 = add nuw nsw i64 %polly.indvar_next676.us, %182
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %195, 1000
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar_next676.us, 1
  %196 = add nuw nsw i64 %polly.indvar_next676.us.1, %182
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %196, 1000
  %polly.indvar_next676.us.2 = or i64 %190, 3
  %197 = add nuw nsw i64 %polly.indvar_next676.us.2, %182
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %197, 1000
  br i1 %polly.loop_guard662, label %polly.loop_header652.us, label %polly.loop_header652

polly.loop_header652.us:                          ; preds = %polly.loop_header646, %polly.loop_exit673.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.loop_exit673.us ], [ 0, %polly.loop_header646 ]
  %198 = add nuw nsw i64 %polly.indvar655.us, %181
  %polly.access.mul.Packed_MemRef_call1517.us = mul nuw nsw i64 %polly.indvar655.us, 1200
  br label %polly.loop_header659.us

polly.loop_header659.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header652.us ]
  %199 = add nuw nsw i64 %polly.indvar663.us, %182
  %polly.access.mul.call1667.us = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %198, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517.us = add nuw nsw i64 %polly.indvar663.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1517.us, align 8
  %polly.indvar_next664.us = add nuw i64 %polly.indvar663.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar663.us, %192
  br i1 %exitcond1004.not, label %polly.loop_exit661.loopexit.us, label %polly.loop_header659.us

polly.loop_exit673.us:                            ; preds = %polly.loop_header671.us.1, %polly.loop_exit661.loopexit.us
  %polly.indvar_next656.us = add nuw nsw i64 %polly.indvar655.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next656.us, 50
  br i1 %exitcond1005.not, label %polly.loop_header685.preheader, label %polly.loop_header652.us

polly.loop_exit661.loopexit.us:                   ; preds = %polly.loop_header659.us
  %polly.access.add.call1680.us = add nuw nsw i64 %198, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.us = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1517684.us, align 8
  br i1 %polly.loop_cond677.not.not.us, label %polly.loop_header671.us.1, label %polly.loop_exit673.us

polly.loop_exit687:                               ; preds = %polly.loop_exit699.3
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 4
  %exitcond1014.not = icmp eq i64 %polly.indvar_next650, 300
  %indvar.next1155 = add i64 %indvar1154, 1
  br i1 %exitcond1014.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header652:                             ; preds = %polly.loop_header646, %polly.loop_exit673
  %polly.indvar655 = phi i64 [ %polly.indvar_next656, %polly.loop_exit673 ], [ 0, %polly.loop_header646 ]
  %200 = add nuw nsw i64 %polly.indvar655, %181
  %polly.access.mul.Packed_MemRef_call1517682 = mul nuw nsw i64 %polly.indvar655, 1200
  %polly.access.add.call1680 = add nuw nsw i64 %200, %polly.access.mul.call1679.us
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1517684, align 8
  br i1 %polly.loop_cond677.not.not.us, label %polly.loop_header671.1, label %polly.loop_exit673

polly.loop_exit673:                               ; preds = %polly.loop_header671.1, %polly.loop_header652
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next656, 50
  br i1 %exitcond1003.not, label %polly.loop_header685.preheader, label %polly.loop_header652

polly.loop_header685.preheader:                   ; preds = %polly.loop_exit673, %polly.loop_exit673.us
  %smin1010 = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 7)
  %201 = mul nsw i64 %polly.indvar649, 38400
  %indvars.iv.next1009 = or i64 %indvars.iv1006, 1
  %smin1010.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1009, i64 7)
  %202 = or i64 %190, 1
  %203 = or i64 %189, 1
  %204 = mul nuw nsw i64 %203, 9600
  %indvars.iv.next1009.1 = add nuw nsw i64 %indvars.iv.next1009, 1
  %smin1010.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1009.1, i64 7)
  %205 = or i64 %190, 2
  %206 = or i64 %189, 2
  %207 = mul nuw nsw i64 %206, 9600
  %208 = or i64 %190, 3
  %209 = or i64 %189, 3
  %210 = mul nuw nsw i64 %209, 9600
  br label %polly.loop_header685

polly.loop_header685:                             ; preds = %polly.loop_header685.preheader, %polly.loop_exit699.3
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit699.3 ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1517703 = mul nuw nsw i64 %polly.indvar688, 1200
  %polly.access.add.Packed_MemRef_call2519708 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call2519709 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708
  %_p_scalar_710 = load double, double* %polly.access.Packed_MemRef_call2519709, align 8
  %polly.access.Packed_MemRef_call1517717 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708
  %_p_scalar_718 = load double, double* %polly.access.Packed_MemRef_call1517717, align 8
  br label %polly.loop_header697

polly.loop_exit699:                               ; preds = %polly.loop_header697
  %polly.access.add.Packed_MemRef_call2519708.1 = add nuw nsw i64 %202, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call2519709.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708.1
  %_p_scalar_710.1 = load double, double* %polly.access.Packed_MemRef_call2519709.1, align 8
  %polly.access.Packed_MemRef_call1517717.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708.1
  %_p_scalar_718.1 = load double, double* %polly.access.Packed_MemRef_call1517717.1, align 8
  br label %polly.loop_header697.1

polly.loop_header697:                             ; preds = %polly.loop_header697, %polly.loop_header685
  %polly.indvar700 = phi i64 [ 0, %polly.loop_header685 ], [ %polly.indvar_next701, %polly.loop_header697 ]
  %211 = add nuw nsw i64 %polly.indvar700, %182
  %polly.access.add.Packed_MemRef_call1517704 = add nuw nsw i64 %polly.indvar700, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517705 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call1517705, align 8
  %p_mul27.i = fmul fast double %_p_scalar_710, %_p_scalar_706
  %polly.access.Packed_MemRef_call2519713 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517704
  %_p_scalar_714 = load double, double* %polly.access.Packed_MemRef_call2519713, align 8
  %p_mul37.i = fmul fast double %_p_scalar_718, %_p_scalar_714
  %212 = shl i64 %211, 3
  %213 = add nuw nsw i64 %212, %201
  %scevgep719 = getelementptr i8, i8* %call, i64 %213
  %scevgep719720 = bitcast i8* %scevgep719 to double*
  %_p_scalar_721 = load double, double* %scevgep719720, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_721
  store double %p_add42.i, double* %scevgep719720, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar700, %smin1010
  br i1 %exitcond1011.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header848:                             ; preds = %entry, %polly.loop_exit856
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit856 ], [ 0, %entry ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %entry ]
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 -1168)
  %214 = shl nsw i64 %polly.indvar851, 5
  %215 = add nsw i64 %smin1045, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1048.not, label %polly.loop_header875, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %216 = mul nsw i64 %polly.indvar857, -32
  %smin1080 = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin1080, 1200
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 -1168)
  %218 = shl nsw i64 %polly.indvar857, 5
  %219 = add nsw i64 %smin1041, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1047.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %220 = add nuw nsw i64 %polly.indvar863, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header866, label %vector.ph1081

vector.ph1081:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1088 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat1089 = shufflevector <4 x i64> %broadcast.splatinsert1088, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1081
  %index1082 = phi i64 [ 0, %vector.ph1081 ], [ %index.next1083, %vector.body1079 ]
  %vec.ind1086 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1081 ], [ %vec.ind.next1087, %vector.body1079 ]
  %223 = add nuw nsw <4 x i64> %vec.ind1086, %broadcast.splat1089
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat1091, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !106, !noalias !108
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1087 = add <4 x i64> %vec.ind1086, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next1083, %217
  br i1 %235, label %polly.loop_exit868, label %vector.body1079, !llvm.loop !111

polly.loop_exit868:                               ; preds = %vector.body1079, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar863, %215
  br i1 %exitcond1046.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %236 = add nuw nsw i64 %polly.indvar869, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep872 = getelementptr i8, i8* %call, i64 %242
  %scevgep872873 = bitcast i8* %scevgep872 to double*
  store double %p_div33.i, double* %scevgep872873, align 8, !alias.scope !106, !noalias !108
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar869, %219
  br i1 %exitcond1042.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !112

polly.loop_header875:                             ; preds = %polly.loop_exit856, %polly.loop_exit883
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %smin1035 = call i64 @llvm.smin.i64(i64 %indvars.iv1033, i64 -1168)
  %243 = shl nsw i64 %polly.indvar878, 5
  %244 = add nsw i64 %smin1035, 1199
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next879, 38
  br i1 %exitcond1038.not, label %polly.loop_header901, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %245 = mul nsw i64 %polly.indvar884, -32
  %smin1095 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin1095, 1000
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 -968)
  %247 = shl nsw i64 %polly.indvar884, 5
  %248 = add nsw i64 %smin1031, 999
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -32
  %exitcond1037.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1037.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %polly.indvar890 = phi i64 [ 0, %polly.loop_header881 ], [ %polly.indvar_next891, %polly.loop_exit895 ]
  %249 = add nuw nsw i64 %polly.indvar890, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check1096 = icmp eq i64 %246, 0
  br i1 %min.iters.check1096, label %polly.loop_header893, label %vector.ph1097

vector.ph1097:                                    ; preds = %polly.loop_header887
  %broadcast.splatinsert1106 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1107 = shufflevector <4 x i64> %broadcast.splatinsert1106, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1097
  %index1100 = phi i64 [ 0, %vector.ph1097 ], [ %index.next1101, %vector.body1094 ]
  %vec.ind1104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1097 ], [ %vec.ind.next1105, %vector.body1094 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1104, %broadcast.splat1107
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1109, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !110, !noalias !113
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1105 = add <4 x i64> %vec.ind1104, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1101, %246
  br i1 %264, label %polly.loop_exit895, label %vector.body1094, !llvm.loop !114

polly.loop_exit895:                               ; preds = %vector.body1094, %polly.loop_header893
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar890, %244
  br i1 %exitcond1036.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_header887, %polly.loop_header893
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_header893 ], [ 0, %polly.loop_header887 ]
  %265 = add nuw nsw i64 %polly.indvar896, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep899 = getelementptr i8, i8* %call2, i64 %271
  %scevgep899900 = bitcast i8* %scevgep899 to double*
  store double %p_div12.i, double* %scevgep899900, align 8, !alias.scope !110, !noalias !113
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar896, %248
  br i1 %exitcond1032.not, label %polly.loop_exit895, label %polly.loop_header893, !llvm.loop !115

polly.loop_header901:                             ; preds = %polly.loop_exit883, %polly.loop_exit909
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %smin1025 = call i64 @llvm.smin.i64(i64 %indvars.iv1023, i64 -1168)
  %272 = shl nsw i64 %polly.indvar904, 5
  %273 = add nsw i64 %smin1025, 1199
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -32
  %exitcond1028.not = icmp eq i64 %polly.indvar_next905, 38
  br i1 %exitcond1028.not, label %init_array.exit, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %274 = mul nsw i64 %polly.indvar910, -32
  %smin1113 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1113, 1000
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 -968)
  %276 = shl nsw i64 %polly.indvar910, 5
  %277 = add nsw i64 %smin1021, 999
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -32
  %exitcond1027.not = icmp eq i64 %polly.indvar_next911, 32
  br i1 %exitcond1027.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %polly.indvar916 = phi i64 [ 0, %polly.loop_header907 ], [ %polly.indvar_next917, %polly.loop_exit921 ]
  %278 = add nuw nsw i64 %polly.indvar916, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1114 = icmp eq i64 %275, 0
  br i1 %min.iters.check1114, label %polly.loop_header919, label %vector.ph1115

vector.ph1115:                                    ; preds = %polly.loop_header913
  %broadcast.splatinsert1124 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1125 = shufflevector <4 x i64> %broadcast.splatinsert1124, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1115
  %index1118 = phi i64 [ 0, %vector.ph1115 ], [ %index.next1119, %vector.body1112 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1115 ], [ %vec.ind.next1123, %vector.body1112 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1122, %broadcast.splat1125
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1127, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !109, !noalias !116
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1119, %275
  br i1 %293, label %polly.loop_exit921, label %vector.body1112, !llvm.loop !117

polly.loop_exit921:                               ; preds = %vector.body1112, %polly.loop_header919
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar916, %273
  br i1 %exitcond1026.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_header913, %polly.loop_header919
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_header919 ], [ 0, %polly.loop_header913 ]
  %294 = add nuw nsw i64 %polly.indvar922, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep926 = getelementptr i8, i8* %call1, i64 %300
  %scevgep926927 = bitcast i8* %scevgep926 to double*
  store double %p_div.i, double* %scevgep926927, align 8, !alias.scope !109, !noalias !116
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar922, %277
  br i1 %exitcond1022.not, label %polly.loop_exit921, label %polly.loop_header919, !llvm.loop !118

polly.loop_header251.1:                           ; preds = %polly.loop_header234
  %polly.access.add.call1260.1 = add nuw nsw i64 %116, %polly.access.mul.call1259.us.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar_next256.us, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = add nuw nsw i64 %116, %polly.access.mul.call1259.us.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar_next256.us.1, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = add nuw nsw i64 %116, %polly.access.mul.call1259.us.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar_next256.us.2, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit253

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %114, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar_next256.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %114, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar_next256.us.1, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %114, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar_next256.us.2, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_exit253.us

polly.loop_header277.1:                           ; preds = %polly.loop_header277.1, %polly.loop_exit279
  %polly.indvar280.1 = phi i64 [ 0, %polly.loop_exit279 ], [ %polly.indvar_next281.1, %polly.loop_header277.1 ]
  %301 = add nuw nsw i64 %polly.indvar280.1, %98
  %polly.access.add.Packed_MemRef_call1284.1 = add nuw nsw i64 %polly.indvar280.1, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.1
  %_p_scalar_286.1 = load double, double* %polly.access.Packed_MemRef_call1285.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_290.1, %_p_scalar_286.1
  %polly.access.Packed_MemRef_call2293.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284.1
  %_p_scalar_294.1 = load double, double* %polly.access.Packed_MemRef_call2293.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_298.1, %_p_scalar_294.1
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %302, %120
  %scevgep299.1 = getelementptr i8, i8* %call, i64 %303
  %scevgep299300.1 = bitcast i8* %scevgep299.1 to double*
  %_p_scalar_301.1 = load double, double* %scevgep299300.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_301.1
  store double %p_add42.i118.1, double* %scevgep299300.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281.1 = add nuw nsw i64 %polly.indvar280.1, 1
  %exitcond971.1.not = icmp eq i64 %polly.indvar280.1, %smin.1
  br i1 %exitcond971.1.not, label %polly.loop_exit279.1, label %polly.loop_header277.1

polly.loop_exit279.1:                             ; preds = %polly.loop_header277.1
  %polly.access.add.Packed_MemRef_call2288.2 = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.2
  %_p_scalar_290.2 = load double, double* %polly.access.Packed_MemRef_call2289.2, align 8
  %polly.access.Packed_MemRef_call1297.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.2
  %_p_scalar_298.2 = load double, double* %polly.access.Packed_MemRef_call1297.2, align 8
  br label %polly.loop_header277.2

polly.loop_header277.2:                           ; preds = %polly.loop_header277.2, %polly.loop_exit279.1
  %polly.indvar280.2 = phi i64 [ 0, %polly.loop_exit279.1 ], [ %polly.indvar_next281.2, %polly.loop_header277.2 ]
  %304 = add nuw nsw i64 %polly.indvar280.2, %98
  %polly.access.add.Packed_MemRef_call1284.2 = add nuw nsw i64 %polly.indvar280.2, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.2
  %_p_scalar_286.2 = load double, double* %polly.access.Packed_MemRef_call1285.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_290.2, %_p_scalar_286.2
  %polly.access.Packed_MemRef_call2293.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284.2
  %_p_scalar_294.2 = load double, double* %polly.access.Packed_MemRef_call2293.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_298.2, %_p_scalar_294.2
  %305 = shl i64 %304, 3
  %306 = add nuw nsw i64 %305, %123
  %scevgep299.2 = getelementptr i8, i8* %call, i64 %306
  %scevgep299300.2 = bitcast i8* %scevgep299.2 to double*
  %_p_scalar_301.2 = load double, double* %scevgep299300.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_301.2
  store double %p_add42.i118.2, double* %scevgep299300.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281.2 = add nuw nsw i64 %polly.indvar280.2, 1
  %exitcond971.2.not = icmp eq i64 %polly.indvar280.2, %smin.2
  br i1 %exitcond971.2.not, label %polly.loop_exit279.2, label %polly.loop_header277.2

polly.loop_exit279.2:                             ; preds = %polly.loop_header277.2
  %polly.access.add.Packed_MemRef_call2288.3 = add nuw nsw i64 %124, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1297.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.3
  %_p_scalar_298.3 = load double, double* %polly.access.Packed_MemRef_call1297.3, align 8
  %polly.access.Packed_MemRef_call2289.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.3
  %_p_scalar_290.3 = load double, double* %polly.access.Packed_MemRef_call2289.3, align 8
  %broadcast.splatinsert1265 = insertelement <4 x i64> poison, i64 %smin1256, i32 0
  %broadcast.splat1266 = shufflevector <4 x i64> %broadcast.splatinsert1265, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1271 = insertelement <4 x double> poison, double %_p_scalar_290.3, i32 0
  %broadcast.splat1272 = shufflevector <4 x double> %broadcast.splatinsert1271, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x double> poison, double %_p_scalar_298.3, i32 0
  %broadcast.splat1275 = shufflevector <4 x double> %broadcast.splatinsert1274, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %polly.loop_exit279.2
  %index1261 = phi i64 [ 0, %polly.loop_exit279.2 ], [ %index.next1262, %vector.body1253 ]
  %broadcast.splatinsert1267 = insertelement <4 x i64> poison, i64 %index1261, i32 0
  %broadcast.splat1268 = shufflevector <4 x i64> %broadcast.splatinsert1267, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1269 = or <4 x i64> %broadcast.splat1268, <i64 0, i64 1, i64 2, i64 3>
  %307 = icmp ule <4 x i64> %induction1269, %broadcast.splat1266
  %308 = add nuw nsw i64 %index1261, %98
  %309 = add nuw nsw i64 %index1261, %polly.access.mul.Packed_MemRef_call1283
  %310 = getelementptr double, double* %Packed_MemRef_call1, i64 %309
  %311 = bitcast double* %310 to <4 x double>*
  %wide.masked.load1270 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %311, i32 8, <4 x i1> %307, <4 x double> poison)
  %312 = fmul fast <4 x double> %broadcast.splat1272, %wide.masked.load1270
  %313 = getelementptr double, double* %Packed_MemRef_call2, i64 %309
  %314 = bitcast double* %313 to <4 x double>*
  %wide.masked.load1273 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %314, i32 8, <4 x i1> %307, <4 x double> poison)
  %315 = fmul fast <4 x double> %broadcast.splat1275, %wide.masked.load1273
  %316 = shl i64 %308, 3
  %317 = add nuw nsw i64 %316, %126
  %318 = getelementptr i8, i8* %call, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  %wide.masked.load1276 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %319, i32 8, <4 x i1> %307, <4 x double> poison), !alias.scope !72, !noalias !74
  %320 = fadd fast <4 x double> %315, %312
  %321 = fmul fast <4 x double> %320, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %322 = fadd fast <4 x double> %321, %wide.masked.load1276
  %323 = bitcast i8* %318 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %322, <4 x double>* %323, i32 8, <4 x i1> %307), !alias.scope !72, !noalias !74
  %index.next1262 = add i64 %index1261, 4
  %324 = or i64 %index1261, 3
  %325 = icmp eq i64 %324, %smin1256
  br i1 %325, label %polly.loop_exit279.3, label %vector.body1253, !llvm.loop !119

polly.loop_exit279.3:                             ; preds = %vector.body1253
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next269, 50
  br i1 %exitcond973.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header461.1:                           ; preds = %polly.loop_header442
  %polly.access.add.call1470.1 = add nuw nsw i64 %158, %polly.access.mul.call1469.us.1
  %polly.access.call1471.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.1
  %polly.access.call1471.load.1 = load double, double* %polly.access.call1471.1, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.1 = add nuw nsw i64 %polly.indvar_next466.us, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.1
  store double %polly.access.call1471.load.1, double* %polly.access.Packed_MemRef_call1307474.1, align 8
  %polly.access.add.call1470.2 = add nuw nsw i64 %158, %polly.access.mul.call1469.us.2
  %polly.access.call1471.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.2
  %polly.access.call1471.load.2 = load double, double* %polly.access.call1471.2, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.2 = add nuw nsw i64 %polly.indvar_next466.us.1, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.2
  store double %polly.access.call1471.load.2, double* %polly.access.Packed_MemRef_call1307474.2, align 8
  %polly.access.add.call1470.3 = add nuw nsw i64 %158, %polly.access.mul.call1469.us.3
  %polly.access.call1471.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.3
  %polly.access.call1471.load.3 = load double, double* %polly.access.call1471.3, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.3 = add nuw nsw i64 %polly.indvar_next466.us.2, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474.3 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.3
  store double %polly.access.call1471.load.3, double* %polly.access.Packed_MemRef_call1307474.3, align 8
  br label %polly.loop_exit463

polly.loop_header461.us.1:                        ; preds = %polly.loop_exit451.loopexit.us
  %polly.access.add.call1470.us.1 = add nuw nsw i64 %156, %polly.access.mul.call1469.us.1
  %polly.access.call1471.us.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us.1
  %polly.access.call1471.load.us.1 = load double, double* %polly.access.call1471.us.1, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.us.1 = add nuw nsw i64 %polly.indvar_next466.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us.1
  store double %polly.access.call1471.load.us.1, double* %polly.access.Packed_MemRef_call1307474.us.1, align 8
  %polly.access.add.call1470.us.2 = add nuw nsw i64 %156, %polly.access.mul.call1469.us.2
  %polly.access.call1471.us.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us.2
  %polly.access.call1471.load.us.2 = load double, double* %polly.access.call1471.us.2, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.us.2 = add nuw nsw i64 %polly.indvar_next466.us.1, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us.2
  store double %polly.access.call1471.load.us.2, double* %polly.access.Packed_MemRef_call1307474.us.2, align 8
  %polly.access.add.call1470.us.3 = add nuw nsw i64 %156, %polly.access.mul.call1469.us.3
  %polly.access.call1471.us.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us.3
  %polly.access.call1471.load.us.3 = load double, double* %polly.access.call1471.us.3, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1307473.us.3 = add nuw nsw i64 %polly.indvar_next466.us.2, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us.3 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us.3
  store double %polly.access.call1471.load.us.3, double* %polly.access.Packed_MemRef_call1307474.us.3, align 8
  br label %polly.loop_exit463.us

polly.loop_header487.1:                           ; preds = %polly.loop_header487.1, %polly.loop_exit489
  %polly.indvar490.1 = phi i64 [ 0, %polly.loop_exit489 ], [ %polly.indvar_next491.1, %polly.loop_header487.1 ]
  %326 = add nuw nsw i64 %polly.indvar490.1, %140
  %polly.access.add.Packed_MemRef_call1307494.1 = add nuw nsw i64 %polly.indvar490.1, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307495.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307494.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call1307495.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_500.1, %_p_scalar_496.1
  %polly.access.Packed_MemRef_call2309503.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307494.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call2309503.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_508.1, %_p_scalar_504.1
  %327 = shl i64 %326, 3
  %328 = add nuw nsw i64 %327, %162
  %scevgep509.1 = getelementptr i8, i8* %call, i64 %328
  %scevgep509510.1 = bitcast i8* %scevgep509.1 to double*
  %_p_scalar_511.1 = load double, double* %scevgep509510.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_511.1
  store double %p_add42.i79.1, double* %scevgep509510.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next491.1 = add nuw nsw i64 %polly.indvar490.1, 1
  %exitcond991.1.not = icmp eq i64 %polly.indvar490.1, %smin990.1
  br i1 %exitcond991.1.not, label %polly.loop_exit489.1, label %polly.loop_header487.1

polly.loop_exit489.1:                             ; preds = %polly.loop_header487.1
  %polly.access.add.Packed_MemRef_call2309498.2 = add nuw nsw i64 %163, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call2309499.2 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498.2
  %_p_scalar_500.2 = load double, double* %polly.access.Packed_MemRef_call2309499.2, align 8
  %polly.access.Packed_MemRef_call1307507.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498.2
  %_p_scalar_508.2 = load double, double* %polly.access.Packed_MemRef_call1307507.2, align 8
  br label %polly.loop_header487.2

polly.loop_header487.2:                           ; preds = %polly.loop_header487.2, %polly.loop_exit489.1
  %polly.indvar490.2 = phi i64 [ 0, %polly.loop_exit489.1 ], [ %polly.indvar_next491.2, %polly.loop_header487.2 ]
  %329 = add nuw nsw i64 %polly.indvar490.2, %140
  %polly.access.add.Packed_MemRef_call1307494.2 = add nuw nsw i64 %polly.indvar490.2, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307495.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307494.2
  %_p_scalar_496.2 = load double, double* %polly.access.Packed_MemRef_call1307495.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_500.2, %_p_scalar_496.2
  %polly.access.Packed_MemRef_call2309503.2 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307494.2
  %_p_scalar_504.2 = load double, double* %polly.access.Packed_MemRef_call2309503.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_508.2, %_p_scalar_504.2
  %330 = shl i64 %329, 3
  %331 = add nuw nsw i64 %330, %165
  %scevgep509.2 = getelementptr i8, i8* %call, i64 %331
  %scevgep509510.2 = bitcast i8* %scevgep509.2 to double*
  %_p_scalar_511.2 = load double, double* %scevgep509510.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_511.2
  store double %p_add42.i79.2, double* %scevgep509510.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next491.2 = add nuw nsw i64 %polly.indvar490.2, 1
  %exitcond991.2.not = icmp eq i64 %polly.indvar490.2, %smin990.2
  br i1 %exitcond991.2.not, label %polly.loop_exit489.2, label %polly.loop_header487.2

polly.loop_exit489.2:                             ; preds = %polly.loop_header487.2
  %polly.access.add.Packed_MemRef_call2309498.3 = add nuw nsw i64 %166, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307507.3 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498.3
  %_p_scalar_508.3 = load double, double* %polly.access.Packed_MemRef_call1307507.3, align 8
  %polly.access.Packed_MemRef_call2309499.3 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498.3
  %_p_scalar_500.3 = load double, double* %polly.access.Packed_MemRef_call2309499.3, align 8
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %smin1204, i32 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1219 = insertelement <4 x double> poison, double %_p_scalar_500.3, i32 0
  %broadcast.splat1220 = shufflevector <4 x double> %broadcast.splatinsert1219, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1222 = insertelement <4 x double> poison, double %_p_scalar_508.3, i32 0
  %broadcast.splat1223 = shufflevector <4 x double> %broadcast.splatinsert1222, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_exit489.2
  %index1209 = phi i64 [ 0, %polly.loop_exit489.2 ], [ %index.next1210, %vector.body1201 ]
  %broadcast.splatinsert1215 = insertelement <4 x i64> poison, i64 %index1209, i32 0
  %broadcast.splat1216 = shufflevector <4 x i64> %broadcast.splatinsert1215, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1217 = or <4 x i64> %broadcast.splat1216, <i64 0, i64 1, i64 2, i64 3>
  %332 = icmp ule <4 x i64> %induction1217, %broadcast.splat1214
  %333 = add nuw nsw i64 %index1209, %140
  %334 = add nuw nsw i64 %index1209, %polly.access.mul.Packed_MemRef_call1307493
  %335 = getelementptr double, double* %Packed_MemRef_call1307, i64 %334
  %336 = bitcast double* %335 to <4 x double>*
  %wide.masked.load1218 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %336, i32 8, <4 x i1> %332, <4 x double> poison)
  %337 = fmul fast <4 x double> %broadcast.splat1220, %wide.masked.load1218
  %338 = getelementptr double, double* %Packed_MemRef_call2309, i64 %334
  %339 = bitcast double* %338 to <4 x double>*
  %wide.masked.load1221 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %339, i32 8, <4 x i1> %332, <4 x double> poison)
  %340 = fmul fast <4 x double> %broadcast.splat1223, %wide.masked.load1221
  %341 = shl i64 %333, 3
  %342 = add nuw nsw i64 %341, %168
  %343 = getelementptr i8, i8* %call, i64 %342
  %344 = bitcast i8* %343 to <4 x double>*
  %wide.masked.load1224 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %344, i32 8, <4 x i1> %332, <4 x double> poison), !alias.scope !84, !noalias !86
  %345 = fadd fast <4 x double> %340, %337
  %346 = fmul fast <4 x double> %345, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %347 = fadd fast <4 x double> %346, %wide.masked.load1224
  %348 = bitcast i8* %343 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %347, <4 x double>* %348, i32 8, <4 x i1> %332), !alias.scope !84, !noalias !86
  %index.next1210 = add i64 %index1209, 4
  %349 = or i64 %index1209, 3
  %350 = icmp eq i64 %349, %smin1204
  br i1 %350, label %polly.loop_exit489.3, label %vector.body1201, !llvm.loop !120

polly.loop_exit489.3:                             ; preds = %vector.body1201
  %polly.indvar_next479 = add nuw nsw i64 %polly.indvar478, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next479, 50
  br i1 %exitcond993.not, label %polly.loop_exit477, label %polly.loop_header475

polly.loop_header671.1:                           ; preds = %polly.loop_header652
  %polly.access.add.call1680.1 = add nuw nsw i64 %200, %polly.access.mul.call1679.us.1
  %polly.access.call1681.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.1
  %polly.access.call1681.load.1 = load double, double* %polly.access.call1681.1, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.1 = add nuw nsw i64 %polly.indvar_next676.us, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.1
  store double %polly.access.call1681.load.1, double* %polly.access.Packed_MemRef_call1517684.1, align 8
  %polly.access.add.call1680.2 = add nuw nsw i64 %200, %polly.access.mul.call1679.us.2
  %polly.access.call1681.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.2
  %polly.access.call1681.load.2 = load double, double* %polly.access.call1681.2, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.2 = add nuw nsw i64 %polly.indvar_next676.us.1, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.2
  store double %polly.access.call1681.load.2, double* %polly.access.Packed_MemRef_call1517684.2, align 8
  %polly.access.add.call1680.3 = add nuw nsw i64 %200, %polly.access.mul.call1679.us.3
  %polly.access.call1681.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.3
  %polly.access.call1681.load.3 = load double, double* %polly.access.call1681.3, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.3 = add nuw nsw i64 %polly.indvar_next676.us.2, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.3
  store double %polly.access.call1681.load.3, double* %polly.access.Packed_MemRef_call1517684.3, align 8
  br label %polly.loop_exit673

polly.loop_header671.us.1:                        ; preds = %polly.loop_exit661.loopexit.us
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %198, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.us.1 = add nuw nsw i64 %polly.indvar_next676.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1517684.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %198, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.us.2 = add nuw nsw i64 %polly.indvar_next676.us.1, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1517684.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %198, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1517683.us.3 = add nuw nsw i64 %polly.indvar_next676.us.2, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1517684.us.3, align 8
  br label %polly.loop_exit673.us

polly.loop_header697.1:                           ; preds = %polly.loop_header697.1, %polly.loop_exit699
  %polly.indvar700.1 = phi i64 [ 0, %polly.loop_exit699 ], [ %polly.indvar_next701.1, %polly.loop_header697.1 ]
  %351 = add nuw nsw i64 %polly.indvar700.1, %182
  %polly.access.add.Packed_MemRef_call1517704.1 = add nuw nsw i64 %polly.indvar700.1, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517705.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517704.1
  %_p_scalar_706.1 = load double, double* %polly.access.Packed_MemRef_call1517705.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_710.1, %_p_scalar_706.1
  %polly.access.Packed_MemRef_call2519713.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517704.1
  %_p_scalar_714.1 = load double, double* %polly.access.Packed_MemRef_call2519713.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_718.1, %_p_scalar_714.1
  %352 = shl i64 %351, 3
  %353 = add nuw nsw i64 %352, %204
  %scevgep719.1 = getelementptr i8, i8* %call, i64 %353
  %scevgep719720.1 = bitcast i8* %scevgep719.1 to double*
  %_p_scalar_721.1 = load double, double* %scevgep719720.1, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_721.1
  store double %p_add42.i.1, double* %scevgep719720.1, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next701.1 = add nuw nsw i64 %polly.indvar700.1, 1
  %exitcond1011.1.not = icmp eq i64 %polly.indvar700.1, %smin1010.1
  br i1 %exitcond1011.1.not, label %polly.loop_exit699.1, label %polly.loop_header697.1

polly.loop_exit699.1:                             ; preds = %polly.loop_header697.1
  %polly.access.add.Packed_MemRef_call2519708.2 = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call2519709.2 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708.2
  %_p_scalar_710.2 = load double, double* %polly.access.Packed_MemRef_call2519709.2, align 8
  %polly.access.Packed_MemRef_call1517717.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708.2
  %_p_scalar_718.2 = load double, double* %polly.access.Packed_MemRef_call1517717.2, align 8
  br label %polly.loop_header697.2

polly.loop_header697.2:                           ; preds = %polly.loop_header697.2, %polly.loop_exit699.1
  %polly.indvar700.2 = phi i64 [ 0, %polly.loop_exit699.1 ], [ %polly.indvar_next701.2, %polly.loop_header697.2 ]
  %354 = add nuw nsw i64 %polly.indvar700.2, %182
  %polly.access.add.Packed_MemRef_call1517704.2 = add nuw nsw i64 %polly.indvar700.2, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517705.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517704.2
  %_p_scalar_706.2 = load double, double* %polly.access.Packed_MemRef_call1517705.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_710.2, %_p_scalar_706.2
  %polly.access.Packed_MemRef_call2519713.2 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517704.2
  %_p_scalar_714.2 = load double, double* %polly.access.Packed_MemRef_call2519713.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_718.2, %_p_scalar_714.2
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %207
  %scevgep719.2 = getelementptr i8, i8* %call, i64 %356
  %scevgep719720.2 = bitcast i8* %scevgep719.2 to double*
  %_p_scalar_721.2 = load double, double* %scevgep719720.2, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_721.2
  store double %p_add42.i.2, double* %scevgep719720.2, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next701.2 = add nuw nsw i64 %polly.indvar700.2, 1
  %exitcond1011.2.not = icmp eq i64 %polly.indvar700.2, %smin1010.2
  br i1 %exitcond1011.2.not, label %polly.loop_exit699.2, label %polly.loop_header697.2

polly.loop_exit699.2:                             ; preds = %polly.loop_header697.2
  %polly.access.add.Packed_MemRef_call2519708.3 = add nuw nsw i64 %208, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517717.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708.3
  %_p_scalar_718.3 = load double, double* %polly.access.Packed_MemRef_call1517717.3, align 8
  %polly.access.Packed_MemRef_call2519709.3 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708.3
  %_p_scalar_710.3 = load double, double* %polly.access.Packed_MemRef_call2519709.3, align 8
  %broadcast.splatinsert1163 = insertelement <4 x i64> poison, i64 %smin1156, i32 0
  %broadcast.splat1164 = shufflevector <4 x i64> %broadcast.splatinsert1163, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1167 = insertelement <4 x double> poison, double %_p_scalar_710.3, i32 0
  %broadcast.splat1168 = shufflevector <4 x double> %broadcast.splatinsert1167, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1170 = insertelement <4 x double> poison, double %_p_scalar_718.3, i32 0
  %broadcast.splat1171 = shufflevector <4 x double> %broadcast.splatinsert1170, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_exit699.2
  %index1160 = phi i64 [ 0, %polly.loop_exit699.2 ], [ %index.next1161, %vector.body1153 ]
  %broadcast.splatinsert1165 = insertelement <4 x i64> poison, i64 %index1160, i32 0
  %broadcast.splat1166 = shufflevector <4 x i64> %broadcast.splatinsert1165, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1166, <i64 0, i64 1, i64 2, i64 3>
  %357 = icmp ule <4 x i64> %induction, %broadcast.splat1164
  %358 = add nuw nsw i64 %index1160, %182
  %359 = add nuw nsw i64 %index1160, %polly.access.mul.Packed_MemRef_call1517703
  %360 = getelementptr double, double* %Packed_MemRef_call1517, i64 %359
  %361 = bitcast double* %360 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %361, i32 8, <4 x i1> %357, <4 x double> poison)
  %362 = fmul fast <4 x double> %broadcast.splat1168, %wide.masked.load
  %363 = getelementptr double, double* %Packed_MemRef_call2519, i64 %359
  %364 = bitcast double* %363 to <4 x double>*
  %wide.masked.load1169 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %364, i32 8, <4 x i1> %357, <4 x double> poison)
  %365 = fmul fast <4 x double> %broadcast.splat1171, %wide.masked.load1169
  %366 = shl i64 %358, 3
  %367 = add nuw nsw i64 %366, %210
  %368 = getelementptr i8, i8* %call, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  %wide.masked.load1172 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %369, i32 8, <4 x i1> %357, <4 x double> poison), !alias.scope !95, !noalias !97
  %370 = fadd fast <4 x double> %365, %362
  %371 = fmul fast <4 x double> %370, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %372 = fadd fast <4 x double> %371, %wide.masked.load1172
  %373 = bitcast i8* %368 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %372, <4 x double>* %373, i32 8, <4 x i1> %357), !alias.scope !95, !noalias !97
  %index.next1161 = add i64 %index1160, 4
  %374 = or i64 %index1160, 3
  %375 = icmp eq i64 %374, %smin1156
  br i1 %375, label %polly.loop_exit699.3, label %vector.body1153, !llvm.loop !121

polly.loop_exit699.3:                             ; preds = %vector.body1153
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next689, 50
  br i1 %exitcond1013.not, label %polly.loop_exit687, label %polly.loop_header685
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

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>*, i32 immarg, <4 x i1>, <4 x double>) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.v4f64.p0v4f64(<4 x double>, <4 x double>*, i32 immarg, <4 x i1>) #7

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!26 = !{!"llvm.loop.tile.size", i32 8}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 4}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89, !90}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !81, !13}
!93 = !{!84, !87, !89, !90}
!94 = !{!84, !88, !89, !90}
!95 = distinct !{!95, !96, !"polly.alias.scope.MemRef_call"}
!96 = distinct !{!96, !"polly.alias.scope.domain"}
!97 = !{!98, !99, !100, !101}
!98 = distinct !{!98, !96, !"polly.alias.scope.MemRef_call1"}
!99 = distinct !{!99, !96, !"polly.alias.scope.MemRef_call2"}
!100 = distinct !{!100, !96, !"polly.alias.scope.Packed_MemRef_call1"}
!101 = distinct !{!101, !96, !"polly.alias.scope.Packed_MemRef_call2"}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !81, !13}
!104 = !{!95, !98, !100, !101}
!105 = !{!95, !99, !100, !101}
!106 = distinct !{!106, !107, !"polly.alias.scope.MemRef_call"}
!107 = distinct !{!107, !"polly.alias.scope.domain"}
!108 = !{!109, !110}
!109 = distinct !{!109, !107, !"polly.alias.scope.MemRef_call1"}
!110 = distinct !{!110, !107, !"polly.alias.scope.MemRef_call2"}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !81, !13}
!113 = !{!109, !106}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !81, !13}
!116 = !{!110, !106}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
