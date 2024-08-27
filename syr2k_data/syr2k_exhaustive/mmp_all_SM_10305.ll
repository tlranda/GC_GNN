; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10305.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10305.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv7.i, i64 %index1008
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header500, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1070 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1070, label %for.body3.i46.preheader1147, label %vector.ph1071

vector.ph1071:                                    ; preds = %for.body3.i46.preheader
  %n.vec1073 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1075, %vector.body1069 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %index1074
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1075 = add i64 %index1074, 4
  %46 = icmp eq i64 %index.next1075, %n.vec1073
  br i1 %46, label %middle.block1067, label %vector.body1069, !llvm.loop !18

middle.block1067:                                 ; preds = %vector.body1069
  %cmp.n1077 = icmp eq i64 %indvars.iv21.i, %n.vec1073
  br i1 %cmp.n1077, label %for.inc6.i, label %for.body3.i46.preheader1147

for.body3.i46.preheader1147:                      ; preds = %for.body3.i46.preheader, %middle.block1067
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1073, %middle.block1067 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1147, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1147 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1067, %for.cond1.preheader.i45
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
  %min.iters.check1093 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1093, label %for.body3.i60.preheader1145, label %vector.ph1094

vector.ph1094:                                    ; preds = %for.body3.i60.preheader
  %n.vec1096 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %vector.ph1094
  %index1097 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1098, %vector.body1092 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %index1097
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1101 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1101, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1098 = add i64 %index1097, 4
  %57 = icmp eq i64 %index.next1098, %n.vec1096
  br i1 %57, label %middle.block1090, label %vector.body1092, !llvm.loop !51

middle.block1090:                                 ; preds = %vector.body1092
  %cmp.n1100 = icmp eq i64 %indvars.iv21.i52, %n.vec1096
  br i1 %cmp.n1100, label %for.inc6.i63, label %for.body3.i60.preheader1145

for.body3.i60.preheader1145:                      ; preds = %for.body3.i60.preheader, %middle.block1090
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1096, %middle.block1090 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1145, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1145 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1090, %for.cond1.preheader.i54
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
  %min.iters.check1119 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1119, label %for.body3.i99.preheader1143, label %vector.ph1120

vector.ph1120:                                    ; preds = %for.body3.i99.preheader
  %n.vec1122 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1120
  %index1123 = phi i64 [ 0, %vector.ph1120 ], [ %index.next1124, %vector.body1118 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %index1123
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1127 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1127, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1124 = add i64 %index1123, 4
  %68 = icmp eq i64 %index.next1124, %n.vec1122
  br i1 %68, label %middle.block1116, label %vector.body1118, !llvm.loop !53

middle.block1116:                                 ; preds = %vector.body1118
  %cmp.n1126 = icmp eq i64 %indvars.iv21.i91, %n.vec1122
  br i1 %cmp.n1126, label %for.inc6.i102, label %for.body3.i99.preheader1143

for.body3.i99.preheader1143:                      ; preds = %for.body3.i99.preheader, %middle.block1116
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1122, %middle.block1116 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1143, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1143 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1116, %for.cond1.preheader.i93
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1131 = phi i64 [ %indvar.next1132, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1131, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1133 = icmp ult i64 %88, 4
  br i1 %min.iters.check1133, label %polly.loop_header191.preheader, label %vector.ph1134

vector.ph1134:                                    ; preds = %polly.loop_header
  %n.vec1136 = and i64 %88, -4
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1138, %vector.body1130 ]
  %90 = shl nuw nsw i64 %index1137, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1141 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1141, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1138 = add i64 %index1137, 4
  %95 = icmp eq i64 %index.next1138, %n.vec1136
  br i1 %95, label %middle.block1128, label %vector.body1130, !llvm.loop !64

middle.block1128:                                 ; preds = %vector.body1130
  %cmp.n1140 = icmp eq i64 %88, %n.vec1136
  br i1 %cmp.n1140, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1128
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1136, %middle.block1128 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1128
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1132 = add i64 %indvar1131, 1
  br i1 %exitcond912.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond911.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv899 = phi i64 [ %indvars.iv.next900, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %99, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %indvars.iv906, 2
  %98 = sub nsw i64 %indvars.iv906, %97
  %99 = add nuw nsw i64 %polly.indvar202, 1
  %pexp.p_div_q = lshr i64 %99, 2
  %polly.loop_guard.not = icmp ult i64 %polly.indvar202, %pexp.p_div_q
  %100 = mul nsw i64 %polly.indvar202, -96
  %101 = icmp slt i64 %100, -1104
  %102 = select i1 %101, i64 %100, i64 -1104
  %103 = add nsw i64 %102, 1199
  %104 = mul nuw nsw i64 %polly.indvar202, 96
  br i1 %polly.loop_guard.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_header205.us:                          ; preds = %polly.loop_header199, %polly.loop_exit213.loopexit.us
  %polly.indvar208.us = phi i64 [ %polly.indvar_next209.us, %polly.loop_exit213.loopexit.us ], [ 0, %polly.loop_header199 ]
  %105 = shl i64 %polly.indvar208.us, 6
  %106 = shl i64 %polly.indvar208.us, 6
  %107 = shl i64 %polly.indvar208.us, 6
  %108 = or i64 %107, 8
  %109 = shl i64 %polly.indvar208.us, 6
  %110 = or i64 %109, 16
  %111 = shl i64 %polly.indvar208.us, 6
  %112 = or i64 %111, 24
  %113 = shl i64 %polly.indvar208.us, 6
  %114 = or i64 %113, 32
  %115 = shl i64 %polly.indvar208.us, 6
  %116 = or i64 %115, 40
  %117 = shl i64 %polly.indvar208.us, 6
  %118 = or i64 %117, 48
  %119 = or i64 %105, 56
  br label %polly.loop_header211.us

polly.loop_header211.us:                          ; preds = %polly.loop_header205.us, %polly.loop_exit220.us
  %indvars.iv901 = phi i64 [ %indvars.iv899, %polly.loop_header205.us ], [ %indvars.iv.next902, %polly.loop_exit220.us ]
  %indvars.iv897 = phi i64 [ %indvars.iv, %polly.loop_header205.us ], [ %indvars.iv.next898, %polly.loop_exit220.us ]
  %polly.indvar214.us = phi i64 [ 0, %polly.loop_header205.us ], [ %polly.indvar_next215.us, %polly.loop_exit220.us ]
  %120 = shl nsw i64 %polly.indvar214.us, 7
  %121 = add nsw i64 %120, %100
  %122 = icmp sgt i64 %121, 0
  %123 = select i1 %122, i64 %121, i64 0
  %polly.loop_guard221.not.us = icmp sgt i64 %123, %103
  br i1 %polly.loop_guard221.not.us, label %polly.loop_exit220.us, label %polly.loop_header218.preheader.us

polly.loop_header218.us:                          ; preds = %polly.loop_header218.preheader.us, %polly.loop_exit227.us
  %indvars.iv903 = phi i64 [ %129, %polly.loop_header218.preheader.us ], [ %indvars.iv.next904, %polly.loop_exit227.us ]
  %polly.indvar222.us = phi i64 [ %123, %polly.loop_header218.preheader.us ], [ %polly.indvar_next223.us, %polly.loop_exit227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 127)
  %124 = add nsw i64 %polly.indvar222.us, %130
  %polly.loop_guard235.us989 = icmp sgt i64 %124, -1
  %125 = add nuw nsw i64 %polly.indvar222.us, %104
  %126 = mul i64 %125, 8000
  %127 = mul i64 %125, 9600
  br i1 %polly.loop_guard235.us989, label %polly.loop_header225.us.us.preheader, label %polly.loop_exit227.us

polly.loop_header225.us.us.preheader:             ; preds = %polly.loop_header218.us
  %128 = add i64 %106, %126
  %scevgep242.us.us = getelementptr i8, i8* %call2, i64 %128
  %scevgep242243.us.us = bitcast i8* %scevgep242.us.us to double*
  %_p_scalar_244.us.us = load double, double* %scevgep242243.us.us, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us = getelementptr i8, i8* %call1, i64 %128
  %scevgep248249.us.us = bitcast i8* %scevgep248.us.us to double*
  %_p_scalar_250.us.us = load double, double* %scevgep248249.us.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us

polly.loop_exit227.us:                            ; preds = %polly.loop_header232.us.us.7, %polly.loop_header218.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %polly.loop_cond224.not.not.us = icmp ult i64 %polly.indvar222.us, %103
  %indvars.iv.next904 = add i64 %indvars.iv903, 1
  br i1 %polly.loop_cond224.not.not.us, label %polly.loop_header218.us, label %polly.loop_exit220.us

polly.loop_exit220.us:                            ; preds = %polly.loop_exit227.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %indvars.iv.next898 = add nsw i64 %indvars.iv897, 128
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -128
  %exitcond908.not = icmp eq i64 %polly.indvar_next215.us, %98
  br i1 %exitcond908.not, label %polly.loop_exit213.loopexit.us, label %polly.loop_header211.us

polly.loop_header218.preheader.us:                ; preds = %polly.loop_header211.us
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv897, i64 0)
  %129 = add i64 %smax, %indvars.iv901
  %130 = sub nsw i64 %104, %120
  br label %polly.loop_header218.us

polly.loop_exit213.loopexit.us:                   ; preds = %polly.loop_exit220.us
  %polly.indvar_next209.us = add nuw nsw i64 %polly.indvar208.us, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next209.us, 125
  br i1 %exitcond909.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_exit234.loopexit.us.us:                ; preds = %polly.loop_header232.us.us
  %131 = add i64 %108, %126
  %scevgep242.us.us.1 = getelementptr i8, i8* %call2, i64 %131
  %scevgep242243.us.us.1 = bitcast i8* %scevgep242.us.us.1 to double*
  %_p_scalar_244.us.us.1 = load double, double* %scevgep242243.us.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.1 = getelementptr i8, i8* %call1, i64 %131
  %scevgep248249.us.us.1 = bitcast i8* %scevgep248.us.us.1 to double*
  %_p_scalar_250.us.us.1 = load double, double* %scevgep248249.us.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.1

polly.loop_header232.us.us:                       ; preds = %polly.loop_header232.us.us, %polly.loop_header225.us.us.preheader
  %polly.indvar236.us.us = phi i64 [ %polly.indvar_next237.us.us, %polly.loop_header232.us.us ], [ 0, %polly.loop_header225.us.us.preheader ]
  %132 = add nuw nsw i64 %polly.indvar236.us.us, %120
  %133 = mul nuw nsw i64 %132, 8000
  %134 = add nuw nsw i64 %133, %106
  %scevgep239.us.us = getelementptr i8, i8* %call1, i64 %134
  %scevgep239240.us.us = bitcast i8* %scevgep239.us.us to double*
  %_p_scalar_241.us.us = load double, double* %scevgep239240.us.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us = fmul fast double %_p_scalar_244.us.us, %_p_scalar_241.us.us
  %scevgep245.us.us = getelementptr i8, i8* %call2, i64 %134
  %scevgep245246.us.us = bitcast i8* %scevgep245.us.us to double*
  %_p_scalar_247.us.us = load double, double* %scevgep245246.us.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us = fmul fast double %_p_scalar_250.us.us, %_p_scalar_247.us.us
  %135 = shl i64 %132, 3
  %136 = add i64 %135, %127
  %scevgep251.us.us = getelementptr i8, i8* %call, i64 %136
  %scevgep251252.us.us = bitcast i8* %scevgep251.us.us to double*
  %_p_scalar_253.us.us = load double, double* %scevgep251252.us.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us = fadd fast double %p_mul37.i114.us.us, %p_mul27.i112.us.us
  %p_reass.mul.i117.us.us = fmul fast double %p_reass.add.i116.us.us, 1.500000e+00
  %p_add42.i118.us.us = fadd fast double %p_reass.mul.i117.us.us, %_p_scalar_253.us.us
  store double %p_add42.i118.us.us, double* %scevgep251252.us.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us = add nuw nsw i64 %polly.indvar236.us.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar236.us.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit234.loopexit.us.us, label %polly.loop_header232.us.us

polly.loop_exit207:                               ; preds = %polly.loop_exit213.loopexit.us, %polly.loop_header199
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 96
  %indvars.iv.next907 = add nuw nsw i64 %indvars.iv906, 1
  %exitcond910.not = icmp eq i64 %99, 13
  br i1 %exitcond910.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header340:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit348
  %indvar1105 = phi i64 [ %indvar.next1106, %polly.loop_exit348 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_exit348 ], [ 1, %kernel_syr2k.exit ]
  %137 = add i64 %indvar1105, 1
  %138 = mul nuw nsw i64 %polly.indvar343, 9600
  %scevgep352 = getelementptr i8, i8* %call, i64 %138
  %min.iters.check1107 = icmp ult i64 %137, 4
  br i1 %min.iters.check1107, label %polly.loop_header346.preheader, label %vector.ph1108

vector.ph1108:                                    ; preds = %polly.loop_header340
  %n.vec1110 = and i64 %137, -4
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1108
  %index1111 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1112, %vector.body1104 ]
  %139 = shl nuw nsw i64 %index1111, 3
  %140 = getelementptr i8, i8* %scevgep352, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1115 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !69, !noalias !71
  %142 = fmul fast <4 x double> %wide.load1115, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %143 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !69, !noalias !71
  %index.next1112 = add i64 %index1111, 4
  %144 = icmp eq i64 %index.next1112, %n.vec1110
  br i1 %144, label %middle.block1102, label %vector.body1104, !llvm.loop !74

middle.block1102:                                 ; preds = %vector.body1104
  %cmp.n1114 = icmp eq i64 %137, %n.vec1110
  br i1 %cmp.n1114, label %polly.loop_exit348, label %polly.loop_header346.preheader

polly.loop_header346.preheader:                   ; preds = %polly.loop_header340, %middle.block1102
  %polly.indvar349.ph = phi i64 [ 0, %polly.loop_header340 ], [ %n.vec1110, %middle.block1102 ]
  br label %polly.loop_header346

polly.loop_exit348:                               ; preds = %polly.loop_header346, %middle.block1102
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next344, 1200
  %indvar.next1106 = add i64 %indvar1105, 1
  br i1 %exitcond933.not, label %polly.loop_header356, label %polly.loop_header340

polly.loop_header346:                             ; preds = %polly.loop_header346.preheader, %polly.loop_header346
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_header346 ], [ %polly.indvar349.ph, %polly.loop_header346.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar349, 3
  %scevgep353 = getelementptr i8, i8* %scevgep352, i64 %145
  %scevgep353354 = bitcast i8* %scevgep353 to double*
  %_p_scalar_355 = load double, double* %scevgep353354, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_355, 1.200000e+00
  store double %p_mul.i57, double* %scevgep353354, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next350, %polly.indvar343
  br i1 %exitcond932.not, label %polly.loop_exit348, label %polly.loop_header346, !llvm.loop !75

polly.loop_header356:                             ; preds = %polly.loop_exit348, %polly.loop_exit364
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %polly.loop_exit364 ], [ 1, %polly.loop_exit348 ]
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %polly.indvar359 = phi i64 [ %148, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %146 = lshr i64 %indvars.iv927, 2
  %147 = sub nsw i64 %indvars.iv927, %146
  %148 = add nuw nsw i64 %polly.indvar359, 1
  %pexp.p_div_q368 = lshr i64 %148, 2
  %polly.loop_guard373.not = icmp ult i64 %polly.indvar359, %pexp.p_div_q368
  %149 = mul nsw i64 %polly.indvar359, -96
  %150 = icmp slt i64 %149, -1104
  %151 = select i1 %150, i64 %149, i64 -1104
  %152 = add nsw i64 %151, 1199
  %153 = mul nuw nsw i64 %polly.indvar359, 96
  br i1 %polly.loop_guard373.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_header362.us:                          ; preds = %polly.loop_header356, %polly.loop_exit372.loopexit.us
  %polly.indvar365.us = phi i64 [ %polly.indvar_next366.us, %polly.loop_exit372.loopexit.us ], [ 0, %polly.loop_header356 ]
  %154 = shl i64 %polly.indvar365.us, 6
  %155 = shl i64 %polly.indvar365.us, 6
  %156 = shl i64 %polly.indvar365.us, 6
  %157 = or i64 %156, 8
  %158 = shl i64 %polly.indvar365.us, 6
  %159 = or i64 %158, 16
  %160 = shl i64 %polly.indvar365.us, 6
  %161 = or i64 %160, 24
  %162 = shl i64 %polly.indvar365.us, 6
  %163 = or i64 %162, 32
  %164 = shl i64 %polly.indvar365.us, 6
  %165 = or i64 %164, 40
  %166 = shl i64 %polly.indvar365.us, 6
  %167 = or i64 %166, 48
  %168 = or i64 %154, 56
  br label %polly.loop_header370.us

polly.loop_header370.us:                          ; preds = %polly.loop_header362.us, %polly.loop_exit380.us
  %indvars.iv920 = phi i64 [ %indvars.iv918, %polly.loop_header362.us ], [ %indvars.iv.next921, %polly.loop_exit380.us ]
  %indvars.iv915 = phi i64 [ %indvars.iv913, %polly.loop_header362.us ], [ %indvars.iv.next916, %polly.loop_exit380.us ]
  %polly.indvar374.us = phi i64 [ 0, %polly.loop_header362.us ], [ %polly.indvar_next375.us, %polly.loop_exit380.us ]
  %169 = shl nsw i64 %polly.indvar374.us, 7
  %170 = add nsw i64 %169, %149
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard381.not.us = icmp sgt i64 %172, %152
  br i1 %polly.loop_guard381.not.us, label %polly.loop_exit380.us, label %polly.loop_header378.preheader.us

polly.loop_header378.us:                          ; preds = %polly.loop_header378.preheader.us, %polly.loop_exit387.us
  %indvars.iv922 = phi i64 [ %178, %polly.loop_header378.preheader.us ], [ %indvars.iv.next923, %polly.loop_exit387.us ]
  %polly.indvar382.us = phi i64 [ %172, %polly.loop_header378.preheader.us ], [ %polly.indvar_next383.us, %polly.loop_exit387.us ]
  %smin924 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 127)
  %173 = add nsw i64 %polly.indvar382.us, %179
  %polly.loop_guard395.us990 = icmp sgt i64 %173, -1
  %174 = add nuw nsw i64 %polly.indvar382.us, %153
  %175 = mul i64 %174, 8000
  %176 = mul i64 %174, 9600
  br i1 %polly.loop_guard395.us990, label %polly.loop_header385.us.us.preheader, label %polly.loop_exit387.us

polly.loop_header385.us.us.preheader:             ; preds = %polly.loop_header378.us
  %177 = add i64 %155, %175
  %scevgep402.us.us = getelementptr i8, i8* %call2, i64 %177
  %scevgep402403.us.us = bitcast i8* %scevgep402.us.us to double*
  %_p_scalar_404.us.us = load double, double* %scevgep402403.us.us, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us = getelementptr i8, i8* %call1, i64 %177
  %scevgep408409.us.us = bitcast i8* %scevgep408.us.us to double*
  %_p_scalar_410.us.us = load double, double* %scevgep408409.us.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us

polly.loop_exit387.us:                            ; preds = %polly.loop_header392.us.us.7, %polly.loop_header378.us
  %polly.indvar_next383.us = add nuw nsw i64 %polly.indvar382.us, 1
  %polly.loop_cond384.not.not.us = icmp ult i64 %polly.indvar382.us, %152
  %indvars.iv.next923 = add i64 %indvars.iv922, 1
  br i1 %polly.loop_cond384.not.not.us, label %polly.loop_header378.us, label %polly.loop_exit380.us

polly.loop_exit380.us:                            ; preds = %polly.loop_exit387.us, %polly.loop_header370.us
  %polly.indvar_next375.us = add nuw nsw i64 %polly.indvar374.us, 1
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, 128
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -128
  %exitcond929.not = icmp eq i64 %polly.indvar_next375.us, %147
  br i1 %exitcond929.not, label %polly.loop_exit372.loopexit.us, label %polly.loop_header370.us

polly.loop_header378.preheader.us:                ; preds = %polly.loop_header370.us
  %smax917 = call i64 @llvm.smax.i64(i64 %indvars.iv915, i64 0)
  %178 = add i64 %smax917, %indvars.iv920
  %179 = sub nsw i64 %153, %169
  br label %polly.loop_header378.us

polly.loop_exit372.loopexit.us:                   ; preds = %polly.loop_exit380.us
  %polly.indvar_next366.us = add nuw nsw i64 %polly.indvar365.us, 1
  %exitcond930.not = icmp eq i64 %polly.indvar_next366.us, 125
  br i1 %exitcond930.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_exit394.loopexit.us.us:                ; preds = %polly.loop_header392.us.us
  %180 = add i64 %157, %175
  %scevgep402.us.us.1 = getelementptr i8, i8* %call2, i64 %180
  %scevgep402403.us.us.1 = bitcast i8* %scevgep402.us.us.1 to double*
  %_p_scalar_404.us.us.1 = load double, double* %scevgep402403.us.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.1 = getelementptr i8, i8* %call1, i64 %180
  %scevgep408409.us.us.1 = bitcast i8* %scevgep408.us.us.1 to double*
  %_p_scalar_410.us.us.1 = load double, double* %scevgep408409.us.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.1

polly.loop_header392.us.us:                       ; preds = %polly.loop_header392.us.us, %polly.loop_header385.us.us.preheader
  %polly.indvar396.us.us = phi i64 [ %polly.indvar_next397.us.us, %polly.loop_header392.us.us ], [ 0, %polly.loop_header385.us.us.preheader ]
  %181 = add nuw nsw i64 %polly.indvar396.us.us, %169
  %182 = mul nuw nsw i64 %181, 8000
  %183 = add nuw nsw i64 %182, %155
  %scevgep399.us.us = getelementptr i8, i8* %call1, i64 %183
  %scevgep399400.us.us = bitcast i8* %scevgep399.us.us to double*
  %_p_scalar_401.us.us = load double, double* %scevgep399400.us.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us = fmul fast double %_p_scalar_404.us.us, %_p_scalar_401.us.us
  %scevgep405.us.us = getelementptr i8, i8* %call2, i64 %183
  %scevgep405406.us.us = bitcast i8* %scevgep405.us.us to double*
  %_p_scalar_407.us.us = load double, double* %scevgep405406.us.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us = fmul fast double %_p_scalar_410.us.us, %_p_scalar_407.us.us
  %184 = shl i64 %181, 3
  %185 = add i64 %184, %176
  %scevgep411.us.us = getelementptr i8, i8* %call, i64 %185
  %scevgep411412.us.us = bitcast i8* %scevgep411.us.us to double*
  %_p_scalar_413.us.us = load double, double* %scevgep411412.us.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us = fadd fast double %p_mul37.i75.us.us, %p_mul27.i73.us.us
  %p_reass.mul.i78.us.us = fmul fast double %p_reass.add.i77.us.us, 1.500000e+00
  %p_add42.i79.us.us = fadd fast double %p_reass.mul.i78.us.us, %_p_scalar_413.us.us
  store double %p_add42.i79.us.us, double* %scevgep411412.us.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us = add nuw nsw i64 %polly.indvar396.us.us, 1
  %exitcond925.not = icmp eq i64 %polly.indvar396.us.us, %smin924
  br i1 %exitcond925.not, label %polly.loop_exit394.loopexit.us.us, label %polly.loop_header392.us.us

polly.loop_exit364:                               ; preds = %polly.loop_exit372.loopexit.us, %polly.loop_header356
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, -96
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 96
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1
  %exitcond931.not = icmp eq i64 %148, 13
  br i1 %exitcond931.not, label %kernel_syr2k.exit90, label %polly.loop_header356

polly.loop_header500:                             ; preds = %init_array.exit, %polly.loop_exit508
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit508 ], [ 0, %init_array.exit ]
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 1, %init_array.exit ]
  %186 = add i64 %indvar, 1
  %187 = mul nuw nsw i64 %polly.indvar503, 9600
  %scevgep512 = getelementptr i8, i8* %call, i64 %187
  %min.iters.check1081 = icmp ult i64 %186, 4
  br i1 %min.iters.check1081, label %polly.loop_header506.preheader, label %vector.ph1082

vector.ph1082:                                    ; preds = %polly.loop_header500
  %n.vec1084 = and i64 %186, -4
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1082
  %index1085 = phi i64 [ 0, %vector.ph1082 ], [ %index.next1086, %vector.body1080 ]
  %188 = shl nuw nsw i64 %index1085, 3
  %189 = getelementptr i8, i8* %scevgep512, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load1089 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !78, !noalias !80
  %191 = fmul fast <4 x double> %wide.load1089, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %192 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %191, <4 x double>* %192, align 8, !alias.scope !78, !noalias !80
  %index.next1086 = add i64 %index1085, 4
  %193 = icmp eq i64 %index.next1086, %n.vec1084
  br i1 %193, label %middle.block1078, label %vector.body1080, !llvm.loop !83

middle.block1078:                                 ; preds = %vector.body1080
  %cmp.n1088 = icmp eq i64 %186, %n.vec1084
  br i1 %cmp.n1088, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_header500, %middle.block1078
  %polly.indvar509.ph = phi i64 [ 0, %polly.loop_header500 ], [ %n.vec1084, %middle.block1078 ]
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506, %middle.block1078
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next504, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond954.not, label %polly.loop_header516, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_header506
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_header506 ], [ %polly.indvar509.ph, %polly.loop_header506.preheader ]
  %194 = shl nuw nsw i64 %polly.indvar509, 3
  %scevgep513 = getelementptr i8, i8* %scevgep512, i64 %194
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_515, 1.200000e+00
  store double %p_mul.i, double* %scevgep513514, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next510, %polly.indvar503
  br i1 %exitcond953.not, label %polly.loop_exit508, label %polly.loop_header506, !llvm.loop !84

polly.loop_header516:                             ; preds = %polly.loop_exit508, %polly.loop_exit524
  %indvars.iv948 = phi i64 [ %indvars.iv.next949, %polly.loop_exit524 ], [ 1, %polly.loop_exit508 ]
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %polly.indvar519 = phi i64 [ %197, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %195 = lshr i64 %indvars.iv948, 2
  %196 = sub nsw i64 %indvars.iv948, %195
  %197 = add nuw nsw i64 %polly.indvar519, 1
  %pexp.p_div_q528 = lshr i64 %197, 2
  %polly.loop_guard533.not = icmp ult i64 %polly.indvar519, %pexp.p_div_q528
  %198 = mul nsw i64 %polly.indvar519, -96
  %199 = icmp slt i64 %198, -1104
  %200 = select i1 %199, i64 %198, i64 -1104
  %201 = add nsw i64 %200, 1199
  %202 = mul nuw nsw i64 %polly.indvar519, 96
  br i1 %polly.loop_guard533.not, label %polly.loop_exit524, label %polly.loop_header522.us

polly.loop_header522.us:                          ; preds = %polly.loop_header516, %polly.loop_exit532.loopexit.us
  %polly.indvar525.us = phi i64 [ %polly.indvar_next526.us, %polly.loop_exit532.loopexit.us ], [ 0, %polly.loop_header516 ]
  %203 = shl i64 %polly.indvar525.us, 6
  %204 = shl i64 %polly.indvar525.us, 6
  %205 = shl i64 %polly.indvar525.us, 6
  %206 = or i64 %205, 8
  %207 = shl i64 %polly.indvar525.us, 6
  %208 = or i64 %207, 16
  %209 = shl i64 %polly.indvar525.us, 6
  %210 = or i64 %209, 24
  %211 = shl i64 %polly.indvar525.us, 6
  %212 = or i64 %211, 32
  %213 = shl i64 %polly.indvar525.us, 6
  %214 = or i64 %213, 40
  %215 = shl i64 %polly.indvar525.us, 6
  %216 = or i64 %215, 48
  %217 = or i64 %203, 56
  br label %polly.loop_header530.us

polly.loop_header530.us:                          ; preds = %polly.loop_header522.us, %polly.loop_exit540.us
  %indvars.iv941 = phi i64 [ %indvars.iv939, %polly.loop_header522.us ], [ %indvars.iv.next942, %polly.loop_exit540.us ]
  %indvars.iv936 = phi i64 [ %indvars.iv934, %polly.loop_header522.us ], [ %indvars.iv.next937, %polly.loop_exit540.us ]
  %polly.indvar534.us = phi i64 [ 0, %polly.loop_header522.us ], [ %polly.indvar_next535.us, %polly.loop_exit540.us ]
  %218 = shl nsw i64 %polly.indvar534.us, 7
  %219 = add nsw i64 %218, %198
  %220 = icmp sgt i64 %219, 0
  %221 = select i1 %220, i64 %219, i64 0
  %polly.loop_guard541.not.us = icmp sgt i64 %221, %201
  br i1 %polly.loop_guard541.not.us, label %polly.loop_exit540.us, label %polly.loop_header538.preheader.us

polly.loop_header538.us:                          ; preds = %polly.loop_header538.preheader.us, %polly.loop_exit547.us
  %indvars.iv943 = phi i64 [ %227, %polly.loop_header538.preheader.us ], [ %indvars.iv.next944, %polly.loop_exit547.us ]
  %polly.indvar542.us = phi i64 [ %221, %polly.loop_header538.preheader.us ], [ %polly.indvar_next543.us, %polly.loop_exit547.us ]
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 127)
  %222 = add nsw i64 %polly.indvar542.us, %228
  %polly.loop_guard555.us991 = icmp sgt i64 %222, -1
  %223 = add nuw nsw i64 %polly.indvar542.us, %202
  %224 = mul i64 %223, 8000
  %225 = mul i64 %223, 9600
  br i1 %polly.loop_guard555.us991, label %polly.loop_header545.us.us.preheader, label %polly.loop_exit547.us

polly.loop_header545.us.us.preheader:             ; preds = %polly.loop_header538.us
  %226 = add i64 %204, %224
  %scevgep562.us.us = getelementptr i8, i8* %call2, i64 %226
  %scevgep562563.us.us = bitcast i8* %scevgep562.us.us to double*
  %_p_scalar_564.us.us = load double, double* %scevgep562563.us.us, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us = getelementptr i8, i8* %call1, i64 %226
  %scevgep568569.us.us = bitcast i8* %scevgep568.us.us to double*
  %_p_scalar_570.us.us = load double, double* %scevgep568569.us.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us

polly.loop_exit547.us:                            ; preds = %polly.loop_header552.us.us.7, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.not.not.us = icmp ult i64 %polly.indvar542.us, %201
  %indvars.iv.next944 = add i64 %indvars.iv943, 1
  br i1 %polly.loop_cond544.not.not.us, label %polly.loop_header538.us, label %polly.loop_exit540.us

polly.loop_exit540.us:                            ; preds = %polly.loop_exit547.us, %polly.loop_header530.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %indvars.iv.next937 = add nsw i64 %indvars.iv936, 128
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -128
  %exitcond950.not = icmp eq i64 %polly.indvar_next535.us, %196
  br i1 %exitcond950.not, label %polly.loop_exit532.loopexit.us, label %polly.loop_header530.us

polly.loop_header538.preheader.us:                ; preds = %polly.loop_header530.us
  %smax938 = call i64 @llvm.smax.i64(i64 %indvars.iv936, i64 0)
  %227 = add i64 %smax938, %indvars.iv941
  %228 = sub nsw i64 %202, %218
  br label %polly.loop_header538.us

polly.loop_exit532.loopexit.us:                   ; preds = %polly.loop_exit540.us
  %polly.indvar_next526.us = add nuw nsw i64 %polly.indvar525.us, 1
  %exitcond951.not = icmp eq i64 %polly.indvar_next526.us, 125
  br i1 %exitcond951.not, label %polly.loop_exit524, label %polly.loop_header522.us

polly.loop_exit554.loopexit.us.us:                ; preds = %polly.loop_header552.us.us
  %229 = add i64 %206, %224
  %scevgep562.us.us.1 = getelementptr i8, i8* %call2, i64 %229
  %scevgep562563.us.us.1 = bitcast i8* %scevgep562.us.us.1 to double*
  %_p_scalar_564.us.us.1 = load double, double* %scevgep562563.us.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.1 = getelementptr i8, i8* %call1, i64 %229
  %scevgep568569.us.us.1 = bitcast i8* %scevgep568.us.us.1 to double*
  %_p_scalar_570.us.us.1 = load double, double* %scevgep568569.us.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.1

polly.loop_header552.us.us:                       ; preds = %polly.loop_header552.us.us, %polly.loop_header545.us.us.preheader
  %polly.indvar556.us.us = phi i64 [ %polly.indvar_next557.us.us, %polly.loop_header552.us.us ], [ 0, %polly.loop_header545.us.us.preheader ]
  %230 = add nuw nsw i64 %polly.indvar556.us.us, %218
  %231 = mul nuw nsw i64 %230, 8000
  %232 = add nuw nsw i64 %231, %204
  %scevgep559.us.us = getelementptr i8, i8* %call1, i64 %232
  %scevgep559560.us.us = bitcast i8* %scevgep559.us.us to double*
  %_p_scalar_561.us.us = load double, double* %scevgep559560.us.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us = fmul fast double %_p_scalar_564.us.us, %_p_scalar_561.us.us
  %scevgep565.us.us = getelementptr i8, i8* %call2, i64 %232
  %scevgep565566.us.us = bitcast i8* %scevgep565.us.us to double*
  %_p_scalar_567.us.us = load double, double* %scevgep565566.us.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us = fmul fast double %_p_scalar_570.us.us, %_p_scalar_567.us.us
  %233 = shl i64 %230, 3
  %234 = add i64 %233, %225
  %scevgep571.us.us = getelementptr i8, i8* %call, i64 %234
  %scevgep571572.us.us = bitcast i8* %scevgep571.us.us to double*
  %_p_scalar_573.us.us = load double, double* %scevgep571572.us.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us = fadd fast double %p_mul37.i.us.us, %p_mul27.i.us.us
  %p_reass.mul.i.us.us = fmul fast double %p_reass.add.i.us.us, 1.500000e+00
  %p_add42.i.us.us = fadd fast double %p_reass.mul.i.us.us, %_p_scalar_573.us.us
  store double %p_add42.i.us.us, double* %scevgep571572.us.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us = add nuw nsw i64 %polly.indvar556.us.us, 1
  %exitcond946.not = icmp eq i64 %polly.indvar556.us.us, %smin945
  br i1 %exitcond946.not, label %polly.loop_exit554.loopexit.us.us, label %polly.loop_header552.us.us

polly.loop_exit524:                               ; preds = %polly.loop_exit532.loopexit.us, %polly.loop_header516
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -96
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 96
  %indvars.iv.next949 = add nuw nsw i64 %indvars.iv948, 1
  %exitcond952.not = icmp eq i64 %197, 13
  br i1 %exitcond952.not, label %kernel_syr2k.exit, label %polly.loop_header516

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit708 ], [ 0, %entry ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %smin981 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 -1168)
  %235 = shl nsw i64 %polly.indvar703, 5
  %236 = add nsw i64 %smin981, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, -32
  %exitcond984.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond984.not, label %polly.loop_header727, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %237 = mul nsw i64 %polly.indvar709, -32
  %smin1019 = call i64 @llvm.smin.i64(i64 %237, i64 -1168)
  %238 = add nsw i64 %smin1019, 1200
  %smin977 = call i64 @llvm.smin.i64(i64 %indvars.iv975, i64 -1168)
  %239 = shl nsw i64 %polly.indvar709, 5
  %240 = add nsw i64 %smin977, 1199
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_exit720
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -32
  %exitcond983.not = icmp eq i64 %polly.indvar_next710, 38
  br i1 %exitcond983.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_exit720, %polly.loop_header706
  %polly.indvar715 = phi i64 [ 0, %polly.loop_header706 ], [ %polly.indvar_next716, %polly.loop_exit720 ]
  %241 = add nuw nsw i64 %polly.indvar715, %235
  %242 = trunc i64 %241 to i32
  %243 = mul nuw nsw i64 %241, 9600
  %min.iters.check = icmp eq i64 %238, 0
  br i1 %min.iters.check, label %polly.loop_header718, label %vector.ph1020

vector.ph1020:                                    ; preds = %polly.loop_header712
  %broadcast.splatinsert1027 = insertelement <4 x i64> poison, i64 %239, i32 0
  %broadcast.splat1028 = shufflevector <4 x i64> %broadcast.splatinsert1027, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1020
  %index1021 = phi i64 [ 0, %vector.ph1020 ], [ %index.next1022, %vector.body1018 ]
  %vec.ind1025 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1020 ], [ %vec.ind.next1026, %vector.body1018 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1025, %broadcast.splat1028
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1030, %245
  %247 = add <4 x i32> %246, <i32 3, i32 3, i32 3, i32 3>
  %248 = urem <4 x i32> %247, <i32 1200, i32 1200, i32 1200, i32 1200>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add nuw nsw i64 %252, %243
  %254 = getelementptr i8, i8* %call, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !87, !noalias !89
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1026 = add <4 x i64> %vec.ind1025, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1022, %238
  br i1 %256, label %polly.loop_exit720, label %vector.body1018, !llvm.loop !92

polly.loop_exit720:                               ; preds = %vector.body1018, %polly.loop_header718
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond982.not = icmp eq i64 %polly.indvar715, %236
  br i1 %exitcond982.not, label %polly.loop_exit714, label %polly.loop_header712

polly.loop_header718:                             ; preds = %polly.loop_header712, %polly.loop_header718
  %polly.indvar721 = phi i64 [ %polly.indvar_next722, %polly.loop_header718 ], [ 0, %polly.loop_header712 ]
  %257 = add nuw nsw i64 %polly.indvar721, %239
  %258 = trunc i64 %257 to i32
  %259 = mul i32 %258, %242
  %260 = add i32 %259, 3
  %261 = urem i32 %260, 1200
  %p_conv31.i = sitofp i32 %261 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %262 = shl i64 %257, 3
  %263 = add nuw nsw i64 %262, %243
  %scevgep724 = getelementptr i8, i8* %call, i64 %263
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  store double %p_div33.i, double* %scevgep724725, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next722 = add nuw nsw i64 %polly.indvar721, 1
  %exitcond978.not = icmp eq i64 %polly.indvar721, %240
  br i1 %exitcond978.not, label %polly.loop_exit720, label %polly.loop_header718, !llvm.loop !93

polly.loop_header727:                             ; preds = %polly.loop_exit708, %polly.loop_exit735
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %smin971 = call i64 @llvm.smin.i64(i64 %indvars.iv969, i64 -1168)
  %264 = shl nsw i64 %polly.indvar730, 5
  %265 = add nsw i64 %smin971, 1199
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next970 = add nsw i64 %indvars.iv969, -32
  %exitcond974.not = icmp eq i64 %polly.indvar_next731, 38
  br i1 %exitcond974.not, label %polly.loop_header753, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %266 = mul nsw i64 %polly.indvar736, -32
  %smin1034 = call i64 @llvm.smin.i64(i64 %266, i64 -968)
  %267 = add nsw i64 %smin1034, 1000
  %smin967 = call i64 @llvm.smin.i64(i64 %indvars.iv965, i64 -968)
  %268 = shl nsw i64 %polly.indvar736, 5
  %269 = add nsw i64 %smin967, 999
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, -32
  %exitcond973.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond973.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %polly.indvar742 = phi i64 [ 0, %polly.loop_header733 ], [ %polly.indvar_next743, %polly.loop_exit747 ]
  %270 = add nuw nsw i64 %polly.indvar742, %264
  %271 = trunc i64 %270 to i32
  %272 = mul nuw nsw i64 %270, 8000
  %min.iters.check1035 = icmp eq i64 %267, 0
  br i1 %min.iters.check1035, label %polly.loop_header745, label %vector.ph1036

vector.ph1036:                                    ; preds = %polly.loop_header739
  %broadcast.splatinsert1045 = insertelement <4 x i64> poison, i64 %268, i32 0
  %broadcast.splat1046 = shufflevector <4 x i64> %broadcast.splatinsert1045, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1036
  %index1039 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1040, %vector.body1033 ]
  %vec.ind1043 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1036 ], [ %vec.ind.next1044, %vector.body1033 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1043, %broadcast.splat1046
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1048, %274
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 1000, i32 1000, i32 1000, i32 1000>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add nuw nsw i64 %281, %272
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !91, !noalias !94
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1044 = add <4 x i64> %vec.ind1043, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1040, %267
  br i1 %285, label %polly.loop_exit747, label %vector.body1033, !llvm.loop !95

polly.loop_exit747:                               ; preds = %vector.body1033, %polly.loop_header745
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond972.not = icmp eq i64 %polly.indvar742, %265
  br i1 %exitcond972.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_header739, %polly.loop_header745
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_header745 ], [ 0, %polly.loop_header739 ]
  %286 = add nuw nsw i64 %polly.indvar748, %268
  %287 = trunc i64 %286 to i32
  %288 = mul i32 %287, %271
  %289 = add i32 %288, 2
  %290 = urem i32 %289, 1000
  %p_conv10.i = sitofp i32 %290 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %291 = shl i64 %286, 3
  %292 = add nuw nsw i64 %291, %272
  %scevgep751 = getelementptr i8, i8* %call2, i64 %292
  %scevgep751752 = bitcast i8* %scevgep751 to double*
  store double %p_div12.i, double* %scevgep751752, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond968.not = icmp eq i64 %polly.indvar748, %269
  br i1 %exitcond968.not, label %polly.loop_exit747, label %polly.loop_header745, !llvm.loop !96

polly.loop_header753:                             ; preds = %polly.loop_exit735, %polly.loop_exit761
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %smin961 = call i64 @llvm.smin.i64(i64 %indvars.iv959, i64 -1168)
  %293 = shl nsw i64 %polly.indvar756, 5
  %294 = add nsw i64 %smin961, 1199
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, -32
  %exitcond964.not = icmp eq i64 %polly.indvar_next757, 38
  br i1 %exitcond964.not, label %init_array.exit, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %295 = mul nsw i64 %polly.indvar762, -32
  %smin1052 = call i64 @llvm.smin.i64(i64 %295, i64 -968)
  %296 = add nsw i64 %smin1052, 1000
  %smin957 = call i64 @llvm.smin.i64(i64 %indvars.iv955, i64 -968)
  %297 = shl nsw i64 %polly.indvar762, 5
  %298 = add nsw i64 %smin957, 999
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next956 = add nsw i64 %indvars.iv955, -32
  %exitcond963.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond963.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %polly.indvar768 = phi i64 [ 0, %polly.loop_header759 ], [ %polly.indvar_next769, %polly.loop_exit773 ]
  %299 = add nuw nsw i64 %polly.indvar768, %293
  %300 = trunc i64 %299 to i32
  %301 = mul nuw nsw i64 %299, 8000
  %min.iters.check1053 = icmp eq i64 %296, 0
  br i1 %min.iters.check1053, label %polly.loop_header771, label %vector.ph1054

vector.ph1054:                                    ; preds = %polly.loop_header765
  %broadcast.splatinsert1063 = insertelement <4 x i64> poison, i64 %297, i32 0
  %broadcast.splat1064 = shufflevector <4 x i64> %broadcast.splatinsert1063, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1065 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1066 = shufflevector <4 x i32> %broadcast.splatinsert1065, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1058, %vector.body1051 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1054 ], [ %vec.ind.next1062, %vector.body1051 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1061, %broadcast.splat1064
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1066, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 1200, i32 1200, i32 1200, i32 1200>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add nuw nsw i64 %310, %301
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !90, !noalias !97
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1058, %296
  br i1 %314, label %polly.loop_exit773, label %vector.body1051, !llvm.loop !98

polly.loop_exit773:                               ; preds = %vector.body1051, %polly.loop_header771
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond962.not = icmp eq i64 %polly.indvar768, %294
  br i1 %exitcond962.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_header765, %polly.loop_header771
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_header771 ], [ 0, %polly.loop_header765 ]
  %315 = add nuw nsw i64 %polly.indvar774, %297
  %316 = trunc i64 %315 to i32
  %317 = mul i32 %316, %300
  %318 = add i32 %317, 1
  %319 = urem i32 %318, 1200
  %p_conv.i = sitofp i32 %319 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %320 = shl i64 %315, 3
  %321 = add nuw nsw i64 %320, %301
  %scevgep778 = getelementptr i8, i8* %call1, i64 %321
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  store double %p_div.i, double* %scevgep778779, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond958.not = icmp eq i64 %polly.indvar774, %298
  br i1 %exitcond958.not, label %polly.loop_exit773, label %polly.loop_header771, !llvm.loop !99

polly.loop_header232.us.us.1:                     ; preds = %polly.loop_header232.us.us.1, %polly.loop_exit234.loopexit.us.us
  %polly.indvar236.us.us.1 = phi i64 [ %polly.indvar_next237.us.us.1, %polly.loop_header232.us.us.1 ], [ 0, %polly.loop_exit234.loopexit.us.us ]
  %322 = add nuw nsw i64 %polly.indvar236.us.us.1, %120
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %108
  %scevgep239.us.us.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep239240.us.us.1 = bitcast i8* %scevgep239.us.us.1 to double*
  %_p_scalar_241.us.us.1 = load double, double* %scevgep239240.us.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.1 = fmul fast double %_p_scalar_244.us.us.1, %_p_scalar_241.us.us.1
  %scevgep245.us.us.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep245246.us.us.1 = bitcast i8* %scevgep245.us.us.1 to double*
  %_p_scalar_247.us.us.1 = load double, double* %scevgep245246.us.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.1 = fmul fast double %_p_scalar_250.us.us.1, %_p_scalar_247.us.us.1
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %127
  %scevgep251.us.us.1 = getelementptr i8, i8* %call, i64 %326
  %scevgep251252.us.us.1 = bitcast i8* %scevgep251.us.us.1 to double*
  %_p_scalar_253.us.us.1 = load double, double* %scevgep251252.us.us.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.1 = fadd fast double %p_mul37.i114.us.us.1, %p_mul27.i112.us.us.1
  %p_reass.mul.i117.us.us.1 = fmul fast double %p_reass.add.i116.us.us.1, 1.500000e+00
  %p_add42.i118.us.us.1 = fadd fast double %p_reass.mul.i117.us.us.1, %_p_scalar_253.us.us.1
  store double %p_add42.i118.us.us.1, double* %scevgep251252.us.us.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.1 = add nuw nsw i64 %polly.indvar236.us.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar236.us.us.1, %smin
  br i1 %exitcond.1.not, label %polly.loop_exit234.loopexit.us.us.1, label %polly.loop_header232.us.us.1

polly.loop_exit234.loopexit.us.us.1:              ; preds = %polly.loop_header232.us.us.1
  %327 = add i64 %110, %126
  %scevgep242.us.us.2 = getelementptr i8, i8* %call2, i64 %327
  %scevgep242243.us.us.2 = bitcast i8* %scevgep242.us.us.2 to double*
  %_p_scalar_244.us.us.2 = load double, double* %scevgep242243.us.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.2 = getelementptr i8, i8* %call1, i64 %327
  %scevgep248249.us.us.2 = bitcast i8* %scevgep248.us.us.2 to double*
  %_p_scalar_250.us.us.2 = load double, double* %scevgep248249.us.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.2

polly.loop_header232.us.us.2:                     ; preds = %polly.loop_header232.us.us.2, %polly.loop_exit234.loopexit.us.us.1
  %polly.indvar236.us.us.2 = phi i64 [ %polly.indvar_next237.us.us.2, %polly.loop_header232.us.us.2 ], [ 0, %polly.loop_exit234.loopexit.us.us.1 ]
  %328 = add nuw nsw i64 %polly.indvar236.us.us.2, %120
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %110
  %scevgep239.us.us.2 = getelementptr i8, i8* %call1, i64 %330
  %scevgep239240.us.us.2 = bitcast i8* %scevgep239.us.us.2 to double*
  %_p_scalar_241.us.us.2 = load double, double* %scevgep239240.us.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.2 = fmul fast double %_p_scalar_244.us.us.2, %_p_scalar_241.us.us.2
  %scevgep245.us.us.2 = getelementptr i8, i8* %call2, i64 %330
  %scevgep245246.us.us.2 = bitcast i8* %scevgep245.us.us.2 to double*
  %_p_scalar_247.us.us.2 = load double, double* %scevgep245246.us.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.2 = fmul fast double %_p_scalar_250.us.us.2, %_p_scalar_247.us.us.2
  %331 = shl i64 %328, 3
  %332 = add i64 %331, %127
  %scevgep251.us.us.2 = getelementptr i8, i8* %call, i64 %332
  %scevgep251252.us.us.2 = bitcast i8* %scevgep251.us.us.2 to double*
  %_p_scalar_253.us.us.2 = load double, double* %scevgep251252.us.us.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.2 = fadd fast double %p_mul37.i114.us.us.2, %p_mul27.i112.us.us.2
  %p_reass.mul.i117.us.us.2 = fmul fast double %p_reass.add.i116.us.us.2, 1.500000e+00
  %p_add42.i118.us.us.2 = fadd fast double %p_reass.mul.i117.us.us.2, %_p_scalar_253.us.us.2
  store double %p_add42.i118.us.us.2, double* %scevgep251252.us.us.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.2 = add nuw nsw i64 %polly.indvar236.us.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar236.us.us.2, %smin
  br i1 %exitcond.2.not, label %polly.loop_exit234.loopexit.us.us.2, label %polly.loop_header232.us.us.2

polly.loop_exit234.loopexit.us.us.2:              ; preds = %polly.loop_header232.us.us.2
  %333 = add i64 %112, %126
  %scevgep242.us.us.3 = getelementptr i8, i8* %call2, i64 %333
  %scevgep242243.us.us.3 = bitcast i8* %scevgep242.us.us.3 to double*
  %_p_scalar_244.us.us.3 = load double, double* %scevgep242243.us.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.3 = getelementptr i8, i8* %call1, i64 %333
  %scevgep248249.us.us.3 = bitcast i8* %scevgep248.us.us.3 to double*
  %_p_scalar_250.us.us.3 = load double, double* %scevgep248249.us.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.3

polly.loop_header232.us.us.3:                     ; preds = %polly.loop_header232.us.us.3, %polly.loop_exit234.loopexit.us.us.2
  %polly.indvar236.us.us.3 = phi i64 [ %polly.indvar_next237.us.us.3, %polly.loop_header232.us.us.3 ], [ 0, %polly.loop_exit234.loopexit.us.us.2 ]
  %334 = add nuw nsw i64 %polly.indvar236.us.us.3, %120
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %112
  %scevgep239.us.us.3 = getelementptr i8, i8* %call1, i64 %336
  %scevgep239240.us.us.3 = bitcast i8* %scevgep239.us.us.3 to double*
  %_p_scalar_241.us.us.3 = load double, double* %scevgep239240.us.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.3 = fmul fast double %_p_scalar_244.us.us.3, %_p_scalar_241.us.us.3
  %scevgep245.us.us.3 = getelementptr i8, i8* %call2, i64 %336
  %scevgep245246.us.us.3 = bitcast i8* %scevgep245.us.us.3 to double*
  %_p_scalar_247.us.us.3 = load double, double* %scevgep245246.us.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.3 = fmul fast double %_p_scalar_250.us.us.3, %_p_scalar_247.us.us.3
  %337 = shl i64 %334, 3
  %338 = add i64 %337, %127
  %scevgep251.us.us.3 = getelementptr i8, i8* %call, i64 %338
  %scevgep251252.us.us.3 = bitcast i8* %scevgep251.us.us.3 to double*
  %_p_scalar_253.us.us.3 = load double, double* %scevgep251252.us.us.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.3 = fadd fast double %p_mul37.i114.us.us.3, %p_mul27.i112.us.us.3
  %p_reass.mul.i117.us.us.3 = fmul fast double %p_reass.add.i116.us.us.3, 1.500000e+00
  %p_add42.i118.us.us.3 = fadd fast double %p_reass.mul.i117.us.us.3, %_p_scalar_253.us.us.3
  store double %p_add42.i118.us.us.3, double* %scevgep251252.us.us.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.3 = add nuw nsw i64 %polly.indvar236.us.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar236.us.us.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit234.loopexit.us.us.3, label %polly.loop_header232.us.us.3

polly.loop_exit234.loopexit.us.us.3:              ; preds = %polly.loop_header232.us.us.3
  %339 = add i64 %114, %126
  %scevgep242.us.us.4 = getelementptr i8, i8* %call2, i64 %339
  %scevgep242243.us.us.4 = bitcast i8* %scevgep242.us.us.4 to double*
  %_p_scalar_244.us.us.4 = load double, double* %scevgep242243.us.us.4, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.4 = getelementptr i8, i8* %call1, i64 %339
  %scevgep248249.us.us.4 = bitcast i8* %scevgep248.us.us.4 to double*
  %_p_scalar_250.us.us.4 = load double, double* %scevgep248249.us.us.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.4

polly.loop_header232.us.us.4:                     ; preds = %polly.loop_header232.us.us.4, %polly.loop_exit234.loopexit.us.us.3
  %polly.indvar236.us.us.4 = phi i64 [ %polly.indvar_next237.us.us.4, %polly.loop_header232.us.us.4 ], [ 0, %polly.loop_exit234.loopexit.us.us.3 ]
  %340 = add nuw nsw i64 %polly.indvar236.us.us.4, %120
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %114
  %scevgep239.us.us.4 = getelementptr i8, i8* %call1, i64 %342
  %scevgep239240.us.us.4 = bitcast i8* %scevgep239.us.us.4 to double*
  %_p_scalar_241.us.us.4 = load double, double* %scevgep239240.us.us.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.4 = fmul fast double %_p_scalar_244.us.us.4, %_p_scalar_241.us.us.4
  %scevgep245.us.us.4 = getelementptr i8, i8* %call2, i64 %342
  %scevgep245246.us.us.4 = bitcast i8* %scevgep245.us.us.4 to double*
  %_p_scalar_247.us.us.4 = load double, double* %scevgep245246.us.us.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.4 = fmul fast double %_p_scalar_250.us.us.4, %_p_scalar_247.us.us.4
  %343 = shl i64 %340, 3
  %344 = add i64 %343, %127
  %scevgep251.us.us.4 = getelementptr i8, i8* %call, i64 %344
  %scevgep251252.us.us.4 = bitcast i8* %scevgep251.us.us.4 to double*
  %_p_scalar_253.us.us.4 = load double, double* %scevgep251252.us.us.4, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.4 = fadd fast double %p_mul37.i114.us.us.4, %p_mul27.i112.us.us.4
  %p_reass.mul.i117.us.us.4 = fmul fast double %p_reass.add.i116.us.us.4, 1.500000e+00
  %p_add42.i118.us.us.4 = fadd fast double %p_reass.mul.i117.us.us.4, %_p_scalar_253.us.us.4
  store double %p_add42.i118.us.us.4, double* %scevgep251252.us.us.4, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.4 = add nuw nsw i64 %polly.indvar236.us.us.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar236.us.us.4, %smin
  br i1 %exitcond.4.not, label %polly.loop_exit234.loopexit.us.us.4, label %polly.loop_header232.us.us.4

polly.loop_exit234.loopexit.us.us.4:              ; preds = %polly.loop_header232.us.us.4
  %345 = add i64 %116, %126
  %scevgep242.us.us.5 = getelementptr i8, i8* %call2, i64 %345
  %scevgep242243.us.us.5 = bitcast i8* %scevgep242.us.us.5 to double*
  %_p_scalar_244.us.us.5 = load double, double* %scevgep242243.us.us.5, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.5 = getelementptr i8, i8* %call1, i64 %345
  %scevgep248249.us.us.5 = bitcast i8* %scevgep248.us.us.5 to double*
  %_p_scalar_250.us.us.5 = load double, double* %scevgep248249.us.us.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.5

polly.loop_header232.us.us.5:                     ; preds = %polly.loop_header232.us.us.5, %polly.loop_exit234.loopexit.us.us.4
  %polly.indvar236.us.us.5 = phi i64 [ %polly.indvar_next237.us.us.5, %polly.loop_header232.us.us.5 ], [ 0, %polly.loop_exit234.loopexit.us.us.4 ]
  %346 = add nuw nsw i64 %polly.indvar236.us.us.5, %120
  %347 = mul nuw nsw i64 %346, 8000
  %348 = add nuw nsw i64 %347, %116
  %scevgep239.us.us.5 = getelementptr i8, i8* %call1, i64 %348
  %scevgep239240.us.us.5 = bitcast i8* %scevgep239.us.us.5 to double*
  %_p_scalar_241.us.us.5 = load double, double* %scevgep239240.us.us.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.5 = fmul fast double %_p_scalar_244.us.us.5, %_p_scalar_241.us.us.5
  %scevgep245.us.us.5 = getelementptr i8, i8* %call2, i64 %348
  %scevgep245246.us.us.5 = bitcast i8* %scevgep245.us.us.5 to double*
  %_p_scalar_247.us.us.5 = load double, double* %scevgep245246.us.us.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.5 = fmul fast double %_p_scalar_250.us.us.5, %_p_scalar_247.us.us.5
  %349 = shl i64 %346, 3
  %350 = add i64 %349, %127
  %scevgep251.us.us.5 = getelementptr i8, i8* %call, i64 %350
  %scevgep251252.us.us.5 = bitcast i8* %scevgep251.us.us.5 to double*
  %_p_scalar_253.us.us.5 = load double, double* %scevgep251252.us.us.5, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.5 = fadd fast double %p_mul37.i114.us.us.5, %p_mul27.i112.us.us.5
  %p_reass.mul.i117.us.us.5 = fmul fast double %p_reass.add.i116.us.us.5, 1.500000e+00
  %p_add42.i118.us.us.5 = fadd fast double %p_reass.mul.i117.us.us.5, %_p_scalar_253.us.us.5
  store double %p_add42.i118.us.us.5, double* %scevgep251252.us.us.5, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.5 = add nuw nsw i64 %polly.indvar236.us.us.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar236.us.us.5, %smin
  br i1 %exitcond.5.not, label %polly.loop_exit234.loopexit.us.us.5, label %polly.loop_header232.us.us.5

polly.loop_exit234.loopexit.us.us.5:              ; preds = %polly.loop_header232.us.us.5
  %351 = add i64 %118, %126
  %scevgep242.us.us.6 = getelementptr i8, i8* %call2, i64 %351
  %scevgep242243.us.us.6 = bitcast i8* %scevgep242.us.us.6 to double*
  %_p_scalar_244.us.us.6 = load double, double* %scevgep242243.us.us.6, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.6 = getelementptr i8, i8* %call1, i64 %351
  %scevgep248249.us.us.6 = bitcast i8* %scevgep248.us.us.6 to double*
  %_p_scalar_250.us.us.6 = load double, double* %scevgep248249.us.us.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.6

polly.loop_header232.us.us.6:                     ; preds = %polly.loop_header232.us.us.6, %polly.loop_exit234.loopexit.us.us.5
  %polly.indvar236.us.us.6 = phi i64 [ %polly.indvar_next237.us.us.6, %polly.loop_header232.us.us.6 ], [ 0, %polly.loop_exit234.loopexit.us.us.5 ]
  %352 = add nuw nsw i64 %polly.indvar236.us.us.6, %120
  %353 = mul nuw nsw i64 %352, 8000
  %354 = add nuw nsw i64 %353, %118
  %scevgep239.us.us.6 = getelementptr i8, i8* %call1, i64 %354
  %scevgep239240.us.us.6 = bitcast i8* %scevgep239.us.us.6 to double*
  %_p_scalar_241.us.us.6 = load double, double* %scevgep239240.us.us.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.6 = fmul fast double %_p_scalar_244.us.us.6, %_p_scalar_241.us.us.6
  %scevgep245.us.us.6 = getelementptr i8, i8* %call2, i64 %354
  %scevgep245246.us.us.6 = bitcast i8* %scevgep245.us.us.6 to double*
  %_p_scalar_247.us.us.6 = load double, double* %scevgep245246.us.us.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.6 = fmul fast double %_p_scalar_250.us.us.6, %_p_scalar_247.us.us.6
  %355 = shl i64 %352, 3
  %356 = add i64 %355, %127
  %scevgep251.us.us.6 = getelementptr i8, i8* %call, i64 %356
  %scevgep251252.us.us.6 = bitcast i8* %scevgep251.us.us.6 to double*
  %_p_scalar_253.us.us.6 = load double, double* %scevgep251252.us.us.6, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.6 = fadd fast double %p_mul37.i114.us.us.6, %p_mul27.i112.us.us.6
  %p_reass.mul.i117.us.us.6 = fmul fast double %p_reass.add.i116.us.us.6, 1.500000e+00
  %p_add42.i118.us.us.6 = fadd fast double %p_reass.mul.i117.us.us.6, %_p_scalar_253.us.us.6
  store double %p_add42.i118.us.us.6, double* %scevgep251252.us.us.6, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.6 = add nuw nsw i64 %polly.indvar236.us.us.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar236.us.us.6, %smin
  br i1 %exitcond.6.not, label %polly.loop_exit234.loopexit.us.us.6, label %polly.loop_header232.us.us.6

polly.loop_exit234.loopexit.us.us.6:              ; preds = %polly.loop_header232.us.us.6
  %357 = add i64 %119, %126
  %scevgep242.us.us.7 = getelementptr i8, i8* %call2, i64 %357
  %scevgep242243.us.us.7 = bitcast i8* %scevgep242.us.us.7 to double*
  %_p_scalar_244.us.us.7 = load double, double* %scevgep242243.us.us.7, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.7 = getelementptr i8, i8* %call1, i64 %357
  %scevgep248249.us.us.7 = bitcast i8* %scevgep248.us.us.7 to double*
  %_p_scalar_250.us.us.7 = load double, double* %scevgep248249.us.us.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.7

polly.loop_header232.us.us.7:                     ; preds = %polly.loop_header232.us.us.7, %polly.loop_exit234.loopexit.us.us.6
  %polly.indvar236.us.us.7 = phi i64 [ %polly.indvar_next237.us.us.7, %polly.loop_header232.us.us.7 ], [ 0, %polly.loop_exit234.loopexit.us.us.6 ]
  %358 = add nuw nsw i64 %polly.indvar236.us.us.7, %120
  %359 = mul nuw nsw i64 %358, 8000
  %360 = add nuw nsw i64 %359, %119
  %scevgep239.us.us.7 = getelementptr i8, i8* %call1, i64 %360
  %scevgep239240.us.us.7 = bitcast i8* %scevgep239.us.us.7 to double*
  %_p_scalar_241.us.us.7 = load double, double* %scevgep239240.us.us.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.7 = fmul fast double %_p_scalar_244.us.us.7, %_p_scalar_241.us.us.7
  %scevgep245.us.us.7 = getelementptr i8, i8* %call2, i64 %360
  %scevgep245246.us.us.7 = bitcast i8* %scevgep245.us.us.7 to double*
  %_p_scalar_247.us.us.7 = load double, double* %scevgep245246.us.us.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.7 = fmul fast double %_p_scalar_250.us.us.7, %_p_scalar_247.us.us.7
  %361 = shl i64 %358, 3
  %362 = add i64 %361, %127
  %scevgep251.us.us.7 = getelementptr i8, i8* %call, i64 %362
  %scevgep251252.us.us.7 = bitcast i8* %scevgep251.us.us.7 to double*
  %_p_scalar_253.us.us.7 = load double, double* %scevgep251252.us.us.7, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.7 = fadd fast double %p_mul37.i114.us.us.7, %p_mul27.i112.us.us.7
  %p_reass.mul.i117.us.us.7 = fmul fast double %p_reass.add.i116.us.us.7, 1.500000e+00
  %p_add42.i118.us.us.7 = fadd fast double %p_reass.mul.i117.us.us.7, %_p_scalar_253.us.us.7
  store double %p_add42.i118.us.us.7, double* %scevgep251252.us.us.7, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.7 = add nuw nsw i64 %polly.indvar236.us.us.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar236.us.us.7, %smin
  br i1 %exitcond.7.not, label %polly.loop_exit227.us, label %polly.loop_header232.us.us.7

polly.loop_header392.us.us.1:                     ; preds = %polly.loop_header392.us.us.1, %polly.loop_exit394.loopexit.us.us
  %polly.indvar396.us.us.1 = phi i64 [ %polly.indvar_next397.us.us.1, %polly.loop_header392.us.us.1 ], [ 0, %polly.loop_exit394.loopexit.us.us ]
  %363 = add nuw nsw i64 %polly.indvar396.us.us.1, %169
  %364 = mul nuw nsw i64 %363, 8000
  %365 = add nuw nsw i64 %364, %157
  %scevgep399.us.us.1 = getelementptr i8, i8* %call1, i64 %365
  %scevgep399400.us.us.1 = bitcast i8* %scevgep399.us.us.1 to double*
  %_p_scalar_401.us.us.1 = load double, double* %scevgep399400.us.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.1 = fmul fast double %_p_scalar_404.us.us.1, %_p_scalar_401.us.us.1
  %scevgep405.us.us.1 = getelementptr i8, i8* %call2, i64 %365
  %scevgep405406.us.us.1 = bitcast i8* %scevgep405.us.us.1 to double*
  %_p_scalar_407.us.us.1 = load double, double* %scevgep405406.us.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.1 = fmul fast double %_p_scalar_410.us.us.1, %_p_scalar_407.us.us.1
  %366 = shl i64 %363, 3
  %367 = add i64 %366, %176
  %scevgep411.us.us.1 = getelementptr i8, i8* %call, i64 %367
  %scevgep411412.us.us.1 = bitcast i8* %scevgep411.us.us.1 to double*
  %_p_scalar_413.us.us.1 = load double, double* %scevgep411412.us.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.1 = fadd fast double %p_mul37.i75.us.us.1, %p_mul27.i73.us.us.1
  %p_reass.mul.i78.us.us.1 = fmul fast double %p_reass.add.i77.us.us.1, 1.500000e+00
  %p_add42.i79.us.us.1 = fadd fast double %p_reass.mul.i78.us.us.1, %_p_scalar_413.us.us.1
  store double %p_add42.i79.us.us.1, double* %scevgep411412.us.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.1 = add nuw nsw i64 %polly.indvar396.us.us.1, 1
  %exitcond925.1.not = icmp eq i64 %polly.indvar396.us.us.1, %smin924
  br i1 %exitcond925.1.not, label %polly.loop_exit394.loopexit.us.us.1, label %polly.loop_header392.us.us.1

polly.loop_exit394.loopexit.us.us.1:              ; preds = %polly.loop_header392.us.us.1
  %368 = add i64 %159, %175
  %scevgep402.us.us.2 = getelementptr i8, i8* %call2, i64 %368
  %scevgep402403.us.us.2 = bitcast i8* %scevgep402.us.us.2 to double*
  %_p_scalar_404.us.us.2 = load double, double* %scevgep402403.us.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.2 = getelementptr i8, i8* %call1, i64 %368
  %scevgep408409.us.us.2 = bitcast i8* %scevgep408.us.us.2 to double*
  %_p_scalar_410.us.us.2 = load double, double* %scevgep408409.us.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.2

polly.loop_header392.us.us.2:                     ; preds = %polly.loop_header392.us.us.2, %polly.loop_exit394.loopexit.us.us.1
  %polly.indvar396.us.us.2 = phi i64 [ %polly.indvar_next397.us.us.2, %polly.loop_header392.us.us.2 ], [ 0, %polly.loop_exit394.loopexit.us.us.1 ]
  %369 = add nuw nsw i64 %polly.indvar396.us.us.2, %169
  %370 = mul nuw nsw i64 %369, 8000
  %371 = add nuw nsw i64 %370, %159
  %scevgep399.us.us.2 = getelementptr i8, i8* %call1, i64 %371
  %scevgep399400.us.us.2 = bitcast i8* %scevgep399.us.us.2 to double*
  %_p_scalar_401.us.us.2 = load double, double* %scevgep399400.us.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.2 = fmul fast double %_p_scalar_404.us.us.2, %_p_scalar_401.us.us.2
  %scevgep405.us.us.2 = getelementptr i8, i8* %call2, i64 %371
  %scevgep405406.us.us.2 = bitcast i8* %scevgep405.us.us.2 to double*
  %_p_scalar_407.us.us.2 = load double, double* %scevgep405406.us.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.2 = fmul fast double %_p_scalar_410.us.us.2, %_p_scalar_407.us.us.2
  %372 = shl i64 %369, 3
  %373 = add i64 %372, %176
  %scevgep411.us.us.2 = getelementptr i8, i8* %call, i64 %373
  %scevgep411412.us.us.2 = bitcast i8* %scevgep411.us.us.2 to double*
  %_p_scalar_413.us.us.2 = load double, double* %scevgep411412.us.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.2 = fadd fast double %p_mul37.i75.us.us.2, %p_mul27.i73.us.us.2
  %p_reass.mul.i78.us.us.2 = fmul fast double %p_reass.add.i77.us.us.2, 1.500000e+00
  %p_add42.i79.us.us.2 = fadd fast double %p_reass.mul.i78.us.us.2, %_p_scalar_413.us.us.2
  store double %p_add42.i79.us.us.2, double* %scevgep411412.us.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.2 = add nuw nsw i64 %polly.indvar396.us.us.2, 1
  %exitcond925.2.not = icmp eq i64 %polly.indvar396.us.us.2, %smin924
  br i1 %exitcond925.2.not, label %polly.loop_exit394.loopexit.us.us.2, label %polly.loop_header392.us.us.2

polly.loop_exit394.loopexit.us.us.2:              ; preds = %polly.loop_header392.us.us.2
  %374 = add i64 %161, %175
  %scevgep402.us.us.3 = getelementptr i8, i8* %call2, i64 %374
  %scevgep402403.us.us.3 = bitcast i8* %scevgep402.us.us.3 to double*
  %_p_scalar_404.us.us.3 = load double, double* %scevgep402403.us.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.3 = getelementptr i8, i8* %call1, i64 %374
  %scevgep408409.us.us.3 = bitcast i8* %scevgep408.us.us.3 to double*
  %_p_scalar_410.us.us.3 = load double, double* %scevgep408409.us.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.3

polly.loop_header392.us.us.3:                     ; preds = %polly.loop_header392.us.us.3, %polly.loop_exit394.loopexit.us.us.2
  %polly.indvar396.us.us.3 = phi i64 [ %polly.indvar_next397.us.us.3, %polly.loop_header392.us.us.3 ], [ 0, %polly.loop_exit394.loopexit.us.us.2 ]
  %375 = add nuw nsw i64 %polly.indvar396.us.us.3, %169
  %376 = mul nuw nsw i64 %375, 8000
  %377 = add nuw nsw i64 %376, %161
  %scevgep399.us.us.3 = getelementptr i8, i8* %call1, i64 %377
  %scevgep399400.us.us.3 = bitcast i8* %scevgep399.us.us.3 to double*
  %_p_scalar_401.us.us.3 = load double, double* %scevgep399400.us.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.3 = fmul fast double %_p_scalar_404.us.us.3, %_p_scalar_401.us.us.3
  %scevgep405.us.us.3 = getelementptr i8, i8* %call2, i64 %377
  %scevgep405406.us.us.3 = bitcast i8* %scevgep405.us.us.3 to double*
  %_p_scalar_407.us.us.3 = load double, double* %scevgep405406.us.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.3 = fmul fast double %_p_scalar_410.us.us.3, %_p_scalar_407.us.us.3
  %378 = shl i64 %375, 3
  %379 = add i64 %378, %176
  %scevgep411.us.us.3 = getelementptr i8, i8* %call, i64 %379
  %scevgep411412.us.us.3 = bitcast i8* %scevgep411.us.us.3 to double*
  %_p_scalar_413.us.us.3 = load double, double* %scevgep411412.us.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.3 = fadd fast double %p_mul37.i75.us.us.3, %p_mul27.i73.us.us.3
  %p_reass.mul.i78.us.us.3 = fmul fast double %p_reass.add.i77.us.us.3, 1.500000e+00
  %p_add42.i79.us.us.3 = fadd fast double %p_reass.mul.i78.us.us.3, %_p_scalar_413.us.us.3
  store double %p_add42.i79.us.us.3, double* %scevgep411412.us.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.3 = add nuw nsw i64 %polly.indvar396.us.us.3, 1
  %exitcond925.3.not = icmp eq i64 %polly.indvar396.us.us.3, %smin924
  br i1 %exitcond925.3.not, label %polly.loop_exit394.loopexit.us.us.3, label %polly.loop_header392.us.us.3

polly.loop_exit394.loopexit.us.us.3:              ; preds = %polly.loop_header392.us.us.3
  %380 = add i64 %163, %175
  %scevgep402.us.us.4 = getelementptr i8, i8* %call2, i64 %380
  %scevgep402403.us.us.4 = bitcast i8* %scevgep402.us.us.4 to double*
  %_p_scalar_404.us.us.4 = load double, double* %scevgep402403.us.us.4, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.4 = getelementptr i8, i8* %call1, i64 %380
  %scevgep408409.us.us.4 = bitcast i8* %scevgep408.us.us.4 to double*
  %_p_scalar_410.us.us.4 = load double, double* %scevgep408409.us.us.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.4

polly.loop_header392.us.us.4:                     ; preds = %polly.loop_header392.us.us.4, %polly.loop_exit394.loopexit.us.us.3
  %polly.indvar396.us.us.4 = phi i64 [ %polly.indvar_next397.us.us.4, %polly.loop_header392.us.us.4 ], [ 0, %polly.loop_exit394.loopexit.us.us.3 ]
  %381 = add nuw nsw i64 %polly.indvar396.us.us.4, %169
  %382 = mul nuw nsw i64 %381, 8000
  %383 = add nuw nsw i64 %382, %163
  %scevgep399.us.us.4 = getelementptr i8, i8* %call1, i64 %383
  %scevgep399400.us.us.4 = bitcast i8* %scevgep399.us.us.4 to double*
  %_p_scalar_401.us.us.4 = load double, double* %scevgep399400.us.us.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.4 = fmul fast double %_p_scalar_404.us.us.4, %_p_scalar_401.us.us.4
  %scevgep405.us.us.4 = getelementptr i8, i8* %call2, i64 %383
  %scevgep405406.us.us.4 = bitcast i8* %scevgep405.us.us.4 to double*
  %_p_scalar_407.us.us.4 = load double, double* %scevgep405406.us.us.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.4 = fmul fast double %_p_scalar_410.us.us.4, %_p_scalar_407.us.us.4
  %384 = shl i64 %381, 3
  %385 = add i64 %384, %176
  %scevgep411.us.us.4 = getelementptr i8, i8* %call, i64 %385
  %scevgep411412.us.us.4 = bitcast i8* %scevgep411.us.us.4 to double*
  %_p_scalar_413.us.us.4 = load double, double* %scevgep411412.us.us.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.4 = fadd fast double %p_mul37.i75.us.us.4, %p_mul27.i73.us.us.4
  %p_reass.mul.i78.us.us.4 = fmul fast double %p_reass.add.i77.us.us.4, 1.500000e+00
  %p_add42.i79.us.us.4 = fadd fast double %p_reass.mul.i78.us.us.4, %_p_scalar_413.us.us.4
  store double %p_add42.i79.us.us.4, double* %scevgep411412.us.us.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.4 = add nuw nsw i64 %polly.indvar396.us.us.4, 1
  %exitcond925.4.not = icmp eq i64 %polly.indvar396.us.us.4, %smin924
  br i1 %exitcond925.4.not, label %polly.loop_exit394.loopexit.us.us.4, label %polly.loop_header392.us.us.4

polly.loop_exit394.loopexit.us.us.4:              ; preds = %polly.loop_header392.us.us.4
  %386 = add i64 %165, %175
  %scevgep402.us.us.5 = getelementptr i8, i8* %call2, i64 %386
  %scevgep402403.us.us.5 = bitcast i8* %scevgep402.us.us.5 to double*
  %_p_scalar_404.us.us.5 = load double, double* %scevgep402403.us.us.5, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.5 = getelementptr i8, i8* %call1, i64 %386
  %scevgep408409.us.us.5 = bitcast i8* %scevgep408.us.us.5 to double*
  %_p_scalar_410.us.us.5 = load double, double* %scevgep408409.us.us.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.5

polly.loop_header392.us.us.5:                     ; preds = %polly.loop_header392.us.us.5, %polly.loop_exit394.loopexit.us.us.4
  %polly.indvar396.us.us.5 = phi i64 [ %polly.indvar_next397.us.us.5, %polly.loop_header392.us.us.5 ], [ 0, %polly.loop_exit394.loopexit.us.us.4 ]
  %387 = add nuw nsw i64 %polly.indvar396.us.us.5, %169
  %388 = mul nuw nsw i64 %387, 8000
  %389 = add nuw nsw i64 %388, %165
  %scevgep399.us.us.5 = getelementptr i8, i8* %call1, i64 %389
  %scevgep399400.us.us.5 = bitcast i8* %scevgep399.us.us.5 to double*
  %_p_scalar_401.us.us.5 = load double, double* %scevgep399400.us.us.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.5 = fmul fast double %_p_scalar_404.us.us.5, %_p_scalar_401.us.us.5
  %scevgep405.us.us.5 = getelementptr i8, i8* %call2, i64 %389
  %scevgep405406.us.us.5 = bitcast i8* %scevgep405.us.us.5 to double*
  %_p_scalar_407.us.us.5 = load double, double* %scevgep405406.us.us.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.5 = fmul fast double %_p_scalar_410.us.us.5, %_p_scalar_407.us.us.5
  %390 = shl i64 %387, 3
  %391 = add i64 %390, %176
  %scevgep411.us.us.5 = getelementptr i8, i8* %call, i64 %391
  %scevgep411412.us.us.5 = bitcast i8* %scevgep411.us.us.5 to double*
  %_p_scalar_413.us.us.5 = load double, double* %scevgep411412.us.us.5, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.5 = fadd fast double %p_mul37.i75.us.us.5, %p_mul27.i73.us.us.5
  %p_reass.mul.i78.us.us.5 = fmul fast double %p_reass.add.i77.us.us.5, 1.500000e+00
  %p_add42.i79.us.us.5 = fadd fast double %p_reass.mul.i78.us.us.5, %_p_scalar_413.us.us.5
  store double %p_add42.i79.us.us.5, double* %scevgep411412.us.us.5, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.5 = add nuw nsw i64 %polly.indvar396.us.us.5, 1
  %exitcond925.5.not = icmp eq i64 %polly.indvar396.us.us.5, %smin924
  br i1 %exitcond925.5.not, label %polly.loop_exit394.loopexit.us.us.5, label %polly.loop_header392.us.us.5

polly.loop_exit394.loopexit.us.us.5:              ; preds = %polly.loop_header392.us.us.5
  %392 = add i64 %167, %175
  %scevgep402.us.us.6 = getelementptr i8, i8* %call2, i64 %392
  %scevgep402403.us.us.6 = bitcast i8* %scevgep402.us.us.6 to double*
  %_p_scalar_404.us.us.6 = load double, double* %scevgep402403.us.us.6, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.6 = getelementptr i8, i8* %call1, i64 %392
  %scevgep408409.us.us.6 = bitcast i8* %scevgep408.us.us.6 to double*
  %_p_scalar_410.us.us.6 = load double, double* %scevgep408409.us.us.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.6

polly.loop_header392.us.us.6:                     ; preds = %polly.loop_header392.us.us.6, %polly.loop_exit394.loopexit.us.us.5
  %polly.indvar396.us.us.6 = phi i64 [ %polly.indvar_next397.us.us.6, %polly.loop_header392.us.us.6 ], [ 0, %polly.loop_exit394.loopexit.us.us.5 ]
  %393 = add nuw nsw i64 %polly.indvar396.us.us.6, %169
  %394 = mul nuw nsw i64 %393, 8000
  %395 = add nuw nsw i64 %394, %167
  %scevgep399.us.us.6 = getelementptr i8, i8* %call1, i64 %395
  %scevgep399400.us.us.6 = bitcast i8* %scevgep399.us.us.6 to double*
  %_p_scalar_401.us.us.6 = load double, double* %scevgep399400.us.us.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.6 = fmul fast double %_p_scalar_404.us.us.6, %_p_scalar_401.us.us.6
  %scevgep405.us.us.6 = getelementptr i8, i8* %call2, i64 %395
  %scevgep405406.us.us.6 = bitcast i8* %scevgep405.us.us.6 to double*
  %_p_scalar_407.us.us.6 = load double, double* %scevgep405406.us.us.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.6 = fmul fast double %_p_scalar_410.us.us.6, %_p_scalar_407.us.us.6
  %396 = shl i64 %393, 3
  %397 = add i64 %396, %176
  %scevgep411.us.us.6 = getelementptr i8, i8* %call, i64 %397
  %scevgep411412.us.us.6 = bitcast i8* %scevgep411.us.us.6 to double*
  %_p_scalar_413.us.us.6 = load double, double* %scevgep411412.us.us.6, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.6 = fadd fast double %p_mul37.i75.us.us.6, %p_mul27.i73.us.us.6
  %p_reass.mul.i78.us.us.6 = fmul fast double %p_reass.add.i77.us.us.6, 1.500000e+00
  %p_add42.i79.us.us.6 = fadd fast double %p_reass.mul.i78.us.us.6, %_p_scalar_413.us.us.6
  store double %p_add42.i79.us.us.6, double* %scevgep411412.us.us.6, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.6 = add nuw nsw i64 %polly.indvar396.us.us.6, 1
  %exitcond925.6.not = icmp eq i64 %polly.indvar396.us.us.6, %smin924
  br i1 %exitcond925.6.not, label %polly.loop_exit394.loopexit.us.us.6, label %polly.loop_header392.us.us.6

polly.loop_exit394.loopexit.us.us.6:              ; preds = %polly.loop_header392.us.us.6
  %398 = add i64 %168, %175
  %scevgep402.us.us.7 = getelementptr i8, i8* %call2, i64 %398
  %scevgep402403.us.us.7 = bitcast i8* %scevgep402.us.us.7 to double*
  %_p_scalar_404.us.us.7 = load double, double* %scevgep402403.us.us.7, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.7 = getelementptr i8, i8* %call1, i64 %398
  %scevgep408409.us.us.7 = bitcast i8* %scevgep408.us.us.7 to double*
  %_p_scalar_410.us.us.7 = load double, double* %scevgep408409.us.us.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.7

polly.loop_header392.us.us.7:                     ; preds = %polly.loop_header392.us.us.7, %polly.loop_exit394.loopexit.us.us.6
  %polly.indvar396.us.us.7 = phi i64 [ %polly.indvar_next397.us.us.7, %polly.loop_header392.us.us.7 ], [ 0, %polly.loop_exit394.loopexit.us.us.6 ]
  %399 = add nuw nsw i64 %polly.indvar396.us.us.7, %169
  %400 = mul nuw nsw i64 %399, 8000
  %401 = add nuw nsw i64 %400, %168
  %scevgep399.us.us.7 = getelementptr i8, i8* %call1, i64 %401
  %scevgep399400.us.us.7 = bitcast i8* %scevgep399.us.us.7 to double*
  %_p_scalar_401.us.us.7 = load double, double* %scevgep399400.us.us.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.7 = fmul fast double %_p_scalar_404.us.us.7, %_p_scalar_401.us.us.7
  %scevgep405.us.us.7 = getelementptr i8, i8* %call2, i64 %401
  %scevgep405406.us.us.7 = bitcast i8* %scevgep405.us.us.7 to double*
  %_p_scalar_407.us.us.7 = load double, double* %scevgep405406.us.us.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.7 = fmul fast double %_p_scalar_410.us.us.7, %_p_scalar_407.us.us.7
  %402 = shl i64 %399, 3
  %403 = add i64 %402, %176
  %scevgep411.us.us.7 = getelementptr i8, i8* %call, i64 %403
  %scevgep411412.us.us.7 = bitcast i8* %scevgep411.us.us.7 to double*
  %_p_scalar_413.us.us.7 = load double, double* %scevgep411412.us.us.7, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.7 = fadd fast double %p_mul37.i75.us.us.7, %p_mul27.i73.us.us.7
  %p_reass.mul.i78.us.us.7 = fmul fast double %p_reass.add.i77.us.us.7, 1.500000e+00
  %p_add42.i79.us.us.7 = fadd fast double %p_reass.mul.i78.us.us.7, %_p_scalar_413.us.us.7
  store double %p_add42.i79.us.us.7, double* %scevgep411412.us.us.7, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.7 = add nuw nsw i64 %polly.indvar396.us.us.7, 1
  %exitcond925.7.not = icmp eq i64 %polly.indvar396.us.us.7, %smin924
  br i1 %exitcond925.7.not, label %polly.loop_exit387.us, label %polly.loop_header392.us.us.7

polly.loop_header552.us.us.1:                     ; preds = %polly.loop_header552.us.us.1, %polly.loop_exit554.loopexit.us.us
  %polly.indvar556.us.us.1 = phi i64 [ %polly.indvar_next557.us.us.1, %polly.loop_header552.us.us.1 ], [ 0, %polly.loop_exit554.loopexit.us.us ]
  %404 = add nuw nsw i64 %polly.indvar556.us.us.1, %218
  %405 = mul nuw nsw i64 %404, 8000
  %406 = add nuw nsw i64 %405, %206
  %scevgep559.us.us.1 = getelementptr i8, i8* %call1, i64 %406
  %scevgep559560.us.us.1 = bitcast i8* %scevgep559.us.us.1 to double*
  %_p_scalar_561.us.us.1 = load double, double* %scevgep559560.us.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.1 = fmul fast double %_p_scalar_564.us.us.1, %_p_scalar_561.us.us.1
  %scevgep565.us.us.1 = getelementptr i8, i8* %call2, i64 %406
  %scevgep565566.us.us.1 = bitcast i8* %scevgep565.us.us.1 to double*
  %_p_scalar_567.us.us.1 = load double, double* %scevgep565566.us.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.1 = fmul fast double %_p_scalar_570.us.us.1, %_p_scalar_567.us.us.1
  %407 = shl i64 %404, 3
  %408 = add i64 %407, %225
  %scevgep571.us.us.1 = getelementptr i8, i8* %call, i64 %408
  %scevgep571572.us.us.1 = bitcast i8* %scevgep571.us.us.1 to double*
  %_p_scalar_573.us.us.1 = load double, double* %scevgep571572.us.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.1 = fadd fast double %p_mul37.i.us.us.1, %p_mul27.i.us.us.1
  %p_reass.mul.i.us.us.1 = fmul fast double %p_reass.add.i.us.us.1, 1.500000e+00
  %p_add42.i.us.us.1 = fadd fast double %p_reass.mul.i.us.us.1, %_p_scalar_573.us.us.1
  store double %p_add42.i.us.us.1, double* %scevgep571572.us.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.1 = add nuw nsw i64 %polly.indvar556.us.us.1, 1
  %exitcond946.1.not = icmp eq i64 %polly.indvar556.us.us.1, %smin945
  br i1 %exitcond946.1.not, label %polly.loop_exit554.loopexit.us.us.1, label %polly.loop_header552.us.us.1

polly.loop_exit554.loopexit.us.us.1:              ; preds = %polly.loop_header552.us.us.1
  %409 = add i64 %208, %224
  %scevgep562.us.us.2 = getelementptr i8, i8* %call2, i64 %409
  %scevgep562563.us.us.2 = bitcast i8* %scevgep562.us.us.2 to double*
  %_p_scalar_564.us.us.2 = load double, double* %scevgep562563.us.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.2 = getelementptr i8, i8* %call1, i64 %409
  %scevgep568569.us.us.2 = bitcast i8* %scevgep568.us.us.2 to double*
  %_p_scalar_570.us.us.2 = load double, double* %scevgep568569.us.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.2

polly.loop_header552.us.us.2:                     ; preds = %polly.loop_header552.us.us.2, %polly.loop_exit554.loopexit.us.us.1
  %polly.indvar556.us.us.2 = phi i64 [ %polly.indvar_next557.us.us.2, %polly.loop_header552.us.us.2 ], [ 0, %polly.loop_exit554.loopexit.us.us.1 ]
  %410 = add nuw nsw i64 %polly.indvar556.us.us.2, %218
  %411 = mul nuw nsw i64 %410, 8000
  %412 = add nuw nsw i64 %411, %208
  %scevgep559.us.us.2 = getelementptr i8, i8* %call1, i64 %412
  %scevgep559560.us.us.2 = bitcast i8* %scevgep559.us.us.2 to double*
  %_p_scalar_561.us.us.2 = load double, double* %scevgep559560.us.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.2 = fmul fast double %_p_scalar_564.us.us.2, %_p_scalar_561.us.us.2
  %scevgep565.us.us.2 = getelementptr i8, i8* %call2, i64 %412
  %scevgep565566.us.us.2 = bitcast i8* %scevgep565.us.us.2 to double*
  %_p_scalar_567.us.us.2 = load double, double* %scevgep565566.us.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.2 = fmul fast double %_p_scalar_570.us.us.2, %_p_scalar_567.us.us.2
  %413 = shl i64 %410, 3
  %414 = add i64 %413, %225
  %scevgep571.us.us.2 = getelementptr i8, i8* %call, i64 %414
  %scevgep571572.us.us.2 = bitcast i8* %scevgep571.us.us.2 to double*
  %_p_scalar_573.us.us.2 = load double, double* %scevgep571572.us.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.2 = fadd fast double %p_mul37.i.us.us.2, %p_mul27.i.us.us.2
  %p_reass.mul.i.us.us.2 = fmul fast double %p_reass.add.i.us.us.2, 1.500000e+00
  %p_add42.i.us.us.2 = fadd fast double %p_reass.mul.i.us.us.2, %_p_scalar_573.us.us.2
  store double %p_add42.i.us.us.2, double* %scevgep571572.us.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.2 = add nuw nsw i64 %polly.indvar556.us.us.2, 1
  %exitcond946.2.not = icmp eq i64 %polly.indvar556.us.us.2, %smin945
  br i1 %exitcond946.2.not, label %polly.loop_exit554.loopexit.us.us.2, label %polly.loop_header552.us.us.2

polly.loop_exit554.loopexit.us.us.2:              ; preds = %polly.loop_header552.us.us.2
  %415 = add i64 %210, %224
  %scevgep562.us.us.3 = getelementptr i8, i8* %call2, i64 %415
  %scevgep562563.us.us.3 = bitcast i8* %scevgep562.us.us.3 to double*
  %_p_scalar_564.us.us.3 = load double, double* %scevgep562563.us.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.3 = getelementptr i8, i8* %call1, i64 %415
  %scevgep568569.us.us.3 = bitcast i8* %scevgep568.us.us.3 to double*
  %_p_scalar_570.us.us.3 = load double, double* %scevgep568569.us.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.3

polly.loop_header552.us.us.3:                     ; preds = %polly.loop_header552.us.us.3, %polly.loop_exit554.loopexit.us.us.2
  %polly.indvar556.us.us.3 = phi i64 [ %polly.indvar_next557.us.us.3, %polly.loop_header552.us.us.3 ], [ 0, %polly.loop_exit554.loopexit.us.us.2 ]
  %416 = add nuw nsw i64 %polly.indvar556.us.us.3, %218
  %417 = mul nuw nsw i64 %416, 8000
  %418 = add nuw nsw i64 %417, %210
  %scevgep559.us.us.3 = getelementptr i8, i8* %call1, i64 %418
  %scevgep559560.us.us.3 = bitcast i8* %scevgep559.us.us.3 to double*
  %_p_scalar_561.us.us.3 = load double, double* %scevgep559560.us.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.3 = fmul fast double %_p_scalar_564.us.us.3, %_p_scalar_561.us.us.3
  %scevgep565.us.us.3 = getelementptr i8, i8* %call2, i64 %418
  %scevgep565566.us.us.3 = bitcast i8* %scevgep565.us.us.3 to double*
  %_p_scalar_567.us.us.3 = load double, double* %scevgep565566.us.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.3 = fmul fast double %_p_scalar_570.us.us.3, %_p_scalar_567.us.us.3
  %419 = shl i64 %416, 3
  %420 = add i64 %419, %225
  %scevgep571.us.us.3 = getelementptr i8, i8* %call, i64 %420
  %scevgep571572.us.us.3 = bitcast i8* %scevgep571.us.us.3 to double*
  %_p_scalar_573.us.us.3 = load double, double* %scevgep571572.us.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.3 = fadd fast double %p_mul37.i.us.us.3, %p_mul27.i.us.us.3
  %p_reass.mul.i.us.us.3 = fmul fast double %p_reass.add.i.us.us.3, 1.500000e+00
  %p_add42.i.us.us.3 = fadd fast double %p_reass.mul.i.us.us.3, %_p_scalar_573.us.us.3
  store double %p_add42.i.us.us.3, double* %scevgep571572.us.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.3 = add nuw nsw i64 %polly.indvar556.us.us.3, 1
  %exitcond946.3.not = icmp eq i64 %polly.indvar556.us.us.3, %smin945
  br i1 %exitcond946.3.not, label %polly.loop_exit554.loopexit.us.us.3, label %polly.loop_header552.us.us.3

polly.loop_exit554.loopexit.us.us.3:              ; preds = %polly.loop_header552.us.us.3
  %421 = add i64 %212, %224
  %scevgep562.us.us.4 = getelementptr i8, i8* %call2, i64 %421
  %scevgep562563.us.us.4 = bitcast i8* %scevgep562.us.us.4 to double*
  %_p_scalar_564.us.us.4 = load double, double* %scevgep562563.us.us.4, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.4 = getelementptr i8, i8* %call1, i64 %421
  %scevgep568569.us.us.4 = bitcast i8* %scevgep568.us.us.4 to double*
  %_p_scalar_570.us.us.4 = load double, double* %scevgep568569.us.us.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.4

polly.loop_header552.us.us.4:                     ; preds = %polly.loop_header552.us.us.4, %polly.loop_exit554.loopexit.us.us.3
  %polly.indvar556.us.us.4 = phi i64 [ %polly.indvar_next557.us.us.4, %polly.loop_header552.us.us.4 ], [ 0, %polly.loop_exit554.loopexit.us.us.3 ]
  %422 = add nuw nsw i64 %polly.indvar556.us.us.4, %218
  %423 = mul nuw nsw i64 %422, 8000
  %424 = add nuw nsw i64 %423, %212
  %scevgep559.us.us.4 = getelementptr i8, i8* %call1, i64 %424
  %scevgep559560.us.us.4 = bitcast i8* %scevgep559.us.us.4 to double*
  %_p_scalar_561.us.us.4 = load double, double* %scevgep559560.us.us.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.4 = fmul fast double %_p_scalar_564.us.us.4, %_p_scalar_561.us.us.4
  %scevgep565.us.us.4 = getelementptr i8, i8* %call2, i64 %424
  %scevgep565566.us.us.4 = bitcast i8* %scevgep565.us.us.4 to double*
  %_p_scalar_567.us.us.4 = load double, double* %scevgep565566.us.us.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.4 = fmul fast double %_p_scalar_570.us.us.4, %_p_scalar_567.us.us.4
  %425 = shl i64 %422, 3
  %426 = add i64 %425, %225
  %scevgep571.us.us.4 = getelementptr i8, i8* %call, i64 %426
  %scevgep571572.us.us.4 = bitcast i8* %scevgep571.us.us.4 to double*
  %_p_scalar_573.us.us.4 = load double, double* %scevgep571572.us.us.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.4 = fadd fast double %p_mul37.i.us.us.4, %p_mul27.i.us.us.4
  %p_reass.mul.i.us.us.4 = fmul fast double %p_reass.add.i.us.us.4, 1.500000e+00
  %p_add42.i.us.us.4 = fadd fast double %p_reass.mul.i.us.us.4, %_p_scalar_573.us.us.4
  store double %p_add42.i.us.us.4, double* %scevgep571572.us.us.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.4 = add nuw nsw i64 %polly.indvar556.us.us.4, 1
  %exitcond946.4.not = icmp eq i64 %polly.indvar556.us.us.4, %smin945
  br i1 %exitcond946.4.not, label %polly.loop_exit554.loopexit.us.us.4, label %polly.loop_header552.us.us.4

polly.loop_exit554.loopexit.us.us.4:              ; preds = %polly.loop_header552.us.us.4
  %427 = add i64 %214, %224
  %scevgep562.us.us.5 = getelementptr i8, i8* %call2, i64 %427
  %scevgep562563.us.us.5 = bitcast i8* %scevgep562.us.us.5 to double*
  %_p_scalar_564.us.us.5 = load double, double* %scevgep562563.us.us.5, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.5 = getelementptr i8, i8* %call1, i64 %427
  %scevgep568569.us.us.5 = bitcast i8* %scevgep568.us.us.5 to double*
  %_p_scalar_570.us.us.5 = load double, double* %scevgep568569.us.us.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.5

polly.loop_header552.us.us.5:                     ; preds = %polly.loop_header552.us.us.5, %polly.loop_exit554.loopexit.us.us.4
  %polly.indvar556.us.us.5 = phi i64 [ %polly.indvar_next557.us.us.5, %polly.loop_header552.us.us.5 ], [ 0, %polly.loop_exit554.loopexit.us.us.4 ]
  %428 = add nuw nsw i64 %polly.indvar556.us.us.5, %218
  %429 = mul nuw nsw i64 %428, 8000
  %430 = add nuw nsw i64 %429, %214
  %scevgep559.us.us.5 = getelementptr i8, i8* %call1, i64 %430
  %scevgep559560.us.us.5 = bitcast i8* %scevgep559.us.us.5 to double*
  %_p_scalar_561.us.us.5 = load double, double* %scevgep559560.us.us.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.5 = fmul fast double %_p_scalar_564.us.us.5, %_p_scalar_561.us.us.5
  %scevgep565.us.us.5 = getelementptr i8, i8* %call2, i64 %430
  %scevgep565566.us.us.5 = bitcast i8* %scevgep565.us.us.5 to double*
  %_p_scalar_567.us.us.5 = load double, double* %scevgep565566.us.us.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.5 = fmul fast double %_p_scalar_570.us.us.5, %_p_scalar_567.us.us.5
  %431 = shl i64 %428, 3
  %432 = add i64 %431, %225
  %scevgep571.us.us.5 = getelementptr i8, i8* %call, i64 %432
  %scevgep571572.us.us.5 = bitcast i8* %scevgep571.us.us.5 to double*
  %_p_scalar_573.us.us.5 = load double, double* %scevgep571572.us.us.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.5 = fadd fast double %p_mul37.i.us.us.5, %p_mul27.i.us.us.5
  %p_reass.mul.i.us.us.5 = fmul fast double %p_reass.add.i.us.us.5, 1.500000e+00
  %p_add42.i.us.us.5 = fadd fast double %p_reass.mul.i.us.us.5, %_p_scalar_573.us.us.5
  store double %p_add42.i.us.us.5, double* %scevgep571572.us.us.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.5 = add nuw nsw i64 %polly.indvar556.us.us.5, 1
  %exitcond946.5.not = icmp eq i64 %polly.indvar556.us.us.5, %smin945
  br i1 %exitcond946.5.not, label %polly.loop_exit554.loopexit.us.us.5, label %polly.loop_header552.us.us.5

polly.loop_exit554.loopexit.us.us.5:              ; preds = %polly.loop_header552.us.us.5
  %433 = add i64 %216, %224
  %scevgep562.us.us.6 = getelementptr i8, i8* %call2, i64 %433
  %scevgep562563.us.us.6 = bitcast i8* %scevgep562.us.us.6 to double*
  %_p_scalar_564.us.us.6 = load double, double* %scevgep562563.us.us.6, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.6 = getelementptr i8, i8* %call1, i64 %433
  %scevgep568569.us.us.6 = bitcast i8* %scevgep568.us.us.6 to double*
  %_p_scalar_570.us.us.6 = load double, double* %scevgep568569.us.us.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.6

polly.loop_header552.us.us.6:                     ; preds = %polly.loop_header552.us.us.6, %polly.loop_exit554.loopexit.us.us.5
  %polly.indvar556.us.us.6 = phi i64 [ %polly.indvar_next557.us.us.6, %polly.loop_header552.us.us.6 ], [ 0, %polly.loop_exit554.loopexit.us.us.5 ]
  %434 = add nuw nsw i64 %polly.indvar556.us.us.6, %218
  %435 = mul nuw nsw i64 %434, 8000
  %436 = add nuw nsw i64 %435, %216
  %scevgep559.us.us.6 = getelementptr i8, i8* %call1, i64 %436
  %scevgep559560.us.us.6 = bitcast i8* %scevgep559.us.us.6 to double*
  %_p_scalar_561.us.us.6 = load double, double* %scevgep559560.us.us.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.6 = fmul fast double %_p_scalar_564.us.us.6, %_p_scalar_561.us.us.6
  %scevgep565.us.us.6 = getelementptr i8, i8* %call2, i64 %436
  %scevgep565566.us.us.6 = bitcast i8* %scevgep565.us.us.6 to double*
  %_p_scalar_567.us.us.6 = load double, double* %scevgep565566.us.us.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.6 = fmul fast double %_p_scalar_570.us.us.6, %_p_scalar_567.us.us.6
  %437 = shl i64 %434, 3
  %438 = add i64 %437, %225
  %scevgep571.us.us.6 = getelementptr i8, i8* %call, i64 %438
  %scevgep571572.us.us.6 = bitcast i8* %scevgep571.us.us.6 to double*
  %_p_scalar_573.us.us.6 = load double, double* %scevgep571572.us.us.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.6 = fadd fast double %p_mul37.i.us.us.6, %p_mul27.i.us.us.6
  %p_reass.mul.i.us.us.6 = fmul fast double %p_reass.add.i.us.us.6, 1.500000e+00
  %p_add42.i.us.us.6 = fadd fast double %p_reass.mul.i.us.us.6, %_p_scalar_573.us.us.6
  store double %p_add42.i.us.us.6, double* %scevgep571572.us.us.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.6 = add nuw nsw i64 %polly.indvar556.us.us.6, 1
  %exitcond946.6.not = icmp eq i64 %polly.indvar556.us.us.6, %smin945
  br i1 %exitcond946.6.not, label %polly.loop_exit554.loopexit.us.us.6, label %polly.loop_header552.us.us.6

polly.loop_exit554.loopexit.us.us.6:              ; preds = %polly.loop_header552.us.us.6
  %439 = add i64 %217, %224
  %scevgep562.us.us.7 = getelementptr i8, i8* %call2, i64 %439
  %scevgep562563.us.us.7 = bitcast i8* %scevgep562.us.us.7 to double*
  %_p_scalar_564.us.us.7 = load double, double* %scevgep562563.us.us.7, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.7 = getelementptr i8, i8* %call1, i64 %439
  %scevgep568569.us.us.7 = bitcast i8* %scevgep568.us.us.7 to double*
  %_p_scalar_570.us.us.7 = load double, double* %scevgep568569.us.us.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.7

polly.loop_header552.us.us.7:                     ; preds = %polly.loop_header552.us.us.7, %polly.loop_exit554.loopexit.us.us.6
  %polly.indvar556.us.us.7 = phi i64 [ %polly.indvar_next557.us.us.7, %polly.loop_header552.us.us.7 ], [ 0, %polly.loop_exit554.loopexit.us.us.6 ]
  %440 = add nuw nsw i64 %polly.indvar556.us.us.7, %218
  %441 = mul nuw nsw i64 %440, 8000
  %442 = add nuw nsw i64 %441, %217
  %scevgep559.us.us.7 = getelementptr i8, i8* %call1, i64 %442
  %scevgep559560.us.us.7 = bitcast i8* %scevgep559.us.us.7 to double*
  %_p_scalar_561.us.us.7 = load double, double* %scevgep559560.us.us.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.7 = fmul fast double %_p_scalar_564.us.us.7, %_p_scalar_561.us.us.7
  %scevgep565.us.us.7 = getelementptr i8, i8* %call2, i64 %442
  %scevgep565566.us.us.7 = bitcast i8* %scevgep565.us.us.7 to double*
  %_p_scalar_567.us.us.7 = load double, double* %scevgep565566.us.us.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.7 = fmul fast double %_p_scalar_570.us.us.7, %_p_scalar_567.us.us.7
  %443 = shl i64 %440, 3
  %444 = add i64 %443, %225
  %scevgep571.us.us.7 = getelementptr i8, i8* %call, i64 %444
  %scevgep571572.us.us.7 = bitcast i8* %scevgep571.us.us.7 to double*
  %_p_scalar_573.us.us.7 = load double, double* %scevgep571572.us.us.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.7 = fadd fast double %p_mul37.i.us.us.7, %p_mul27.i.us.us.7
  %p_reass.mul.i.us.us.7 = fmul fast double %p_reass.add.i.us.us.7, 1.500000e+00
  %p_add42.i.us.us.7 = fadd fast double %p_reass.mul.i.us.us.7, %_p_scalar_573.us.us.7
  store double %p_add42.i.us.us.7, double* %scevgep571572.us.us.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.7 = add nuw nsw i64 %polly.indvar556.us.us.7, 1
  %exitcond946.7.not = icmp eq i64 %polly.indvar556.us.us.7, %smin945
  br i1 %exitcond946.7.not, label %polly.loop_exit547.us, label %polly.loop_header552.us.us.7
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
!24 = !{!"llvm.loop.tile.size", i32 128}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 8}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !48}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 96}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !47}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.tile.followup_tile", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i2"}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !4, i64 0}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !60, !"polly.alias.scope.MemRef_call"}
!60 = distinct !{!60, !"polly.alias.scope.domain"}
!61 = !{!62, !63}
!62 = distinct !{!62, !60, !"polly.alias.scope.MemRef_call1"}
!63 = distinct !{!63, !60, !"polly.alias.scope.MemRef_call2"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !66, !13}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!59, !62}
!68 = !{!59, !63}
!69 = distinct !{!69, !70, !"polly.alias.scope.MemRef_call"}
!70 = distinct !{!70, !"polly.alias.scope.domain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"polly.alias.scope.MemRef_call1"}
!73 = distinct !{!73, !70, !"polly.alias.scope.MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !66, !13}
!76 = !{!69, !72}
!77 = !{!69, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !66, !13}
!85 = !{!78, !81}
!86 = !{!78, !82}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !66, !13}
!94 = !{!90, !87}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !66, !13}
!97 = !{!91, !87}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !66, !13}
