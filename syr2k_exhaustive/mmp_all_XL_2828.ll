; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2828.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2828.c"
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
  %call809 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1661 = bitcast i8* %call1 to double*
  %polly.access.call1670 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1670, %call2
  %polly.access.call2690 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2690, %call1
  %2 = or i1 %0, %1
  %polly.access.call710 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call710, %call2
  %4 = icmp ule i8* %polly.access.call2690, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call710, %call1
  %8 = icmp ule i8* %polly.access.call1670, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header783, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1003 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1002 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1001 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1000 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1000, %scevgep1003
  %bound1 = icmp ult i8* %scevgep1002, %scevgep1001
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
  br i1 %exitcond18.not.i, label %vector.ph1007, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1007:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1014 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1015 = shufflevector <4 x i64> %broadcast.splatinsert1014, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1007
  %index1008 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1009, %vector.body1006 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1007 ], [ %vec.ind.next1013, %vector.body1006 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1012, %broadcast.splat1015
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv7.i, i64 %index1008
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1009, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1006, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1006
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1007, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit844
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1069 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1069, label %for.body3.i46.preheader1146, label %vector.ph1070

vector.ph1070:                                    ; preds = %for.body3.i46.preheader
  %n.vec1072 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %vector.ph1070
  %index1073 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1074, %vector.body1068 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %index1073
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1074 = add i64 %index1073, 4
  %46 = icmp eq i64 %index.next1074, %n.vec1072
  br i1 %46, label %middle.block1066, label %vector.body1068, !llvm.loop !18

middle.block1066:                                 ; preds = %vector.body1068
  %cmp.n1076 = icmp eq i64 %indvars.iv21.i, %n.vec1072
  br i1 %cmp.n1076, label %for.inc6.i, label %for.body3.i46.preheader1146

for.body3.i46.preheader1146:                      ; preds = %for.body3.i46.preheader, %middle.block1066
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1072, %middle.block1066 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1146, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1146 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1066, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1092 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1092, label %for.body3.i60.preheader1144, label %vector.ph1093

vector.ph1093:                                    ; preds = %for.body3.i60.preheader
  %n.vec1095 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %vector.ph1093
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1097, %vector.body1091 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %index1096
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1100 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1100, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1097 = add i64 %index1096, 4
  %57 = icmp eq i64 %index.next1097, %n.vec1095
  br i1 %57, label %middle.block1089, label %vector.body1091, !llvm.loop !59

middle.block1089:                                 ; preds = %vector.body1091
  %cmp.n1099 = icmp eq i64 %indvars.iv21.i52, %n.vec1095
  br i1 %cmp.n1099, label %for.inc6.i63, label %for.body3.i60.preheader1144

for.body3.i60.preheader1144:                      ; preds = %for.body3.i60.preheader, %middle.block1089
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1095, %middle.block1089 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1144, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1144 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1089, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1118 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1118, label %for.body3.i99.preheader1142, label %vector.ph1119

vector.ph1119:                                    ; preds = %for.body3.i99.preheader
  %n.vec1121 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %vector.ph1119
  %index1122 = phi i64 [ 0, %vector.ph1119 ], [ %index.next1123, %vector.body1117 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %index1122
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1126 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1126, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1123 = add i64 %index1122, 4
  %68 = icmp eq i64 %index.next1123, %n.vec1121
  br i1 %68, label %middle.block1115, label %vector.body1117, !llvm.loop !61

middle.block1115:                                 ; preds = %vector.body1117
  %cmp.n1125 = icmp eq i64 %indvars.iv21.i91, %n.vec1121
  br i1 %cmp.n1125, label %for.inc6.i102, label %for.body3.i99.preheader1142

for.body3.i99.preheader1142:                      ; preds = %for.body3.i99.preheader, %middle.block1115
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1121, %middle.block1115 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1142, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1142 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1115, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1130 = phi i64 [ %indvar.next1131, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1130, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1132 = icmp ult i64 %88, 4
  br i1 %min.iters.check1132, label %polly.loop_header191.preheader, label %vector.ph1133

vector.ph1133:                                    ; preds = %polly.loop_header
  %n.vec1135 = and i64 %88, -4
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1137, %vector.body1129 ]
  %90 = shl nuw nsw i64 %index1136, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1140 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1140, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1137 = add i64 %index1136, 4
  %95 = icmp eq i64 %index.next1137, %n.vec1135
  br i1 %95, label %middle.block1127, label %vector.body1129, !llvm.loop !73

middle.block1127:                                 ; preds = %vector.body1129
  %cmp.n1139 = icmp eq i64 %88, %n.vec1135
  br i1 %cmp.n1139, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1127
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1135, %middle.block1127 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1127
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1131 = add i64 %indvar1130, 1
  br i1 %exitcond913.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond912.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -968)
  %97 = add nsw i64 %smin907, 1000
  %98 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond911.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond911.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %99 = shl nsw i64 %polly.indvar208, 3
  %100 = mul nsw i64 %polly.indvar208, -8
  %polly.access.mul.call1230 = mul nsw i64 %polly.indvar208, 8000
  %101 = or i64 %99, 1
  %polly.access.mul.call1230.1 = mul nuw nsw i64 %101, 1000
  %102 = or i64 %99, 2
  %polly.access.mul.call1230.2 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %99, 3
  %polly.access.mul.call1230.3 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %99, 4
  %polly.access.mul.call1230.4 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %99, 5
  %polly.access.mul.call1230.5 = mul nuw nsw i64 %105, 1000
  %106 = or i64 %99, 6
  %polly.access.mul.call1230.6 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %99, 7
  %polly.access.mul.call1230.7 = mul nuw nsw i64 %107, 1000
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 8000
  %108 = or i64 %99, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %99, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %99, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %99, 4
  %polly.access.mul.call1230.us.4 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %99, 5
  %polly.access.mul.call1230.us.5 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %99, 6
  %polly.access.mul.call1230.us.6 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %99, 7
  %polly.access.mul.call1230.us.7 = mul nuw nsw i64 %114, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next209, 150
  br i1 %exitcond910.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit248 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %polly.indvar208, %polly.loop_header205 ]
  %115 = shl nsw i64 %polly.indvar214, 3
  %116 = add nsw i64 %115, %100
  %117 = icmp ugt i64 %116, 8
  %118 = select i1 %117, i64 %116, i64 8
  %119 = or i64 %116, 7
  %polly.loop_guard.not = icmp ugt i64 %118, %119
  br i1 %polly.loop_guard.not, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211 ]
  %120 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %120
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %120
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %120
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %120
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %polly.access.mul.call1230.us.4, %120
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.4
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1232.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %polly.access.mul.call1230.us.5, %120
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.5
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1232.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %polly.access.mul.call1230.us.6, %120
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.6
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1232.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %polly.access.mul.call1230.us.7, %120
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.7
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1232.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond899.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_exit248:                               ; preds = %polly.loop_exit260.7
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next901 = add nuw nsw i64 %indvars.iv900, 8
  %exitcond909.not = icmp eq i64 %polly.indvar_next215, 150
  br i1 %exitcond909.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211 ]
  %121 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.call1231 = add nuw nsw i64 %polly.access.mul.call1230, %121
  %polly.access.call1232 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231
  %polly.access.call1232.load = load double, double* %polly.access.call1232, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1232.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1231.1 = add nuw nsw i64 %polly.access.mul.call1230.1, %121
  %polly.access.call1232.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.1
  %polly.access.call1232.load.1 = load double, double* %polly.access.call1232.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1232.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1231.2 = add nuw nsw i64 %polly.access.mul.call1230.2, %121
  %polly.access.call1232.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.2
  %polly.access.call1232.load.2 = load double, double* %polly.access.call1232.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1232.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1231.3 = add nuw nsw i64 %polly.access.mul.call1230.3, %121
  %polly.access.call1232.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.3
  %polly.access.call1232.load.3 = load double, double* %polly.access.call1232.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1232.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.access.add.call1231.4 = add nuw nsw i64 %polly.access.mul.call1230.4, %121
  %polly.access.call1232.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.4
  %polly.access.call1232.load.4 = load double, double* %polly.access.call1232.4, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1232.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1231.5 = add nuw nsw i64 %polly.access.mul.call1230.5, %121
  %polly.access.call1232.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.5
  %polly.access.call1232.load.5 = load double, double* %polly.access.call1232.5, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1232.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1231.6 = add nuw nsw i64 %polly.access.mul.call1230.6, %121
  %polly.access.call1232.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.6
  %polly.access.call1232.load.6 = load double, double* %polly.access.call1232.6, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1232.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1231.7 = add nuw nsw i64 %polly.access.mul.call1230.7, %121
  %polly.access.call1232.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.7
  %polly.access.call1232.load.7 = load double, double* %polly.access.call1232.7, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1232.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond896.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_header217.us
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 7)
  %122 = mul nsw i64 %polly.indvar214, 64000
  %123 = mul nsw i64 %polly.indvar214, 76800
  %indvars.iv.next903 = or i64 %indvars.iv900, 1
  %smin904.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next903, i64 7)
  %124 = or i64 %116, 1
  %125 = or i64 %115, 1
  %126 = mul nuw nsw i64 %125, 8000
  %127 = mul nuw nsw i64 %125, 9600
  %indvars.iv.next903.1 = add nuw nsw i64 %indvars.iv.next903, 1
  %smin904.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next903.1, i64 7)
  %128 = or i64 %116, 2
  %129 = or i64 %115, 2
  %130 = mul nuw nsw i64 %129, 8000
  %131 = mul nuw nsw i64 %129, 9600
  %indvars.iv.next903.2 = or i64 %indvars.iv900, 3
  %smin904.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next903.2, i64 7)
  %132 = or i64 %116, 3
  %133 = or i64 %115, 3
  %134 = mul nuw nsw i64 %133, 8000
  %135 = mul nuw nsw i64 %133, 9600
  %indvars.iv.next903.3 = add nuw nsw i64 %indvars.iv.next903.2, 1
  %smin904.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next903.3, i64 7)
  %136 = or i64 %116, 4
  %137 = or i64 %115, 4
  %138 = mul nuw nsw i64 %137, 8000
  %139 = mul nuw nsw i64 %137, 9600
  %indvars.iv.next903.4 = add nuw nsw i64 %indvars.iv.next903.2, 2
  %smin904.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next903.4, i64 7)
  %140 = or i64 %116, 5
  %141 = or i64 %115, 5
  %142 = mul nuw nsw i64 %141, 8000
  %143 = mul nuw nsw i64 %141, 9600
  %indvars.iv.next903.5 = add nuw nsw i64 %indvars.iv.next903.2, 3
  %smin904.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next903.5, i64 7)
  %144 = or i64 %116, 6
  %145 = or i64 %115, 6
  %146 = mul nuw nsw i64 %145, 8000
  %147 = mul nuw nsw i64 %145, 9600
  %148 = or i64 %116, 7
  %149 = or i64 %115, 7
  %150 = mul nuw nsw i64 %149, 8000
  %151 = mul nuw nsw i64 %149, 9600
  br label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %118, %polly.loop_header217 ]
  %152 = add nuw nsw i64 %polly.indvar236, %99
  %polly.access.mul.call1240 = mul nuw nsw i64 %152, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %121
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %119
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit260.7
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit260.7 ], [ 0, %polly.loop_header246.preheader ]
  %153 = add nuw nsw i64 %polly.indvar249, %98
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar249, 1200
  %154 = shl i64 %153, 3
  %155 = add nuw nsw i64 %122, %154
  %scevgep268 = getelementptr i8, i8* %call2, i64 %155
  %scevgep268269 = bitcast i8* %scevgep268 to double*
  %_p_scalar_270 = load double, double* %scevgep268269, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275 = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  br label %polly.loop_header258

polly.loop_exit260:                               ; preds = %polly.loop_header258
  %156 = add nuw nsw i64 %126, %154
  %scevgep268.1 = getelementptr i8, i8* %call2, i64 %156
  %scevgep268269.1 = bitcast i8* %scevgep268.1 to double*
  %_p_scalar_270.1 = load double, double* %scevgep268269.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.1 = add nuw nsw i64 %124, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header258.1

polly.loop_header258:                             ; preds = %polly.loop_header258, %polly.loop_header246
  %polly.indvar261 = phi i64 [ 0, %polly.loop_header246 ], [ %polly.indvar_next262, %polly.loop_header258 ]
  %157 = add nuw nsw i64 %polly.indvar261, %99
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar261, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call1266, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_270, %_p_scalar_267
  %158 = mul nuw nsw i64 %157, 8000
  %159 = add nuw nsw i64 %158, %154
  %scevgep271 = getelementptr i8, i8* %call2, i64 %159
  %scevgep271272 = bitcast i8* %scevgep271 to double*
  %_p_scalar_273 = load double, double* %scevgep271272, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %160 = shl i64 %157, 3
  %161 = add nuw nsw i64 %160, %123
  %scevgep278 = getelementptr i8, i8* %call, i64 %161
  %scevgep278279 = bitcast i8* %scevgep278 to double*
  %_p_scalar_280 = load double, double* %scevgep278279, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_280
  store double %p_add42.i118, double* %scevgep278279, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262 = add nuw nsw i64 %polly.indvar261, 1
  %exitcond905.not = icmp eq i64 %polly.indvar261, %smin904
  br i1 %exitcond905.not, label %polly.loop_exit260, label %polly.loop_header258

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* nonnull %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1104 = phi i64 [ %indvar.next1105, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %162 = add i64 %indvar1104, 1
  %163 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1106 = icmp ult i64 %162, 4
  br i1 %min.iters.check1106, label %polly.loop_header375.preheader, label %vector.ph1107

vector.ph1107:                                    ; preds = %polly.loop_header369
  %n.vec1109 = and i64 %162, -4
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1107
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1111, %vector.body1103 ]
  %164 = shl nuw nsw i64 %index1110, 3
  %165 = getelementptr i8, i8* %scevgep381, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1114 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !78, !noalias !80
  %167 = fmul fast <4 x double> %wide.load1114, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !78, !noalias !80
  %index.next1111 = add i64 %index1110, 4
  %169 = icmp eq i64 %index.next1111, %n.vec1109
  br i1 %169, label %middle.block1101, label %vector.body1103, !llvm.loop !84

middle.block1101:                                 ; preds = %vector.body1103
  %cmp.n1113 = icmp eq i64 %162, %n.vec1109
  br i1 %cmp.n1113, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1101
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1109, %middle.block1101 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1101
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1105 = add i64 %indvar1104, 1
  br i1 %exitcond935.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %170
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond934.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond934.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !85

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv915 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next916, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %smin929 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 -968)
  %171 = add nsw i64 %smin929, 1000
  %172 = shl nsw i64 %polly.indvar388, 5
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, -32
  %exitcond933.not = icmp eq i64 %polly.indvar_next389, 32
  br i1 %exitcond933.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %173 = shl nsw i64 %polly.indvar394, 3
  %174 = mul nsw i64 %polly.indvar394, -8
  %polly.access.mul.call1416 = mul nsw i64 %polly.indvar394, 8000
  %175 = or i64 %173, 1
  %polly.access.mul.call1416.1 = mul nuw nsw i64 %175, 1000
  %176 = or i64 %173, 2
  %polly.access.mul.call1416.2 = mul nuw nsw i64 %176, 1000
  %177 = or i64 %173, 3
  %polly.access.mul.call1416.3 = mul nuw nsw i64 %177, 1000
  %178 = or i64 %173, 4
  %polly.access.mul.call1416.4 = mul nuw nsw i64 %178, 1000
  %179 = or i64 %173, 5
  %polly.access.mul.call1416.5 = mul nuw nsw i64 %179, 1000
  %180 = or i64 %173, 6
  %polly.access.mul.call1416.6 = mul nuw nsw i64 %180, 1000
  %181 = or i64 %173, 7
  %polly.access.mul.call1416.7 = mul nuw nsw i64 %181, 1000
  %polly.access.mul.call1416.us = mul nsw i64 %polly.indvar394, 8000
  %182 = or i64 %173, 1
  %polly.access.mul.call1416.us.1 = mul nuw nsw i64 %182, 1000
  %183 = or i64 %173, 2
  %polly.access.mul.call1416.us.2 = mul nuw nsw i64 %183, 1000
  %184 = or i64 %173, 3
  %polly.access.mul.call1416.us.3 = mul nuw nsw i64 %184, 1000
  %185 = or i64 %173, 4
  %polly.access.mul.call1416.us.4 = mul nuw nsw i64 %185, 1000
  %186 = or i64 %173, 5
  %polly.access.mul.call1416.us.5 = mul nuw nsw i64 %186, 1000
  %187 = or i64 %173, 6
  %polly.access.mul.call1416.us.6 = mul nuw nsw i64 %187, 1000
  %188 = or i64 %173, 7
  %polly.access.mul.call1416.us.7 = mul nuw nsw i64 %188, 1000
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit436
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next395, 150
  br i1 %exitcond932.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit436, %polly.loop_header391
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %polly.loop_exit436 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit436 ], [ %polly.indvar394, %polly.loop_header391 ]
  %189 = shl nsw i64 %polly.indvar400, 3
  %190 = add nsw i64 %189, %174
  %191 = icmp ugt i64 %190, 8
  %192 = select i1 %191, i64 %190, i64 8
  %193 = or i64 %190, 7
  %polly.loop_guard423.not = icmp ugt i64 %192, %193
  br i1 %polly.loop_guard423.not, label %polly.loop_header403.us, label %polly.loop_header403

polly.loop_header403.us:                          ; preds = %polly.loop_header397, %polly.loop_header403.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_header403.us ], [ 0, %polly.loop_header397 ]
  %194 = add nuw nsw i64 %polly.indvar406.us, %172
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar406.us, 1200
  %polly.access.add.call1417.us = add nuw nsw i64 %polly.access.mul.call1416.us, %194
  %polly.access.call1418.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us
  %polly.access.call1418.load.us = load double, double* %polly.access.call1418.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286.us
  store double %polly.access.call1418.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.access.add.call1417.us.1 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %194
  %polly.access.call1418.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1
  %polly.access.call1418.load.us.1 = load double, double* %polly.access.call1418.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 1
  %polly.access.Packed_MemRef_call1286.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  store double %polly.access.call1418.load.us.1, double* %polly.access.Packed_MemRef_call1286.us.1, align 8
  %polly.access.add.call1417.us.2 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %194
  %polly.access.call1418.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2
  %polly.access.call1418.load.us.2 = load double, double* %polly.access.call1418.us.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 2
  %polly.access.Packed_MemRef_call1286.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  store double %polly.access.call1418.load.us.2, double* %polly.access.Packed_MemRef_call1286.us.2, align 8
  %polly.access.add.call1417.us.3 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %194
  %polly.access.call1418.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3
  %polly.access.call1418.load.us.3 = load double, double* %polly.access.call1418.us.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 3
  %polly.access.Packed_MemRef_call1286.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  store double %polly.access.call1418.load.us.3, double* %polly.access.Packed_MemRef_call1286.us.3, align 8
  %polly.access.add.call1417.us.4 = add nuw nsw i64 %polly.access.mul.call1416.us.4, %194
  %polly.access.call1418.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.4
  %polly.access.call1418.load.us.4 = load double, double* %polly.access.call1418.us.4, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 4
  %polly.access.Packed_MemRef_call1286.us.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.4
  store double %polly.access.call1418.load.us.4, double* %polly.access.Packed_MemRef_call1286.us.4, align 8
  %polly.access.add.call1417.us.5 = add nuw nsw i64 %polly.access.mul.call1416.us.5, %194
  %polly.access.call1418.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.5
  %polly.access.call1418.load.us.5 = load double, double* %polly.access.call1418.us.5, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 5
  %polly.access.Packed_MemRef_call1286.us.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.5
  store double %polly.access.call1418.load.us.5, double* %polly.access.Packed_MemRef_call1286.us.5, align 8
  %polly.access.add.call1417.us.6 = add nuw nsw i64 %polly.access.mul.call1416.us.6, %194
  %polly.access.call1418.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.6
  %polly.access.call1418.load.us.6 = load double, double* %polly.access.call1418.us.6, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 6
  %polly.access.Packed_MemRef_call1286.us.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.6
  store double %polly.access.call1418.load.us.6, double* %polly.access.Packed_MemRef_call1286.us.6, align 8
  %polly.access.add.call1417.us.7 = add nuw nsw i64 %polly.access.mul.call1416.us.7, %194
  %polly.access.call1418.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.7
  %polly.access.call1418.load.us.7 = load double, double* %polly.access.call1418.us.7, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 7
  %polly.access.Packed_MemRef_call1286.us.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.7
  store double %polly.access.call1418.load.us.7, double* %polly.access.Packed_MemRef_call1286.us.7, align 8
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond921.not = icmp eq i64 %polly.indvar_next407.us, %171
  br i1 %exitcond921.not, label %polly.loop_header434.preheader, label %polly.loop_header403.us

polly.loop_exit436:                               ; preds = %polly.loop_exit448.7
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 8
  %exitcond931.not = icmp eq i64 %polly.indvar_next401, 150
  br i1 %exitcond931.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header403:                             ; preds = %polly.loop_header397, %polly.loop_exit422
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit422 ], [ 0, %polly.loop_header397 ]
  %195 = add nuw nsw i64 %polly.indvar406, %172
  %polly.access.mul.Packed_MemRef_call1286 = mul nuw nsw i64 %polly.indvar406, 1200
  %polly.access.add.call1417 = add nuw nsw i64 %polly.access.mul.call1416, %195
  %polly.access.call1418 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417
  %polly.access.call1418.load = load double, double* %polly.access.call1418, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286
  store double %polly.access.call1418.load, double* %polly.access.Packed_MemRef_call1286, align 8
  %polly.access.add.call1417.1 = add nuw nsw i64 %polly.access.mul.call1416.1, %195
  %polly.access.call1418.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.1
  %polly.access.call1418.load.1 = load double, double* %polly.access.call1418.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.1 = or i64 %polly.access.mul.Packed_MemRef_call1286, 1
  %polly.access.Packed_MemRef_call1286.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.1
  store double %polly.access.call1418.load.1, double* %polly.access.Packed_MemRef_call1286.1, align 8
  %polly.access.add.call1417.2 = add nuw nsw i64 %polly.access.mul.call1416.2, %195
  %polly.access.call1418.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.2
  %polly.access.call1418.load.2 = load double, double* %polly.access.call1418.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.2 = or i64 %polly.access.mul.Packed_MemRef_call1286, 2
  %polly.access.Packed_MemRef_call1286.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.2
  store double %polly.access.call1418.load.2, double* %polly.access.Packed_MemRef_call1286.2, align 8
  %polly.access.add.call1417.3 = add nuw nsw i64 %polly.access.mul.call1416.3, %195
  %polly.access.call1418.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.3
  %polly.access.call1418.load.3 = load double, double* %polly.access.call1418.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.3 = or i64 %polly.access.mul.Packed_MemRef_call1286, 3
  %polly.access.Packed_MemRef_call1286.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.3
  store double %polly.access.call1418.load.3, double* %polly.access.Packed_MemRef_call1286.3, align 8
  %polly.access.add.call1417.4 = add nuw nsw i64 %polly.access.mul.call1416.4, %195
  %polly.access.call1418.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.4
  %polly.access.call1418.load.4 = load double, double* %polly.access.call1418.4, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.4 = or i64 %polly.access.mul.Packed_MemRef_call1286, 4
  %polly.access.Packed_MemRef_call1286.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.4
  store double %polly.access.call1418.load.4, double* %polly.access.Packed_MemRef_call1286.4, align 8
  %polly.access.add.call1417.5 = add nuw nsw i64 %polly.access.mul.call1416.5, %195
  %polly.access.call1418.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.5
  %polly.access.call1418.load.5 = load double, double* %polly.access.call1418.5, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.5 = or i64 %polly.access.mul.Packed_MemRef_call1286, 5
  %polly.access.Packed_MemRef_call1286.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.5
  store double %polly.access.call1418.load.5, double* %polly.access.Packed_MemRef_call1286.5, align 8
  %polly.access.add.call1417.6 = add nuw nsw i64 %polly.access.mul.call1416.6, %195
  %polly.access.call1418.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.6
  %polly.access.call1418.load.6 = load double, double* %polly.access.call1418.6, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.6 = or i64 %polly.access.mul.Packed_MemRef_call1286, 6
  %polly.access.Packed_MemRef_call1286.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.6
  store double %polly.access.call1418.load.6, double* %polly.access.Packed_MemRef_call1286.6, align 8
  %polly.access.add.call1417.7 = add nuw nsw i64 %polly.access.mul.call1416.7, %195
  %polly.access.call1418.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.7
  %polly.access.call1418.load.7 = load double, double* %polly.access.call1418.7, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.7 = or i64 %polly.access.mul.Packed_MemRef_call1286, 7
  %polly.access.Packed_MemRef_call1286.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.7
  store double %polly.access.call1418.load.7, double* %polly.access.Packed_MemRef_call1286.7, align 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next407, %171
  br i1 %exitcond918.not, label %polly.loop_header434.preheader, label %polly.loop_header403

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit422, %polly.loop_header403.us
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 7)
  %196 = mul nsw i64 %polly.indvar400, 64000
  %197 = mul nsw i64 %polly.indvar400, 76800
  %indvars.iv.next925 = or i64 %indvars.iv922, 1
  %smin926.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next925, i64 7)
  %198 = or i64 %190, 1
  %199 = or i64 %189, 1
  %200 = mul nuw nsw i64 %199, 8000
  %201 = mul nuw nsw i64 %199, 9600
  %indvars.iv.next925.1 = add nuw nsw i64 %indvars.iv.next925, 1
  %smin926.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next925.1, i64 7)
  %202 = or i64 %190, 2
  %203 = or i64 %189, 2
  %204 = mul nuw nsw i64 %203, 8000
  %205 = mul nuw nsw i64 %203, 9600
  %indvars.iv.next925.2 = or i64 %indvars.iv922, 3
  %smin926.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next925.2, i64 7)
  %206 = or i64 %190, 3
  %207 = or i64 %189, 3
  %208 = mul nuw nsw i64 %207, 8000
  %209 = mul nuw nsw i64 %207, 9600
  %indvars.iv.next925.3 = add nuw nsw i64 %indvars.iv.next925.2, 1
  %smin926.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next925.3, i64 7)
  %210 = or i64 %190, 4
  %211 = or i64 %189, 4
  %212 = mul nuw nsw i64 %211, 8000
  %213 = mul nuw nsw i64 %211, 9600
  %indvars.iv.next925.4 = add nuw nsw i64 %indvars.iv.next925.2, 2
  %smin926.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next925.4, i64 7)
  %214 = or i64 %190, 5
  %215 = or i64 %189, 5
  %216 = mul nuw nsw i64 %215, 8000
  %217 = mul nuw nsw i64 %215, 9600
  %indvars.iv.next925.5 = add nuw nsw i64 %indvars.iv.next925.2, 3
  %smin926.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next925.5, i64 7)
  %218 = or i64 %190, 6
  %219 = or i64 %189, 6
  %220 = mul nuw nsw i64 %219, 8000
  %221 = mul nuw nsw i64 %219, 9600
  %222 = or i64 %190, 7
  %223 = or i64 %189, 7
  %224 = mul nuw nsw i64 %223, 8000
  %225 = mul nuw nsw i64 %223, 9600
  br label %polly.loop_header434

polly.loop_header420:                             ; preds = %polly.loop_header403, %polly.loop_header420
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_header420 ], [ %192, %polly.loop_header403 ]
  %226 = add nuw nsw i64 %polly.indvar424, %173
  %polly.access.mul.call1428 = mul nuw nsw i64 %226, 1000
  %polly.access.add.call1429 = add nuw nsw i64 %polly.access.mul.call1428, %195
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286432 = add nuw nsw i64 %polly.indvar424, %polly.access.mul.Packed_MemRef_call1286
  %polly.access.Packed_MemRef_call1286433 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1286433, align 8
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp ult i64 %polly.indvar424, %193
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit448.7
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_exit448.7 ], [ 0, %polly.loop_header434.preheader ]
  %227 = add nuw nsw i64 %polly.indvar437, %172
  %polly.access.mul.Packed_MemRef_call1286452 = mul nuw nsw i64 %polly.indvar437, 1200
  %228 = shl i64 %227, 3
  %229 = add nuw nsw i64 %196, %228
  %scevgep456 = getelementptr i8, i8* %call2, i64 %229
  %scevgep456457 = bitcast i8* %scevgep456 to double*
  %_p_scalar_458 = load double, double* %scevgep456457, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1286464, align 8
  br label %polly.loop_header446

polly.loop_exit448:                               ; preds = %polly.loop_header446
  %230 = add nuw nsw i64 %200, %228
  %scevgep456.1 = getelementptr i8, i8* %call2, i64 %230
  %scevgep456457.1 = bitcast i8* %scevgep456.1 to double*
  %_p_scalar_458.1 = load double, double* %scevgep456457.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.1 = add nuw nsw i64 %198, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1286464.1, align 8
  br label %polly.loop_header446.1

polly.loop_header446:                             ; preds = %polly.loop_header446, %polly.loop_header434
  %polly.indvar449 = phi i64 [ 0, %polly.loop_header434 ], [ %polly.indvar_next450, %polly.loop_header446 ]
  %231 = add nuw nsw i64 %polly.indvar449, %173
  %polly.access.add.Packed_MemRef_call1286453 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453
  %_p_scalar_455 = load double, double* %polly.access.Packed_MemRef_call1286454, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_458, %_p_scalar_455
  %232 = mul nuw nsw i64 %231, 8000
  %233 = add nuw nsw i64 %232, %228
  %scevgep459 = getelementptr i8, i8* %call2, i64 %233
  %scevgep459460 = bitcast i8* %scevgep459 to double*
  %_p_scalar_461 = load double, double* %scevgep459460, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %234 = shl i64 %231, 3
  %235 = add nuw nsw i64 %234, %197
  %scevgep466 = getelementptr i8, i8* %call, i64 %235
  %scevgep466467 = bitcast i8* %scevgep466 to double*
  %_p_scalar_468 = load double, double* %scevgep466467, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_468
  store double %p_add42.i79, double* %scevgep466467, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond927.not = icmp eq i64 %polly.indvar449, %smin926
  br i1 %exitcond927.not, label %polly.loop_exit448, label %polly.loop_header446

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* nonnull %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %236 = add i64 %indvar, 1
  %237 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %237
  %min.iters.check1080 = icmp ult i64 %236, 4
  br i1 %min.iters.check1080, label %polly.loop_header563.preheader, label %vector.ph1081

vector.ph1081:                                    ; preds = %polly.loop_header557
  %n.vec1083 = and i64 %236, -4
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1081
  %index1084 = phi i64 [ 0, %vector.ph1081 ], [ %index.next1085, %vector.body1079 ]
  %238 = shl nuw nsw i64 %index1084, 3
  %239 = getelementptr i8, i8* %scevgep569, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  %wide.load1088 = load <4 x double>, <4 x double>* %240, align 8, !alias.scope !88, !noalias !90
  %241 = fmul fast <4 x double> %wide.load1088, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %242 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %241, <4 x double>* %242, align 8, !alias.scope !88, !noalias !90
  %index.next1085 = add i64 %index1084, 4
  %243 = icmp eq i64 %index.next1085, %n.vec1083
  br i1 %243, label %middle.block1077, label %vector.body1079, !llvm.loop !94

middle.block1077:                                 ; preds = %vector.body1079
  %cmp.n1087 = icmp eq i64 %236, %n.vec1083
  br i1 %cmp.n1087, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1077
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1083, %middle.block1077 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1077
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond957.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %244 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %244
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond956.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !95

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %indvars.iv937 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next938, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %smin951 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 -968)
  %245 = add nsw i64 %smin951, 1000
  %246 = shl nsw i64 %polly.indvar576, 5
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next938 = add nsw i64 %indvars.iv937, -32
  %exitcond955.not = icmp eq i64 %polly.indvar_next577, 32
  br i1 %exitcond955.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %247 = shl nsw i64 %polly.indvar582, 3
  %248 = mul nsw i64 %polly.indvar582, -8
  %polly.access.mul.call1604 = mul nsw i64 %polly.indvar582, 8000
  %249 = or i64 %247, 1
  %polly.access.mul.call1604.1 = mul nuw nsw i64 %249, 1000
  %250 = or i64 %247, 2
  %polly.access.mul.call1604.2 = mul nuw nsw i64 %250, 1000
  %251 = or i64 %247, 3
  %polly.access.mul.call1604.3 = mul nuw nsw i64 %251, 1000
  %252 = or i64 %247, 4
  %polly.access.mul.call1604.4 = mul nuw nsw i64 %252, 1000
  %253 = or i64 %247, 5
  %polly.access.mul.call1604.5 = mul nuw nsw i64 %253, 1000
  %254 = or i64 %247, 6
  %polly.access.mul.call1604.6 = mul nuw nsw i64 %254, 1000
  %255 = or i64 %247, 7
  %polly.access.mul.call1604.7 = mul nuw nsw i64 %255, 1000
  %polly.access.mul.call1604.us = mul nsw i64 %polly.indvar582, 8000
  %256 = or i64 %247, 1
  %polly.access.mul.call1604.us.1 = mul nuw nsw i64 %256, 1000
  %257 = or i64 %247, 2
  %polly.access.mul.call1604.us.2 = mul nuw nsw i64 %257, 1000
  %258 = or i64 %247, 3
  %polly.access.mul.call1604.us.3 = mul nuw nsw i64 %258, 1000
  %259 = or i64 %247, 4
  %polly.access.mul.call1604.us.4 = mul nuw nsw i64 %259, 1000
  %260 = or i64 %247, 5
  %polly.access.mul.call1604.us.5 = mul nuw nsw i64 %260, 1000
  %261 = or i64 %247, 6
  %polly.access.mul.call1604.us.6 = mul nuw nsw i64 %261, 1000
  %262 = or i64 %247, 7
  %polly.access.mul.call1604.us.7 = mul nuw nsw i64 %262, 1000
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit624
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next583, 150
  br i1 %exitcond954.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit624, %polly.loop_header579
  %indvars.iv944 = phi i64 [ %indvars.iv.next945, %polly.loop_exit624 ], [ 0, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit624 ], [ %polly.indvar582, %polly.loop_header579 ]
  %263 = shl nsw i64 %polly.indvar588, 3
  %264 = add nsw i64 %263, %248
  %265 = icmp ugt i64 %264, 8
  %266 = select i1 %265, i64 %264, i64 8
  %267 = or i64 %264, 7
  %polly.loop_guard611.not = icmp ugt i64 %266, %267
  br i1 %polly.loop_guard611.not, label %polly.loop_header591.us, label %polly.loop_header591

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_header591.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_header591.us ], [ 0, %polly.loop_header585 ]
  %268 = add nuw nsw i64 %polly.indvar594.us, %246
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  %polly.access.add.call1605.us = add nuw nsw i64 %polly.access.mul.call1604.us, %268
  %polly.access.call1606.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us
  %polly.access.call1606.load.us = load double, double* %polly.access.call1606.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474.us
  store double %polly.access.call1606.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.access.add.call1605.us.1 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %268
  %polly.access.call1606.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1
  %polly.access.call1606.load.us.1 = load double, double* %polly.access.call1606.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 1
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.1
  store double %polly.access.call1606.load.us.1, double* %polly.access.Packed_MemRef_call1474.us.1, align 8
  %polly.access.add.call1605.us.2 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %268
  %polly.access.call1606.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2
  %polly.access.call1606.load.us.2 = load double, double* %polly.access.call1606.us.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 2
  %polly.access.Packed_MemRef_call1474.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.2
  store double %polly.access.call1606.load.us.2, double* %polly.access.Packed_MemRef_call1474.us.2, align 8
  %polly.access.add.call1605.us.3 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %268
  %polly.access.call1606.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3
  %polly.access.call1606.load.us.3 = load double, double* %polly.access.call1606.us.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 3
  %polly.access.Packed_MemRef_call1474.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.3
  store double %polly.access.call1606.load.us.3, double* %polly.access.Packed_MemRef_call1474.us.3, align 8
  %polly.access.add.call1605.us.4 = add nuw nsw i64 %polly.access.mul.call1604.us.4, %268
  %polly.access.call1606.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.4
  %polly.access.call1606.load.us.4 = load double, double* %polly.access.call1606.us.4, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 4
  %polly.access.Packed_MemRef_call1474.us.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.4
  store double %polly.access.call1606.load.us.4, double* %polly.access.Packed_MemRef_call1474.us.4, align 8
  %polly.access.add.call1605.us.5 = add nuw nsw i64 %polly.access.mul.call1604.us.5, %268
  %polly.access.call1606.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.5
  %polly.access.call1606.load.us.5 = load double, double* %polly.access.call1606.us.5, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 5
  %polly.access.Packed_MemRef_call1474.us.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.5
  store double %polly.access.call1606.load.us.5, double* %polly.access.Packed_MemRef_call1474.us.5, align 8
  %polly.access.add.call1605.us.6 = add nuw nsw i64 %polly.access.mul.call1604.us.6, %268
  %polly.access.call1606.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.6
  %polly.access.call1606.load.us.6 = load double, double* %polly.access.call1606.us.6, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 6
  %polly.access.Packed_MemRef_call1474.us.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.6
  store double %polly.access.call1606.load.us.6, double* %polly.access.Packed_MemRef_call1474.us.6, align 8
  %polly.access.add.call1605.us.7 = add nuw nsw i64 %polly.access.mul.call1604.us.7, %268
  %polly.access.call1606.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.7
  %polly.access.call1606.load.us.7 = load double, double* %polly.access.call1606.us.7, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 7
  %polly.access.Packed_MemRef_call1474.us.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.7
  store double %polly.access.call1606.load.us.7, double* %polly.access.Packed_MemRef_call1474.us.7, align 8
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond943.not = icmp eq i64 %polly.indvar_next595.us, %245
  br i1 %exitcond943.not, label %polly.loop_header622.preheader, label %polly.loop_header591.us

polly.loop_exit624:                               ; preds = %polly.loop_exit636.7
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 8
  %exitcond953.not = icmp eq i64 %polly.indvar_next589, 150
  br i1 %exitcond953.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header591:                             ; preds = %polly.loop_header585, %polly.loop_exit610
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit610 ], [ 0, %polly.loop_header585 ]
  %269 = add nuw nsw i64 %polly.indvar594, %246
  %polly.access.mul.Packed_MemRef_call1474 = mul nuw nsw i64 %polly.indvar594, 1200
  %polly.access.add.call1605 = add nuw nsw i64 %polly.access.mul.call1604, %269
  %polly.access.call1606 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605
  %polly.access.call1606.load = load double, double* %polly.access.call1606, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474
  store double %polly.access.call1606.load, double* %polly.access.Packed_MemRef_call1474, align 8
  %polly.access.add.call1605.1 = add nuw nsw i64 %polly.access.mul.call1604.1, %269
  %polly.access.call1606.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.1
  %polly.access.call1606.load.1 = load double, double* %polly.access.call1606.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.1 = or i64 %polly.access.mul.Packed_MemRef_call1474, 1
  %polly.access.Packed_MemRef_call1474.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.1
  store double %polly.access.call1606.load.1, double* %polly.access.Packed_MemRef_call1474.1, align 8
  %polly.access.add.call1605.2 = add nuw nsw i64 %polly.access.mul.call1604.2, %269
  %polly.access.call1606.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.2
  %polly.access.call1606.load.2 = load double, double* %polly.access.call1606.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.2 = or i64 %polly.access.mul.Packed_MemRef_call1474, 2
  %polly.access.Packed_MemRef_call1474.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.2
  store double %polly.access.call1606.load.2, double* %polly.access.Packed_MemRef_call1474.2, align 8
  %polly.access.add.call1605.3 = add nuw nsw i64 %polly.access.mul.call1604.3, %269
  %polly.access.call1606.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.3
  %polly.access.call1606.load.3 = load double, double* %polly.access.call1606.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.3 = or i64 %polly.access.mul.Packed_MemRef_call1474, 3
  %polly.access.Packed_MemRef_call1474.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.3
  store double %polly.access.call1606.load.3, double* %polly.access.Packed_MemRef_call1474.3, align 8
  %polly.access.add.call1605.4 = add nuw nsw i64 %polly.access.mul.call1604.4, %269
  %polly.access.call1606.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.4
  %polly.access.call1606.load.4 = load double, double* %polly.access.call1606.4, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.4 = or i64 %polly.access.mul.Packed_MemRef_call1474, 4
  %polly.access.Packed_MemRef_call1474.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.4
  store double %polly.access.call1606.load.4, double* %polly.access.Packed_MemRef_call1474.4, align 8
  %polly.access.add.call1605.5 = add nuw nsw i64 %polly.access.mul.call1604.5, %269
  %polly.access.call1606.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.5
  %polly.access.call1606.load.5 = load double, double* %polly.access.call1606.5, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.5 = or i64 %polly.access.mul.Packed_MemRef_call1474, 5
  %polly.access.Packed_MemRef_call1474.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.5
  store double %polly.access.call1606.load.5, double* %polly.access.Packed_MemRef_call1474.5, align 8
  %polly.access.add.call1605.6 = add nuw nsw i64 %polly.access.mul.call1604.6, %269
  %polly.access.call1606.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.6
  %polly.access.call1606.load.6 = load double, double* %polly.access.call1606.6, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.6 = or i64 %polly.access.mul.Packed_MemRef_call1474, 6
  %polly.access.Packed_MemRef_call1474.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.6
  store double %polly.access.call1606.load.6, double* %polly.access.Packed_MemRef_call1474.6, align 8
  %polly.access.add.call1605.7 = add nuw nsw i64 %polly.access.mul.call1604.7, %269
  %polly.access.call1606.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.7
  %polly.access.call1606.load.7 = load double, double* %polly.access.call1606.7, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.7 = or i64 %polly.access.mul.Packed_MemRef_call1474, 7
  %polly.access.Packed_MemRef_call1474.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.7
  store double %polly.access.call1606.load.7, double* %polly.access.Packed_MemRef_call1474.7, align 8
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next595, %245
  br i1 %exitcond940.not, label %polly.loop_header622.preheader, label %polly.loop_header591

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit610, %polly.loop_header591.us
  %smin948 = call i64 @llvm.smin.i64(i64 %indvars.iv944, i64 7)
  %270 = mul nsw i64 %polly.indvar588, 64000
  %271 = mul nsw i64 %polly.indvar588, 76800
  %indvars.iv.next947 = or i64 %indvars.iv944, 1
  %smin948.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next947, i64 7)
  %272 = or i64 %264, 1
  %273 = or i64 %263, 1
  %274 = mul nuw nsw i64 %273, 8000
  %275 = mul nuw nsw i64 %273, 9600
  %indvars.iv.next947.1 = add nuw nsw i64 %indvars.iv.next947, 1
  %smin948.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next947.1, i64 7)
  %276 = or i64 %264, 2
  %277 = or i64 %263, 2
  %278 = mul nuw nsw i64 %277, 8000
  %279 = mul nuw nsw i64 %277, 9600
  %indvars.iv.next947.2 = or i64 %indvars.iv944, 3
  %smin948.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next947.2, i64 7)
  %280 = or i64 %264, 3
  %281 = or i64 %263, 3
  %282 = mul nuw nsw i64 %281, 8000
  %283 = mul nuw nsw i64 %281, 9600
  %indvars.iv.next947.3 = add nuw nsw i64 %indvars.iv.next947.2, 1
  %smin948.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next947.3, i64 7)
  %284 = or i64 %264, 4
  %285 = or i64 %263, 4
  %286 = mul nuw nsw i64 %285, 8000
  %287 = mul nuw nsw i64 %285, 9600
  %indvars.iv.next947.4 = add nuw nsw i64 %indvars.iv.next947.2, 2
  %smin948.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next947.4, i64 7)
  %288 = or i64 %264, 5
  %289 = or i64 %263, 5
  %290 = mul nuw nsw i64 %289, 8000
  %291 = mul nuw nsw i64 %289, 9600
  %indvars.iv.next947.5 = add nuw nsw i64 %indvars.iv.next947.2, 3
  %smin948.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next947.5, i64 7)
  %292 = or i64 %264, 6
  %293 = or i64 %263, 6
  %294 = mul nuw nsw i64 %293, 8000
  %295 = mul nuw nsw i64 %293, 9600
  %296 = or i64 %264, 7
  %297 = or i64 %263, 7
  %298 = mul nuw nsw i64 %297, 8000
  %299 = mul nuw nsw i64 %297, 9600
  br label %polly.loop_header622

polly.loop_header608:                             ; preds = %polly.loop_header591, %polly.loop_header608
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header608 ], [ %266, %polly.loop_header591 ]
  %300 = add nuw nsw i64 %polly.indvar612, %247
  %polly.access.mul.call1616 = mul nuw nsw i64 %300, 1000
  %polly.access.add.call1617 = add nuw nsw i64 %polly.access.mul.call1616, %269
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474620 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call1474
  %polly.access.Packed_MemRef_call1474621 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1474621, align 8
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %polly.loop_cond614.not.not = icmp ult i64 %polly.indvar612, %267
  br i1 %polly.loop_cond614.not.not, label %polly.loop_header608, label %polly.loop_exit610

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit636.7
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit636.7 ], [ 0, %polly.loop_header622.preheader ]
  %301 = add nuw nsw i64 %polly.indvar625, %246
  %polly.access.mul.Packed_MemRef_call1474640 = mul nuw nsw i64 %polly.indvar625, 1200
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %270, %302
  %scevgep644 = getelementptr i8, i8* %call2, i64 %303
  %scevgep644645 = bitcast i8* %scevgep644 to double*
  %_p_scalar_646 = load double, double* %scevgep644645, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651 = add nuw nsw i64 %264, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1474652, align 8
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_header634
  %304 = add nuw nsw i64 %274, %302
  %scevgep644.1 = getelementptr i8, i8* %call2, i64 %304
  %scevgep644645.1 = bitcast i8* %scevgep644.1 to double*
  %_p_scalar_646.1 = load double, double* %scevgep644645.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.1 = add nuw nsw i64 %272, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1474652.1, align 8
  br label %polly.loop_header634.1

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header622
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header622 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %305 = add nuw nsw i64 %polly.indvar637, %247
  %polly.access.add.Packed_MemRef_call1474641 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call1474642, align 8
  %p_mul27.i = fmul fast double %_p_scalar_646, %_p_scalar_643
  %306 = mul nuw nsw i64 %305, 8000
  %307 = add nuw nsw i64 %306, %302
  %scevgep647 = getelementptr i8, i8* %call2, i64 %307
  %scevgep647648 = bitcast i8* %scevgep647 to double*
  %_p_scalar_649 = load double, double* %scevgep647648, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %308 = shl i64 %305, 3
  %309 = add nuw nsw i64 %308, %271
  %scevgep654 = getelementptr i8, i8* %call, i64 %309
  %scevgep654655 = bitcast i8* %scevgep654 to double*
  %_p_scalar_656 = load double, double* %scevgep654655, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_656
  store double %p_add42.i, double* %scevgep654655, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond949.not = icmp eq i64 %polly.indvar637, %smin948
  br i1 %exitcond949.not, label %polly.loop_exit636, label %polly.loop_header634

polly.loop_header783:                             ; preds = %entry, %polly.loop_exit791
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %polly.loop_exit791 ], [ 0, %entry ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %entry ]
  %smin984 = call i64 @llvm.smin.i64(i64 %indvars.iv982, i64 -1168)
  %310 = shl nsw i64 %polly.indvar786, 5
  %311 = add nsw i64 %smin984, 1199
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next983 = add nsw i64 %indvars.iv982, -32
  %exitcond987.not = icmp eq i64 %polly.indvar_next787, 38
  br i1 %exitcond987.not, label %polly.loop_header810, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %312 = mul nsw i64 %polly.indvar792, -32
  %smin = call i64 @llvm.smin.i64(i64 %312, i64 -1168)
  %313 = add nsw i64 %smin, 1200
  %smin980 = call i64 @llvm.smin.i64(i64 %indvars.iv978, i64 -1168)
  %314 = shl nsw i64 %polly.indvar792, 5
  %315 = add nsw i64 %smin980, 1199
  br label %polly.loop_header795

polly.loop_exit797:                               ; preds = %polly.loop_exit803
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -32
  %exitcond986.not = icmp eq i64 %polly.indvar_next793, 38
  br i1 %exitcond986.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_exit803, %polly.loop_header789
  %polly.indvar798 = phi i64 [ 0, %polly.loop_header789 ], [ %polly.indvar_next799, %polly.loop_exit803 ]
  %316 = add nuw nsw i64 %polly.indvar798, %310
  %317 = trunc i64 %316 to i32
  %318 = mul nuw nsw i64 %316, 9600
  %min.iters.check = icmp eq i64 %313, 0
  br i1 %min.iters.check, label %polly.loop_header801, label %vector.ph1019

vector.ph1019:                                    ; preds = %polly.loop_header795
  %broadcast.splatinsert1026 = insertelement <4 x i64> poison, i64 %314, i32 0
  %broadcast.splat1027 = shufflevector <4 x i64> %broadcast.splatinsert1026, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1019
  %index1020 = phi i64 [ 0, %vector.ph1019 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1019 ], [ %vec.ind.next1025, %vector.body1018 ]
  %319 = add nuw nsw <4 x i64> %vec.ind1024, %broadcast.splat1027
  %320 = trunc <4 x i64> %319 to <4 x i32>
  %321 = mul <4 x i32> %broadcast.splat1029, %320
  %322 = add <4 x i32> %321, <i32 3, i32 3, i32 3, i32 3>
  %323 = urem <4 x i32> %322, <i32 1200, i32 1200, i32 1200, i32 1200>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %326 = extractelement <4 x i64> %319, i32 0
  %327 = shl i64 %326, 3
  %328 = add nuw nsw i64 %327, %318
  %329 = getelementptr i8, i8* %call, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %325, <4 x double>* %330, align 8, !alias.scope !98, !noalias !100
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %331 = icmp eq i64 %index.next1021, %313
  br i1 %331, label %polly.loop_exit803, label %vector.body1018, !llvm.loop !103

polly.loop_exit803:                               ; preds = %vector.body1018, %polly.loop_header801
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond985.not = icmp eq i64 %polly.indvar798, %311
  br i1 %exitcond985.not, label %polly.loop_exit797, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_header795, %polly.loop_header801
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_header801 ], [ 0, %polly.loop_header795 ]
  %332 = add nuw nsw i64 %polly.indvar804, %314
  %333 = trunc i64 %332 to i32
  %334 = mul i32 %333, %317
  %335 = add i32 %334, 3
  %336 = urem i32 %335, 1200
  %p_conv31.i = sitofp i32 %336 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %337 = shl i64 %332, 3
  %338 = add nuw nsw i64 %337, %318
  %scevgep807 = getelementptr i8, i8* %call, i64 %338
  %scevgep807808 = bitcast i8* %scevgep807 to double*
  store double %p_div33.i, double* %scevgep807808, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %exitcond981.not = icmp eq i64 %polly.indvar804, %315
  br i1 %exitcond981.not, label %polly.loop_exit803, label %polly.loop_header801, !llvm.loop !104

polly.loop_header810:                             ; preds = %polly.loop_exit791, %polly.loop_exit818
  %indvars.iv972 = phi i64 [ %indvars.iv.next973, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %polly.indvar813 = phi i64 [ %polly.indvar_next814, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %smin974 = call i64 @llvm.smin.i64(i64 %indvars.iv972, i64 -1168)
  %339 = shl nsw i64 %polly.indvar813, 5
  %340 = add nsw i64 %smin974, 1199
  br label %polly.loop_header816

polly.loop_exit818:                               ; preds = %polly.loop_exit824
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %indvars.iv.next973 = add nsw i64 %indvars.iv972, -32
  %exitcond977.not = icmp eq i64 %polly.indvar_next814, 38
  br i1 %exitcond977.not, label %polly.loop_header836, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_exit824, %polly.loop_header810
  %indvars.iv968 = phi i64 [ %indvars.iv.next969, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %341 = mul nsw i64 %polly.indvar819, -32
  %smin1033 = call i64 @llvm.smin.i64(i64 %341, i64 -968)
  %342 = add nsw i64 %smin1033, 1000
  %smin970 = call i64 @llvm.smin.i64(i64 %indvars.iv968, i64 -968)
  %343 = shl nsw i64 %polly.indvar819, 5
  %344 = add nsw i64 %smin970, 999
  br label %polly.loop_header822

polly.loop_exit824:                               ; preds = %polly.loop_exit830
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %indvars.iv.next969 = add nsw i64 %indvars.iv968, -32
  %exitcond976.not = icmp eq i64 %polly.indvar_next820, 32
  br i1 %exitcond976.not, label %polly.loop_exit818, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_exit830, %polly.loop_header816
  %polly.indvar825 = phi i64 [ 0, %polly.loop_header816 ], [ %polly.indvar_next826, %polly.loop_exit830 ]
  %345 = add nuw nsw i64 %polly.indvar825, %339
  %346 = trunc i64 %345 to i32
  %347 = mul nuw nsw i64 %345, 8000
  %min.iters.check1034 = icmp eq i64 %342, 0
  br i1 %min.iters.check1034, label %polly.loop_header828, label %vector.ph1035

vector.ph1035:                                    ; preds = %polly.loop_header822
  %broadcast.splatinsert1044 = insertelement <4 x i64> poison, i64 %343, i32 0
  %broadcast.splat1045 = shufflevector <4 x i64> %broadcast.splatinsert1044, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1035
  %index1038 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1039, %vector.body1032 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1035 ], [ %vec.ind.next1043, %vector.body1032 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1042, %broadcast.splat1045
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1047, %349
  %351 = add <4 x i32> %350, <i32 2, i32 2, i32 2, i32 2>
  %352 = urem <4 x i32> %351, <i32 1000, i32 1000, i32 1000, i32 1000>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add nuw nsw i64 %356, %347
  %358 = getelementptr i8, i8* %call2, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !102, !noalias !105
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1039, %342
  br i1 %360, label %polly.loop_exit830, label %vector.body1032, !llvm.loop !106

polly.loop_exit830:                               ; preds = %vector.body1032, %polly.loop_header828
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %exitcond975.not = icmp eq i64 %polly.indvar825, %340
  br i1 %exitcond975.not, label %polly.loop_exit824, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_header822, %polly.loop_header828
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_header828 ], [ 0, %polly.loop_header822 ]
  %361 = add nuw nsw i64 %polly.indvar831, %343
  %362 = trunc i64 %361 to i32
  %363 = mul i32 %362, %346
  %364 = add i32 %363, 2
  %365 = urem i32 %364, 1000
  %p_conv10.i = sitofp i32 %365 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %366 = shl i64 %361, 3
  %367 = add nuw nsw i64 %366, %347
  %scevgep834 = getelementptr i8, i8* %call2, i64 %367
  %scevgep834835 = bitcast i8* %scevgep834 to double*
  store double %p_div12.i, double* %scevgep834835, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond971.not = icmp eq i64 %polly.indvar831, %344
  br i1 %exitcond971.not, label %polly.loop_exit830, label %polly.loop_header828, !llvm.loop !107

polly.loop_header836:                             ; preds = %polly.loop_exit818, %polly.loop_exit844
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %smin964 = call i64 @llvm.smin.i64(i64 %indvars.iv962, i64 -1168)
  %368 = shl nsw i64 %polly.indvar839, 5
  %369 = add nsw i64 %smin964, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next963 = add nsw i64 %indvars.iv962, -32
  %exitcond967.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond967.not, label %init_array.exit, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %370 = mul nsw i64 %polly.indvar845, -32
  %smin1051 = call i64 @llvm.smin.i64(i64 %370, i64 -968)
  %371 = add nsw i64 %smin1051, 1000
  %smin960 = call i64 @llvm.smin.i64(i64 %indvars.iv958, i64 -968)
  %372 = shl nsw i64 %polly.indvar845, 5
  %373 = add nsw i64 %smin960, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, -32
  %exitcond966.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond966.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %374 = add nuw nsw i64 %polly.indvar851, %368
  %375 = trunc i64 %374 to i32
  %376 = mul nuw nsw i64 %374, 8000
  %min.iters.check1052 = icmp eq i64 %371, 0
  br i1 %min.iters.check1052, label %polly.loop_header854, label %vector.ph1053

vector.ph1053:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1062 = insertelement <4 x i64> poison, i64 %372, i32 0
  %broadcast.splat1063 = shufflevector <4 x i64> %broadcast.splatinsert1062, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1053
  %index1056 = phi i64 [ 0, %vector.ph1053 ], [ %index.next1057, %vector.body1050 ]
  %vec.ind1060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1053 ], [ %vec.ind.next1061, %vector.body1050 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1060, %broadcast.splat1063
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1065, %378
  %380 = add <4 x i32> %379, <i32 1, i32 1, i32 1, i32 1>
  %381 = urem <4 x i32> %380, <i32 1200, i32 1200, i32 1200, i32 1200>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %376
  %387 = getelementptr i8, i8* %call1, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !101, !noalias !108
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1061 = add <4 x i64> %vec.ind1060, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1057, %371
  br i1 %389, label %polly.loop_exit856, label %vector.body1050, !llvm.loop !109

polly.loop_exit856:                               ; preds = %vector.body1050, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond965.not = icmp eq i64 %polly.indvar851, %369
  br i1 %exitcond965.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %390 = add nuw nsw i64 %polly.indvar857, %372
  %391 = trunc i64 %390 to i32
  %392 = mul i32 %391, %375
  %393 = add i32 %392, 1
  %394 = urem i32 %393, 1200
  %p_conv.i = sitofp i32 %394 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %395 = shl i64 %390, 3
  %396 = add nuw nsw i64 %395, %376
  %scevgep861 = getelementptr i8, i8* %call1, i64 %396
  %scevgep861862 = bitcast i8* %scevgep861 to double*
  store double %p_div.i, double* %scevgep861862, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond961.not = icmp eq i64 %polly.indvar857, %373
  br i1 %exitcond961.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !110

polly.loop_header258.1:                           ; preds = %polly.loop_header258.1, %polly.loop_exit260
  %polly.indvar261.1 = phi i64 [ 0, %polly.loop_exit260 ], [ %polly.indvar_next262.1, %polly.loop_header258.1 ]
  %397 = add nuw nsw i64 %polly.indvar261.1, %99
  %polly.access.add.Packed_MemRef_call1265.1 = add nuw nsw i64 %polly.indvar261.1, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_270.1, %_p_scalar_267.1
  %398 = mul nuw nsw i64 %397, 8000
  %399 = add nuw nsw i64 %398, %154
  %scevgep271.1 = getelementptr i8, i8* %call2, i64 %399
  %scevgep271272.1 = bitcast i8* %scevgep271.1 to double*
  %_p_scalar_273.1 = load double, double* %scevgep271272.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %400 = shl i64 %397, 3
  %401 = add nuw nsw i64 %400, %127
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %401
  %scevgep278279.1 = bitcast i8* %scevgep278.1 to double*
  %_p_scalar_280.1 = load double, double* %scevgep278279.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_280.1
  store double %p_add42.i118.1, double* %scevgep278279.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.1 = add nuw nsw i64 %polly.indvar261.1, 1
  %exitcond905.1.not = icmp eq i64 %polly.indvar261.1, %smin904.1
  br i1 %exitcond905.1.not, label %polly.loop_exit260.1, label %polly.loop_header258.1

polly.loop_exit260.1:                             ; preds = %polly.loop_header258.1
  %402 = add nuw nsw i64 %130, %154
  %scevgep268.2 = getelementptr i8, i8* %call2, i64 %402
  %scevgep268269.2 = bitcast i8* %scevgep268.2 to double*
  %_p_scalar_270.2 = load double, double* %scevgep268269.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.2 = add nuw nsw i64 %128, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  br label %polly.loop_header258.2

polly.loop_header258.2:                           ; preds = %polly.loop_header258.2, %polly.loop_exit260.1
  %polly.indvar261.2 = phi i64 [ 0, %polly.loop_exit260.1 ], [ %polly.indvar_next262.2, %polly.loop_header258.2 ]
  %403 = add nuw nsw i64 %polly.indvar261.2, %99
  %polly.access.add.Packed_MemRef_call1265.2 = add nuw nsw i64 %polly.indvar261.2, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  %_p_scalar_267.2 = load double, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_270.2, %_p_scalar_267.2
  %404 = mul nuw nsw i64 %403, 8000
  %405 = add nuw nsw i64 %404, %154
  %scevgep271.2 = getelementptr i8, i8* %call2, i64 %405
  %scevgep271272.2 = bitcast i8* %scevgep271.2 to double*
  %_p_scalar_273.2 = load double, double* %scevgep271272.2, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %406 = shl i64 %403, 3
  %407 = add nuw nsw i64 %406, %131
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %407
  %scevgep278279.2 = bitcast i8* %scevgep278.2 to double*
  %_p_scalar_280.2 = load double, double* %scevgep278279.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_280.2
  store double %p_add42.i118.2, double* %scevgep278279.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.2 = add nuw nsw i64 %polly.indvar261.2, 1
  %exitcond905.2.not = icmp eq i64 %polly.indvar261.2, %smin904.2
  br i1 %exitcond905.2.not, label %polly.loop_exit260.2, label %polly.loop_header258.2

polly.loop_exit260.2:                             ; preds = %polly.loop_header258.2
  %408 = add nuw nsw i64 %134, %154
  %scevgep268.3 = getelementptr i8, i8* %call2, i64 %408
  %scevgep268269.3 = bitcast i8* %scevgep268.3 to double*
  %_p_scalar_270.3 = load double, double* %scevgep268269.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.3 = add nuw nsw i64 %132, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.3
  %_p_scalar_277.3 = load double, double* %polly.access.Packed_MemRef_call1276.3, align 8
  br label %polly.loop_header258.3

polly.loop_header258.3:                           ; preds = %polly.loop_header258.3, %polly.loop_exit260.2
  %polly.indvar261.3 = phi i64 [ 0, %polly.loop_exit260.2 ], [ %polly.indvar_next262.3, %polly.loop_header258.3 ]
  %409 = add nuw nsw i64 %polly.indvar261.3, %99
  %polly.access.add.Packed_MemRef_call1265.3 = add nuw nsw i64 %polly.indvar261.3, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  %_p_scalar_267.3 = load double, double* %polly.access.Packed_MemRef_call1266.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_270.3, %_p_scalar_267.3
  %410 = mul nuw nsw i64 %409, 8000
  %411 = add nuw nsw i64 %410, %154
  %scevgep271.3 = getelementptr i8, i8* %call2, i64 %411
  %scevgep271272.3 = bitcast i8* %scevgep271.3 to double*
  %_p_scalar_273.3 = load double, double* %scevgep271272.3, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_277.3, %_p_scalar_273.3
  %412 = shl i64 %409, 3
  %413 = add nuw nsw i64 %412, %135
  %scevgep278.3 = getelementptr i8, i8* %call, i64 %413
  %scevgep278279.3 = bitcast i8* %scevgep278.3 to double*
  %_p_scalar_280.3 = load double, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_280.3
  store double %p_add42.i118.3, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.3 = add nuw nsw i64 %polly.indvar261.3, 1
  %exitcond905.3.not = icmp eq i64 %polly.indvar261.3, %smin904.3
  br i1 %exitcond905.3.not, label %polly.loop_exit260.3, label %polly.loop_header258.3

polly.loop_exit260.3:                             ; preds = %polly.loop_header258.3
  %414 = add nuw nsw i64 %138, %154
  %scevgep268.4 = getelementptr i8, i8* %call2, i64 %414
  %scevgep268269.4 = bitcast i8* %scevgep268.4 to double*
  %_p_scalar_270.4 = load double, double* %scevgep268269.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.4 = add nuw nsw i64 %136, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.4
  %_p_scalar_277.4 = load double, double* %polly.access.Packed_MemRef_call1276.4, align 8
  br label %polly.loop_header258.4

polly.loop_header258.4:                           ; preds = %polly.loop_header258.4, %polly.loop_exit260.3
  %polly.indvar261.4 = phi i64 [ 0, %polly.loop_exit260.3 ], [ %polly.indvar_next262.4, %polly.loop_header258.4 ]
  %415 = add nuw nsw i64 %polly.indvar261.4, %99
  %polly.access.add.Packed_MemRef_call1265.4 = add nuw nsw i64 %polly.indvar261.4, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.4
  %_p_scalar_267.4 = load double, double* %polly.access.Packed_MemRef_call1266.4, align 8
  %p_mul27.i112.4 = fmul fast double %_p_scalar_270.4, %_p_scalar_267.4
  %416 = mul nuw nsw i64 %415, 8000
  %417 = add nuw nsw i64 %416, %154
  %scevgep271.4 = getelementptr i8, i8* %call2, i64 %417
  %scevgep271272.4 = bitcast i8* %scevgep271.4 to double*
  %_p_scalar_273.4 = load double, double* %scevgep271272.4, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.4 = fmul fast double %_p_scalar_277.4, %_p_scalar_273.4
  %418 = shl i64 %415, 3
  %419 = add nuw nsw i64 %418, %139
  %scevgep278.4 = getelementptr i8, i8* %call, i64 %419
  %scevgep278279.4 = bitcast i8* %scevgep278.4 to double*
  %_p_scalar_280.4 = load double, double* %scevgep278279.4, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_280.4
  store double %p_add42.i118.4, double* %scevgep278279.4, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.4 = add nuw nsw i64 %polly.indvar261.4, 1
  %exitcond905.4.not = icmp eq i64 %polly.indvar261.4, %smin904.4
  br i1 %exitcond905.4.not, label %polly.loop_exit260.4, label %polly.loop_header258.4

polly.loop_exit260.4:                             ; preds = %polly.loop_header258.4
  %420 = add nuw nsw i64 %142, %154
  %scevgep268.5 = getelementptr i8, i8* %call2, i64 %420
  %scevgep268269.5 = bitcast i8* %scevgep268.5 to double*
  %_p_scalar_270.5 = load double, double* %scevgep268269.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.5 = add nuw nsw i64 %140, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.5
  %_p_scalar_277.5 = load double, double* %polly.access.Packed_MemRef_call1276.5, align 8
  br label %polly.loop_header258.5

polly.loop_header258.5:                           ; preds = %polly.loop_header258.5, %polly.loop_exit260.4
  %polly.indvar261.5 = phi i64 [ 0, %polly.loop_exit260.4 ], [ %polly.indvar_next262.5, %polly.loop_header258.5 ]
  %421 = add nuw nsw i64 %polly.indvar261.5, %99
  %polly.access.add.Packed_MemRef_call1265.5 = add nuw nsw i64 %polly.indvar261.5, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.5
  %_p_scalar_267.5 = load double, double* %polly.access.Packed_MemRef_call1266.5, align 8
  %p_mul27.i112.5 = fmul fast double %_p_scalar_270.5, %_p_scalar_267.5
  %422 = mul nuw nsw i64 %421, 8000
  %423 = add nuw nsw i64 %422, %154
  %scevgep271.5 = getelementptr i8, i8* %call2, i64 %423
  %scevgep271272.5 = bitcast i8* %scevgep271.5 to double*
  %_p_scalar_273.5 = load double, double* %scevgep271272.5, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.5 = fmul fast double %_p_scalar_277.5, %_p_scalar_273.5
  %424 = shl i64 %421, 3
  %425 = add nuw nsw i64 %424, %143
  %scevgep278.5 = getelementptr i8, i8* %call, i64 %425
  %scevgep278279.5 = bitcast i8* %scevgep278.5 to double*
  %_p_scalar_280.5 = load double, double* %scevgep278279.5, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_280.5
  store double %p_add42.i118.5, double* %scevgep278279.5, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.5 = add nuw nsw i64 %polly.indvar261.5, 1
  %exitcond905.5.not = icmp eq i64 %polly.indvar261.5, %smin904.5
  br i1 %exitcond905.5.not, label %polly.loop_exit260.5, label %polly.loop_header258.5

polly.loop_exit260.5:                             ; preds = %polly.loop_header258.5
  %426 = add nuw nsw i64 %146, %154
  %scevgep268.6 = getelementptr i8, i8* %call2, i64 %426
  %scevgep268269.6 = bitcast i8* %scevgep268.6 to double*
  %_p_scalar_270.6 = load double, double* %scevgep268269.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.6 = add nuw nsw i64 %144, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.6
  %_p_scalar_277.6 = load double, double* %polly.access.Packed_MemRef_call1276.6, align 8
  br label %polly.loop_header258.6

polly.loop_header258.6:                           ; preds = %polly.loop_header258.6, %polly.loop_exit260.5
  %polly.indvar261.6 = phi i64 [ 0, %polly.loop_exit260.5 ], [ %polly.indvar_next262.6, %polly.loop_header258.6 ]
  %427 = add nuw nsw i64 %polly.indvar261.6, %99
  %polly.access.add.Packed_MemRef_call1265.6 = add nuw nsw i64 %polly.indvar261.6, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.6
  %_p_scalar_267.6 = load double, double* %polly.access.Packed_MemRef_call1266.6, align 8
  %p_mul27.i112.6 = fmul fast double %_p_scalar_270.6, %_p_scalar_267.6
  %428 = mul nuw nsw i64 %427, 8000
  %429 = add nuw nsw i64 %428, %154
  %scevgep271.6 = getelementptr i8, i8* %call2, i64 %429
  %scevgep271272.6 = bitcast i8* %scevgep271.6 to double*
  %_p_scalar_273.6 = load double, double* %scevgep271272.6, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.6 = fmul fast double %_p_scalar_277.6, %_p_scalar_273.6
  %430 = shl i64 %427, 3
  %431 = add nuw nsw i64 %430, %147
  %scevgep278.6 = getelementptr i8, i8* %call, i64 %431
  %scevgep278279.6 = bitcast i8* %scevgep278.6 to double*
  %_p_scalar_280.6 = load double, double* %scevgep278279.6, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_280.6
  store double %p_add42.i118.6, double* %scevgep278279.6, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.6 = add nuw nsw i64 %polly.indvar261.6, 1
  %exitcond905.6.not = icmp eq i64 %polly.indvar261.6, %smin904.6
  br i1 %exitcond905.6.not, label %polly.loop_exit260.6, label %polly.loop_header258.6

polly.loop_exit260.6:                             ; preds = %polly.loop_header258.6
  %432 = add nuw nsw i64 %150, %154
  %scevgep268.7 = getelementptr i8, i8* %call2, i64 %432
  %scevgep268269.7 = bitcast i8* %scevgep268.7 to double*
  %_p_scalar_270.7 = load double, double* %scevgep268269.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.7 = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.7
  %_p_scalar_277.7 = load double, double* %polly.access.Packed_MemRef_call1276.7, align 8
  br label %polly.loop_header258.7

polly.loop_header258.7:                           ; preds = %polly.loop_header258.7, %polly.loop_exit260.6
  %polly.indvar261.7 = phi i64 [ 0, %polly.loop_exit260.6 ], [ %polly.indvar_next262.7, %polly.loop_header258.7 ]
  %433 = add nuw nsw i64 %polly.indvar261.7, %99
  %polly.access.add.Packed_MemRef_call1265.7 = add nuw nsw i64 %polly.indvar261.7, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.7
  %_p_scalar_267.7 = load double, double* %polly.access.Packed_MemRef_call1266.7, align 8
  %p_mul27.i112.7 = fmul fast double %_p_scalar_270.7, %_p_scalar_267.7
  %434 = mul nuw nsw i64 %433, 8000
  %435 = add nuw nsw i64 %434, %154
  %scevgep271.7 = getelementptr i8, i8* %call2, i64 %435
  %scevgep271272.7 = bitcast i8* %scevgep271.7 to double*
  %_p_scalar_273.7 = load double, double* %scevgep271272.7, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.7 = fmul fast double %_p_scalar_277.7, %_p_scalar_273.7
  %436 = shl i64 %433, 3
  %437 = add nuw nsw i64 %436, %151
  %scevgep278.7 = getelementptr i8, i8* %call, i64 %437
  %scevgep278279.7 = bitcast i8* %scevgep278.7 to double*
  %_p_scalar_280.7 = load double, double* %scevgep278279.7, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_280.7
  store double %p_add42.i118.7, double* %scevgep278279.7, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.7 = add nuw nsw i64 %polly.indvar261.7, 1
  %exitcond905.7.not = icmp eq i64 %polly.indvar_next262.7, 8
  br i1 %exitcond905.7.not, label %polly.loop_exit260.7, label %polly.loop_header258.7

polly.loop_exit260.7:                             ; preds = %polly.loop_header258.7
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next250, %97
  br i1 %exitcond908.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header446.1:                           ; preds = %polly.loop_header446.1, %polly.loop_exit448
  %polly.indvar449.1 = phi i64 [ 0, %polly.loop_exit448 ], [ %polly.indvar_next450.1, %polly.loop_header446.1 ]
  %438 = add nuw nsw i64 %polly.indvar449.1, %173
  %polly.access.add.Packed_MemRef_call1286453.1 = add nuw nsw i64 %polly.indvar449.1, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.1
  %_p_scalar_455.1 = load double, double* %polly.access.Packed_MemRef_call1286454.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_458.1, %_p_scalar_455.1
  %439 = mul nuw nsw i64 %438, 8000
  %440 = add nuw nsw i64 %439, %228
  %scevgep459.1 = getelementptr i8, i8* %call2, i64 %440
  %scevgep459460.1 = bitcast i8* %scevgep459.1 to double*
  %_p_scalar_461.1 = load double, double* %scevgep459460.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %441 = shl i64 %438, 3
  %442 = add nuw nsw i64 %441, %201
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %442
  %scevgep466467.1 = bitcast i8* %scevgep466.1 to double*
  %_p_scalar_468.1 = load double, double* %scevgep466467.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_468.1
  store double %p_add42.i79.1, double* %scevgep466467.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.1 = add nuw nsw i64 %polly.indvar449.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar449.1, %smin926.1
  br i1 %exitcond927.1.not, label %polly.loop_exit448.1, label %polly.loop_header446.1

polly.loop_exit448.1:                             ; preds = %polly.loop_header446.1
  %443 = add nuw nsw i64 %204, %228
  %scevgep456.2 = getelementptr i8, i8* %call2, i64 %443
  %scevgep456457.2 = bitcast i8* %scevgep456.2 to double*
  %_p_scalar_458.2 = load double, double* %scevgep456457.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.2 = add nuw nsw i64 %202, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.2
  %_p_scalar_465.2 = load double, double* %polly.access.Packed_MemRef_call1286464.2, align 8
  br label %polly.loop_header446.2

polly.loop_header446.2:                           ; preds = %polly.loop_header446.2, %polly.loop_exit448.1
  %polly.indvar449.2 = phi i64 [ 0, %polly.loop_exit448.1 ], [ %polly.indvar_next450.2, %polly.loop_header446.2 ]
  %444 = add nuw nsw i64 %polly.indvar449.2, %173
  %polly.access.add.Packed_MemRef_call1286453.2 = add nuw nsw i64 %polly.indvar449.2, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.2
  %_p_scalar_455.2 = load double, double* %polly.access.Packed_MemRef_call1286454.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_458.2, %_p_scalar_455.2
  %445 = mul nuw nsw i64 %444, 8000
  %446 = add nuw nsw i64 %445, %228
  %scevgep459.2 = getelementptr i8, i8* %call2, i64 %446
  %scevgep459460.2 = bitcast i8* %scevgep459.2 to double*
  %_p_scalar_461.2 = load double, double* %scevgep459460.2, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.2 = fmul fast double %_p_scalar_465.2, %_p_scalar_461.2
  %447 = shl i64 %444, 3
  %448 = add nuw nsw i64 %447, %205
  %scevgep466.2 = getelementptr i8, i8* %call, i64 %448
  %scevgep466467.2 = bitcast i8* %scevgep466.2 to double*
  %_p_scalar_468.2 = load double, double* %scevgep466467.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_468.2
  store double %p_add42.i79.2, double* %scevgep466467.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.2 = add nuw nsw i64 %polly.indvar449.2, 1
  %exitcond927.2.not = icmp eq i64 %polly.indvar449.2, %smin926.2
  br i1 %exitcond927.2.not, label %polly.loop_exit448.2, label %polly.loop_header446.2

polly.loop_exit448.2:                             ; preds = %polly.loop_header446.2
  %449 = add nuw nsw i64 %208, %228
  %scevgep456.3 = getelementptr i8, i8* %call2, i64 %449
  %scevgep456457.3 = bitcast i8* %scevgep456.3 to double*
  %_p_scalar_458.3 = load double, double* %scevgep456457.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.3 = add nuw nsw i64 %206, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.3
  %_p_scalar_465.3 = load double, double* %polly.access.Packed_MemRef_call1286464.3, align 8
  br label %polly.loop_header446.3

polly.loop_header446.3:                           ; preds = %polly.loop_header446.3, %polly.loop_exit448.2
  %polly.indvar449.3 = phi i64 [ 0, %polly.loop_exit448.2 ], [ %polly.indvar_next450.3, %polly.loop_header446.3 ]
  %450 = add nuw nsw i64 %polly.indvar449.3, %173
  %polly.access.add.Packed_MemRef_call1286453.3 = add nuw nsw i64 %polly.indvar449.3, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.3
  %_p_scalar_455.3 = load double, double* %polly.access.Packed_MemRef_call1286454.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_458.3, %_p_scalar_455.3
  %451 = mul nuw nsw i64 %450, 8000
  %452 = add nuw nsw i64 %451, %228
  %scevgep459.3 = getelementptr i8, i8* %call2, i64 %452
  %scevgep459460.3 = bitcast i8* %scevgep459.3 to double*
  %_p_scalar_461.3 = load double, double* %scevgep459460.3, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.3 = fmul fast double %_p_scalar_465.3, %_p_scalar_461.3
  %453 = shl i64 %450, 3
  %454 = add nuw nsw i64 %453, %209
  %scevgep466.3 = getelementptr i8, i8* %call, i64 %454
  %scevgep466467.3 = bitcast i8* %scevgep466.3 to double*
  %_p_scalar_468.3 = load double, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_468.3
  store double %p_add42.i79.3, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.3 = add nuw nsw i64 %polly.indvar449.3, 1
  %exitcond927.3.not = icmp eq i64 %polly.indvar449.3, %smin926.3
  br i1 %exitcond927.3.not, label %polly.loop_exit448.3, label %polly.loop_header446.3

polly.loop_exit448.3:                             ; preds = %polly.loop_header446.3
  %455 = add nuw nsw i64 %212, %228
  %scevgep456.4 = getelementptr i8, i8* %call2, i64 %455
  %scevgep456457.4 = bitcast i8* %scevgep456.4 to double*
  %_p_scalar_458.4 = load double, double* %scevgep456457.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.4 = add nuw nsw i64 %210, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.4
  %_p_scalar_465.4 = load double, double* %polly.access.Packed_MemRef_call1286464.4, align 8
  br label %polly.loop_header446.4

polly.loop_header446.4:                           ; preds = %polly.loop_header446.4, %polly.loop_exit448.3
  %polly.indvar449.4 = phi i64 [ 0, %polly.loop_exit448.3 ], [ %polly.indvar_next450.4, %polly.loop_header446.4 ]
  %456 = add nuw nsw i64 %polly.indvar449.4, %173
  %polly.access.add.Packed_MemRef_call1286453.4 = add nuw nsw i64 %polly.indvar449.4, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.4
  %_p_scalar_455.4 = load double, double* %polly.access.Packed_MemRef_call1286454.4, align 8
  %p_mul27.i73.4 = fmul fast double %_p_scalar_458.4, %_p_scalar_455.4
  %457 = mul nuw nsw i64 %456, 8000
  %458 = add nuw nsw i64 %457, %228
  %scevgep459.4 = getelementptr i8, i8* %call2, i64 %458
  %scevgep459460.4 = bitcast i8* %scevgep459.4 to double*
  %_p_scalar_461.4 = load double, double* %scevgep459460.4, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.4 = fmul fast double %_p_scalar_465.4, %_p_scalar_461.4
  %459 = shl i64 %456, 3
  %460 = add nuw nsw i64 %459, %213
  %scevgep466.4 = getelementptr i8, i8* %call, i64 %460
  %scevgep466467.4 = bitcast i8* %scevgep466.4 to double*
  %_p_scalar_468.4 = load double, double* %scevgep466467.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_468.4
  store double %p_add42.i79.4, double* %scevgep466467.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.4 = add nuw nsw i64 %polly.indvar449.4, 1
  %exitcond927.4.not = icmp eq i64 %polly.indvar449.4, %smin926.4
  br i1 %exitcond927.4.not, label %polly.loop_exit448.4, label %polly.loop_header446.4

polly.loop_exit448.4:                             ; preds = %polly.loop_header446.4
  %461 = add nuw nsw i64 %216, %228
  %scevgep456.5 = getelementptr i8, i8* %call2, i64 %461
  %scevgep456457.5 = bitcast i8* %scevgep456.5 to double*
  %_p_scalar_458.5 = load double, double* %scevgep456457.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.5 = add nuw nsw i64 %214, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.5
  %_p_scalar_465.5 = load double, double* %polly.access.Packed_MemRef_call1286464.5, align 8
  br label %polly.loop_header446.5

polly.loop_header446.5:                           ; preds = %polly.loop_header446.5, %polly.loop_exit448.4
  %polly.indvar449.5 = phi i64 [ 0, %polly.loop_exit448.4 ], [ %polly.indvar_next450.5, %polly.loop_header446.5 ]
  %462 = add nuw nsw i64 %polly.indvar449.5, %173
  %polly.access.add.Packed_MemRef_call1286453.5 = add nuw nsw i64 %polly.indvar449.5, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.5
  %_p_scalar_455.5 = load double, double* %polly.access.Packed_MemRef_call1286454.5, align 8
  %p_mul27.i73.5 = fmul fast double %_p_scalar_458.5, %_p_scalar_455.5
  %463 = mul nuw nsw i64 %462, 8000
  %464 = add nuw nsw i64 %463, %228
  %scevgep459.5 = getelementptr i8, i8* %call2, i64 %464
  %scevgep459460.5 = bitcast i8* %scevgep459.5 to double*
  %_p_scalar_461.5 = load double, double* %scevgep459460.5, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.5 = fmul fast double %_p_scalar_465.5, %_p_scalar_461.5
  %465 = shl i64 %462, 3
  %466 = add nuw nsw i64 %465, %217
  %scevgep466.5 = getelementptr i8, i8* %call, i64 %466
  %scevgep466467.5 = bitcast i8* %scevgep466.5 to double*
  %_p_scalar_468.5 = load double, double* %scevgep466467.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_468.5
  store double %p_add42.i79.5, double* %scevgep466467.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.5 = add nuw nsw i64 %polly.indvar449.5, 1
  %exitcond927.5.not = icmp eq i64 %polly.indvar449.5, %smin926.5
  br i1 %exitcond927.5.not, label %polly.loop_exit448.5, label %polly.loop_header446.5

polly.loop_exit448.5:                             ; preds = %polly.loop_header446.5
  %467 = add nuw nsw i64 %220, %228
  %scevgep456.6 = getelementptr i8, i8* %call2, i64 %467
  %scevgep456457.6 = bitcast i8* %scevgep456.6 to double*
  %_p_scalar_458.6 = load double, double* %scevgep456457.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.6 = add nuw nsw i64 %218, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.6
  %_p_scalar_465.6 = load double, double* %polly.access.Packed_MemRef_call1286464.6, align 8
  br label %polly.loop_header446.6

polly.loop_header446.6:                           ; preds = %polly.loop_header446.6, %polly.loop_exit448.5
  %polly.indvar449.6 = phi i64 [ 0, %polly.loop_exit448.5 ], [ %polly.indvar_next450.6, %polly.loop_header446.6 ]
  %468 = add nuw nsw i64 %polly.indvar449.6, %173
  %polly.access.add.Packed_MemRef_call1286453.6 = add nuw nsw i64 %polly.indvar449.6, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.6
  %_p_scalar_455.6 = load double, double* %polly.access.Packed_MemRef_call1286454.6, align 8
  %p_mul27.i73.6 = fmul fast double %_p_scalar_458.6, %_p_scalar_455.6
  %469 = mul nuw nsw i64 %468, 8000
  %470 = add nuw nsw i64 %469, %228
  %scevgep459.6 = getelementptr i8, i8* %call2, i64 %470
  %scevgep459460.6 = bitcast i8* %scevgep459.6 to double*
  %_p_scalar_461.6 = load double, double* %scevgep459460.6, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.6 = fmul fast double %_p_scalar_465.6, %_p_scalar_461.6
  %471 = shl i64 %468, 3
  %472 = add nuw nsw i64 %471, %221
  %scevgep466.6 = getelementptr i8, i8* %call, i64 %472
  %scevgep466467.6 = bitcast i8* %scevgep466.6 to double*
  %_p_scalar_468.6 = load double, double* %scevgep466467.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_468.6
  store double %p_add42.i79.6, double* %scevgep466467.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.6 = add nuw nsw i64 %polly.indvar449.6, 1
  %exitcond927.6.not = icmp eq i64 %polly.indvar449.6, %smin926.6
  br i1 %exitcond927.6.not, label %polly.loop_exit448.6, label %polly.loop_header446.6

polly.loop_exit448.6:                             ; preds = %polly.loop_header446.6
  %473 = add nuw nsw i64 %224, %228
  %scevgep456.7 = getelementptr i8, i8* %call2, i64 %473
  %scevgep456457.7 = bitcast i8* %scevgep456.7 to double*
  %_p_scalar_458.7 = load double, double* %scevgep456457.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.7 = add nuw nsw i64 %222, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.7
  %_p_scalar_465.7 = load double, double* %polly.access.Packed_MemRef_call1286464.7, align 8
  br label %polly.loop_header446.7

polly.loop_header446.7:                           ; preds = %polly.loop_header446.7, %polly.loop_exit448.6
  %polly.indvar449.7 = phi i64 [ 0, %polly.loop_exit448.6 ], [ %polly.indvar_next450.7, %polly.loop_header446.7 ]
  %474 = add nuw nsw i64 %polly.indvar449.7, %173
  %polly.access.add.Packed_MemRef_call1286453.7 = add nuw nsw i64 %polly.indvar449.7, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.7
  %_p_scalar_455.7 = load double, double* %polly.access.Packed_MemRef_call1286454.7, align 8
  %p_mul27.i73.7 = fmul fast double %_p_scalar_458.7, %_p_scalar_455.7
  %475 = mul nuw nsw i64 %474, 8000
  %476 = add nuw nsw i64 %475, %228
  %scevgep459.7 = getelementptr i8, i8* %call2, i64 %476
  %scevgep459460.7 = bitcast i8* %scevgep459.7 to double*
  %_p_scalar_461.7 = load double, double* %scevgep459460.7, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.7 = fmul fast double %_p_scalar_465.7, %_p_scalar_461.7
  %477 = shl i64 %474, 3
  %478 = add nuw nsw i64 %477, %225
  %scevgep466.7 = getelementptr i8, i8* %call, i64 %478
  %scevgep466467.7 = bitcast i8* %scevgep466.7 to double*
  %_p_scalar_468.7 = load double, double* %scevgep466467.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_468.7
  store double %p_add42.i79.7, double* %scevgep466467.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.7 = add nuw nsw i64 %polly.indvar449.7, 1
  %exitcond927.7.not = icmp eq i64 %polly.indvar_next450.7, 8
  br i1 %exitcond927.7.not, label %polly.loop_exit448.7, label %polly.loop_header446.7

polly.loop_exit448.7:                             ; preds = %polly.loop_header446.7
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond930.not = icmp eq i64 %polly.indvar_next438, %171
  br i1 %exitcond930.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_exit636
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_exit636 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %479 = add nuw nsw i64 %polly.indvar637.1, %247
  %polly.access.add.Packed_MemRef_call1474641.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call1474642.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_646.1, %_p_scalar_643.1
  %480 = mul nuw nsw i64 %479, 8000
  %481 = add nuw nsw i64 %480, %302
  %scevgep647.1 = getelementptr i8, i8* %call2, i64 %481
  %scevgep647648.1 = bitcast i8* %scevgep647.1 to double*
  %_p_scalar_649.1 = load double, double* %scevgep647648.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %482 = shl i64 %479, 3
  %483 = add nuw nsw i64 %482, %275
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %483
  %scevgep654655.1 = bitcast i8* %scevgep654.1 to double*
  %_p_scalar_656.1 = load double, double* %scevgep654655.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_656.1
  store double %p_add42.i.1, double* %scevgep654655.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond949.1.not = icmp eq i64 %polly.indvar637.1, %smin948.1
  br i1 %exitcond949.1.not, label %polly.loop_exit636.1, label %polly.loop_header634.1

polly.loop_exit636.1:                             ; preds = %polly.loop_header634.1
  %484 = add nuw nsw i64 %278, %302
  %scevgep644.2 = getelementptr i8, i8* %call2, i64 %484
  %scevgep644645.2 = bitcast i8* %scevgep644.2 to double*
  %_p_scalar_646.2 = load double, double* %scevgep644645.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.2 = add nuw nsw i64 %276, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.2
  %_p_scalar_653.2 = load double, double* %polly.access.Packed_MemRef_call1474652.2, align 8
  br label %polly.loop_header634.2

polly.loop_header634.2:                           ; preds = %polly.loop_header634.2, %polly.loop_exit636.1
  %polly.indvar637.2 = phi i64 [ 0, %polly.loop_exit636.1 ], [ %polly.indvar_next638.2, %polly.loop_header634.2 ]
  %485 = add nuw nsw i64 %polly.indvar637.2, %247
  %polly.access.add.Packed_MemRef_call1474641.2 = add nuw nsw i64 %polly.indvar637.2, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.2
  %_p_scalar_643.2 = load double, double* %polly.access.Packed_MemRef_call1474642.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_646.2, %_p_scalar_643.2
  %486 = mul nuw nsw i64 %485, 8000
  %487 = add nuw nsw i64 %486, %302
  %scevgep647.2 = getelementptr i8, i8* %call2, i64 %487
  %scevgep647648.2 = bitcast i8* %scevgep647.2 to double*
  %_p_scalar_649.2 = load double, double* %scevgep647648.2, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.2 = fmul fast double %_p_scalar_653.2, %_p_scalar_649.2
  %488 = shl i64 %485, 3
  %489 = add nuw nsw i64 %488, %279
  %scevgep654.2 = getelementptr i8, i8* %call, i64 %489
  %scevgep654655.2 = bitcast i8* %scevgep654.2 to double*
  %_p_scalar_656.2 = load double, double* %scevgep654655.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_656.2
  store double %p_add42.i.2, double* %scevgep654655.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.2 = add nuw nsw i64 %polly.indvar637.2, 1
  %exitcond949.2.not = icmp eq i64 %polly.indvar637.2, %smin948.2
  br i1 %exitcond949.2.not, label %polly.loop_exit636.2, label %polly.loop_header634.2

polly.loop_exit636.2:                             ; preds = %polly.loop_header634.2
  %490 = add nuw nsw i64 %282, %302
  %scevgep644.3 = getelementptr i8, i8* %call2, i64 %490
  %scevgep644645.3 = bitcast i8* %scevgep644.3 to double*
  %_p_scalar_646.3 = load double, double* %scevgep644645.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.3 = add nuw nsw i64 %280, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.3
  %_p_scalar_653.3 = load double, double* %polly.access.Packed_MemRef_call1474652.3, align 8
  br label %polly.loop_header634.3

polly.loop_header634.3:                           ; preds = %polly.loop_header634.3, %polly.loop_exit636.2
  %polly.indvar637.3 = phi i64 [ 0, %polly.loop_exit636.2 ], [ %polly.indvar_next638.3, %polly.loop_header634.3 ]
  %491 = add nuw nsw i64 %polly.indvar637.3, %247
  %polly.access.add.Packed_MemRef_call1474641.3 = add nuw nsw i64 %polly.indvar637.3, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.3
  %_p_scalar_643.3 = load double, double* %polly.access.Packed_MemRef_call1474642.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_646.3, %_p_scalar_643.3
  %492 = mul nuw nsw i64 %491, 8000
  %493 = add nuw nsw i64 %492, %302
  %scevgep647.3 = getelementptr i8, i8* %call2, i64 %493
  %scevgep647648.3 = bitcast i8* %scevgep647.3 to double*
  %_p_scalar_649.3 = load double, double* %scevgep647648.3, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.3 = fmul fast double %_p_scalar_653.3, %_p_scalar_649.3
  %494 = shl i64 %491, 3
  %495 = add nuw nsw i64 %494, %283
  %scevgep654.3 = getelementptr i8, i8* %call, i64 %495
  %scevgep654655.3 = bitcast i8* %scevgep654.3 to double*
  %_p_scalar_656.3 = load double, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_656.3
  store double %p_add42.i.3, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.3 = add nuw nsw i64 %polly.indvar637.3, 1
  %exitcond949.3.not = icmp eq i64 %polly.indvar637.3, %smin948.3
  br i1 %exitcond949.3.not, label %polly.loop_exit636.3, label %polly.loop_header634.3

polly.loop_exit636.3:                             ; preds = %polly.loop_header634.3
  %496 = add nuw nsw i64 %286, %302
  %scevgep644.4 = getelementptr i8, i8* %call2, i64 %496
  %scevgep644645.4 = bitcast i8* %scevgep644.4 to double*
  %_p_scalar_646.4 = load double, double* %scevgep644645.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.4 = add nuw nsw i64 %284, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.4
  %_p_scalar_653.4 = load double, double* %polly.access.Packed_MemRef_call1474652.4, align 8
  br label %polly.loop_header634.4

polly.loop_header634.4:                           ; preds = %polly.loop_header634.4, %polly.loop_exit636.3
  %polly.indvar637.4 = phi i64 [ 0, %polly.loop_exit636.3 ], [ %polly.indvar_next638.4, %polly.loop_header634.4 ]
  %497 = add nuw nsw i64 %polly.indvar637.4, %247
  %polly.access.add.Packed_MemRef_call1474641.4 = add nuw nsw i64 %polly.indvar637.4, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.4
  %_p_scalar_643.4 = load double, double* %polly.access.Packed_MemRef_call1474642.4, align 8
  %p_mul27.i.4 = fmul fast double %_p_scalar_646.4, %_p_scalar_643.4
  %498 = mul nuw nsw i64 %497, 8000
  %499 = add nuw nsw i64 %498, %302
  %scevgep647.4 = getelementptr i8, i8* %call2, i64 %499
  %scevgep647648.4 = bitcast i8* %scevgep647.4 to double*
  %_p_scalar_649.4 = load double, double* %scevgep647648.4, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.4 = fmul fast double %_p_scalar_653.4, %_p_scalar_649.4
  %500 = shl i64 %497, 3
  %501 = add nuw nsw i64 %500, %287
  %scevgep654.4 = getelementptr i8, i8* %call, i64 %501
  %scevgep654655.4 = bitcast i8* %scevgep654.4 to double*
  %_p_scalar_656.4 = load double, double* %scevgep654655.4, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_656.4
  store double %p_add42.i.4, double* %scevgep654655.4, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.4 = add nuw nsw i64 %polly.indvar637.4, 1
  %exitcond949.4.not = icmp eq i64 %polly.indvar637.4, %smin948.4
  br i1 %exitcond949.4.not, label %polly.loop_exit636.4, label %polly.loop_header634.4

polly.loop_exit636.4:                             ; preds = %polly.loop_header634.4
  %502 = add nuw nsw i64 %290, %302
  %scevgep644.5 = getelementptr i8, i8* %call2, i64 %502
  %scevgep644645.5 = bitcast i8* %scevgep644.5 to double*
  %_p_scalar_646.5 = load double, double* %scevgep644645.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.5 = add nuw nsw i64 %288, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.5
  %_p_scalar_653.5 = load double, double* %polly.access.Packed_MemRef_call1474652.5, align 8
  br label %polly.loop_header634.5

polly.loop_header634.5:                           ; preds = %polly.loop_header634.5, %polly.loop_exit636.4
  %polly.indvar637.5 = phi i64 [ 0, %polly.loop_exit636.4 ], [ %polly.indvar_next638.5, %polly.loop_header634.5 ]
  %503 = add nuw nsw i64 %polly.indvar637.5, %247
  %polly.access.add.Packed_MemRef_call1474641.5 = add nuw nsw i64 %polly.indvar637.5, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.5
  %_p_scalar_643.5 = load double, double* %polly.access.Packed_MemRef_call1474642.5, align 8
  %p_mul27.i.5 = fmul fast double %_p_scalar_646.5, %_p_scalar_643.5
  %504 = mul nuw nsw i64 %503, 8000
  %505 = add nuw nsw i64 %504, %302
  %scevgep647.5 = getelementptr i8, i8* %call2, i64 %505
  %scevgep647648.5 = bitcast i8* %scevgep647.5 to double*
  %_p_scalar_649.5 = load double, double* %scevgep647648.5, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.5 = fmul fast double %_p_scalar_653.5, %_p_scalar_649.5
  %506 = shl i64 %503, 3
  %507 = add nuw nsw i64 %506, %291
  %scevgep654.5 = getelementptr i8, i8* %call, i64 %507
  %scevgep654655.5 = bitcast i8* %scevgep654.5 to double*
  %_p_scalar_656.5 = load double, double* %scevgep654655.5, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_656.5
  store double %p_add42.i.5, double* %scevgep654655.5, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.5 = add nuw nsw i64 %polly.indvar637.5, 1
  %exitcond949.5.not = icmp eq i64 %polly.indvar637.5, %smin948.5
  br i1 %exitcond949.5.not, label %polly.loop_exit636.5, label %polly.loop_header634.5

polly.loop_exit636.5:                             ; preds = %polly.loop_header634.5
  %508 = add nuw nsw i64 %294, %302
  %scevgep644.6 = getelementptr i8, i8* %call2, i64 %508
  %scevgep644645.6 = bitcast i8* %scevgep644.6 to double*
  %_p_scalar_646.6 = load double, double* %scevgep644645.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.6 = add nuw nsw i64 %292, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.6
  %_p_scalar_653.6 = load double, double* %polly.access.Packed_MemRef_call1474652.6, align 8
  br label %polly.loop_header634.6

polly.loop_header634.6:                           ; preds = %polly.loop_header634.6, %polly.loop_exit636.5
  %polly.indvar637.6 = phi i64 [ 0, %polly.loop_exit636.5 ], [ %polly.indvar_next638.6, %polly.loop_header634.6 ]
  %509 = add nuw nsw i64 %polly.indvar637.6, %247
  %polly.access.add.Packed_MemRef_call1474641.6 = add nuw nsw i64 %polly.indvar637.6, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.6
  %_p_scalar_643.6 = load double, double* %polly.access.Packed_MemRef_call1474642.6, align 8
  %p_mul27.i.6 = fmul fast double %_p_scalar_646.6, %_p_scalar_643.6
  %510 = mul nuw nsw i64 %509, 8000
  %511 = add nuw nsw i64 %510, %302
  %scevgep647.6 = getelementptr i8, i8* %call2, i64 %511
  %scevgep647648.6 = bitcast i8* %scevgep647.6 to double*
  %_p_scalar_649.6 = load double, double* %scevgep647648.6, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.6 = fmul fast double %_p_scalar_653.6, %_p_scalar_649.6
  %512 = shl i64 %509, 3
  %513 = add nuw nsw i64 %512, %295
  %scevgep654.6 = getelementptr i8, i8* %call, i64 %513
  %scevgep654655.6 = bitcast i8* %scevgep654.6 to double*
  %_p_scalar_656.6 = load double, double* %scevgep654655.6, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_656.6
  store double %p_add42.i.6, double* %scevgep654655.6, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.6 = add nuw nsw i64 %polly.indvar637.6, 1
  %exitcond949.6.not = icmp eq i64 %polly.indvar637.6, %smin948.6
  br i1 %exitcond949.6.not, label %polly.loop_exit636.6, label %polly.loop_header634.6

polly.loop_exit636.6:                             ; preds = %polly.loop_header634.6
  %514 = add nuw nsw i64 %298, %302
  %scevgep644.7 = getelementptr i8, i8* %call2, i64 %514
  %scevgep644645.7 = bitcast i8* %scevgep644.7 to double*
  %_p_scalar_646.7 = load double, double* %scevgep644645.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.7 = add nuw nsw i64 %296, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.7
  %_p_scalar_653.7 = load double, double* %polly.access.Packed_MemRef_call1474652.7, align 8
  br label %polly.loop_header634.7

polly.loop_header634.7:                           ; preds = %polly.loop_header634.7, %polly.loop_exit636.6
  %polly.indvar637.7 = phi i64 [ 0, %polly.loop_exit636.6 ], [ %polly.indvar_next638.7, %polly.loop_header634.7 ]
  %515 = add nuw nsw i64 %polly.indvar637.7, %247
  %polly.access.add.Packed_MemRef_call1474641.7 = add nuw nsw i64 %polly.indvar637.7, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.7
  %_p_scalar_643.7 = load double, double* %polly.access.Packed_MemRef_call1474642.7, align 8
  %p_mul27.i.7 = fmul fast double %_p_scalar_646.7, %_p_scalar_643.7
  %516 = mul nuw nsw i64 %515, 8000
  %517 = add nuw nsw i64 %516, %302
  %scevgep647.7 = getelementptr i8, i8* %call2, i64 %517
  %scevgep647648.7 = bitcast i8* %scevgep647.7 to double*
  %_p_scalar_649.7 = load double, double* %scevgep647648.7, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.7 = fmul fast double %_p_scalar_653.7, %_p_scalar_649.7
  %518 = shl i64 %515, 3
  %519 = add nuw nsw i64 %518, %299
  %scevgep654.7 = getelementptr i8, i8* %call, i64 %519
  %scevgep654655.7 = bitcast i8* %scevgep654.7 to double*
  %_p_scalar_656.7 = load double, double* %scevgep654655.7, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_656.7
  store double %p_add42.i.7, double* %scevgep654655.7, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.7 = add nuw nsw i64 %polly.indvar637.7, 1
  %exitcond949.7.not = icmp eq i64 %polly.indvar_next638.7, 8
  br i1 %exitcond949.7.not, label %polly.loop_exit636.7, label %polly.loop_header634.7

polly.loop_exit636.7:                             ; preds = %polly.loop_header634.7
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next626, %245
  br i1 %exitcond952.not, label %polly.loop_exit624, label %polly.loop_header622
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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !25, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
