; ModuleID = 'syr2k_exhaustive/mmp_all_SM_111.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_111.c"
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
  %call856 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1708 = bitcast i8* %call1 to double*
  %polly.access.call1717 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2718 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1717, %call2
  %polly.access.call2737 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2737, %call1
  %2 = or i1 %0, %1
  %polly.access.call757 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call757, %call2
  %4 = icmp ule i8* %polly.access.call2737, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call757, %call1
  %8 = icmp ule i8* %polly.access.call1717, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header830, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1037 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1036 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1035 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1034 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1034, %scevgep1037
  %bound1 = icmp ult i8* %scevgep1036, %scevgep1035
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
  br i1 %exitcond18.not.i, label %vector.ph1041, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1041:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1048 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1049 = shufflevector <4 x i64> %broadcast.splatinsert1048, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1041
  %index1042 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1046 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1041 ], [ %vec.ind.next1047, %vector.body1040 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1046, %broadcast.splat1049
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv7.i, i64 %index1042
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1047 = add <4 x i64> %vec.ind1046, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1043, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1040, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1040
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1041, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit891
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start502, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1104 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1104, label %for.body3.i46.preheader1255, label %vector.ph1105

vector.ph1105:                                    ; preds = %for.body3.i46.preheader
  %n.vec1107 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1105
  %index1108 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1109, %vector.body1103 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i, i64 %index1108
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1109 = add i64 %index1108, 4
  %46 = icmp eq i64 %index.next1109, %n.vec1107
  br i1 %46, label %middle.block1101, label %vector.body1103, !llvm.loop !18

middle.block1101:                                 ; preds = %vector.body1103
  %cmp.n1111 = icmp eq i64 %indvars.iv21.i, %n.vec1107
  br i1 %cmp.n1111, label %for.inc6.i, label %for.body3.i46.preheader1255

for.body3.i46.preheader1255:                      ; preds = %for.body3.i46.preheader, %middle.block1101
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1107, %middle.block1101 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1255, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1255 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1101, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting503
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1149 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1149, label %for.body3.i60.preheader1253, label %vector.ph1150

vector.ph1150:                                    ; preds = %for.body3.i60.preheader
  %n.vec1152 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1150
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1154, %vector.body1148 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i52, i64 %index1153
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1157 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1157, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1154 = add i64 %index1153, 4
  %57 = icmp eq i64 %index.next1154, %n.vec1152
  br i1 %57, label %middle.block1146, label %vector.body1148, !llvm.loop !64

middle.block1146:                                 ; preds = %vector.body1148
  %cmp.n1156 = icmp eq i64 %indvars.iv21.i52, %n.vec1152
  br i1 %cmp.n1156, label %for.inc6.i63, label %for.body3.i60.preheader1253

for.body3.i60.preheader1253:                      ; preds = %for.body3.i60.preheader, %middle.block1146
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1152, %middle.block1146 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1253, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1253 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1146, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1201 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1201, label %for.body3.i99.preheader1251, label %vector.ph1202

vector.ph1202:                                    ; preds = %for.body3.i99.preheader
  %n.vec1204 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i91, i64 %index1205
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1206 = add i64 %index1205, 4
  %68 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %68, label %middle.block1198, label %vector.body1200, !llvm.loop !66

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %indvars.iv21.i91, %n.vec1204
  br i1 %cmp.n1208, label %for.inc6.i102, label %for.body3.i99.preheader1251

for.body3.i99.preheader1251:                      ; preds = %for.body3.i99.preheader, %middle.block1198
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1204, %middle.block1198 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1251, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1251 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1198, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1213 = phi i64 [ %indvar.next1214, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1213, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1215 = icmp ult i64 %88, 4
  br i1 %min.iters.check1215, label %polly.loop_header192.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header
  %n.vec1218 = and i64 %88, -4
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1212 ]
  %90 = shl nuw nsw i64 %index1219, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1223, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1220 = add i64 %index1219, 4
  %95 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %95, label %middle.block1210, label %vector.body1212, !llvm.loop !79

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1222 = icmp eq i64 %88, %n.vec1218
  br i1 %cmp.n1222, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1210
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1218, %middle.block1210 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1210
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1214 = add i64 %indvar1213, 1
  br i1 %exitcond953.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond952.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond952.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nsw i64 %polly.indvar203, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %98 = mul nsw i64 %polly.indvar203, -8
  %99 = shl nuw nsw i64 %polly.indvar203, 1
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond951.not = icmp eq i64 %polly.indvar_next204, 150
  br i1 %exitcond951.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond939.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %100 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.call2219 = mul nuw nsw i64 %100, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1227 = phi i64 [ %indvar.next1228, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %99, %polly.loop_exit208 ]
  %101 = shl nuw nsw i64 %indvar1227, 2
  %102 = or i64 %101, 3
  %smin1229 = call i64 @llvm.smin.i64(i64 %102, i64 7)
  %103 = shl nsw i64 %polly.indvar225, 2
  %104 = add nsw i64 %103, %98
  %105 = add nsw i64 %104, -1
  %.inv = icmp ugt i64 %104, 7
  %106 = select i1 %.inv, i64 7, i64 %105
  %polly.loop_guard = icmp sgt i64 %106, -1
  %107 = or i64 %104, 3
  %108 = add nuw nsw i64 %104, %97
  %polly.access.mul.call1253.us = mul nuw nsw i64 %108, 1000
  %polly.indvar_next250.us = or i64 %104, 1
  %polly.loop_cond251.not.not.us = icmp ult i64 %104, %107
  %109 = add nuw nsw i64 %polly.indvar_next250.us, %97
  %polly.access.mul.call1253.us.1 = mul nuw nsw i64 %109, 1000
  %polly.indvar_next250.us.1 = add nuw nsw i64 %polly.indvar_next250.us, 1
  %110 = add nuw nsw i64 %polly.indvar_next250.us.1, %97
  %polly.access.mul.call1253.us.2 = mul nuw nsw i64 %110, 1000
  %polly.indvar_next250.us.2 = or i64 %104, 3
  %111 = add nuw nsw i64 %polly.indvar_next250.us.2, %97
  %polly.access.mul.call1253.us.3 = mul nuw nsw i64 %111, 1000
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %112 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.call1241.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond941.not = icmp eq i64 %polly.indvar237.us, %106
  br i1 %exitcond941.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us.1, %polly.loop_exit236.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond942.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %104, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us.1, label %polly.loop_exit247.us

polly.loop_exit261:                               ; preds = %polly.loop_exit273.3
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 4
  %exitcond950.not = icmp eq i64 %polly.indvar_next226, 300
  %indvar.next1228 = add i64 %indvar1227, 1
  br i1 %exitcond950.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %104, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.1, label %polly.loop_exit247

polly.loop_exit247:                               ; preds = %polly.loop_header245.1, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond940.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 7)
  %113 = mul nsw i64 %polly.indvar225, 38400
  %indvars.iv.next946 = or i64 %indvars.iv943, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next946, i64 7)
  %114 = or i64 %104, 1
  %115 = or i64 %103, 1
  %116 = mul nuw nsw i64 %115, 9600
  %indvars.iv.next946.1 = add nuw nsw i64 %indvars.iv.next946, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next946.1, i64 7)
  %117 = or i64 %104, 2
  %118 = or i64 %103, 2
  %119 = mul nuw nsw i64 %118, 9600
  %120 = or i64 %104, 3
  %121 = or i64 %103, 3
  %122 = mul nuw nsw i64 %121, 9600
  br label %polly.loop_header259

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_exit273.3
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit273.3 ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1277 = mul nuw nsw i64 %polly.indvar262, 1200
  %polly.access.add.Packed_MemRef_call2282 = add nuw nsw i64 %104, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call2283 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call2283, align 8
  %polly.access.Packed_MemRef_call1291 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call1291, align 8
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_header271
  %polly.access.add.Packed_MemRef_call2282.1 = add nuw nsw i64 %114, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call2283.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call2283.1, align 8
  %polly.access.Packed_MemRef_call1291.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2282.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call1291.1, align 8
  br label %polly.loop_header271.1

polly.loop_header271:                             ; preds = %polly.loop_header271, %polly.loop_header259
  %polly.indvar274 = phi i64 [ 0, %polly.loop_header259 ], [ %polly.indvar_next275, %polly.loop_header271 ]
  %123 = add nuw nsw i64 %polly.indvar274, %97
  %polly.access.add.Packed_MemRef_call1278 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1279 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call1279, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %124 = shl i64 %123, 3
  %125 = add nuw nsw i64 %124, %113
  %scevgep293 = getelementptr i8, i8* %call, i64 %125
  %scevgep293294 = bitcast i8* %scevgep293 to double*
  %_p_scalar_295 = load double, double* %scevgep293294, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_295
  store double %p_add42.i118, double* %scevgep293294, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond947.not = icmp eq i64 %polly.indvar274, %smin
  br i1 %exitcond947.not, label %polly.loop_exit273, label %polly.loop_header271

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* nonnull %malloccall300)
  tail call void @free(i8* nonnull %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1161 = phi i64 [ %indvar.next1162, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %126 = add i64 %indvar1161, 1
  %127 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1163 = icmp ult i64 %126, 4
  br i1 %min.iters.check1163, label %polly.loop_header392.preheader, label %vector.ph1164

vector.ph1164:                                    ; preds = %polly.loop_header386
  %n.vec1166 = and i64 %126, -4
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1164
  %index1167 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1168, %vector.body1160 ]
  %128 = shl nuw nsw i64 %index1167, 3
  %129 = getelementptr i8, i8* %scevgep398, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1171 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !84, !noalias !86
  %131 = fmul fast <4 x double> %wide.load1171, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !84, !noalias !86
  %index.next1168 = add i64 %index1167, 4
  %133 = icmp eq i64 %index.next1168, %n.vec1166
  br i1 %133, label %middle.block1158, label %vector.body1160, !llvm.loop !91

middle.block1158:                                 ; preds = %vector.body1160
  %cmp.n1170 = icmp eq i64 %126, %n.vec1166
  br i1 %cmp.n1170, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1158
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1166, %middle.block1158 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1158
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1162 = add i64 %indvar1161, 1
  br i1 %exitcond972.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %134
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !84, !noalias !86
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond971.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !92

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit426
  %indvars.iv954 = phi i64 [ 1200, %polly.loop_header402.preheader ], [ %indvars.iv.next955, %polly.loop_exit426 ]
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %polly.indvar_next406, %polly.loop_exit426 ]
  %135 = shl nsw i64 %polly.indvar405, 3
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_exit416
  %136 = mul nsw i64 %polly.indvar405, -8
  %137 = shl nuw nsw i64 %polly.indvar405, 1
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit465
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next955 = add nsw i64 %indvars.iv954, -8
  %exitcond970.not = icmp eq i64 %polly.indvar_next406, 150
  br i1 %exitcond970.not, label %polly.exiting299, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_exit416, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_exit416 ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar411, 1200
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_header414
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next412, 1000
  br i1 %exitcond957.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_header414, %polly.loop_header408
  %polly.indvar417 = phi i64 [ 0, %polly.loop_header408 ], [ %polly.indvar_next418, %polly.loop_header414 ]
  %138 = add nuw nsw i64 %polly.indvar417, %135
  %polly.access.mul.call2421 = mul nuw nsw i64 %138, 1000
  %polly.access.add.call2422 = add nuw nsw i64 %polly.access.mul.call2421, %polly.indvar411
  %polly.access.call2423 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2422
  %polly.access.call2423.load = load double, double* %polly.access.call2423, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2423.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next418, %indvars.iv954
  br i1 %exitcond956.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header424:                             ; preds = %polly.loop_exit465, %polly.loop_exit410
  %indvar1175 = phi i64 [ %indvar.next1176, %polly.loop_exit465 ], [ 0, %polly.loop_exit410 ]
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit465 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_exit465 ], [ %137, %polly.loop_exit410 ]
  %139 = shl nuw nsw i64 %indvar1175, 2
  %140 = or i64 %139, 3
  %smin1177 = call i64 @llvm.smin.i64(i64 %140, i64 7)
  %141 = shl nsw i64 %polly.indvar427, 2
  %142 = add nsw i64 %141, %136
  %143 = add nsw i64 %142, -1
  %.inv910 = icmp ugt i64 %142, 7
  %144 = select i1 %.inv910, i64 7, i64 %143
  %polly.loop_guard440 = icmp sgt i64 %144, -1
  %145 = or i64 %142, 3
  %146 = add nuw nsw i64 %142, %135
  %polly.access.mul.call1457.us = mul nuw nsw i64 %146, 1000
  %polly.indvar_next454.us = or i64 %142, 1
  %polly.loop_cond455.not.not.us = icmp ult i64 %142, %145
  %147 = add nuw nsw i64 %polly.indvar_next454.us, %135
  %polly.access.mul.call1457.us.1 = mul nuw nsw i64 %147, 1000
  %polly.indvar_next454.us.1 = add nuw nsw i64 %polly.indvar_next454.us, 1
  %148 = add nuw nsw i64 %polly.indvar_next454.us.1, %135
  %polly.access.mul.call1457.us.2 = mul nuw nsw i64 %148, 1000
  %polly.indvar_next454.us.2 = or i64 %142, 3
  %149 = add nuw nsw i64 %polly.indvar_next454.us.2, %135
  %polly.access.mul.call1457.us.3 = mul nuw nsw i64 %149, 1000
  br i1 %polly.loop_guard440, label %polly.loop_header430.us, label %polly.loop_header430

polly.loop_header430.us:                          ; preds = %polly.loop_header424, %polly.loop_exit451.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit451.us ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar433.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %150 = add nuw nsw i64 %polly.indvar441.us, %135
  %polly.access.mul.call1445.us = mul nuw nsw i64 %150, 1000
  %polly.access.add.call1446.us = add nuw nsw i64 %polly.access.mul.call1445.us, %polly.indvar433.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next442.us = add nuw i64 %polly.indvar441.us, 1
  %exitcond959.not = icmp eq i64 %polly.indvar441.us, %144
  br i1 %exitcond959.not, label %polly.loop_exit439.loopexit.us, label %polly.loop_header437.us

polly.loop_exit451.us:                            ; preds = %polly.loop_header449.us.1, %polly.loop_exit439.loopexit.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next434.us, 1000
  br i1 %exitcond960.not, label %polly.loop_header463.preheader, label %polly.loop_header430.us

polly.loop_exit439.loopexit.us:                   ; preds = %polly.loop_header437.us
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.access.mul.call1457.us, %polly.indvar433.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.us = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301462.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301462.us, align 8
  br i1 %polly.loop_cond455.not.not.us, label %polly.loop_header449.us.1, label %polly.loop_exit451.us

polly.loop_exit465:                               ; preds = %polly.loop_exit477.3
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 4
  %exitcond969.not = icmp eq i64 %polly.indvar_next428, 300
  %indvar.next1176 = add i64 %indvar1175, 1
  br i1 %exitcond969.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header424, %polly.loop_exit451
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit451 ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1301460 = mul nuw nsw i64 %polly.indvar433, 1200
  %polly.access.add.call1458 = add nuw nsw i64 %polly.access.mul.call1457.us, %polly.indvar433
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461 = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1301460
  %polly.access.Packed_MemRef_call1301462 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1301462, align 8
  br i1 %polly.loop_cond455.not.not.us, label %polly.loop_header449.1, label %polly.loop_exit451

polly.loop_exit451:                               ; preds = %polly.loop_header449.1, %polly.loop_header430
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond958.not = icmp eq i64 %polly.indvar_next434, 1000
  br i1 %exitcond958.not, label %polly.loop_header463.preheader, label %polly.loop_header430

polly.loop_header463.preheader:                   ; preds = %polly.loop_exit451, %polly.loop_exit451.us
  %smin965 = call i64 @llvm.smin.i64(i64 %indvars.iv961, i64 7)
  %151 = mul nsw i64 %polly.indvar427, 38400
  %indvars.iv.next964 = or i64 %indvars.iv961, 1
  %smin965.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next964, i64 7)
  %152 = or i64 %142, 1
  %153 = or i64 %141, 1
  %154 = mul nuw nsw i64 %153, 9600
  %indvars.iv.next964.1 = add nuw nsw i64 %indvars.iv.next964, 1
  %smin965.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next964.1, i64 7)
  %155 = or i64 %142, 2
  %156 = or i64 %141, 2
  %157 = mul nuw nsw i64 %156, 9600
  %158 = or i64 %142, 3
  %159 = or i64 %141, 3
  %160 = mul nuw nsw i64 %159, 9600
  br label %polly.loop_header463

polly.loop_header463:                             ; preds = %polly.loop_header463.preheader, %polly.loop_exit477.3
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_exit477.3 ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1301481 = mul nuw nsw i64 %polly.indvar466, 1200
  %polly.access.add.Packed_MemRef_call2303486 = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call2303487 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303486
  %_p_scalar_488 = load double, double* %polly.access.Packed_MemRef_call2303487, align 8
  %polly.access.Packed_MemRef_call1301495 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call2303486
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call1301495, align 8
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_header475
  %polly.access.add.Packed_MemRef_call2303486.1 = add nuw nsw i64 %152, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call2303487.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303486.1
  %_p_scalar_488.1 = load double, double* %polly.access.Packed_MemRef_call2303487.1, align 8
  %polly.access.Packed_MemRef_call1301495.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call2303486.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call1301495.1, align 8
  br label %polly.loop_header475.1

polly.loop_header475:                             ; preds = %polly.loop_header475, %polly.loop_header463
  %polly.indvar478 = phi i64 [ 0, %polly.loop_header463 ], [ %polly.indvar_next479, %polly.loop_header475 ]
  %161 = add nuw nsw i64 %polly.indvar478, %135
  %polly.access.add.Packed_MemRef_call1301482 = add nuw nsw i64 %polly.indvar478, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call1301483 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301482
  %_p_scalar_484 = load double, double* %polly.access.Packed_MemRef_call1301483, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_488, %_p_scalar_484
  %polly.access.Packed_MemRef_call2303491 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call1301482
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call2303491, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %162 = shl i64 %161, 3
  %163 = add nuw nsw i64 %162, %151
  %scevgep497 = getelementptr i8, i8* %call, i64 %163
  %scevgep497498 = bitcast i8* %scevgep497 to double*
  %_p_scalar_499 = load double, double* %scevgep497498, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_499
  store double %p_add42.i79, double* %scevgep497498, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next479 = add nuw nsw i64 %polly.indvar478, 1
  %exitcond966.not = icmp eq i64 %polly.indvar478, %smin965
  br i1 %exitcond966.not, label %polly.loop_exit477, label %polly.loop_header475

polly.start502:                                   ; preds = %init_array.exit
  %malloccall504 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  %malloccall506 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  br label %polly.loop_header590

polly.exiting503:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* nonnull %malloccall504)
  tail call void @free(i8* nonnull %malloccall506)
  br label %kernel_syr2k.exit

polly.loop_header590:                             ; preds = %polly.loop_exit598, %polly.start502
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit598 ], [ 0, %polly.start502 ]
  %polly.indvar593 = phi i64 [ %polly.indvar_next594, %polly.loop_exit598 ], [ 1, %polly.start502 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar593, 9600
  %scevgep602 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1115 = icmp ult i64 %164, 4
  br i1 %min.iters.check1115, label %polly.loop_header596.preheader, label %vector.ph1116

vector.ph1116:                                    ; preds = %polly.loop_header590
  %n.vec1118 = and i64 %164, -4
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1116
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1120, %vector.body1114 ]
  %166 = shl nuw nsw i64 %index1119, 3
  %167 = getelementptr i8, i8* %scevgep602, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1123 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !95, !noalias !97
  %169 = fmul fast <4 x double> %wide.load1123, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !95, !noalias !97
  %index.next1120 = add i64 %index1119, 4
  %171 = icmp eq i64 %index.next1120, %n.vec1118
  br i1 %171, label %middle.block1112, label %vector.body1114, !llvm.loop !102

middle.block1112:                                 ; preds = %vector.body1114
  %cmp.n1122 = icmp eq i64 %164, %n.vec1118
  br i1 %cmp.n1122, label %polly.loop_exit598, label %polly.loop_header596.preheader

polly.loop_header596.preheader:                   ; preds = %polly.loop_header590, %middle.block1112
  %polly.indvar599.ph = phi i64 [ 0, %polly.loop_header590 ], [ %n.vec1118, %middle.block1112 ]
  br label %polly.loop_header596

polly.loop_exit598:                               ; preds = %polly.loop_header596, %middle.block1112
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next594, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond991.not, label %polly.loop_header606.preheader, label %polly.loop_header590

polly.loop_header606.preheader:                   ; preds = %polly.loop_exit598
  %Packed_MemRef_call1505 = bitcast i8* %malloccall504 to double*
  %Packed_MemRef_call2507 = bitcast i8* %malloccall506 to double*
  br label %polly.loop_header606

polly.loop_header596:                             ; preds = %polly.loop_header596.preheader, %polly.loop_header596
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_header596 ], [ %polly.indvar599.ph, %polly.loop_header596.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar599, 3
  %scevgep603 = getelementptr i8, i8* %scevgep602, i64 %172
  %scevgep603604 = bitcast i8* %scevgep603 to double*
  %_p_scalar_605 = load double, double* %scevgep603604, align 8, !alias.scope !95, !noalias !97
  %p_mul.i = fmul fast double %_p_scalar_605, 1.200000e+00
  store double %p_mul.i, double* %scevgep603604, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next600, %polly.indvar593
  br i1 %exitcond990.not, label %polly.loop_exit598, label %polly.loop_header596, !llvm.loop !103

polly.loop_header606:                             ; preds = %polly.loop_header606.preheader, %polly.loop_exit630
  %indvars.iv973 = phi i64 [ 1200, %polly.loop_header606.preheader ], [ %indvars.iv.next974, %polly.loop_exit630 ]
  %polly.indvar609 = phi i64 [ 0, %polly.loop_header606.preheader ], [ %polly.indvar_next610, %polly.loop_exit630 ]
  %173 = shl nsw i64 %polly.indvar609, 3
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_exit620
  %174 = mul nsw i64 %polly.indvar609, -8
  %175 = shl nuw nsw i64 %polly.indvar609, 1
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit669
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %indvars.iv.next974 = add nsw i64 %indvars.iv973, -8
  %exitcond989.not = icmp eq i64 %polly.indvar_next610, 150
  br i1 %exitcond989.not, label %polly.exiting503, label %polly.loop_header606

polly.loop_header612:                             ; preds = %polly.loop_exit620, %polly.loop_header606
  %polly.indvar615 = phi i64 [ 0, %polly.loop_header606 ], [ %polly.indvar_next616, %polly.loop_exit620 ]
  %polly.access.mul.Packed_MemRef_call2507 = mul nuw nsw i64 %polly.indvar615, 1200
  br label %polly.loop_header618

polly.loop_exit620:                               ; preds = %polly.loop_header618
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next616, 1000
  br i1 %exitcond976.not, label %polly.loop_exit614, label %polly.loop_header612

polly.loop_header618:                             ; preds = %polly.loop_header618, %polly.loop_header612
  %polly.indvar621 = phi i64 [ 0, %polly.loop_header612 ], [ %polly.indvar_next622, %polly.loop_header618 ]
  %176 = add nuw nsw i64 %polly.indvar621, %173
  %polly.access.mul.call2625 = mul nuw nsw i64 %176, 1000
  %polly.access.add.call2626 = add nuw nsw i64 %polly.access.mul.call2625, %polly.indvar615
  %polly.access.call2627 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2626
  %polly.access.call2627.load = load double, double* %polly.access.call2627, align 8, !alias.scope !99, !noalias !104
  %polly.access.add.Packed_MemRef_call2507 = add nuw nsw i64 %polly.indvar621, %polly.access.mul.Packed_MemRef_call2507
  %polly.access.Packed_MemRef_call2507 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507
  store double %polly.access.call2627.load, double* %polly.access.Packed_MemRef_call2507, align 8
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next622, %indvars.iv973
  br i1 %exitcond975.not, label %polly.loop_exit620, label %polly.loop_header618

polly.loop_header628:                             ; preds = %polly.loop_exit669, %polly.loop_exit614
  %indvar1127 = phi i64 [ %indvar.next1128, %polly.loop_exit669 ], [ 0, %polly.loop_exit614 ]
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %polly.loop_exit669 ], [ 0, %polly.loop_exit614 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit669 ], [ %175, %polly.loop_exit614 ]
  %177 = shl nuw nsw i64 %indvar1127, 2
  %178 = or i64 %177, 3
  %smin1129 = call i64 @llvm.smin.i64(i64 %178, i64 7)
  %179 = shl nsw i64 %polly.indvar631, 2
  %180 = add nsw i64 %179, %174
  %181 = add nsw i64 %180, -1
  %.inv911 = icmp ugt i64 %180, 7
  %182 = select i1 %.inv911, i64 7, i64 %181
  %polly.loop_guard644 = icmp sgt i64 %182, -1
  %183 = or i64 %180, 3
  %184 = add nuw nsw i64 %180, %173
  %polly.access.mul.call1661.us = mul nuw nsw i64 %184, 1000
  %polly.indvar_next658.us = or i64 %180, 1
  %polly.loop_cond659.not.not.us = icmp ult i64 %180, %183
  %185 = add nuw nsw i64 %polly.indvar_next658.us, %173
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %185, 1000
  %polly.indvar_next658.us.1 = add nuw nsw i64 %polly.indvar_next658.us, 1
  %186 = add nuw nsw i64 %polly.indvar_next658.us.1, %173
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %186, 1000
  %polly.indvar_next658.us.2 = or i64 %180, 3
  %187 = add nuw nsw i64 %polly.indvar_next658.us.2, %173
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %187, 1000
  br i1 %polly.loop_guard644, label %polly.loop_header634.us, label %polly.loop_header634

polly.loop_header634.us:                          ; preds = %polly.loop_header628, %polly.loop_exit655.us
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.loop_exit655.us ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1505.us = mul nuw nsw i64 %polly.indvar637.us, 1200
  br label %polly.loop_header641.us

polly.loop_header641.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header634.us ]
  %188 = add nuw nsw i64 %polly.indvar645.us, %173
  %polly.access.mul.call1649.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1650.us = add nuw nsw i64 %polly.access.mul.call1649.us, %polly.indvar637.us
  %polly.access.call1651.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1650.us
  %polly.access.call1651.load.us = load double, double* %polly.access.call1651.us, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505.us = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505.us
  store double %polly.access.call1651.load.us, double* %polly.access.Packed_MemRef_call1505.us, align 8
  %polly.indvar_next646.us = add nuw i64 %polly.indvar645.us, 1
  %exitcond978.not = icmp eq i64 %polly.indvar645.us, %182
  br i1 %exitcond978.not, label %polly.loop_exit643.loopexit.us, label %polly.loop_header641.us

polly.loop_exit655.us:                            ; preds = %polly.loop_header653.us.1, %polly.loop_exit643.loopexit.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next638.us, 1000
  br i1 %exitcond979.not, label %polly.loop_header667.preheader, label %polly.loop_header634.us

polly.loop_exit643.loopexit.us:                   ; preds = %polly.loop_header641.us
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar637.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.us = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505666.us = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1505666.us, align 8
  br i1 %polly.loop_cond659.not.not.us, label %polly.loop_header653.us.1, label %polly.loop_exit655.us

polly.loop_exit669:                               ; preds = %polly.loop_exit681.3
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 4
  %exitcond988.not = icmp eq i64 %polly.indvar_next632, 300
  %indvar.next1128 = add i64 %indvar1127, 1
  br i1 %exitcond988.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_header628, %polly.loop_exit655
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_exit655 ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1505664 = mul nuw nsw i64 %polly.indvar637, 1200
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar637
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665 = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call1505664
  %polly.access.Packed_MemRef_call1505666 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1505666, align 8
  br i1 %polly.loop_cond659.not.not.us, label %polly.loop_header653.1, label %polly.loop_exit655

polly.loop_exit655:                               ; preds = %polly.loop_header653.1, %polly.loop_header634
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next638, 1000
  br i1 %exitcond977.not, label %polly.loop_header667.preheader, label %polly.loop_header634

polly.loop_header667.preheader:                   ; preds = %polly.loop_exit655, %polly.loop_exit655.us
  %smin984 = call i64 @llvm.smin.i64(i64 %indvars.iv980, i64 7)
  %189 = mul nsw i64 %polly.indvar631, 38400
  %indvars.iv.next983 = or i64 %indvars.iv980, 1
  %smin984.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next983, i64 7)
  %190 = or i64 %180, 1
  %191 = or i64 %179, 1
  %192 = mul nuw nsw i64 %191, 9600
  %indvars.iv.next983.1 = add nuw nsw i64 %indvars.iv.next983, 1
  %smin984.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next983.1, i64 7)
  %193 = or i64 %180, 2
  %194 = or i64 %179, 2
  %195 = mul nuw nsw i64 %194, 9600
  %196 = or i64 %180, 3
  %197 = or i64 %179, 3
  %198 = mul nuw nsw i64 %197, 9600
  br label %polly.loop_header667

polly.loop_header667:                             ; preds = %polly.loop_header667.preheader, %polly.loop_exit681.3
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit681.3 ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1505685 = mul nuw nsw i64 %polly.indvar670, 1200
  %polly.access.add.Packed_MemRef_call2507690 = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call2507691 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507690
  %_p_scalar_692 = load double, double* %polly.access.Packed_MemRef_call2507691, align 8
  %polly.access.Packed_MemRef_call1505699 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call2507690
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1505699, align 8
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_header679
  %polly.access.add.Packed_MemRef_call2507690.1 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call2507691.1 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507690.1
  %_p_scalar_692.1 = load double, double* %polly.access.Packed_MemRef_call2507691.1, align 8
  %polly.access.Packed_MemRef_call1505699.1 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call2507690.1
  %_p_scalar_700.1 = load double, double* %polly.access.Packed_MemRef_call1505699.1, align 8
  br label %polly.loop_header679.1

polly.loop_header679:                             ; preds = %polly.loop_header679, %polly.loop_header667
  %polly.indvar682 = phi i64 [ 0, %polly.loop_header667 ], [ %polly.indvar_next683, %polly.loop_header679 ]
  %199 = add nuw nsw i64 %polly.indvar682, %173
  %polly.access.add.Packed_MemRef_call1505686 = add nuw nsw i64 %polly.indvar682, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call1505687 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505686
  %_p_scalar_688 = load double, double* %polly.access.Packed_MemRef_call1505687, align 8
  %p_mul27.i = fmul fast double %_p_scalar_692, %_p_scalar_688
  %polly.access.Packed_MemRef_call2507695 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call1505686
  %_p_scalar_696 = load double, double* %polly.access.Packed_MemRef_call2507695, align 8
  %p_mul37.i = fmul fast double %_p_scalar_700, %_p_scalar_696
  %200 = shl i64 %199, 3
  %201 = add nuw nsw i64 %200, %189
  %scevgep701 = getelementptr i8, i8* %call, i64 %201
  %scevgep701702 = bitcast i8* %scevgep701 to double*
  %_p_scalar_703 = load double, double* %scevgep701702, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_703
  store double %p_add42.i, double* %scevgep701702, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond985.not = icmp eq i64 %polly.indvar682, %smin984
  br i1 %exitcond985.not, label %polly.loop_exit681, label %polly.loop_header679

polly.loop_header830:                             ; preds = %entry, %polly.loop_exit838
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit838 ], [ 0, %entry ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %entry ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 -1168)
  %202 = shl nsw i64 %polly.indvar833, 5
  %203 = add nsw i64 %smin1018, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -32
  %exitcond1021.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1021.not, label %polly.loop_header857, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %204 = mul nsw i64 %polly.indvar839, -32
  %smin1053 = call i64 @llvm.smin.i64(i64 %204, i64 -1168)
  %205 = add nsw i64 %smin1053, 1200
  %smin1014 = call i64 @llvm.smin.i64(i64 %indvars.iv1012, i64 -1168)
  %206 = shl nsw i64 %polly.indvar839, 5
  %207 = add nsw i64 %smin1014, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -32
  %exitcond1020.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1020.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %polly.indvar845 = phi i64 [ 0, %polly.loop_header836 ], [ %polly.indvar_next846, %polly.loop_exit850 ]
  %208 = add nuw nsw i64 %polly.indvar845, %202
  %209 = trunc i64 %208 to i32
  %210 = mul nuw nsw i64 %208, 9600
  %min.iters.check = icmp eq i64 %205, 0
  br i1 %min.iters.check, label %polly.loop_header848, label %vector.ph1054

vector.ph1054:                                    ; preds = %polly.loop_header842
  %broadcast.splatinsert1061 = insertelement <4 x i64> poison, i64 %206, i32 0
  %broadcast.splat1062 = shufflevector <4 x i64> %broadcast.splatinsert1061, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1054
  %index1055 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1056, %vector.body1052 ]
  %vec.ind1059 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1054 ], [ %vec.ind.next1060, %vector.body1052 ]
  %211 = add nuw nsw <4 x i64> %vec.ind1059, %broadcast.splat1062
  %212 = trunc <4 x i64> %211 to <4 x i32>
  %213 = mul <4 x i32> %broadcast.splat1064, %212
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 1200, i32 1200, i32 1200, i32 1200>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %218 = extractelement <4 x i64> %211, i32 0
  %219 = shl i64 %218, 3
  %220 = add nuw nsw i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %217, <4 x double>* %222, align 8, !alias.scope !106, !noalias !108
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1060 = add <4 x i64> %vec.ind1059, <i64 4, i64 4, i64 4, i64 4>
  %223 = icmp eq i64 %index.next1056, %205
  br i1 %223, label %polly.loop_exit850, label %vector.body1052, !llvm.loop !111

polly.loop_exit850:                               ; preds = %vector.body1052, %polly.loop_header848
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar845, %203
  br i1 %exitcond1019.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_header842, %polly.loop_header848
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_header848 ], [ 0, %polly.loop_header842 ]
  %224 = add nuw nsw i64 %polly.indvar851, %206
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %225, %209
  %227 = add i32 %226, 3
  %228 = urem i32 %227, 1200
  %p_conv31.i = sitofp i32 %228 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %229 = shl i64 %224, 3
  %230 = add nuw nsw i64 %229, %210
  %scevgep854 = getelementptr i8, i8* %call, i64 %230
  %scevgep854855 = bitcast i8* %scevgep854 to double*
  store double %p_div33.i, double* %scevgep854855, align 8, !alias.scope !106, !noalias !108
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar851, %207
  br i1 %exitcond1015.not, label %polly.loop_exit850, label %polly.loop_header848, !llvm.loop !112

polly.loop_header857:                             ; preds = %polly.loop_exit838, %polly.loop_exit865
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit865 ], [ 0, %polly.loop_exit838 ]
  %polly.indvar860 = phi i64 [ %polly.indvar_next861, %polly.loop_exit865 ], [ 0, %polly.loop_exit838 ]
  %smin1008 = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 -1168)
  %231 = shl nsw i64 %polly.indvar860, 5
  %232 = add nsw i64 %smin1008, 1199
  br label %polly.loop_header863

polly.loop_exit865:                               ; preds = %polly.loop_exit871
  %polly.indvar_next861 = add nuw nsw i64 %polly.indvar860, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -32
  %exitcond1011.not = icmp eq i64 %polly.indvar_next861, 38
  br i1 %exitcond1011.not, label %polly.loop_header883, label %polly.loop_header857

polly.loop_header863:                             ; preds = %polly.loop_exit871, %polly.loop_header857
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit871 ], [ 0, %polly.loop_header857 ]
  %polly.indvar866 = phi i64 [ %polly.indvar_next867, %polly.loop_exit871 ], [ 0, %polly.loop_header857 ]
  %233 = mul nsw i64 %polly.indvar866, -32
  %smin1068 = call i64 @llvm.smin.i64(i64 %233, i64 -968)
  %234 = add nsw i64 %smin1068, 1000
  %smin1004 = call i64 @llvm.smin.i64(i64 %indvars.iv1002, i64 -968)
  %235 = shl nsw i64 %polly.indvar866, 5
  %236 = add nsw i64 %smin1004, 999
  br label %polly.loop_header869

polly.loop_exit871:                               ; preds = %polly.loop_exit877
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -32
  %exitcond1010.not = icmp eq i64 %polly.indvar_next867, 32
  br i1 %exitcond1010.not, label %polly.loop_exit865, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_exit877, %polly.loop_header863
  %polly.indvar872 = phi i64 [ 0, %polly.loop_header863 ], [ %polly.indvar_next873, %polly.loop_exit877 ]
  %237 = add nuw nsw i64 %polly.indvar872, %231
  %238 = trunc i64 %237 to i32
  %239 = mul nuw nsw i64 %237, 8000
  %min.iters.check1069 = icmp eq i64 %234, 0
  br i1 %min.iters.check1069, label %polly.loop_header875, label %vector.ph1070

vector.ph1070:                                    ; preds = %polly.loop_header869
  %broadcast.splatinsert1079 = insertelement <4 x i64> poison, i64 %235, i32 0
  %broadcast.splat1080 = shufflevector <4 x i64> %broadcast.splatinsert1079, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1070
  %index1073 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1074, %vector.body1067 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1070 ], [ %vec.ind.next1078, %vector.body1067 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1077, %broadcast.splat1080
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1082, %241
  %243 = add <4 x i32> %242, <i32 2, i32 2, i32 2, i32 2>
  %244 = urem <4 x i32> %243, <i32 1000, i32 1000, i32 1000, i32 1000>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %239
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !110, !noalias !113
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1074, %234
  br i1 %252, label %polly.loop_exit877, label %vector.body1067, !llvm.loop !114

polly.loop_exit877:                               ; preds = %vector.body1067, %polly.loop_header875
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar872, %232
  br i1 %exitcond1009.not, label %polly.loop_exit871, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_header869, %polly.loop_header875
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_header875 ], [ 0, %polly.loop_header869 ]
  %253 = add nuw nsw i64 %polly.indvar878, %235
  %254 = trunc i64 %253 to i32
  %255 = mul i32 %254, %238
  %256 = add i32 %255, 2
  %257 = urem i32 %256, 1000
  %p_conv10.i = sitofp i32 %257 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %258 = shl i64 %253, 3
  %259 = add nuw nsw i64 %258, %239
  %scevgep881 = getelementptr i8, i8* %call2, i64 %259
  %scevgep881882 = bitcast i8* %scevgep881 to double*
  store double %p_div12.i, double* %scevgep881882, align 8, !alias.scope !110, !noalias !113
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar878, %236
  br i1 %exitcond1005.not, label %polly.loop_exit877, label %polly.loop_header875, !llvm.loop !115

polly.loop_header883:                             ; preds = %polly.loop_exit865, %polly.loop_exit891
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit891 ], [ 0, %polly.loop_exit865 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit865 ]
  %smin998 = call i64 @llvm.smin.i64(i64 %indvars.iv996, i64 -1168)
  %260 = shl nsw i64 %polly.indvar886, 5
  %261 = add nsw i64 %smin998, 1199
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, -32
  %exitcond1001.not = icmp eq i64 %polly.indvar_next887, 38
  br i1 %exitcond1001.not, label %init_array.exit, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %262 = mul nsw i64 %polly.indvar892, -32
  %smin1086 = call i64 @llvm.smin.i64(i64 %262, i64 -968)
  %263 = add nsw i64 %smin1086, 1000
  %smin994 = call i64 @llvm.smin.i64(i64 %indvars.iv992, i64 -968)
  %264 = shl nsw i64 %polly.indvar892, 5
  %265 = add nsw i64 %smin994, 999
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, -32
  %exitcond1000.not = icmp eq i64 %polly.indvar_next893, 32
  br i1 %exitcond1000.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %polly.indvar898 = phi i64 [ 0, %polly.loop_header889 ], [ %polly.indvar_next899, %polly.loop_exit903 ]
  %266 = add nuw nsw i64 %polly.indvar898, %260
  %267 = trunc i64 %266 to i32
  %268 = mul nuw nsw i64 %266, 8000
  %min.iters.check1087 = icmp eq i64 %263, 0
  br i1 %min.iters.check1087, label %polly.loop_header901, label %vector.ph1088

vector.ph1088:                                    ; preds = %polly.loop_header895
  %broadcast.splatinsert1097 = insertelement <4 x i64> poison, i64 %264, i32 0
  %broadcast.splat1098 = shufflevector <4 x i64> %broadcast.splatinsert1097, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1088
  %index1091 = phi i64 [ 0, %vector.ph1088 ], [ %index.next1092, %vector.body1085 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1088 ], [ %vec.ind.next1096, %vector.body1085 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1095, %broadcast.splat1098
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1100, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 1200, i32 1200, i32 1200, i32 1200>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %268
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !109, !noalias !116
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1092, %263
  br i1 %281, label %polly.loop_exit903, label %vector.body1085, !llvm.loop !117

polly.loop_exit903:                               ; preds = %vector.body1085, %polly.loop_header901
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond999.not = icmp eq i64 %polly.indvar898, %261
  br i1 %exitcond999.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_header895, %polly.loop_header901
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_header901 ], [ 0, %polly.loop_header895 ]
  %282 = add nuw nsw i64 %polly.indvar904, %264
  %283 = trunc i64 %282 to i32
  %284 = mul i32 %283, %267
  %285 = add i32 %284, 1
  %286 = urem i32 %285, 1200
  %p_conv.i = sitofp i32 %286 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %287 = shl i64 %282, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep908 = getelementptr i8, i8* %call1, i64 %288
  %scevgep908909 = bitcast i8* %scevgep908 to double*
  store double %p_div.i, double* %scevgep908909, align 8, !alias.scope !109, !noalias !116
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond995.not = icmp eq i64 %polly.indvar904, %265
  br i1 %exitcond995.not, label %polly.loop_exit903, label %polly.loop_header901, !llvm.loop !118

polly.loop_header245.1:                           ; preds = %polly.loop_header228
  %polly.access.add.call1254.1 = add nuw nsw i64 %polly.access.mul.call1253.us.1, %polly.indvar231
  %polly.access.call1255.1 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.1
  %polly.access.call1255.load.1 = load double, double* %polly.access.call1255.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.1 = add nuw nsw i64 %polly.indvar_next250.us, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.1
  store double %polly.access.call1255.load.1, double* %polly.access.Packed_MemRef_call1258.1, align 8
  %polly.access.add.call1254.2 = add nuw nsw i64 %polly.access.mul.call1253.us.2, %polly.indvar231
  %polly.access.call1255.2 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.2
  %polly.access.call1255.load.2 = load double, double* %polly.access.call1255.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.2 = add nuw nsw i64 %polly.indvar_next250.us.1, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.2
  store double %polly.access.call1255.load.2, double* %polly.access.Packed_MemRef_call1258.2, align 8
  %polly.access.add.call1254.3 = add nuw nsw i64 %polly.access.mul.call1253.us.3, %polly.indvar231
  %polly.access.call1255.3 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.3
  %polly.access.call1255.load.3 = load double, double* %polly.access.call1255.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.3 = add nuw nsw i64 %polly.indvar_next250.us.2, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.3
  store double %polly.access.call1255.load.3, double* %polly.access.Packed_MemRef_call1258.3, align 8
  br label %polly.loop_exit247

polly.loop_header245.us.1:                        ; preds = %polly.loop_exit236.loopexit.us
  %polly.access.add.call1254.us.1 = add nuw nsw i64 %polly.access.mul.call1253.us.1, %polly.indvar231.us
  %polly.access.call1255.us.1 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.us.1
  %polly.access.call1255.load.us.1 = load double, double* %polly.access.call1255.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us.1 = add nuw nsw i64 %polly.indvar_next250.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us.1
  store double %polly.access.call1255.load.us.1, double* %polly.access.Packed_MemRef_call1258.us.1, align 8
  %polly.access.add.call1254.us.2 = add nuw nsw i64 %polly.access.mul.call1253.us.2, %polly.indvar231.us
  %polly.access.call1255.us.2 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.us.2
  %polly.access.call1255.load.us.2 = load double, double* %polly.access.call1255.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us.2 = add nuw nsw i64 %polly.indvar_next250.us.1, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us.2
  store double %polly.access.call1255.load.us.2, double* %polly.access.Packed_MemRef_call1258.us.2, align 8
  %polly.access.add.call1254.us.3 = add nuw nsw i64 %polly.access.mul.call1253.us.3, %polly.indvar231.us
  %polly.access.call1255.us.3 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.us.3
  %polly.access.call1255.load.us.3 = load double, double* %polly.access.call1255.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us.3 = add nuw nsw i64 %polly.indvar_next250.us.2, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us.3
  store double %polly.access.call1255.load.us.3, double* %polly.access.Packed_MemRef_call1258.us.3, align 8
  br label %polly.loop_exit247.us

polly.loop_header271.1:                           ; preds = %polly.loop_header271.1, %polly.loop_exit273
  %polly.indvar274.1 = phi i64 [ 0, %polly.loop_exit273 ], [ %polly.indvar_next275.1, %polly.loop_header271.1 ]
  %289 = add nuw nsw i64 %polly.indvar274.1, %97
  %polly.access.add.Packed_MemRef_call1278.1 = add nuw nsw i64 %polly.indvar274.1, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1279.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.1
  %_p_scalar_280.1 = load double, double* %polly.access.Packed_MemRef_call1279.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_284.1, %_p_scalar_280.1
  %polly.access.Packed_MemRef_call2287.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1278.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call2287.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_292.1, %_p_scalar_288.1
  %290 = shl i64 %289, 3
  %291 = add nuw nsw i64 %290, %116
  %scevgep293.1 = getelementptr i8, i8* %call, i64 %291
  %scevgep293294.1 = bitcast i8* %scevgep293.1 to double*
  %_p_scalar_295.1 = load double, double* %scevgep293294.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_295.1
  store double %p_add42.i118.1, double* %scevgep293294.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next275.1 = add nuw nsw i64 %polly.indvar274.1, 1
  %exitcond947.1.not = icmp eq i64 %polly.indvar274.1, %smin.1
  br i1 %exitcond947.1.not, label %polly.loop_exit273.1, label %polly.loop_header271.1

polly.loop_exit273.1:                             ; preds = %polly.loop_header271.1
  %polly.access.add.Packed_MemRef_call2282.2 = add nuw nsw i64 %117, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call2283.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.2
  %_p_scalar_284.2 = load double, double* %polly.access.Packed_MemRef_call2283.2, align 8
  %polly.access.Packed_MemRef_call1291.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2282.2
  %_p_scalar_292.2 = load double, double* %polly.access.Packed_MemRef_call1291.2, align 8
  br label %polly.loop_header271.2

polly.loop_header271.2:                           ; preds = %polly.loop_header271.2, %polly.loop_exit273.1
  %polly.indvar274.2 = phi i64 [ 0, %polly.loop_exit273.1 ], [ %polly.indvar_next275.2, %polly.loop_header271.2 ]
  %292 = add nuw nsw i64 %polly.indvar274.2, %97
  %polly.access.add.Packed_MemRef_call1278.2 = add nuw nsw i64 %polly.indvar274.2, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1279.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.2
  %_p_scalar_280.2 = load double, double* %polly.access.Packed_MemRef_call1279.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_284.2, %_p_scalar_280.2
  %polly.access.Packed_MemRef_call2287.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1278.2
  %_p_scalar_288.2 = load double, double* %polly.access.Packed_MemRef_call2287.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_292.2, %_p_scalar_288.2
  %293 = shl i64 %292, 3
  %294 = add nuw nsw i64 %293, %119
  %scevgep293.2 = getelementptr i8, i8* %call, i64 %294
  %scevgep293294.2 = bitcast i8* %scevgep293.2 to double*
  %_p_scalar_295.2 = load double, double* %scevgep293294.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_295.2
  store double %p_add42.i118.2, double* %scevgep293294.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next275.2 = add nuw nsw i64 %polly.indvar274.2, 1
  %exitcond947.2.not = icmp eq i64 %polly.indvar274.2, %smin.2
  br i1 %exitcond947.2.not, label %polly.loop_exit273.2, label %polly.loop_header271.2

polly.loop_exit273.2:                             ; preds = %polly.loop_header271.2
  %polly.access.add.Packed_MemRef_call2282.3 = add nuw nsw i64 %120, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1291.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2282.3
  %_p_scalar_292.3 = load double, double* %polly.access.Packed_MemRef_call1291.3, align 8
  %polly.access.Packed_MemRef_call2283.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.3
  %_p_scalar_284.3 = load double, double* %polly.access.Packed_MemRef_call2283.3, align 8
  %broadcast.splatinsert1238 = insertelement <4 x i64> poison, i64 %smin1229, i32 0
  %broadcast.splat1239 = shufflevector <4 x i64> %broadcast.splatinsert1238, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x double> poison, double %_p_scalar_284.3, i32 0
  %broadcast.splat1245 = shufflevector <4 x double> %broadcast.splatinsert1244, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1247 = insertelement <4 x double> poison, double %_p_scalar_292.3, i32 0
  %broadcast.splat1248 = shufflevector <4 x double> %broadcast.splatinsert1247, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_exit273.2
  %index1234 = phi i64 [ 0, %polly.loop_exit273.2 ], [ %index.next1235, %vector.body1226 ]
  %broadcast.splatinsert1240 = insertelement <4 x i64> poison, i64 %index1234, i32 0
  %broadcast.splat1241 = shufflevector <4 x i64> %broadcast.splatinsert1240, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1242 = or <4 x i64> %broadcast.splat1241, <i64 0, i64 1, i64 2, i64 3>
  %295 = icmp ule <4 x i64> %induction1242, %broadcast.splat1239
  %296 = add nuw nsw i64 %index1234, %97
  %297 = add nuw nsw i64 %index1234, %polly.access.mul.Packed_MemRef_call1277
  %298 = getelementptr double, double* %Packed_MemRef_call1, i64 %297
  %299 = bitcast double* %298 to <4 x double>*
  %wide.masked.load1243 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %299, i32 8, <4 x i1> %295, <4 x double> poison)
  %300 = fmul fast <4 x double> %broadcast.splat1245, %wide.masked.load1243
  %301 = getelementptr double, double* %Packed_MemRef_call2, i64 %297
  %302 = bitcast double* %301 to <4 x double>*
  %wide.masked.load1246 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %302, i32 8, <4 x i1> %295, <4 x double> poison)
  %303 = fmul fast <4 x double> %broadcast.splat1248, %wide.masked.load1246
  %304 = shl i64 %296, 3
  %305 = add nuw nsw i64 %304, %122
  %306 = getelementptr i8, i8* %call, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  %wide.masked.load1249 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %307, i32 8, <4 x i1> %295, <4 x double> poison), !alias.scope !72, !noalias !74
  %308 = fadd fast <4 x double> %303, %300
  %309 = fmul fast <4 x double> %308, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %310 = fadd fast <4 x double> %309, %wide.masked.load1249
  %311 = bitcast i8* %306 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %310, <4 x double>* %311, i32 8, <4 x i1> %295), !alias.scope !72, !noalias !74
  %index.next1235 = add i64 %index1234, 4
  %312 = or i64 %index1234, 3
  %313 = icmp eq i64 %312, %smin1229
  br i1 %313, label %polly.loop_exit273.3, label %vector.body1226, !llvm.loop !119

polly.loop_exit273.3:                             ; preds = %vector.body1226
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next263, 1000
  br i1 %exitcond949.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header449.1:                           ; preds = %polly.loop_header430
  %polly.access.add.call1458.1 = add nuw nsw i64 %polly.access.mul.call1457.us.1, %polly.indvar433
  %polly.access.call1459.1 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.1
  %polly.access.call1459.load.1 = load double, double* %polly.access.call1459.1, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.1 = add nuw nsw i64 %polly.indvar_next454.us, %polly.access.mul.Packed_MemRef_call1301460
  %polly.access.Packed_MemRef_call1301462.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.1
  store double %polly.access.call1459.load.1, double* %polly.access.Packed_MemRef_call1301462.1, align 8
  %polly.access.add.call1458.2 = add nuw nsw i64 %polly.access.mul.call1457.us.2, %polly.indvar433
  %polly.access.call1459.2 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.2
  %polly.access.call1459.load.2 = load double, double* %polly.access.call1459.2, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.2 = add nuw nsw i64 %polly.indvar_next454.us.1, %polly.access.mul.Packed_MemRef_call1301460
  %polly.access.Packed_MemRef_call1301462.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.2
  store double %polly.access.call1459.load.2, double* %polly.access.Packed_MemRef_call1301462.2, align 8
  %polly.access.add.call1458.3 = add nuw nsw i64 %polly.access.mul.call1457.us.3, %polly.indvar433
  %polly.access.call1459.3 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.3
  %polly.access.call1459.load.3 = load double, double* %polly.access.call1459.3, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.3 = add nuw nsw i64 %polly.indvar_next454.us.2, %polly.access.mul.Packed_MemRef_call1301460
  %polly.access.Packed_MemRef_call1301462.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.3
  store double %polly.access.call1459.load.3, double* %polly.access.Packed_MemRef_call1301462.3, align 8
  br label %polly.loop_exit451

polly.loop_header449.us.1:                        ; preds = %polly.loop_exit439.loopexit.us
  %polly.access.add.call1458.us.1 = add nuw nsw i64 %polly.access.mul.call1457.us.1, %polly.indvar433.us
  %polly.access.call1459.us.1 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.us.1
  %polly.access.call1459.load.us.1 = load double, double* %polly.access.call1459.us.1, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.us.1 = add nuw nsw i64 %polly.indvar_next454.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301462.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us.1
  store double %polly.access.call1459.load.us.1, double* %polly.access.Packed_MemRef_call1301462.us.1, align 8
  %polly.access.add.call1458.us.2 = add nuw nsw i64 %polly.access.mul.call1457.us.2, %polly.indvar433.us
  %polly.access.call1459.us.2 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.us.2
  %polly.access.call1459.load.us.2 = load double, double* %polly.access.call1459.us.2, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.us.2 = add nuw nsw i64 %polly.indvar_next454.us.1, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301462.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us.2
  store double %polly.access.call1459.load.us.2, double* %polly.access.Packed_MemRef_call1301462.us.2, align 8
  %polly.access.add.call1458.us.3 = add nuw nsw i64 %polly.access.mul.call1457.us.3, %polly.indvar433.us
  %polly.access.call1459.us.3 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.us.3
  %polly.access.call1459.load.us.3 = load double, double* %polly.access.call1459.us.3, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301461.us.3 = add nuw nsw i64 %polly.indvar_next454.us.2, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301462.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us.3
  store double %polly.access.call1459.load.us.3, double* %polly.access.Packed_MemRef_call1301462.us.3, align 8
  br label %polly.loop_exit451.us

polly.loop_header475.1:                           ; preds = %polly.loop_header475.1, %polly.loop_exit477
  %polly.indvar478.1 = phi i64 [ 0, %polly.loop_exit477 ], [ %polly.indvar_next479.1, %polly.loop_header475.1 ]
  %314 = add nuw nsw i64 %polly.indvar478.1, %135
  %polly.access.add.Packed_MemRef_call1301482.1 = add nuw nsw i64 %polly.indvar478.1, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call1301483.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301482.1
  %_p_scalar_484.1 = load double, double* %polly.access.Packed_MemRef_call1301483.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_488.1, %_p_scalar_484.1
  %polly.access.Packed_MemRef_call2303491.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call1301482.1
  %_p_scalar_492.1 = load double, double* %polly.access.Packed_MemRef_call2303491.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_496.1, %_p_scalar_492.1
  %315 = shl i64 %314, 3
  %316 = add nuw nsw i64 %315, %154
  %scevgep497.1 = getelementptr i8, i8* %call, i64 %316
  %scevgep497498.1 = bitcast i8* %scevgep497.1 to double*
  %_p_scalar_499.1 = load double, double* %scevgep497498.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_499.1
  store double %p_add42.i79.1, double* %scevgep497498.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next479.1 = add nuw nsw i64 %polly.indvar478.1, 1
  %exitcond966.1.not = icmp eq i64 %polly.indvar478.1, %smin965.1
  br i1 %exitcond966.1.not, label %polly.loop_exit477.1, label %polly.loop_header475.1

polly.loop_exit477.1:                             ; preds = %polly.loop_header475.1
  %polly.access.add.Packed_MemRef_call2303486.2 = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call2303487.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303486.2
  %_p_scalar_488.2 = load double, double* %polly.access.Packed_MemRef_call2303487.2, align 8
  %polly.access.Packed_MemRef_call1301495.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call2303486.2
  %_p_scalar_496.2 = load double, double* %polly.access.Packed_MemRef_call1301495.2, align 8
  br label %polly.loop_header475.2

polly.loop_header475.2:                           ; preds = %polly.loop_header475.2, %polly.loop_exit477.1
  %polly.indvar478.2 = phi i64 [ 0, %polly.loop_exit477.1 ], [ %polly.indvar_next479.2, %polly.loop_header475.2 ]
  %317 = add nuw nsw i64 %polly.indvar478.2, %135
  %polly.access.add.Packed_MemRef_call1301482.2 = add nuw nsw i64 %polly.indvar478.2, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call1301483.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301482.2
  %_p_scalar_484.2 = load double, double* %polly.access.Packed_MemRef_call1301483.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_488.2, %_p_scalar_484.2
  %polly.access.Packed_MemRef_call2303491.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call1301482.2
  %_p_scalar_492.2 = load double, double* %polly.access.Packed_MemRef_call2303491.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_496.2, %_p_scalar_492.2
  %318 = shl i64 %317, 3
  %319 = add nuw nsw i64 %318, %157
  %scevgep497.2 = getelementptr i8, i8* %call, i64 %319
  %scevgep497498.2 = bitcast i8* %scevgep497.2 to double*
  %_p_scalar_499.2 = load double, double* %scevgep497498.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_499.2
  store double %p_add42.i79.2, double* %scevgep497498.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next479.2 = add nuw nsw i64 %polly.indvar478.2, 1
  %exitcond966.2.not = icmp eq i64 %polly.indvar478.2, %smin965.2
  br i1 %exitcond966.2.not, label %polly.loop_exit477.2, label %polly.loop_header475.2

polly.loop_exit477.2:                             ; preds = %polly.loop_header475.2
  %polly.access.add.Packed_MemRef_call2303486.3 = add nuw nsw i64 %158, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call1301495.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call2303486.3
  %_p_scalar_496.3 = load double, double* %polly.access.Packed_MemRef_call1301495.3, align 8
  %polly.access.Packed_MemRef_call2303487.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303486.3
  %_p_scalar_488.3 = load double, double* %polly.access.Packed_MemRef_call2303487.3, align 8
  %broadcast.splatinsert1186 = insertelement <4 x i64> poison, i64 %smin1177, i32 0
  %broadcast.splat1187 = shufflevector <4 x i64> %broadcast.splatinsert1186, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1192 = insertelement <4 x double> poison, double %_p_scalar_488.3, i32 0
  %broadcast.splat1193 = shufflevector <4 x double> %broadcast.splatinsert1192, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <4 x double> poison, double %_p_scalar_496.3, i32 0
  %broadcast.splat1196 = shufflevector <4 x double> %broadcast.splatinsert1195, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_exit477.2
  %index1182 = phi i64 [ 0, %polly.loop_exit477.2 ], [ %index.next1183, %vector.body1174 ]
  %broadcast.splatinsert1188 = insertelement <4 x i64> poison, i64 %index1182, i32 0
  %broadcast.splat1189 = shufflevector <4 x i64> %broadcast.splatinsert1188, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1190 = or <4 x i64> %broadcast.splat1189, <i64 0, i64 1, i64 2, i64 3>
  %320 = icmp ule <4 x i64> %induction1190, %broadcast.splat1187
  %321 = add nuw nsw i64 %index1182, %135
  %322 = add nuw nsw i64 %index1182, %polly.access.mul.Packed_MemRef_call1301481
  %323 = getelementptr double, double* %Packed_MemRef_call1301, i64 %322
  %324 = bitcast double* %323 to <4 x double>*
  %wide.masked.load1191 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %324, i32 8, <4 x i1> %320, <4 x double> poison)
  %325 = fmul fast <4 x double> %broadcast.splat1193, %wide.masked.load1191
  %326 = getelementptr double, double* %Packed_MemRef_call2303, i64 %322
  %327 = bitcast double* %326 to <4 x double>*
  %wide.masked.load1194 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %327, i32 8, <4 x i1> %320, <4 x double> poison)
  %328 = fmul fast <4 x double> %broadcast.splat1196, %wide.masked.load1194
  %329 = shl i64 %321, 3
  %330 = add nuw nsw i64 %329, %160
  %331 = getelementptr i8, i8* %call, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  %wide.masked.load1197 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %332, i32 8, <4 x i1> %320, <4 x double> poison), !alias.scope !84, !noalias !86
  %333 = fadd fast <4 x double> %328, %325
  %334 = fmul fast <4 x double> %333, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %335 = fadd fast <4 x double> %334, %wide.masked.load1197
  %336 = bitcast i8* %331 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %335, <4 x double>* %336, i32 8, <4 x i1> %320), !alias.scope !84, !noalias !86
  %index.next1183 = add i64 %index1182, 4
  %337 = or i64 %index1182, 3
  %338 = icmp eq i64 %337, %smin1177
  br i1 %338, label %polly.loop_exit477.3, label %vector.body1174, !llvm.loop !120

polly.loop_exit477.3:                             ; preds = %vector.body1174
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next467, 1000
  br i1 %exitcond968.not, label %polly.loop_exit465, label %polly.loop_header463

polly.loop_header653.1:                           ; preds = %polly.loop_header634
  %polly.access.add.call1662.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %polly.indvar637
  %polly.access.call1663.1 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.1
  %polly.access.call1663.load.1 = load double, double* %polly.access.call1663.1, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.1 = add nuw nsw i64 %polly.indvar_next658.us, %polly.access.mul.Packed_MemRef_call1505664
  %polly.access.Packed_MemRef_call1505666.1 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.1
  store double %polly.access.call1663.load.1, double* %polly.access.Packed_MemRef_call1505666.1, align 8
  %polly.access.add.call1662.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %polly.indvar637
  %polly.access.call1663.2 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.2
  %polly.access.call1663.load.2 = load double, double* %polly.access.call1663.2, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.2 = add nuw nsw i64 %polly.indvar_next658.us.1, %polly.access.mul.Packed_MemRef_call1505664
  %polly.access.Packed_MemRef_call1505666.2 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.2
  store double %polly.access.call1663.load.2, double* %polly.access.Packed_MemRef_call1505666.2, align 8
  %polly.access.add.call1662.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %polly.indvar637
  %polly.access.call1663.3 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.3
  %polly.access.call1663.load.3 = load double, double* %polly.access.call1663.3, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.3 = add nuw nsw i64 %polly.indvar_next658.us.2, %polly.access.mul.Packed_MemRef_call1505664
  %polly.access.Packed_MemRef_call1505666.3 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.3
  store double %polly.access.call1663.load.3, double* %polly.access.Packed_MemRef_call1505666.3, align 8
  br label %polly.loop_exit655

polly.loop_header653.us.1:                        ; preds = %polly.loop_exit643.loopexit.us
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %polly.indvar637.us
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.us.1 = add nuw nsw i64 %polly.indvar_next658.us, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505666.us.1 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1505666.us.1, align 8
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %polly.indvar637.us
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.us.2
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.us.2 = add nuw nsw i64 %polly.indvar_next658.us.1, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505666.us.2 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.us.2
  store double %polly.access.call1663.load.us.2, double* %polly.access.Packed_MemRef_call1505666.us.2, align 8
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %polly.indvar637.us
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.us.3
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !98, !noalias !105
  %polly.access.add.Packed_MemRef_call1505665.us.3 = add nuw nsw i64 %polly.indvar_next658.us.2, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505666.us.3 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.us.3
  store double %polly.access.call1663.load.us.3, double* %polly.access.Packed_MemRef_call1505666.us.3, align 8
  br label %polly.loop_exit655.us

polly.loop_header679.1:                           ; preds = %polly.loop_header679.1, %polly.loop_exit681
  %polly.indvar682.1 = phi i64 [ 0, %polly.loop_exit681 ], [ %polly.indvar_next683.1, %polly.loop_header679.1 ]
  %339 = add nuw nsw i64 %polly.indvar682.1, %173
  %polly.access.add.Packed_MemRef_call1505686.1 = add nuw nsw i64 %polly.indvar682.1, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call1505687.1 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505686.1
  %_p_scalar_688.1 = load double, double* %polly.access.Packed_MemRef_call1505687.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_692.1, %_p_scalar_688.1
  %polly.access.Packed_MemRef_call2507695.1 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call1505686.1
  %_p_scalar_696.1 = load double, double* %polly.access.Packed_MemRef_call2507695.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_700.1, %_p_scalar_696.1
  %340 = shl i64 %339, 3
  %341 = add nuw nsw i64 %340, %192
  %scevgep701.1 = getelementptr i8, i8* %call, i64 %341
  %scevgep701702.1 = bitcast i8* %scevgep701.1 to double*
  %_p_scalar_703.1 = load double, double* %scevgep701702.1, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_703.1
  store double %p_add42.i.1, double* %scevgep701702.1, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next683.1 = add nuw nsw i64 %polly.indvar682.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar682.1, %smin984.1
  br i1 %exitcond985.1.not, label %polly.loop_exit681.1, label %polly.loop_header679.1

polly.loop_exit681.1:                             ; preds = %polly.loop_header679.1
  %polly.access.add.Packed_MemRef_call2507690.2 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call2507691.2 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507690.2
  %_p_scalar_692.2 = load double, double* %polly.access.Packed_MemRef_call2507691.2, align 8
  %polly.access.Packed_MemRef_call1505699.2 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call2507690.2
  %_p_scalar_700.2 = load double, double* %polly.access.Packed_MemRef_call1505699.2, align 8
  br label %polly.loop_header679.2

polly.loop_header679.2:                           ; preds = %polly.loop_header679.2, %polly.loop_exit681.1
  %polly.indvar682.2 = phi i64 [ 0, %polly.loop_exit681.1 ], [ %polly.indvar_next683.2, %polly.loop_header679.2 ]
  %342 = add nuw nsw i64 %polly.indvar682.2, %173
  %polly.access.add.Packed_MemRef_call1505686.2 = add nuw nsw i64 %polly.indvar682.2, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call1505687.2 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505686.2
  %_p_scalar_688.2 = load double, double* %polly.access.Packed_MemRef_call1505687.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_692.2, %_p_scalar_688.2
  %polly.access.Packed_MemRef_call2507695.2 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call1505686.2
  %_p_scalar_696.2 = load double, double* %polly.access.Packed_MemRef_call2507695.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_700.2, %_p_scalar_696.2
  %343 = shl i64 %342, 3
  %344 = add nuw nsw i64 %343, %195
  %scevgep701.2 = getelementptr i8, i8* %call, i64 %344
  %scevgep701702.2 = bitcast i8* %scevgep701.2 to double*
  %_p_scalar_703.2 = load double, double* %scevgep701702.2, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_703.2
  store double %p_add42.i.2, double* %scevgep701702.2, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next683.2 = add nuw nsw i64 %polly.indvar682.2, 1
  %exitcond985.2.not = icmp eq i64 %polly.indvar682.2, %smin984.2
  br i1 %exitcond985.2.not, label %polly.loop_exit681.2, label %polly.loop_header679.2

polly.loop_exit681.2:                             ; preds = %polly.loop_header679.2
  %polly.access.add.Packed_MemRef_call2507690.3 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call1505699.3 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call2507690.3
  %_p_scalar_700.3 = load double, double* %polly.access.Packed_MemRef_call1505699.3, align 8
  %polly.access.Packed_MemRef_call2507691.3 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507690.3
  %_p_scalar_692.3 = load double, double* %polly.access.Packed_MemRef_call2507691.3, align 8
  %broadcast.splatinsert1136 = insertelement <4 x i64> poison, i64 %smin1129, i32 0
  %broadcast.splat1137 = shufflevector <4 x i64> %broadcast.splatinsert1136, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1140 = insertelement <4 x double> poison, double %_p_scalar_692.3, i32 0
  %broadcast.splat1141 = shufflevector <4 x double> %broadcast.splatinsert1140, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1143 = insertelement <4 x double> poison, double %_p_scalar_700.3, i32 0
  %broadcast.splat1144 = shufflevector <4 x double> %broadcast.splatinsert1143, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_exit681.2
  %index1133 = phi i64 [ 0, %polly.loop_exit681.2 ], [ %index.next1134, %vector.body1126 ]
  %broadcast.splatinsert1138 = insertelement <4 x i64> poison, i64 %index1133, i32 0
  %broadcast.splat1139 = shufflevector <4 x i64> %broadcast.splatinsert1138, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1139, <i64 0, i64 1, i64 2, i64 3>
  %345 = icmp ule <4 x i64> %induction, %broadcast.splat1137
  %346 = add nuw nsw i64 %index1133, %173
  %347 = add nuw nsw i64 %index1133, %polly.access.mul.Packed_MemRef_call1505685
  %348 = getelementptr double, double* %Packed_MemRef_call1505, i64 %347
  %349 = bitcast double* %348 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %349, i32 8, <4 x i1> %345, <4 x double> poison)
  %350 = fmul fast <4 x double> %broadcast.splat1141, %wide.masked.load
  %351 = getelementptr double, double* %Packed_MemRef_call2507, i64 %347
  %352 = bitcast double* %351 to <4 x double>*
  %wide.masked.load1142 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %352, i32 8, <4 x i1> %345, <4 x double> poison)
  %353 = fmul fast <4 x double> %broadcast.splat1144, %wide.masked.load1142
  %354 = shl i64 %346, 3
  %355 = add nuw nsw i64 %354, %198
  %356 = getelementptr i8, i8* %call, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  %wide.masked.load1145 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %357, i32 8, <4 x i1> %345, <4 x double> poison), !alias.scope !95, !noalias !97
  %358 = fadd fast <4 x double> %353, %350
  %359 = fmul fast <4 x double> %358, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %360 = fadd fast <4 x double> %359, %wide.masked.load1145
  %361 = bitcast i8* %356 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %360, <4 x double>* %361, i32 8, <4 x i1> %345), !alias.scope !95, !noalias !97
  %index.next1134 = add i64 %index1133, 4
  %362 = or i64 %index1133, 3
  %363 = icmp eq i64 %362, %smin1129
  br i1 %363, label %polly.loop_exit681.3, label %vector.body1126, !llvm.loop !121

polly.loop_exit681.3:                             ; preds = %vector.body1126
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next671, 1000
  br i1 %exitcond987.not, label %polly.loop_exit669, label %polly.loop_header667
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
!35 = !{!"llvm.loop.tile.size", i32 2048}
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
