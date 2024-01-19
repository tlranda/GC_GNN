; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9984.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9984.c"
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
  %call726 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1587 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1587, %call2
  %polly.access.call2607 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2607, %call1
  %2 = or i1 %0, %1
  %polly.access.call627 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call627, %call2
  %4 = icmp ule i8* %polly.access.call2607, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call627, %call1
  %8 = icmp ule i8* %polly.access.call1587, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header700, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1005 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1004 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1003 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1002 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1002, %scevgep1005
  %bound1 = icmp ult i8* %scevgep1004, %scevgep1003
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
  br i1 %exitcond18.not.i, label %vector.ph1009, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1009:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1016 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1017 = shufflevector <4 x i64> %broadcast.splatinsert1016, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1009
  %index1010 = phi i64 [ 0, %vector.ph1009 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1009 ], [ %vec.ind.next1015, %vector.body1008 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1014, %broadcast.splat1017
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv7.i, i64 %index1010
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1011, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1008, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1008
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1009, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header500, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1072 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1072, label %for.body3.i46.preheader1149, label %vector.ph1073

vector.ph1073:                                    ; preds = %for.body3.i46.preheader
  %n.vec1075 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1073
  %index1076 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1077, %vector.body1071 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %index1076
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1077 = add i64 %index1076, 4
  %46 = icmp eq i64 %index.next1077, %n.vec1075
  br i1 %46, label %middle.block1069, label %vector.body1071, !llvm.loop !18

middle.block1069:                                 ; preds = %vector.body1071
  %cmp.n1079 = icmp eq i64 %indvars.iv21.i, %n.vec1075
  br i1 %cmp.n1079, label %for.inc6.i, label %for.body3.i46.preheader1149

for.body3.i46.preheader1149:                      ; preds = %for.body3.i46.preheader, %middle.block1069
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1075, %middle.block1069 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1149, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1149 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1069, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit524
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header340, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1095 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1095, label %for.body3.i60.preheader1147, label %vector.ph1096

vector.ph1096:                                    ; preds = %for.body3.i60.preheader
  %n.vec1098 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1096
  %index1099 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1100, %vector.body1094 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %index1099
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1103 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1103, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1100 = add i64 %index1099, 4
  %57 = icmp eq i64 %index.next1100, %n.vec1098
  br i1 %57, label %middle.block1092, label %vector.body1094, !llvm.loop !50

middle.block1092:                                 ; preds = %vector.body1094
  %cmp.n1102 = icmp eq i64 %indvars.iv21.i52, %n.vec1098
  br i1 %cmp.n1102, label %for.inc6.i63, label %for.body3.i60.preheader1147

for.body3.i60.preheader1147:                      ; preds = %for.body3.i60.preheader, %middle.block1092
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1098, %middle.block1092 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1147, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1147 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1092, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1121 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1121, label %for.body3.i99.preheader1145, label %vector.ph1122

vector.ph1122:                                    ; preds = %for.body3.i99.preheader
  %n.vec1124 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1122
  %index1125 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1126, %vector.body1120 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %index1125
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1129 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1129, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1126 = add i64 %index1125, 4
  %68 = icmp eq i64 %index.next1126, %n.vec1124
  br i1 %68, label %middle.block1118, label %vector.body1120, !llvm.loop !52

middle.block1118:                                 ; preds = %vector.body1120
  %cmp.n1128 = icmp eq i64 %indvars.iv21.i91, %n.vec1124
  br i1 %cmp.n1128, label %for.inc6.i102, label %for.body3.i99.preheader1145

for.body3.i99.preheader1145:                      ; preds = %for.body3.i99.preheader, %middle.block1118
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1124, %middle.block1118 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1145, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1145 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1118, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1133 = phi i64 [ %indvar.next1134, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1133, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1135 = icmp ult i64 %88, 4
  br i1 %min.iters.check1135, label %polly.loop_header191.preheader, label %vector.ph1136

vector.ph1136:                                    ; preds = %polly.loop_header
  %n.vec1138 = and i64 %88, -4
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %vector.ph1136
  %index1139 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1140, %vector.body1132 ]
  %90 = shl nuw nsw i64 %index1139, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1143 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1143, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1140 = add i64 %index1139, 4
  %95 = icmp eq i64 %index.next1140, %n.vec1138
  br i1 %95, label %middle.block1130, label %vector.body1132, !llvm.loop !63

middle.block1130:                                 ; preds = %vector.body1132
  %cmp.n1142 = icmp eq i64 %88, %n.vec1138
  br i1 %cmp.n1142, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1130
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1138, %middle.block1130 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1130
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1134 = add i64 %indvar1133, 1
  br i1 %exitcond910.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond909.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %polly.loop_exit207 ], [ 3, %polly.loop_exit193 ]
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv895 = phi i64 [ %indvars.iv.next896, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %indvars.iv904, 3
  %98 = sub nsw i64 %indvars.iv902, %97
  %99 = mul nuw nsw i64 %polly.indvar202, 3
  %100 = add nuw nsw i64 %99, 3
  %pexp.p_div_q = lshr i64 %100, 3
  %polly.loop_guard.not = icmp ult i64 %polly.indvar202, %pexp.p_div_q
  %101 = mul nsw i64 %polly.indvar202, -50
  %102 = mul nuw nsw i64 %polly.indvar202, 50
  br i1 %polly.loop_guard.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_header205.us:                          ; preds = %polly.loop_header199, %polly.loop_exit213.loopexit.us
  %polly.indvar208.us = phi i64 [ %polly.indvar_next209.us, %polly.loop_exit213.loopexit.us ], [ 0, %polly.loop_header199 ]
  %103 = mul nuw nsw i64 %polly.indvar208.us, 50
  br label %polly.loop_header211.us

polly.loop_header211.us:                          ; preds = %polly.loop_header205.us, %polly.loop_exit220.us
  %indvars.iv897 = phi i64 [ %indvars.iv895, %polly.loop_header205.us ], [ %indvars.iv.next898, %polly.loop_exit220.us ]
  %indvars.iv893 = phi i64 [ %indvars.iv, %polly.loop_header205.us ], [ %indvars.iv.next894, %polly.loop_exit220.us ]
  %polly.indvar214.us = phi i64 [ 0, %polly.loop_header205.us ], [ %polly.indvar_next215.us, %polly.loop_exit220.us ]
  %104 = mul nuw nsw i64 %polly.indvar214.us, 80
  %105 = add nsw i64 %104, %101
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  %polly.loop_guard221.us = icmp slt i64 %107, 50
  br i1 %polly.loop_guard221.us, label %polly.loop_header218.preheader.us, label %polly.loop_exit220.us

polly.loop_header218.us:                          ; preds = %polly.loop_header218.preheader.us, %polly.loop_exit227.us
  %indvars.iv899 = phi i64 [ %112, %polly.loop_header218.preheader.us ], [ %indvars.iv.next900, %polly.loop_exit227.us ]
  %polly.indvar222.us = phi i64 [ %107, %polly.loop_header218.preheader.us ], [ %polly.indvar_next223.us, %polly.loop_exit227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv899, i64 79)
  %108 = add nsw i64 %polly.indvar222.us, %113
  %polly.loop_guard235.us991 = icmp sgt i64 %108, -1
  %109 = add nuw nsw i64 %polly.indvar222.us, %102
  %110 = mul i64 %109, 8000
  %111 = mul i64 %109, 9600
  br i1 %polly.loop_guard235.us991, label %polly.loop_header225.us.us, label %polly.loop_exit227.us

polly.loop_exit227.us:                            ; preds = %polly.loop_exit234.loopexit.us.us, %polly.loop_header218.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %polly.loop_cond224.us = icmp ult i64 %polly.indvar222.us, 49
  %indvars.iv.next900 = add i64 %indvars.iv899, 1
  br i1 %polly.loop_cond224.us, label %polly.loop_header218.us, label %polly.loop_exit220.us

polly.loop_exit220.us:                            ; preds = %polly.loop_exit227.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %indvars.iv.next894 = add nsw i64 %indvars.iv893, 80
  %indvars.iv.next898 = add nsw i64 %indvars.iv897, -80
  %exitcond906.not = icmp eq i64 %polly.indvar_next215.us, %98
  br i1 %exitcond906.not, label %polly.loop_exit213.loopexit.us, label %polly.loop_header211.us

polly.loop_header218.preheader.us:                ; preds = %polly.loop_header211.us
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv893, i64 0)
  %112 = add i64 %smax, %indvars.iv897
  %113 = sub nsw i64 %102, %104
  br label %polly.loop_header218.us

polly.loop_exit213.loopexit.us:                   ; preds = %polly.loop_exit220.us
  %polly.indvar_next209.us = add nuw nsw i64 %polly.indvar208.us, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next209.us, 20
  br i1 %exitcond907.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_header225.us.us:                       ; preds = %polly.loop_header218.us, %polly.loop_exit234.loopexit.us.us
  %polly.indvar228.us.us = phi i64 [ %polly.indvar_next229.us.us, %polly.loop_exit234.loopexit.us.us ], [ 0, %polly.loop_header218.us ]
  %114 = add nuw nsw i64 %polly.indvar228.us.us, %103
  %115 = shl i64 %114, 3
  %116 = add i64 %115, %110
  %scevgep242.us.us = getelementptr i8, i8* %call2, i64 %116
  %scevgep242243.us.us = bitcast i8* %scevgep242.us.us to double*
  %_p_scalar_244.us.us = load double, double* %scevgep242243.us.us, align 8, !alias.scope !62, !noalias !66
  %scevgep248.us.us = getelementptr i8, i8* %call1, i64 %116
  %scevgep248249.us.us = bitcast i8* %scevgep248.us.us to double*
  %_p_scalar_250.us.us = load double, double* %scevgep248249.us.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header232.us.us

polly.loop_exit234.loopexit.us.us:                ; preds = %polly.loop_header232.us.us
  %polly.indvar_next229.us.us = add nuw nsw i64 %polly.indvar228.us.us, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next229.us.us, 50
  br i1 %exitcond901.not, label %polly.loop_exit227.us, label %polly.loop_header225.us.us

polly.loop_header232.us.us:                       ; preds = %polly.loop_header232.us.us, %polly.loop_header225.us.us
  %polly.indvar236.us.us = phi i64 [ %polly.indvar_next237.us.us, %polly.loop_header232.us.us ], [ 0, %polly.loop_header225.us.us ]
  %117 = add nuw nsw i64 %polly.indvar236.us.us, %104
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %115
  %scevgep239.us.us = getelementptr i8, i8* %call1, i64 %119
  %scevgep239240.us.us = bitcast i8* %scevgep239.us.us to double*
  %_p_scalar_241.us.us = load double, double* %scevgep239240.us.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.us = fmul fast double %_p_scalar_244.us.us, %_p_scalar_241.us.us
  %scevgep245.us.us = getelementptr i8, i8* %call2, i64 %119
  %scevgep245246.us.us = bitcast i8* %scevgep245.us.us to double*
  %_p_scalar_247.us.us = load double, double* %scevgep245246.us.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.us = fmul fast double %_p_scalar_250.us.us, %_p_scalar_247.us.us
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %111
  %scevgep251.us.us = getelementptr i8, i8* %call, i64 %121
  %scevgep251252.us.us = bitcast i8* %scevgep251.us.us to double*
  %_p_scalar_253.us.us = load double, double* %scevgep251252.us.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.us = fadd fast double %p_mul37.i114.us.us, %p_mul27.i112.us.us
  %p_reass.mul.i117.us.us = fmul fast double %p_reass.add.i116.us.us, 1.500000e+00
  %p_add42.i118.us.us = fadd fast double %p_reass.mul.i117.us.us, %_p_scalar_253.us.us
  store double %p_add42.i118.us.us, double* %scevgep251252.us.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next237.us.us = add nuw nsw i64 %polly.indvar236.us.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar236.us.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit234.loopexit.us.us, label %polly.loop_header232.us.us

polly.loop_exit207:                               ; preds = %polly.loop_exit213.loopexit.us, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next896 = add nuw nsw i64 %indvars.iv895, 50
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902, 1
  %indvars.iv.next905 = add nuw nsw i64 %indvars.iv904, 3
  %exitcond908.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond908.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header340:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit348
  %indvar1107 = phi i64 [ %indvar.next1108, %polly.loop_exit348 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_exit348 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar1107, 1
  %123 = mul nuw nsw i64 %polly.indvar343, 9600
  %scevgep352 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1109 = icmp ult i64 %122, 4
  br i1 %min.iters.check1109, label %polly.loop_header346.preheader, label %vector.ph1110

vector.ph1110:                                    ; preds = %polly.loop_header340
  %n.vec1112 = and i64 %122, -4
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1114, %vector.body1106 ]
  %124 = shl nuw nsw i64 %index1113, 3
  %125 = getelementptr i8, i8* %scevgep352, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1117 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !68, !noalias !70
  %127 = fmul fast <4 x double> %wide.load1117, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !68, !noalias !70
  %index.next1114 = add i64 %index1113, 4
  %129 = icmp eq i64 %index.next1114, %n.vec1112
  br i1 %129, label %middle.block1104, label %vector.body1106, !llvm.loop !73

middle.block1104:                                 ; preds = %vector.body1106
  %cmp.n1116 = icmp eq i64 %122, %n.vec1112
  br i1 %cmp.n1116, label %polly.loop_exit348, label %polly.loop_header346.preheader

polly.loop_header346.preheader:                   ; preds = %polly.loop_header340, %middle.block1104
  %polly.indvar349.ph = phi i64 [ 0, %polly.loop_header340 ], [ %n.vec1112, %middle.block1104 ]
  br label %polly.loop_header346

polly.loop_exit348:                               ; preds = %polly.loop_header346, %middle.block1104
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next344, 1200
  %indvar.next1108 = add i64 %indvar1107, 1
  br i1 %exitcond933.not, label %polly.loop_header356, label %polly.loop_header340

polly.loop_header346:                             ; preds = %polly.loop_header346.preheader, %polly.loop_header346
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_header346 ], [ %polly.indvar349.ph, %polly.loop_header346.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar349, 3
  %scevgep353 = getelementptr i8, i8* %scevgep352, i64 %130
  %scevgep353354 = bitcast i8* %scevgep353 to double*
  %_p_scalar_355 = load double, double* %scevgep353354, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_355, 1.200000e+00
  store double %p_mul.i57, double* %scevgep353354, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next350, %polly.indvar343
  br i1 %exitcond932.not, label %polly.loop_exit348, label %polly.loop_header346, !llvm.loop !74

polly.loop_header356:                             ; preds = %polly.loop_exit348, %polly.loop_exit364
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %polly.loop_exit364 ], [ 3, %polly.loop_exit348 ]
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit364 ], [ 1, %polly.loop_exit348 ]
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %131 = lshr i64 %indvars.iv927, 3
  %132 = sub nsw i64 %indvars.iv925, %131
  %133 = mul nuw nsw i64 %polly.indvar359, 3
  %134 = add nuw nsw i64 %133, 3
  %pexp.p_div_q368 = lshr i64 %134, 3
  %polly.loop_guard373.not = icmp ult i64 %polly.indvar359, %pexp.p_div_q368
  %135 = mul nsw i64 %polly.indvar359, -50
  %136 = mul nuw nsw i64 %polly.indvar359, 50
  br i1 %polly.loop_guard373.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_header362.us:                          ; preds = %polly.loop_header356, %polly.loop_exit372.loopexit.us
  %polly.indvar365.us = phi i64 [ %polly.indvar_next366.us, %polly.loop_exit372.loopexit.us ], [ 0, %polly.loop_header356 ]
  %137 = mul nuw nsw i64 %polly.indvar365.us, 50
  br label %polly.loop_header370.us

polly.loop_header370.us:                          ; preds = %polly.loop_header362.us, %polly.loop_exit380.us
  %indvars.iv918 = phi i64 [ %indvars.iv916, %polly.loop_header362.us ], [ %indvars.iv.next919, %polly.loop_exit380.us ]
  %indvars.iv913 = phi i64 [ %indvars.iv911, %polly.loop_header362.us ], [ %indvars.iv.next914, %polly.loop_exit380.us ]
  %polly.indvar374.us = phi i64 [ 0, %polly.loop_header362.us ], [ %polly.indvar_next375.us, %polly.loop_exit380.us ]
  %138 = mul nuw nsw i64 %polly.indvar374.us, 80
  %139 = add nsw i64 %138, %135
  %140 = icmp sgt i64 %139, 0
  %141 = select i1 %140, i64 %139, i64 0
  %polly.loop_guard381.us = icmp slt i64 %141, 50
  br i1 %polly.loop_guard381.us, label %polly.loop_header378.preheader.us, label %polly.loop_exit380.us

polly.loop_header378.us:                          ; preds = %polly.loop_header378.preheader.us, %polly.loop_exit387.us
  %indvars.iv920 = phi i64 [ %146, %polly.loop_header378.preheader.us ], [ %indvars.iv.next921, %polly.loop_exit387.us ]
  %polly.indvar382.us = phi i64 [ %141, %polly.loop_header378.preheader.us ], [ %polly.indvar_next383.us, %polly.loop_exit387.us ]
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 79)
  %142 = add nsw i64 %polly.indvar382.us, %147
  %polly.loop_guard395.us992 = icmp sgt i64 %142, -1
  %143 = add nuw nsw i64 %polly.indvar382.us, %136
  %144 = mul i64 %143, 8000
  %145 = mul i64 %143, 9600
  br i1 %polly.loop_guard395.us992, label %polly.loop_header385.us.us, label %polly.loop_exit387.us

polly.loop_exit387.us:                            ; preds = %polly.loop_exit394.loopexit.us.us, %polly.loop_header378.us
  %polly.indvar_next383.us = add nuw nsw i64 %polly.indvar382.us, 1
  %polly.loop_cond384.us = icmp ult i64 %polly.indvar382.us, 49
  %indvars.iv.next921 = add i64 %indvars.iv920, 1
  br i1 %polly.loop_cond384.us, label %polly.loop_header378.us, label %polly.loop_exit380.us

polly.loop_exit380.us:                            ; preds = %polly.loop_exit387.us, %polly.loop_header370.us
  %polly.indvar_next375.us = add nuw nsw i64 %polly.indvar374.us, 1
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, 80
  %indvars.iv.next919 = add nsw i64 %indvars.iv918, -80
  %exitcond929.not = icmp eq i64 %polly.indvar_next375.us, %132
  br i1 %exitcond929.not, label %polly.loop_exit372.loopexit.us, label %polly.loop_header370.us

polly.loop_header378.preheader.us:                ; preds = %polly.loop_header370.us
  %smax915 = call i64 @llvm.smax.i64(i64 %indvars.iv913, i64 0)
  %146 = add i64 %smax915, %indvars.iv918
  %147 = sub nsw i64 %136, %138
  br label %polly.loop_header378.us

polly.loop_exit372.loopexit.us:                   ; preds = %polly.loop_exit380.us
  %polly.indvar_next366.us = add nuw nsw i64 %polly.indvar365.us, 1
  %exitcond930.not = icmp eq i64 %polly.indvar_next366.us, 20
  br i1 %exitcond930.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_header385.us.us:                       ; preds = %polly.loop_header378.us, %polly.loop_exit394.loopexit.us.us
  %polly.indvar388.us.us = phi i64 [ %polly.indvar_next389.us.us, %polly.loop_exit394.loopexit.us.us ], [ 0, %polly.loop_header378.us ]
  %148 = add nuw nsw i64 %polly.indvar388.us.us, %137
  %149 = shl i64 %148, 3
  %150 = add i64 %149, %144
  %scevgep402.us.us = getelementptr i8, i8* %call2, i64 %150
  %scevgep402403.us.us = bitcast i8* %scevgep402.us.us to double*
  %_p_scalar_404.us.us = load double, double* %scevgep402403.us.us, align 8, !alias.scope !72, !noalias !75
  %scevgep408.us.us = getelementptr i8, i8* %call1, i64 %150
  %scevgep408409.us.us = bitcast i8* %scevgep408.us.us to double*
  %_p_scalar_410.us.us = load double, double* %scevgep408409.us.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header392.us.us

polly.loop_exit394.loopexit.us.us:                ; preds = %polly.loop_header392.us.us
  %polly.indvar_next389.us.us = add nuw nsw i64 %polly.indvar388.us.us, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next389.us.us, 50
  br i1 %exitcond924.not, label %polly.loop_exit387.us, label %polly.loop_header385.us.us

polly.loop_header392.us.us:                       ; preds = %polly.loop_header392.us.us, %polly.loop_header385.us.us
  %polly.indvar396.us.us = phi i64 [ %polly.indvar_next397.us.us, %polly.loop_header392.us.us ], [ 0, %polly.loop_header385.us.us ]
  %151 = add nuw nsw i64 %polly.indvar396.us.us, %138
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %149
  %scevgep399.us.us = getelementptr i8, i8* %call1, i64 %153
  %scevgep399400.us.us = bitcast i8* %scevgep399.us.us to double*
  %_p_scalar_401.us.us = load double, double* %scevgep399400.us.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.us = fmul fast double %_p_scalar_404.us.us, %_p_scalar_401.us.us
  %scevgep405.us.us = getelementptr i8, i8* %call2, i64 %153
  %scevgep405406.us.us = bitcast i8* %scevgep405.us.us to double*
  %_p_scalar_407.us.us = load double, double* %scevgep405406.us.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.us = fmul fast double %_p_scalar_410.us.us, %_p_scalar_407.us.us
  %154 = shl i64 %151, 3
  %155 = add i64 %154, %145
  %scevgep411.us.us = getelementptr i8, i8* %call, i64 %155
  %scevgep411412.us.us = bitcast i8* %scevgep411.us.us to double*
  %_p_scalar_413.us.us = load double, double* %scevgep411412.us.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.us = fadd fast double %p_mul37.i75.us.us, %p_mul27.i73.us.us
  %p_reass.mul.i78.us.us = fmul fast double %p_reass.add.i77.us.us, 1.500000e+00
  %p_add42.i79.us.us = fadd fast double %p_reass.mul.i78.us.us, %_p_scalar_413.us.us
  store double %p_add42.i79.us.us, double* %scevgep411412.us.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next397.us.us = add nuw nsw i64 %polly.indvar396.us.us, 1
  %exitcond923.not = icmp eq i64 %polly.indvar396.us.us, %smin922
  br i1 %exitcond923.not, label %polly.loop_exit394.loopexit.us.us, label %polly.loop_header392.us.us

polly.loop_exit364:                               ; preds = %polly.loop_exit372.loopexit.us, %polly.loop_header356
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next912 = add nsw i64 %indvars.iv911, -50
  %indvars.iv.next917 = add nuw nsw i64 %indvars.iv916, 50
  %indvars.iv.next926 = add nuw nsw i64 %indvars.iv925, 1
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 3
  %exitcond931.not = icmp eq i64 %polly.indvar_next360, 24
  br i1 %exitcond931.not, label %kernel_syr2k.exit90, label %polly.loop_header356

polly.loop_header500:                             ; preds = %init_array.exit, %polly.loop_exit508
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit508 ], [ 0, %init_array.exit ]
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar503, 9600
  %scevgep512 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1083 = icmp ult i64 %156, 4
  br i1 %min.iters.check1083, label %polly.loop_header506.preheader, label %vector.ph1084

vector.ph1084:                                    ; preds = %polly.loop_header500
  %n.vec1086 = and i64 %156, -4
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %vector.ph1084
  %index1087 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1088, %vector.body1082 ]
  %158 = shl nuw nsw i64 %index1087, 3
  %159 = getelementptr i8, i8* %scevgep512, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1091 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !77, !noalias !79
  %161 = fmul fast <4 x double> %wide.load1091, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !77, !noalias !79
  %index.next1088 = add i64 %index1087, 4
  %163 = icmp eq i64 %index.next1088, %n.vec1086
  br i1 %163, label %middle.block1080, label %vector.body1082, !llvm.loop !82

middle.block1080:                                 ; preds = %vector.body1082
  %cmp.n1090 = icmp eq i64 %156, %n.vec1086
  br i1 %cmp.n1090, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_header500, %middle.block1080
  %polly.indvar509.ph = phi i64 [ 0, %polly.loop_header500 ], [ %n.vec1086, %middle.block1080 ]
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506, %middle.block1080
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next504, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond956.not, label %polly.loop_header516, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_header506
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_header506 ], [ %polly.indvar509.ph, %polly.loop_header506.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar509, 3
  %scevgep513 = getelementptr i8, i8* %scevgep512, i64 %164
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_515, 1.200000e+00
  store double %p_mul.i, double* %scevgep513514, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next510, %polly.indvar503
  br i1 %exitcond955.not, label %polly.loop_exit508, label %polly.loop_header506, !llvm.loop !83

polly.loop_header516:                             ; preds = %polly.loop_exit508, %polly.loop_exit524
  %indvars.iv950 = phi i64 [ %indvars.iv.next951, %polly.loop_exit524 ], [ 3, %polly.loop_exit508 ]
  %indvars.iv948 = phi i64 [ %indvars.iv.next949, %polly.loop_exit524 ], [ 1, %polly.loop_exit508 ]
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %polly.indvar519 = phi i64 [ %polly.indvar_next520, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %165 = lshr i64 %indvars.iv950, 3
  %166 = sub nsw i64 %indvars.iv948, %165
  %167 = mul nuw nsw i64 %polly.indvar519, 3
  %168 = add nuw nsw i64 %167, 3
  %pexp.p_div_q528 = lshr i64 %168, 3
  %polly.loop_guard533.not = icmp ult i64 %polly.indvar519, %pexp.p_div_q528
  %169 = mul nsw i64 %polly.indvar519, -50
  %170 = mul nuw nsw i64 %polly.indvar519, 50
  br i1 %polly.loop_guard533.not, label %polly.loop_exit524, label %polly.loop_header522.us

polly.loop_header522.us:                          ; preds = %polly.loop_header516, %polly.loop_exit532.loopexit.us
  %polly.indvar525.us = phi i64 [ %polly.indvar_next526.us, %polly.loop_exit532.loopexit.us ], [ 0, %polly.loop_header516 ]
  %171 = mul nuw nsw i64 %polly.indvar525.us, 50
  br label %polly.loop_header530.us

polly.loop_header530.us:                          ; preds = %polly.loop_header522.us, %polly.loop_exit540.us
  %indvars.iv941 = phi i64 [ %indvars.iv939, %polly.loop_header522.us ], [ %indvars.iv.next942, %polly.loop_exit540.us ]
  %indvars.iv936 = phi i64 [ %indvars.iv934, %polly.loop_header522.us ], [ %indvars.iv.next937, %polly.loop_exit540.us ]
  %polly.indvar534.us = phi i64 [ 0, %polly.loop_header522.us ], [ %polly.indvar_next535.us, %polly.loop_exit540.us ]
  %172 = mul nuw nsw i64 %polly.indvar534.us, 80
  %173 = add nsw i64 %172, %169
  %174 = icmp sgt i64 %173, 0
  %175 = select i1 %174, i64 %173, i64 0
  %polly.loop_guard541.us = icmp slt i64 %175, 50
  br i1 %polly.loop_guard541.us, label %polly.loop_header538.preheader.us, label %polly.loop_exit540.us

polly.loop_header538.us:                          ; preds = %polly.loop_header538.preheader.us, %polly.loop_exit547.us
  %indvars.iv943 = phi i64 [ %180, %polly.loop_header538.preheader.us ], [ %indvars.iv.next944, %polly.loop_exit547.us ]
  %polly.indvar542.us = phi i64 [ %175, %polly.loop_header538.preheader.us ], [ %polly.indvar_next543.us, %polly.loop_exit547.us ]
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 79)
  %176 = add nsw i64 %polly.indvar542.us, %181
  %polly.loop_guard555.us993 = icmp sgt i64 %176, -1
  %177 = add nuw nsw i64 %polly.indvar542.us, %170
  %178 = mul i64 %177, 8000
  %179 = mul i64 %177, 9600
  br i1 %polly.loop_guard555.us993, label %polly.loop_header545.us.us, label %polly.loop_exit547.us

polly.loop_exit547.us:                            ; preds = %polly.loop_exit554.loopexit.us.us, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.us = icmp ult i64 %polly.indvar542.us, 49
  %indvars.iv.next944 = add i64 %indvars.iv943, 1
  br i1 %polly.loop_cond544.us, label %polly.loop_header538.us, label %polly.loop_exit540.us

polly.loop_exit540.us:                            ; preds = %polly.loop_exit547.us, %polly.loop_header530.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %indvars.iv.next937 = add nsw i64 %indvars.iv936, 80
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -80
  %exitcond952.not = icmp eq i64 %polly.indvar_next535.us, %166
  br i1 %exitcond952.not, label %polly.loop_exit532.loopexit.us, label %polly.loop_header530.us

polly.loop_header538.preheader.us:                ; preds = %polly.loop_header530.us
  %smax938 = call i64 @llvm.smax.i64(i64 %indvars.iv936, i64 0)
  %180 = add i64 %smax938, %indvars.iv941
  %181 = sub nsw i64 %170, %172
  br label %polly.loop_header538.us

polly.loop_exit532.loopexit.us:                   ; preds = %polly.loop_exit540.us
  %polly.indvar_next526.us = add nuw nsw i64 %polly.indvar525.us, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next526.us, 20
  br i1 %exitcond953.not, label %polly.loop_exit524, label %polly.loop_header522.us

polly.loop_header545.us.us:                       ; preds = %polly.loop_header538.us, %polly.loop_exit554.loopexit.us.us
  %polly.indvar548.us.us = phi i64 [ %polly.indvar_next549.us.us, %polly.loop_exit554.loopexit.us.us ], [ 0, %polly.loop_header538.us ]
  %182 = add nuw nsw i64 %polly.indvar548.us.us, %171
  %183 = shl i64 %182, 3
  %184 = add i64 %183, %178
  %scevgep562.us.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep562563.us.us = bitcast i8* %scevgep562.us.us to double*
  %_p_scalar_564.us.us = load double, double* %scevgep562563.us.us, align 8, !alias.scope !81, !noalias !84
  %scevgep568.us.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep568569.us.us = bitcast i8* %scevgep568.us.us to double*
  %_p_scalar_570.us.us = load double, double* %scevgep568569.us.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header552.us.us

polly.loop_exit554.loopexit.us.us:                ; preds = %polly.loop_header552.us.us
  %polly.indvar_next549.us.us = add nuw nsw i64 %polly.indvar548.us.us, 1
  %exitcond947.not = icmp eq i64 %polly.indvar_next549.us.us, 50
  br i1 %exitcond947.not, label %polly.loop_exit547.us, label %polly.loop_header545.us.us

polly.loop_header552.us.us:                       ; preds = %polly.loop_header552.us.us, %polly.loop_header545.us.us
  %polly.indvar556.us.us = phi i64 [ %polly.indvar_next557.us.us, %polly.loop_header552.us.us ], [ 0, %polly.loop_header545.us.us ]
  %185 = add nuw nsw i64 %polly.indvar556.us.us, %172
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %183
  %scevgep559.us.us = getelementptr i8, i8* %call1, i64 %187
  %scevgep559560.us.us = bitcast i8* %scevgep559.us.us to double*
  %_p_scalar_561.us.us = load double, double* %scevgep559560.us.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.us = fmul fast double %_p_scalar_564.us.us, %_p_scalar_561.us.us
  %scevgep565.us.us = getelementptr i8, i8* %call2, i64 %187
  %scevgep565566.us.us = bitcast i8* %scevgep565.us.us to double*
  %_p_scalar_567.us.us = load double, double* %scevgep565566.us.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.us = fmul fast double %_p_scalar_570.us.us, %_p_scalar_567.us.us
  %188 = shl i64 %185, 3
  %189 = add i64 %188, %179
  %scevgep571.us.us = getelementptr i8, i8* %call, i64 %189
  %scevgep571572.us.us = bitcast i8* %scevgep571.us.us to double*
  %_p_scalar_573.us.us = load double, double* %scevgep571572.us.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.us = fadd fast double %p_mul37.i.us.us, %p_mul27.i.us.us
  %p_reass.mul.i.us.us = fmul fast double %p_reass.add.i.us.us, 1.500000e+00
  %p_add42.i.us.us = fadd fast double %p_reass.mul.i.us.us, %_p_scalar_573.us.us
  store double %p_add42.i.us.us, double* %scevgep571572.us.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next557.us.us = add nuw nsw i64 %polly.indvar556.us.us, 1
  %exitcond946.not = icmp eq i64 %polly.indvar556.us.us, %smin945
  br i1 %exitcond946.not, label %polly.loop_exit554.loopexit.us.us, label %polly.loop_header552.us.us

polly.loop_exit524:                               ; preds = %polly.loop_exit532.loopexit.us, %polly.loop_header516
  %polly.indvar_next520 = add nuw nsw i64 %polly.indvar519, 1
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -50
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 50
  %indvars.iv.next949 = add nuw nsw i64 %indvars.iv948, 1
  %indvars.iv.next951 = add nuw nsw i64 %indvars.iv950, 3
  %exitcond954.not = icmp eq i64 %polly.indvar_next520, 24
  br i1 %exitcond954.not, label %kernel_syr2k.exit, label %polly.loop_header516

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit708 ], [ 0, %entry ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %smin983 = call i64 @llvm.smin.i64(i64 %indvars.iv981, i64 -1168)
  %190 = shl nsw i64 %polly.indvar703, 5
  %191 = add nsw i64 %smin983, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -32
  %exitcond986.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond986.not, label %polly.loop_header727, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %192 = mul nsw i64 %polly.indvar709, -32
  %smin1021 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin1021, 1200
  %smin979 = call i64 @llvm.smin.i64(i64 %indvars.iv977, i64 -1168)
  %194 = shl nsw i64 %polly.indvar709, 5
  %195 = add nsw i64 %smin979, 1199
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_exit720
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -32
  %exitcond985.not = icmp eq i64 %polly.indvar_next710, 38
  br i1 %exitcond985.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_exit720, %polly.loop_header706
  %polly.indvar715 = phi i64 [ 0, %polly.loop_header706 ], [ %polly.indvar_next716, %polly.loop_exit720 ]
  %196 = add nuw nsw i64 %polly.indvar715, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header718, label %vector.ph1022

vector.ph1022:                                    ; preds = %polly.loop_header712
  %broadcast.splatinsert1029 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat1030 = shufflevector <4 x i64> %broadcast.splatinsert1029, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1022
  %index1023 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1024, %vector.body1020 ]
  %vec.ind1027 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1022 ], [ %vec.ind.next1028, %vector.body1020 ]
  %199 = add nuw nsw <4 x i64> %vec.ind1027, %broadcast.splat1030
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat1032, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !86, !noalias !88
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1028 = add <4 x i64> %vec.ind1027, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next1024, %193
  br i1 %211, label %polly.loop_exit720, label %vector.body1020, !llvm.loop !91

polly.loop_exit720:                               ; preds = %vector.body1020, %polly.loop_header718
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond984.not = icmp eq i64 %polly.indvar715, %191
  br i1 %exitcond984.not, label %polly.loop_exit714, label %polly.loop_header712

polly.loop_header718:                             ; preds = %polly.loop_header712, %polly.loop_header718
  %polly.indvar721 = phi i64 [ %polly.indvar_next722, %polly.loop_header718 ], [ 0, %polly.loop_header712 ]
  %212 = add nuw nsw i64 %polly.indvar721, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep724 = getelementptr i8, i8* %call, i64 %218
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  store double %p_div33.i, double* %scevgep724725, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next722 = add nuw nsw i64 %polly.indvar721, 1
  %exitcond980.not = icmp eq i64 %polly.indvar721, %195
  br i1 %exitcond980.not, label %polly.loop_exit720, label %polly.loop_header718, !llvm.loop !92

polly.loop_header727:                             ; preds = %polly.loop_exit708, %polly.loop_exit735
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %smin973 = call i64 @llvm.smin.i64(i64 %indvars.iv971, i64 -1168)
  %219 = shl nsw i64 %polly.indvar730, 5
  %220 = add nsw i64 %smin973, 1199
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, -32
  %exitcond976.not = icmp eq i64 %polly.indvar_next731, 38
  br i1 %exitcond976.not, label %polly.loop_header753, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %221 = mul nsw i64 %polly.indvar736, -32
  %smin1036 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin1036, 1000
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv967, i64 -968)
  %223 = shl nsw i64 %polly.indvar736, 5
  %224 = add nsw i64 %smin969, 999
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -32
  %exitcond975.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond975.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %polly.indvar742 = phi i64 [ 0, %polly.loop_header733 ], [ %polly.indvar_next743, %polly.loop_exit747 ]
  %225 = add nuw nsw i64 %polly.indvar742, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check1037 = icmp eq i64 %222, 0
  br i1 %min.iters.check1037, label %polly.loop_header745, label %vector.ph1038

vector.ph1038:                                    ; preds = %polly.loop_header739
  %broadcast.splatinsert1047 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat1048 = shufflevector <4 x i64> %broadcast.splatinsert1047, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1035 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1038 ], [ %vec.ind.next1046, %vector.body1035 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1045, %broadcast.splat1048
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1050, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !90, !noalias !93
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1042, %222
  br i1 %240, label %polly.loop_exit747, label %vector.body1035, !llvm.loop !94

polly.loop_exit747:                               ; preds = %vector.body1035, %polly.loop_header745
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond974.not = icmp eq i64 %polly.indvar742, %220
  br i1 %exitcond974.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_header739, %polly.loop_header745
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_header745 ], [ 0, %polly.loop_header739 ]
  %241 = add nuw nsw i64 %polly.indvar748, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep751 = getelementptr i8, i8* %call2, i64 %247
  %scevgep751752 = bitcast i8* %scevgep751 to double*
  store double %p_div12.i, double* %scevgep751752, align 8, !alias.scope !90, !noalias !93
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond970.not = icmp eq i64 %polly.indvar748, %224
  br i1 %exitcond970.not, label %polly.loop_exit747, label %polly.loop_header745, !llvm.loop !95

polly.loop_header753:                             ; preds = %polly.loop_exit735, %polly.loop_exit761
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %smin963 = call i64 @llvm.smin.i64(i64 %indvars.iv961, i64 -1168)
  %248 = shl nsw i64 %polly.indvar756, 5
  %249 = add nsw i64 %smin963, 1199
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next962 = add nsw i64 %indvars.iv961, -32
  %exitcond966.not = icmp eq i64 %polly.indvar_next757, 38
  br i1 %exitcond966.not, label %init_array.exit, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %250 = mul nsw i64 %polly.indvar762, -32
  %smin1054 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin1054, 1000
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv957, i64 -968)
  %252 = shl nsw i64 %polly.indvar762, 5
  %253 = add nsw i64 %smin959, 999
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -32
  %exitcond965.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond965.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %polly.indvar768 = phi i64 [ 0, %polly.loop_header759 ], [ %polly.indvar_next769, %polly.loop_exit773 ]
  %254 = add nuw nsw i64 %polly.indvar768, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check1055 = icmp eq i64 %251, 0
  br i1 %min.iters.check1055, label %polly.loop_header771, label %vector.ph1056

vector.ph1056:                                    ; preds = %polly.loop_header765
  %broadcast.splatinsert1065 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat1066 = shufflevector <4 x i64> %broadcast.splatinsert1065, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1056
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1060, %vector.body1053 ]
  %vec.ind1063 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1056 ], [ %vec.ind.next1064, %vector.body1053 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1063, %broadcast.splat1066
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1068, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !89, !noalias !96
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1064 = add <4 x i64> %vec.ind1063, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1060, %251
  br i1 %269, label %polly.loop_exit773, label %vector.body1053, !llvm.loop !97

polly.loop_exit773:                               ; preds = %vector.body1053, %polly.loop_header771
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond964.not = icmp eq i64 %polly.indvar768, %249
  br i1 %exitcond964.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_header765, %polly.loop_header771
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_header771 ], [ 0, %polly.loop_header765 ]
  %270 = add nuw nsw i64 %polly.indvar774, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep778 = getelementptr i8, i8* %call1, i64 %276
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  store double %p_div.i, double* %scevgep778779, align 8, !alias.scope !89, !noalias !96
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond960.not = icmp eq i64 %polly.indvar774, %253
  br i1 %exitcond960.not, label %polly.loop_exit773, label %polly.loop_header771, !llvm.loop !98
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 80}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 50}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !33, !44, !47}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !65, !13}
!93 = !{!89, !86}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !65, !13}
!96 = !{!90, !86}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !65, !13}
