; ModuleID = 'syr2k_exhaustive/mmp_all_XL_358.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_358.c"
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
  %call856 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
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
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start502, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1104 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1104, label %for.body3.i46.preheader1244, label %vector.ph1105

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
  br i1 %cmp.n1111, label %for.inc6.i, label %for.body3.i46.preheader1244

for.body3.i46.preheader1244:                      ; preds = %for.body3.i46.preheader, %middle.block1101
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1107, %middle.block1101 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1244, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1244 ]
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1148 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1148, label %for.body3.i60.preheader1242, label %vector.ph1149

vector.ph1149:                                    ; preds = %for.body3.i60.preheader
  %n.vec1151 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1149
  %index1152 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1153, %vector.body1147 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i52, i64 %index1152
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1156 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1156, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %57 = icmp eq i64 %index.next1153, %n.vec1151
  br i1 %57, label %middle.block1145, label %vector.body1147, !llvm.loop !64

middle.block1145:                                 ; preds = %vector.body1147
  %cmp.n1155 = icmp eq i64 %indvars.iv21.i52, %n.vec1151
  br i1 %cmp.n1155, label %for.inc6.i63, label %for.body3.i60.preheader1242

for.body3.i60.preheader1242:                      ; preds = %for.body3.i60.preheader, %middle.block1145
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1151, %middle.block1145 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1242, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1242 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1145, %for.cond1.preheader.i54
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1195, label %for.body3.i99.preheader1240, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i99.preheader
  %n.vec1198 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i91, i64 %index1199
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %68 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %68, label %middle.block1192, label %vector.body1194, !llvm.loop !66

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i91, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i102, label %for.body3.i99.preheader1240

for.body3.i99.preheader1240:                      ; preds = %for.body3.i99.preheader, %middle.block1192
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1240, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1240 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1192, %for.cond1.preheader.i93
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call856, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1207 = phi i64 [ %indvar.next1208, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1207, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1209 = icmp ult i64 %88, 4
  br i1 %min.iters.check1209, label %polly.loop_header192.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header
  %n.vec1212 = and i64 %88, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %90 = shl nuw nsw i64 %index1213, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1214 = add i64 %index1213, 4
  %95 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %95, label %middle.block1204, label %vector.body1206, !llvm.loop !79

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %88, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1204
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1204
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1208 = add i64 %indvar1207, 1
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
  %97 = shl nsw i64 %polly.indvar203, 6
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %98 = mul nsw i64 %polly.indvar203, -64
  %99 = shl nsw i64 %polly.indvar203, 2
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %exitcond951.not = icmp eq i64 %polly.indvar_next204, 19
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
  %indvar1221 = phi i64 [ %indvar.next1222, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %99, %polly.loop_exit208 ]
  %101 = shl nuw nsw i64 %indvar1221, 4
  %102 = shl nsw i64 %polly.indvar225, 4
  %103 = add nsw i64 %102, %98
  %104 = add nsw i64 %103, -1
  %.inv = icmp ugt i64 %103, 63
  %105 = select i1 %.inv, i64 63, i64 %104
  %polly.loop_guard = icmp sgt i64 %105, -1
  %106 = or i64 %103, 15
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %107 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.call1241.us = mul nuw nsw i64 %107, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond941.not = icmp eq i64 %polly.indvar237.us, %105
  br i1 %exitcond941.not, label %polly.loop_header245.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %103, %polly.loop_header234.us ]
  %108 = add nuw nsw i64 %polly.indvar249.us, %97
  %polly.access.mul.call1253.us = mul nuw nsw i64 %108, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp ult i64 %polly.indvar249.us, %106
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond942.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us
  br label %polly.loop_header259

polly.loop_exit261:                               ; preds = %polly.loop_exit267
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 16
  %exitcond950.not = icmp eq i64 %polly.indvar_next226, 75
  %indvar.next1222 = add i64 %indvar1221, 1
  br i1 %exitcond950.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond940.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %103, %polly.loop_header228 ]
  %109 = add nuw nsw i64 %polly.indvar249, %97
  %polly.access.mul.call1253 = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp ult i64 %polly.indvar249, %106
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.loop_header259:                             ; preds = %polly.loop_header259.preheader, %polly.loop_exit267
  %polly.indvar262 = phi i64 [ %polly.indvar_next263, %polly.loop_exit267 ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1277 = mul nuw nsw i64 %polly.indvar262, 1200
  br label %polly.loop_header265

polly.loop_exit267:                               ; preds = %polly.loop_exit273
  %polly.indvar_next263 = add nuw nsw i64 %polly.indvar262, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next263, 1000
  br i1 %exitcond949.not, label %polly.loop_exit261, label %polly.loop_header259

polly.loop_header265:                             ; preds = %polly.loop_exit273, %polly.loop_header259
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %polly.loop_exit273 ], [ %indvars.iv943, %polly.loop_header259 ]
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit273 ], [ 0, %polly.loop_header259 ]
  %110 = add i64 %101, %polly.indvar268
  %smin1223 = call i64 @llvm.smin.i64(i64 %110, i64 63)
  %111 = add nuw nsw i64 %smin1223, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv945, i64 63)
  %112 = add nuw nsw i64 %polly.indvar268, %103
  %113 = add nuw nsw i64 %polly.indvar268, %102
  %polly.access.add.Packed_MemRef_call2282 = add nuw nsw i64 %112, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call2283 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call2283, align 8
  %polly.access.Packed_MemRef_call1291 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call1291, align 8
  %114 = mul nuw nsw i64 %113, 9600
  %min.iters.check1224 = icmp ult i64 %smin1223, 3
  br i1 %min.iters.check1224, label %polly.loop_header271.preheader, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header265
  %n.vec1227 = and i64 %111, -4
  %broadcast.splatinsert1233 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1234 = shufflevector <4 x double> %broadcast.splatinsert1233, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1236 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1237 = shufflevector <4 x double> %broadcast.splatinsert1236, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1220 ]
  %115 = add nuw nsw i64 %index1228, %97
  %116 = add nuw nsw i64 %index1228, %polly.access.mul.Packed_MemRef_call1277
  %117 = getelementptr double, double* %Packed_MemRef_call1, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1234, %wide.load1232
  %120 = getelementptr double, double* %Packed_MemRef_call2, i64 %116
  %121 = bitcast double* %120 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %121, align 8
  %122 = fmul fast <4 x double> %broadcast.splat1237, %wide.load1235
  %123 = shl i64 %115, 3
  %124 = add nuw nsw i64 %123, %114
  %125 = getelementptr i8, i8* %call, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fadd fast <4 x double> %122, %119
  %128 = fmul fast <4 x double> %127, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %129 = fadd fast <4 x double> %128, %wide.load1238
  %130 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !72, !noalias !74
  %index.next1229 = add i64 %index1228, 4
  %131 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %131, label %middle.block1218, label %vector.body1220, !llvm.loop !84

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1231 = icmp eq i64 %111, %n.vec1227
  br i1 %cmp.n1231, label %polly.loop_exit273, label %polly.loop_header271.preheader

polly.loop_header271.preheader:                   ; preds = %polly.loop_header265, %middle.block1218
  %polly.indvar274.ph = phi i64 [ 0, %polly.loop_header265 ], [ %n.vec1227, %middle.block1218 ]
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_header271, %middle.block1218
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 1
  %exitcond948.not = icmp eq i64 %polly.indvar_next269, 16
  br i1 %exitcond948.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header271:                             ; preds = %polly.loop_header271.preheader, %polly.loop_header271
  %polly.indvar274 = phi i64 [ %polly.indvar_next275, %polly.loop_header271 ], [ %polly.indvar274.ph, %polly.loop_header271.preheader ]
  %132 = add nuw nsw i64 %polly.indvar274, %97
  %polly.access.add.Packed_MemRef_call1278 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1279 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call1279, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %133 = shl i64 %132, 3
  %134 = add nuw nsw i64 %133, %114
  %scevgep293 = getelementptr i8, i8* %call, i64 %134
  %scevgep293294 = bitcast i8* %scevgep293 to double*
  %_p_scalar_295 = load double, double* %scevgep293294, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_295
  store double %p_add42.i118, double* %scevgep293294, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond947.not = icmp eq i64 %polly.indvar274, %smin
  br i1 %exitcond947.not, label %polly.loop_exit273, label %polly.loop_header271, !llvm.loop !85

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* nonnull %malloccall300)
  tail call void @free(i8* nonnull %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1160 = phi i64 [ %indvar.next1161, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %135 = add i64 %indvar1160, 1
  %136 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1162 = icmp ult i64 %135, 4
  br i1 %min.iters.check1162, label %polly.loop_header392.preheader, label %vector.ph1163

vector.ph1163:                                    ; preds = %polly.loop_header386
  %n.vec1165 = and i64 %135, -4
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1163
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1167, %vector.body1159 ]
  %137 = shl nuw nsw i64 %index1166, 3
  %138 = getelementptr i8, i8* %scevgep398, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1170 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !86, !noalias !88
  %140 = fmul fast <4 x double> %wide.load1170, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !86, !noalias !88
  %index.next1167 = add i64 %index1166, 4
  %142 = icmp eq i64 %index.next1167, %n.vec1165
  br i1 %142, label %middle.block1157, label %vector.body1159, !llvm.loop !93

middle.block1157:                                 ; preds = %vector.body1159
  %cmp.n1169 = icmp eq i64 %135, %n.vec1165
  br i1 %cmp.n1169, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1157
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1165, %middle.block1157 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1157
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1161 = add i64 %indvar1160, 1
  br i1 %exitcond972.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %143
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond971.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !94

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit426
  %indvars.iv954 = phi i64 [ 1200, %polly.loop_header402.preheader ], [ %indvars.iv.next955, %polly.loop_exit426 ]
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header402.preheader ], [ %polly.indvar_next406, %polly.loop_exit426 ]
  %144 = shl nsw i64 %polly.indvar405, 6
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_exit416
  %145 = mul nsw i64 %polly.indvar405, -64
  %146 = shl nsw i64 %polly.indvar405, 2
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit465
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next955 = add nsw i64 %indvars.iv954, -64
  %exitcond970.not = icmp eq i64 %polly.indvar_next406, 19
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
  %147 = add nuw nsw i64 %polly.indvar417, %144
  %polly.access.mul.call2421 = mul nuw nsw i64 %147, 1000
  %polly.access.add.call2422 = add nuw nsw i64 %polly.access.mul.call2421, %polly.indvar411
  %polly.access.call2423 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2422
  %polly.access.call2423.load = load double, double* %polly.access.call2423, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2423.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next418, %indvars.iv954
  br i1 %exitcond956.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header424:                             ; preds = %polly.loop_exit465, %polly.loop_exit410
  %indvar1174 = phi i64 [ %indvar.next1175, %polly.loop_exit465 ], [ 0, %polly.loop_exit410 ]
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit465 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_exit465 ], [ %146, %polly.loop_exit410 ]
  %148 = shl nuw nsw i64 %indvar1174, 4
  %149 = shl nsw i64 %polly.indvar427, 4
  %150 = add nsw i64 %149, %145
  %151 = add nsw i64 %150, -1
  %.inv910 = icmp ugt i64 %150, 63
  %152 = select i1 %.inv910, i64 63, i64 %151
  %polly.loop_guard440 = icmp sgt i64 %152, -1
  %153 = or i64 %150, 15
  br i1 %polly.loop_guard440, label %polly.loop_header430.us, label %polly.loop_header430

polly.loop_header430.us:                          ; preds = %polly.loop_header424, %polly.loop_exit451.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit451.us ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar433.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %154 = add nuw nsw i64 %polly.indvar441.us, %144
  %polly.access.mul.call1445.us = mul nuw nsw i64 %154, 1000
  %polly.access.add.call1446.us = add nuw nsw i64 %polly.access.mul.call1445.us, %polly.indvar433.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next442.us = add nuw i64 %polly.indvar441.us, 1
  %exitcond959.not = icmp eq i64 %polly.indvar441.us, %152
  br i1 %exitcond959.not, label %polly.loop_header449.us, label %polly.loop_header437.us

polly.loop_header449.us:                          ; preds = %polly.loop_header437.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ %150, %polly.loop_header437.us ]
  %155 = add nuw nsw i64 %polly.indvar453.us, %144
  %polly.access.mul.call1457.us = mul nuw nsw i64 %155, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.access.mul.call1457.us, %polly.indvar433.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1301461.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301462.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301462.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %polly.loop_cond455.not.not.us = icmp ult i64 %polly.indvar453.us, %153
  br i1 %polly.loop_cond455.not.not.us, label %polly.loop_header449.us, label %polly.loop_exit451.us

polly.loop_exit451.us:                            ; preds = %polly.loop_header449.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next434.us, 1000
  br i1 %exitcond960.not, label %polly.loop_header463.preheader, label %polly.loop_header430.us

polly.loop_header463.preheader:                   ; preds = %polly.loop_exit451, %polly.loop_exit451.us
  br label %polly.loop_header463

polly.loop_exit465:                               ; preds = %polly.loop_exit471
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 16
  %exitcond969.not = icmp eq i64 %polly.indvar_next428, 75
  %indvar.next1175 = add i64 %indvar1174, 1
  br i1 %exitcond969.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header424, %polly.loop_exit451
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit451 ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1301460 = mul nuw nsw i64 %polly.indvar433, 1200
  br label %polly.loop_header449

polly.loop_exit451:                               ; preds = %polly.loop_header449
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond958.not = icmp eq i64 %polly.indvar_next434, 1000
  br i1 %exitcond958.not, label %polly.loop_header463.preheader, label %polly.loop_header430

polly.loop_header449:                             ; preds = %polly.loop_header430, %polly.loop_header449
  %polly.indvar453 = phi i64 [ %polly.indvar_next454, %polly.loop_header449 ], [ %150, %polly.loop_header430 ]
  %156 = add nuw nsw i64 %polly.indvar453, %144
  %polly.access.mul.call1457 = mul nuw nsw i64 %156, 1000
  %polly.access.add.call1458 = add nuw nsw i64 %polly.access.mul.call1457, %polly.indvar433
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1301461 = add nuw nsw i64 %polly.indvar453, %polly.access.mul.Packed_MemRef_call1301460
  %polly.access.Packed_MemRef_call1301462 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1301462, align 8
  %polly.indvar_next454 = add nuw nsw i64 %polly.indvar453, 1
  %polly.loop_cond455.not.not = icmp ult i64 %polly.indvar453, %153
  br i1 %polly.loop_cond455.not.not, label %polly.loop_header449, label %polly.loop_exit451

polly.loop_header463:                             ; preds = %polly.loop_header463.preheader, %polly.loop_exit471
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_exit471 ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1301481 = mul nuw nsw i64 %polly.indvar466, 1200
  br label %polly.loop_header469

polly.loop_exit471:                               ; preds = %polly.loop_exit477
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next467, 1000
  br i1 %exitcond968.not, label %polly.loop_exit465, label %polly.loop_header463

polly.loop_header469:                             ; preds = %polly.loop_exit477, %polly.loop_header463
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit477 ], [ %indvars.iv961, %polly.loop_header463 ]
  %polly.indvar472 = phi i64 [ %polly.indvar_next473, %polly.loop_exit477 ], [ 0, %polly.loop_header463 ]
  %157 = add i64 %148, %polly.indvar472
  %smin1176 = call i64 @llvm.smin.i64(i64 %157, i64 63)
  %158 = add nuw nsw i64 %smin1176, 1
  %smin965 = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 63)
  %159 = add nuw nsw i64 %polly.indvar472, %150
  %160 = add nuw nsw i64 %polly.indvar472, %149
  %polly.access.add.Packed_MemRef_call2303486 = add nuw nsw i64 %159, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call2303487 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303486
  %_p_scalar_488 = load double, double* %polly.access.Packed_MemRef_call2303487, align 8
  %polly.access.Packed_MemRef_call1301495 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call2303486
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call1301495, align 8
  %161 = mul nuw nsw i64 %160, 9600
  %min.iters.check1177 = icmp ult i64 %smin1176, 3
  br i1 %min.iters.check1177, label %polly.loop_header475.preheader, label %vector.ph1178

vector.ph1178:                                    ; preds = %polly.loop_header469
  %n.vec1180 = and i64 %158, -4
  %broadcast.splatinsert1186 = insertelement <4 x double> poison, double %_p_scalar_488, i32 0
  %broadcast.splat1187 = shufflevector <4 x double> %broadcast.splatinsert1186, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1189 = insertelement <4 x double> poison, double %_p_scalar_496, i32 0
  %broadcast.splat1190 = shufflevector <4 x double> %broadcast.splatinsert1189, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1173 ]
  %162 = add nuw nsw i64 %index1181, %144
  %163 = add nuw nsw i64 %index1181, %polly.access.mul.Packed_MemRef_call1301481
  %164 = getelementptr double, double* %Packed_MemRef_call1301, i64 %163
  %165 = bitcast double* %164 to <4 x double>*
  %wide.load1185 = load <4 x double>, <4 x double>* %165, align 8
  %166 = fmul fast <4 x double> %broadcast.splat1187, %wide.load1185
  %167 = getelementptr double, double* %Packed_MemRef_call2303, i64 %163
  %168 = bitcast double* %167 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %168, align 8
  %169 = fmul fast <4 x double> %broadcast.splat1190, %wide.load1188
  %170 = shl i64 %162, 3
  %171 = add nuw nsw i64 %170, %161
  %172 = getelementptr i8, i8* %call, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %173, align 8, !alias.scope !86, !noalias !88
  %174 = fadd fast <4 x double> %169, %166
  %175 = fmul fast <4 x double> %174, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %176 = fadd fast <4 x double> %175, %wide.load1191
  %177 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %176, <4 x double>* %177, align 8, !alias.scope !86, !noalias !88
  %index.next1182 = add i64 %index1181, 4
  %178 = icmp eq i64 %index.next1182, %n.vec1180
  br i1 %178, label %middle.block1171, label %vector.body1173, !llvm.loop !97

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1184 = icmp eq i64 %158, %n.vec1180
  br i1 %cmp.n1184, label %polly.loop_exit477, label %polly.loop_header475.preheader

polly.loop_header475.preheader:                   ; preds = %polly.loop_header469, %middle.block1171
  %polly.indvar478.ph = phi i64 [ 0, %polly.loop_header469 ], [ %n.vec1180, %middle.block1171 ]
  br label %polly.loop_header475

polly.loop_exit477:                               ; preds = %polly.loop_header475, %middle.block1171
  %polly.indvar_next473 = add nuw nsw i64 %polly.indvar472, 1
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1
  %exitcond967.not = icmp eq i64 %polly.indvar_next473, 16
  br i1 %exitcond967.not, label %polly.loop_exit471, label %polly.loop_header469

polly.loop_header475:                             ; preds = %polly.loop_header475.preheader, %polly.loop_header475
  %polly.indvar478 = phi i64 [ %polly.indvar_next479, %polly.loop_header475 ], [ %polly.indvar478.ph, %polly.loop_header475.preheader ]
  %179 = add nuw nsw i64 %polly.indvar478, %144
  %polly.access.add.Packed_MemRef_call1301482 = add nuw nsw i64 %polly.indvar478, %polly.access.mul.Packed_MemRef_call1301481
  %polly.access.Packed_MemRef_call1301483 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301482
  %_p_scalar_484 = load double, double* %polly.access.Packed_MemRef_call1301483, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_488, %_p_scalar_484
  %polly.access.Packed_MemRef_call2303491 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call1301482
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call2303491, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %161
  %scevgep497 = getelementptr i8, i8* %call, i64 %181
  %scevgep497498 = bitcast i8* %scevgep497 to double*
  %_p_scalar_499 = load double, double* %scevgep497498, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_499
  store double %p_add42.i79, double* %scevgep497498, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next479 = add nuw nsw i64 %polly.indvar478, 1
  %exitcond966.not = icmp eq i64 %polly.indvar478, %smin965
  br i1 %exitcond966.not, label %polly.loop_exit477, label %polly.loop_header475, !llvm.loop !98

polly.start502:                                   ; preds = %init_array.exit
  %malloccall504 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall506 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header590

polly.exiting503:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* nonnull %malloccall504)
  tail call void @free(i8* nonnull %malloccall506)
  br label %kernel_syr2k.exit

polly.loop_header590:                             ; preds = %polly.loop_exit598, %polly.start502
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit598 ], [ 0, %polly.start502 ]
  %polly.indvar593 = phi i64 [ %polly.indvar_next594, %polly.loop_exit598 ], [ 1, %polly.start502 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar593, 9600
  %scevgep602 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1115 = icmp ult i64 %182, 4
  br i1 %min.iters.check1115, label %polly.loop_header596.preheader, label %vector.ph1116

vector.ph1116:                                    ; preds = %polly.loop_header590
  %n.vec1118 = and i64 %182, -4
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1116
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1120, %vector.body1114 ]
  %184 = shl nuw nsw i64 %index1119, 3
  %185 = getelementptr i8, i8* %scevgep602, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1123 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !99, !noalias !101
  %187 = fmul fast <4 x double> %wide.load1123, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !99, !noalias !101
  %index.next1120 = add i64 %index1119, 4
  %189 = icmp eq i64 %index.next1120, %n.vec1118
  br i1 %189, label %middle.block1112, label %vector.body1114, !llvm.loop !106

middle.block1112:                                 ; preds = %vector.body1114
  %cmp.n1122 = icmp eq i64 %182, %n.vec1118
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
  %190 = shl nuw nsw i64 %polly.indvar599, 3
  %scevgep603 = getelementptr i8, i8* %scevgep602, i64 %190
  %scevgep603604 = bitcast i8* %scevgep603 to double*
  %_p_scalar_605 = load double, double* %scevgep603604, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_605, 1.200000e+00
  store double %p_mul.i, double* %scevgep603604, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next600, %polly.indvar593
  br i1 %exitcond990.not, label %polly.loop_exit598, label %polly.loop_header596, !llvm.loop !107

polly.loop_header606:                             ; preds = %polly.loop_header606.preheader, %polly.loop_exit630
  %indvars.iv973 = phi i64 [ 1200, %polly.loop_header606.preheader ], [ %indvars.iv.next974, %polly.loop_exit630 ]
  %polly.indvar609 = phi i64 [ 0, %polly.loop_header606.preheader ], [ %polly.indvar_next610, %polly.loop_exit630 ]
  %191 = shl nsw i64 %polly.indvar609, 6
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_exit620
  %192 = mul nsw i64 %polly.indvar609, -64
  %193 = shl nsw i64 %polly.indvar609, 2
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit669
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %indvars.iv.next974 = add nsw i64 %indvars.iv973, -64
  %exitcond989.not = icmp eq i64 %polly.indvar_next610, 19
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
  %194 = add nuw nsw i64 %polly.indvar621, %191
  %polly.access.mul.call2625 = mul nuw nsw i64 %194, 1000
  %polly.access.add.call2626 = add nuw nsw i64 %polly.access.mul.call2625, %polly.indvar615
  %polly.access.call2627 = getelementptr double, double* %polly.access.cast.call2718, i64 %polly.access.add.call2626
  %polly.access.call2627.load = load double, double* %polly.access.call2627, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2507 = add nuw nsw i64 %polly.indvar621, %polly.access.mul.Packed_MemRef_call2507
  %polly.access.Packed_MemRef_call2507 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507
  store double %polly.access.call2627.load, double* %polly.access.Packed_MemRef_call2507, align 8
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next622, %indvars.iv973
  br i1 %exitcond975.not, label %polly.loop_exit620, label %polly.loop_header618

polly.loop_header628:                             ; preds = %polly.loop_exit669, %polly.loop_exit614
  %indvar1127 = phi i64 [ %indvar.next1128, %polly.loop_exit669 ], [ 0, %polly.loop_exit614 ]
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %polly.loop_exit669 ], [ 0, %polly.loop_exit614 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit669 ], [ %193, %polly.loop_exit614 ]
  %195 = shl nuw nsw i64 %indvar1127, 4
  %196 = shl nsw i64 %polly.indvar631, 4
  %197 = add nsw i64 %196, %192
  %198 = add nsw i64 %197, -1
  %.inv911 = icmp ugt i64 %197, 63
  %199 = select i1 %.inv911, i64 63, i64 %198
  %polly.loop_guard644 = icmp sgt i64 %199, -1
  %200 = or i64 %197, 15
  br i1 %polly.loop_guard644, label %polly.loop_header634.us, label %polly.loop_header634

polly.loop_header634.us:                          ; preds = %polly.loop_header628, %polly.loop_exit655.us
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.loop_exit655.us ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1505.us = mul nuw nsw i64 %polly.indvar637.us, 1200
  br label %polly.loop_header641.us

polly.loop_header641.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header634.us ]
  %201 = add nuw nsw i64 %polly.indvar645.us, %191
  %polly.access.mul.call1649.us = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1650.us = add nuw nsw i64 %polly.access.mul.call1649.us, %polly.indvar637.us
  %polly.access.call1651.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1650.us
  %polly.access.call1651.load.us = load double, double* %polly.access.call1651.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1505.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505.us = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505.us
  store double %polly.access.call1651.load.us, double* %polly.access.Packed_MemRef_call1505.us, align 8
  %polly.indvar_next646.us = add nuw i64 %polly.indvar645.us, 1
  %exitcond978.not = icmp eq i64 %polly.indvar645.us, %199
  br i1 %exitcond978.not, label %polly.loop_header653.us, label %polly.loop_header641.us

polly.loop_header653.us:                          ; preds = %polly.loop_header641.us, %polly.loop_header653.us
  %polly.indvar657.us = phi i64 [ %polly.indvar_next658.us, %polly.loop_header653.us ], [ %197, %polly.loop_header641.us ]
  %202 = add nuw nsw i64 %polly.indvar657.us, %191
  %polly.access.mul.call1661.us = mul nuw nsw i64 %202, 1000
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %polly.indvar637.us
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1505665.us = add nuw nsw i64 %polly.indvar657.us, %polly.access.mul.Packed_MemRef_call1505.us
  %polly.access.Packed_MemRef_call1505666.us = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1505666.us, align 8
  %polly.indvar_next658.us = add nuw nsw i64 %polly.indvar657.us, 1
  %polly.loop_cond659.not.not.us = icmp ult i64 %polly.indvar657.us, %200
  br i1 %polly.loop_cond659.not.not.us, label %polly.loop_header653.us, label %polly.loop_exit655.us

polly.loop_exit655.us:                            ; preds = %polly.loop_header653.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next638.us, 1000
  br i1 %exitcond979.not, label %polly.loop_header667.preheader, label %polly.loop_header634.us

polly.loop_header667.preheader:                   ; preds = %polly.loop_exit655, %polly.loop_exit655.us
  br label %polly.loop_header667

polly.loop_exit669:                               ; preds = %polly.loop_exit675
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 16
  %exitcond988.not = icmp eq i64 %polly.indvar_next632, 75
  %indvar.next1128 = add i64 %indvar1127, 1
  br i1 %exitcond988.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_header628, %polly.loop_exit655
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_exit655 ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1505664 = mul nuw nsw i64 %polly.indvar637, 1200
  br label %polly.loop_header653

polly.loop_exit655:                               ; preds = %polly.loop_header653
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next638, 1000
  br i1 %exitcond977.not, label %polly.loop_header667.preheader, label %polly.loop_header634

polly.loop_header653:                             ; preds = %polly.loop_header634, %polly.loop_header653
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header653 ], [ %197, %polly.loop_header634 ]
  %203 = add nuw nsw i64 %polly.indvar657, %191
  %polly.access.mul.call1661 = mul nuw nsw i64 %203, 1000
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661, %polly.indvar637
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1708, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1505665 = add nuw nsw i64 %polly.indvar657, %polly.access.mul.Packed_MemRef_call1505664
  %polly.access.Packed_MemRef_call1505666 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1505666, align 8
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %polly.loop_cond659.not.not = icmp ult i64 %polly.indvar657, %200
  br i1 %polly.loop_cond659.not.not, label %polly.loop_header653, label %polly.loop_exit655

polly.loop_header667:                             ; preds = %polly.loop_header667.preheader, %polly.loop_exit675
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit675 ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1505685 = mul nuw nsw i64 %polly.indvar670, 1200
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_exit681
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next671, 1000
  br i1 %exitcond987.not, label %polly.loop_exit669, label %polly.loop_header667

polly.loop_header673:                             ; preds = %polly.loop_exit681, %polly.loop_header667
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %polly.loop_exit681 ], [ %indvars.iv980, %polly.loop_header667 ]
  %polly.indvar676 = phi i64 [ %polly.indvar_next677, %polly.loop_exit681 ], [ 0, %polly.loop_header667 ]
  %204 = add i64 %195, %polly.indvar676
  %smin1129 = call i64 @llvm.smin.i64(i64 %204, i64 63)
  %205 = add nuw nsw i64 %smin1129, 1
  %smin984 = call i64 @llvm.smin.i64(i64 %indvars.iv982, i64 63)
  %206 = add nuw nsw i64 %polly.indvar676, %197
  %207 = add nuw nsw i64 %polly.indvar676, %196
  %polly.access.add.Packed_MemRef_call2507690 = add nuw nsw i64 %206, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call2507691 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call2507690
  %_p_scalar_692 = load double, double* %polly.access.Packed_MemRef_call2507691, align 8
  %polly.access.Packed_MemRef_call1505699 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call2507690
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1505699, align 8
  %208 = mul nuw nsw i64 %207, 9600
  %min.iters.check1130 = icmp ult i64 %smin1129, 3
  br i1 %min.iters.check1130, label %polly.loop_header679.preheader, label %vector.ph1131

vector.ph1131:                                    ; preds = %polly.loop_header673
  %n.vec1133 = and i64 %205, -4
  %broadcast.splatinsert1139 = insertelement <4 x double> poison, double %_p_scalar_692, i32 0
  %broadcast.splat1140 = shufflevector <4 x double> %broadcast.splatinsert1139, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1142 = insertelement <4 x double> poison, double %_p_scalar_700, i32 0
  %broadcast.splat1143 = shufflevector <4 x double> %broadcast.splatinsert1142, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %vector.ph1131
  %index1134 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1135, %vector.body1126 ]
  %209 = add nuw nsw i64 %index1134, %191
  %210 = add nuw nsw i64 %index1134, %polly.access.mul.Packed_MemRef_call1505685
  %211 = getelementptr double, double* %Packed_MemRef_call1505, i64 %210
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1138 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1140, %wide.load1138
  %214 = getelementptr double, double* %Packed_MemRef_call2507, i64 %210
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1141 = load <4 x double>, <4 x double>* %215, align 8
  %216 = fmul fast <4 x double> %broadcast.splat1143, %wide.load1141
  %217 = shl i64 %209, 3
  %218 = add nuw nsw i64 %217, %208
  %219 = getelementptr i8, i8* %call, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1144 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !99, !noalias !101
  %221 = fadd fast <4 x double> %216, %213
  %222 = fmul fast <4 x double> %221, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %223 = fadd fast <4 x double> %222, %wide.load1144
  %224 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %223, <4 x double>* %224, align 8, !alias.scope !99, !noalias !101
  %index.next1135 = add i64 %index1134, 4
  %225 = icmp eq i64 %index.next1135, %n.vec1133
  br i1 %225, label %middle.block1124, label %vector.body1126, !llvm.loop !110

middle.block1124:                                 ; preds = %vector.body1126
  %cmp.n1137 = icmp eq i64 %205, %n.vec1133
  br i1 %cmp.n1137, label %polly.loop_exit681, label %polly.loop_header679.preheader

polly.loop_header679.preheader:                   ; preds = %polly.loop_header673, %middle.block1124
  %polly.indvar682.ph = phi i64 [ 0, %polly.loop_header673 ], [ %n.vec1133, %middle.block1124 ]
  br label %polly.loop_header679

polly.loop_exit681:                               ; preds = %polly.loop_header679, %middle.block1124
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %indvars.iv.next983 = add nuw nsw i64 %indvars.iv982, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next677, 16
  br i1 %exitcond986.not, label %polly.loop_exit675, label %polly.loop_header673

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_header679
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_header679 ], [ %polly.indvar682.ph, %polly.loop_header679.preheader ]
  %226 = add nuw nsw i64 %polly.indvar682, %191
  %polly.access.add.Packed_MemRef_call1505686 = add nuw nsw i64 %polly.indvar682, %polly.access.mul.Packed_MemRef_call1505685
  %polly.access.Packed_MemRef_call1505687 = getelementptr double, double* %Packed_MemRef_call1505, i64 %polly.access.add.Packed_MemRef_call1505686
  %_p_scalar_688 = load double, double* %polly.access.Packed_MemRef_call1505687, align 8
  %p_mul27.i = fmul fast double %_p_scalar_692, %_p_scalar_688
  %polly.access.Packed_MemRef_call2507695 = getelementptr double, double* %Packed_MemRef_call2507, i64 %polly.access.add.Packed_MemRef_call1505686
  %_p_scalar_696 = load double, double* %polly.access.Packed_MemRef_call2507695, align 8
  %p_mul37.i = fmul fast double %_p_scalar_700, %_p_scalar_696
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %208
  %scevgep701 = getelementptr i8, i8* %call, i64 %228
  %scevgep701702 = bitcast i8* %scevgep701 to double*
  %_p_scalar_703 = load double, double* %scevgep701702, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_703
  store double %p_add42.i, double* %scevgep701702, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond985.not = icmp eq i64 %polly.indvar682, %smin984
  br i1 %exitcond985.not, label %polly.loop_exit681, label %polly.loop_header679, !llvm.loop !111

polly.loop_header830:                             ; preds = %entry, %polly.loop_exit838
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit838 ], [ 0, %entry ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %entry ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 -1168)
  %229 = shl nsw i64 %polly.indvar833, 5
  %230 = add nsw i64 %smin1018, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -32
  %exitcond1021.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1021.not, label %polly.loop_header857, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %231 = mul nsw i64 %polly.indvar839, -32
  %smin1053 = call i64 @llvm.smin.i64(i64 %231, i64 -1168)
  %232 = add nsw i64 %smin1053, 1200
  %smin1014 = call i64 @llvm.smin.i64(i64 %indvars.iv1012, i64 -1168)
  %233 = shl nsw i64 %polly.indvar839, 5
  %234 = add nsw i64 %smin1014, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -32
  %exitcond1020.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1020.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %polly.indvar845 = phi i64 [ 0, %polly.loop_header836 ], [ %polly.indvar_next846, %polly.loop_exit850 ]
  %235 = add nuw nsw i64 %polly.indvar845, %229
  %236 = trunc i64 %235 to i32
  %237 = mul nuw nsw i64 %235, 9600
  %min.iters.check = icmp eq i64 %232, 0
  br i1 %min.iters.check, label %polly.loop_header848, label %vector.ph1054

vector.ph1054:                                    ; preds = %polly.loop_header842
  %broadcast.splatinsert1061 = insertelement <4 x i64> poison, i64 %233, i32 0
  %broadcast.splat1062 = shufflevector <4 x i64> %broadcast.splatinsert1061, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1054
  %index1055 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1056, %vector.body1052 ]
  %vec.ind1059 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1054 ], [ %vec.ind.next1060, %vector.body1052 ]
  %238 = add nuw nsw <4 x i64> %vec.ind1059, %broadcast.splat1062
  %239 = trunc <4 x i64> %238 to <4 x i32>
  %240 = mul <4 x i32> %broadcast.splat1064, %239
  %241 = add <4 x i32> %240, <i32 3, i32 3, i32 3, i32 3>
  %242 = urem <4 x i32> %241, <i32 1200, i32 1200, i32 1200, i32 1200>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %245 = extractelement <4 x i64> %238, i32 0
  %246 = shl i64 %245, 3
  %247 = add nuw nsw i64 %246, %237
  %248 = getelementptr i8, i8* %call, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %244, <4 x double>* %249, align 8, !alias.scope !112, !noalias !114
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1060 = add <4 x i64> %vec.ind1059, <i64 4, i64 4, i64 4, i64 4>
  %250 = icmp eq i64 %index.next1056, %232
  br i1 %250, label %polly.loop_exit850, label %vector.body1052, !llvm.loop !117

polly.loop_exit850:                               ; preds = %vector.body1052, %polly.loop_header848
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar845, %230
  br i1 %exitcond1019.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_header842, %polly.loop_header848
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_header848 ], [ 0, %polly.loop_header842 ]
  %251 = add nuw nsw i64 %polly.indvar851, %233
  %252 = trunc i64 %251 to i32
  %253 = mul i32 %252, %236
  %254 = add i32 %253, 3
  %255 = urem i32 %254, 1200
  %p_conv31.i = sitofp i32 %255 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %256 = shl i64 %251, 3
  %257 = add nuw nsw i64 %256, %237
  %scevgep854 = getelementptr i8, i8* %call, i64 %257
  %scevgep854855 = bitcast i8* %scevgep854 to double*
  store double %p_div33.i, double* %scevgep854855, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar851, %234
  br i1 %exitcond1015.not, label %polly.loop_exit850, label %polly.loop_header848, !llvm.loop !118

polly.loop_header857:                             ; preds = %polly.loop_exit838, %polly.loop_exit865
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit865 ], [ 0, %polly.loop_exit838 ]
  %polly.indvar860 = phi i64 [ %polly.indvar_next861, %polly.loop_exit865 ], [ 0, %polly.loop_exit838 ]
  %smin1008 = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 -1168)
  %258 = shl nsw i64 %polly.indvar860, 5
  %259 = add nsw i64 %smin1008, 1199
  br label %polly.loop_header863

polly.loop_exit865:                               ; preds = %polly.loop_exit871
  %polly.indvar_next861 = add nuw nsw i64 %polly.indvar860, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -32
  %exitcond1011.not = icmp eq i64 %polly.indvar_next861, 38
  br i1 %exitcond1011.not, label %polly.loop_header883, label %polly.loop_header857

polly.loop_header863:                             ; preds = %polly.loop_exit871, %polly.loop_header857
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit871 ], [ 0, %polly.loop_header857 ]
  %polly.indvar866 = phi i64 [ %polly.indvar_next867, %polly.loop_exit871 ], [ 0, %polly.loop_header857 ]
  %260 = mul nsw i64 %polly.indvar866, -32
  %smin1068 = call i64 @llvm.smin.i64(i64 %260, i64 -968)
  %261 = add nsw i64 %smin1068, 1000
  %smin1004 = call i64 @llvm.smin.i64(i64 %indvars.iv1002, i64 -968)
  %262 = shl nsw i64 %polly.indvar866, 5
  %263 = add nsw i64 %smin1004, 999
  br label %polly.loop_header869

polly.loop_exit871:                               ; preds = %polly.loop_exit877
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -32
  %exitcond1010.not = icmp eq i64 %polly.indvar_next867, 32
  br i1 %exitcond1010.not, label %polly.loop_exit865, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_exit877, %polly.loop_header863
  %polly.indvar872 = phi i64 [ 0, %polly.loop_header863 ], [ %polly.indvar_next873, %polly.loop_exit877 ]
  %264 = add nuw nsw i64 %polly.indvar872, %258
  %265 = trunc i64 %264 to i32
  %266 = mul nuw nsw i64 %264, 8000
  %min.iters.check1069 = icmp eq i64 %261, 0
  br i1 %min.iters.check1069, label %polly.loop_header875, label %vector.ph1070

vector.ph1070:                                    ; preds = %polly.loop_header869
  %broadcast.splatinsert1079 = insertelement <4 x i64> poison, i64 %262, i32 0
  %broadcast.splat1080 = shufflevector <4 x i64> %broadcast.splatinsert1079, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1070
  %index1073 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1074, %vector.body1067 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1070 ], [ %vec.ind.next1078, %vector.body1067 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1077, %broadcast.splat1080
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1082, %268
  %270 = add <4 x i32> %269, <i32 2, i32 2, i32 2, i32 2>
  %271 = urem <4 x i32> %270, <i32 1000, i32 1000, i32 1000, i32 1000>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %266
  %277 = getelementptr i8, i8* %call2, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !116, !noalias !119
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1074, %261
  br i1 %279, label %polly.loop_exit877, label %vector.body1067, !llvm.loop !120

polly.loop_exit877:                               ; preds = %vector.body1067, %polly.loop_header875
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar872, %259
  br i1 %exitcond1009.not, label %polly.loop_exit871, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_header869, %polly.loop_header875
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_header875 ], [ 0, %polly.loop_header869 ]
  %280 = add nuw nsw i64 %polly.indvar878, %262
  %281 = trunc i64 %280 to i32
  %282 = mul i32 %281, %265
  %283 = add i32 %282, 2
  %284 = urem i32 %283, 1000
  %p_conv10.i = sitofp i32 %284 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %285 = shl i64 %280, 3
  %286 = add nuw nsw i64 %285, %266
  %scevgep881 = getelementptr i8, i8* %call2, i64 %286
  %scevgep881882 = bitcast i8* %scevgep881 to double*
  store double %p_div12.i, double* %scevgep881882, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar878, %263
  br i1 %exitcond1005.not, label %polly.loop_exit877, label %polly.loop_header875, !llvm.loop !121

polly.loop_header883:                             ; preds = %polly.loop_exit865, %polly.loop_exit891
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit891 ], [ 0, %polly.loop_exit865 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit865 ]
  %smin998 = call i64 @llvm.smin.i64(i64 %indvars.iv996, i64 -1168)
  %287 = shl nsw i64 %polly.indvar886, 5
  %288 = add nsw i64 %smin998, 1199
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, -32
  %exitcond1001.not = icmp eq i64 %polly.indvar_next887, 38
  br i1 %exitcond1001.not, label %init_array.exit, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %289 = mul nsw i64 %polly.indvar892, -32
  %smin1086 = call i64 @llvm.smin.i64(i64 %289, i64 -968)
  %290 = add nsw i64 %smin1086, 1000
  %smin994 = call i64 @llvm.smin.i64(i64 %indvars.iv992, i64 -968)
  %291 = shl nsw i64 %polly.indvar892, 5
  %292 = add nsw i64 %smin994, 999
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, -32
  %exitcond1000.not = icmp eq i64 %polly.indvar_next893, 32
  br i1 %exitcond1000.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %polly.indvar898 = phi i64 [ 0, %polly.loop_header889 ], [ %polly.indvar_next899, %polly.loop_exit903 ]
  %293 = add nuw nsw i64 %polly.indvar898, %287
  %294 = trunc i64 %293 to i32
  %295 = mul nuw nsw i64 %293, 8000
  %min.iters.check1087 = icmp eq i64 %290, 0
  br i1 %min.iters.check1087, label %polly.loop_header901, label %vector.ph1088

vector.ph1088:                                    ; preds = %polly.loop_header895
  %broadcast.splatinsert1097 = insertelement <4 x i64> poison, i64 %291, i32 0
  %broadcast.splat1098 = shufflevector <4 x i64> %broadcast.splatinsert1097, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1088
  %index1091 = phi i64 [ 0, %vector.ph1088 ], [ %index.next1092, %vector.body1085 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1088 ], [ %vec.ind.next1096, %vector.body1085 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1095, %broadcast.splat1098
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1100, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 1200, i32 1200, i32 1200, i32 1200>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add nuw nsw i64 %304, %295
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !115, !noalias !122
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1092, %290
  br i1 %308, label %polly.loop_exit903, label %vector.body1085, !llvm.loop !123

polly.loop_exit903:                               ; preds = %vector.body1085, %polly.loop_header901
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond999.not = icmp eq i64 %polly.indvar898, %288
  br i1 %exitcond999.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_header895, %polly.loop_header901
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_header901 ], [ 0, %polly.loop_header895 ]
  %309 = add nuw nsw i64 %polly.indvar904, %291
  %310 = trunc i64 %309 to i32
  %311 = mul i32 %310, %294
  %312 = add i32 %311, 1
  %313 = urem i32 %312, 1200
  %p_conv.i = sitofp i32 %313 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %314 = shl i64 %309, 3
  %315 = add nuw nsw i64 %314, %295
  %scevgep908 = getelementptr i8, i8* %call1, i64 %315
  %scevgep908909 = bitcast i8* %scevgep908 to double*
  store double %p_div.i, double* %scevgep908909, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond995.not = icmp eq i64 %polly.indvar904, %292
  br i1 %exitcond995.not, label %polly.loop_exit903, label %polly.loop_header901, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 64}
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
!51 = !{!"llvm.loop.tile.size", i32 16}
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
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !81, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
