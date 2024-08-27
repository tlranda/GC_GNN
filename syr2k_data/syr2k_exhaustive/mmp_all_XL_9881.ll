; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9881.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9881.c"
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
  %scevgep1004 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1003 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1002 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1001 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1001, %scevgep1004
  %bound1 = icmp ult i8* %scevgep1003, %scevgep1002
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
  br i1 %exitcond18.not.i, label %vector.ph1008, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1008:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1015 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1016 = shufflevector <4 x i64> %broadcast.splatinsert1015, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1008
  %index1009 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1013 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1008 ], [ %vec.ind.next1014, %vector.body1007 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1013, %broadcast.splat1016
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv7.i, i64 %index1009
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1014 = add <4 x i64> %vec.ind1013, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1010, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1007, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1007
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1008, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header500, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1071 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1071, label %for.body3.i46.preheader1148, label %vector.ph1072

vector.ph1072:                                    ; preds = %for.body3.i46.preheader
  %n.vec1074 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %vector.ph1072
  %index1075 = phi i64 [ 0, %vector.ph1072 ], [ %index.next1076, %vector.body1070 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %index1075
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1076 = add i64 %index1075, 4
  %46 = icmp eq i64 %index.next1076, %n.vec1074
  br i1 %46, label %middle.block1068, label %vector.body1070, !llvm.loop !18

middle.block1068:                                 ; preds = %vector.body1070
  %cmp.n1078 = icmp eq i64 %indvars.iv21.i, %n.vec1074
  br i1 %cmp.n1078, label %for.inc6.i, label %for.body3.i46.preheader1148

for.body3.i46.preheader1148:                      ; preds = %for.body3.i46.preheader, %middle.block1068
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1074, %middle.block1068 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1148, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1148 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1068, %for.cond1.preheader.i45
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
  %min.iters.check1094 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1094, label %for.body3.i60.preheader1146, label %vector.ph1095

vector.ph1095:                                    ; preds = %for.body3.i60.preheader
  %n.vec1097 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %vector.ph1095
  %index1098 = phi i64 [ 0, %vector.ph1095 ], [ %index.next1099, %vector.body1093 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %index1098
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1102 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1102, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1099 = add i64 %index1098, 4
  %57 = icmp eq i64 %index.next1099, %n.vec1097
  br i1 %57, label %middle.block1091, label %vector.body1093, !llvm.loop !51

middle.block1091:                                 ; preds = %vector.body1093
  %cmp.n1101 = icmp eq i64 %indvars.iv21.i52, %n.vec1097
  br i1 %cmp.n1101, label %for.inc6.i63, label %for.body3.i60.preheader1146

for.body3.i60.preheader1146:                      ; preds = %for.body3.i60.preheader, %middle.block1091
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1097, %middle.block1091 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1146, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1146 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1091, %for.cond1.preheader.i54
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
  %min.iters.check1120 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1120, label %for.body3.i99.preheader1144, label %vector.ph1121

vector.ph1121:                                    ; preds = %for.body3.i99.preheader
  %n.vec1123 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %vector.ph1121
  %index1124 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1125, %vector.body1119 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %index1124
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1128 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1128, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1125 = add i64 %index1124, 4
  %68 = icmp eq i64 %index.next1125, %n.vec1123
  br i1 %68, label %middle.block1117, label %vector.body1119, !llvm.loop !53

middle.block1117:                                 ; preds = %vector.body1119
  %cmp.n1127 = icmp eq i64 %indvars.iv21.i91, %n.vec1123
  br i1 %cmp.n1127, label %for.inc6.i102, label %for.body3.i99.preheader1144

for.body3.i99.preheader1144:                      ; preds = %for.body3.i99.preheader, %middle.block1117
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1123, %middle.block1117 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1144, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1144 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1117, %for.cond1.preheader.i93
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
  %indvar1132 = phi i64 [ %indvar.next1133, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1132, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1134 = icmp ult i64 %88, 4
  br i1 %min.iters.check1134, label %polly.loop_header191.preheader, label %vector.ph1135

vector.ph1135:                                    ; preds = %polly.loop_header
  %n.vec1137 = and i64 %88, -4
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %vector.ph1135
  %index1138 = phi i64 [ 0, %vector.ph1135 ], [ %index.next1139, %vector.body1131 ]
  %90 = shl nuw nsw i64 %index1138, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1142 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1142, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1139 = add i64 %index1138, 4
  %95 = icmp eq i64 %index.next1139, %n.vec1137
  br i1 %95, label %middle.block1129, label %vector.body1131, !llvm.loop !64

middle.block1129:                                 ; preds = %vector.body1131
  %cmp.n1141 = icmp eq i64 %88, %n.vec1137
  br i1 %cmp.n1141, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1129
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1137, %middle.block1129 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1129
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1133 = add i64 %indvar1132, 1
  br i1 %exitcond911.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond910.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 9
  %98 = add nuw nsw i64 %97, 34
  %pexp.p_div_q = udiv i64 %98, 25
  %99 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 23
  %101 = select i1 %.inv, i64 %100, i64 23
  %polly.loop_guard = icmp sgt i64 %101, -1
  %102 = mul nsw i64 %polly.indvar202, -32
  %103 = icmp slt i64 %102, -1168
  %104 = select i1 %103, i64 %102, i64 -1168
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar202, 5
  br i1 %polly.loop_guard, label %polly.loop_header205.us, label %polly.loop_exit207

polly.loop_header205.us:                          ; preds = %polly.loop_header199, %polly.loop_exit213.loopexit.us
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit213.loopexit.us ], [ 0, %polly.loop_header199 ]
  %polly.indvar208.us = phi i64 [ %polly.indvar_next209.us, %polly.loop_exit213.loopexit.us ], [ 0, %polly.loop_header199 ]
  %smin905 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 -920)
  %107 = mul nuw nsw i64 %polly.indvar208.us, 80
  %108 = add nsw i64 %smin905, 999
  br label %polly.loop_header211.us

polly.loop_header211.us:                          ; preds = %polly.loop_header205.us, %polly.loop_exit220.us
  %indvars.iv899 = phi i64 [ %indvars.iv897, %polly.loop_header205.us ], [ %indvars.iv.next900, %polly.loop_exit220.us ]
  %indvars.iv895 = phi i64 [ %indvars.iv, %polly.loop_header205.us ], [ %indvars.iv.next896, %polly.loop_exit220.us ]
  %polly.indvar214.us = phi i64 [ 0, %polly.loop_header205.us ], [ %polly.indvar_next215.us, %polly.loop_exit220.us ]
  %109 = mul nsw i64 %polly.indvar214.us, 50
  %110 = add nsw i64 %109, %102
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard221.not.us = icmp sgt i64 %112, %105
  br i1 %polly.loop_guard221.not.us, label %polly.loop_exit220.us, label %polly.loop_header218.preheader.us

polly.loop_header218.us:                          ; preds = %polly.loop_header218.preheader.us, %polly.loop_exit227.us
  %indvars.iv901 = phi i64 [ %117, %polly.loop_header218.preheader.us ], [ %indvars.iv.next902, %polly.loop_exit227.us ]
  %polly.indvar222.us = phi i64 [ %112, %polly.loop_header218.preheader.us ], [ %polly.indvar_next223.us, %polly.loop_exit227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 49)
  %113 = add nsw i64 %polly.indvar222.us, %118
  %polly.loop_guard235.us990 = icmp sgt i64 %113, -1
  %114 = add nuw nsw i64 %polly.indvar222.us, %106
  %115 = mul i64 %114, 8000
  %116 = mul i64 %114, 9600
  br i1 %polly.loop_guard235.us990, label %polly.loop_header225.us.us, label %polly.loop_exit227.us

polly.loop_exit227.us:                            ; preds = %polly.loop_exit234.loopexit.us.us, %polly.loop_header218.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %polly.loop_cond224.not.not.us = icmp ult i64 %polly.indvar222.us, %105
  %indvars.iv.next902 = add i64 %indvars.iv901, 1
  br i1 %polly.loop_cond224.not.not.us, label %polly.loop_header218.us, label %polly.loop_exit220.us

polly.loop_exit220.us:                            ; preds = %polly.loop_exit227.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw i64 %polly.indvar214.us, 1
  %indvars.iv.next896 = add i64 %indvars.iv895, 50
  %indvars.iv.next900 = add i64 %indvars.iv899, -50
  %exitcond907.not = icmp eq i64 %polly.indvar214.us, %101
  br i1 %exitcond907.not, label %polly.loop_exit213.loopexit.us, label %polly.loop_header211.us

polly.loop_header218.preheader.us:                ; preds = %polly.loop_header211.us
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv895, i64 0)
  %117 = add i64 %smax, %indvars.iv899
  %118 = sub nsw i64 %106, %109
  br label %polly.loop_header218.us

polly.loop_exit213.loopexit.us:                   ; preds = %polly.loop_exit220.us
  %polly.indvar_next209.us = add nuw nsw i64 %polly.indvar208.us, 1
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -80
  %exitcond908.not = icmp eq i64 %polly.indvar_next209.us, 13
  br i1 %exitcond908.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_header225.us.us:                       ; preds = %polly.loop_header218.us, %polly.loop_exit234.loopexit.us.us
  %polly.indvar228.us.us = phi i64 [ %polly.indvar_next229.us.us, %polly.loop_exit234.loopexit.us.us ], [ 0, %polly.loop_header218.us ]
  %119 = add nuw nsw i64 %polly.indvar228.us.us, %107
  %120 = shl i64 %119, 3
  %121 = add i64 %120, %115
  %scevgep242.us.us = getelementptr i8, i8* %call2, i64 %121
  %scevgep242243.us.us = bitcast i8* %scevgep242.us.us to double*
  %_p_scalar_244.us.us = load double, double* %scevgep242243.us.us, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us = getelementptr i8, i8* %call1, i64 %121
  %scevgep248249.us.us = bitcast i8* %scevgep248.us.us to double*
  %_p_scalar_250.us.us = load double, double* %scevgep248249.us.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us

polly.loop_exit234.loopexit.us.us:                ; preds = %polly.loop_header232.us.us
  %polly.indvar_next229.us.us = add nuw nsw i64 %polly.indvar228.us.us, 1
  %exitcond906.not = icmp eq i64 %polly.indvar228.us.us, %108
  br i1 %exitcond906.not, label %polly.loop_exit227.us, label %polly.loop_header225.us.us

polly.loop_header232.us.us:                       ; preds = %polly.loop_header232.us.us, %polly.loop_header225.us.us
  %polly.indvar236.us.us = phi i64 [ %polly.indvar_next237.us.us, %polly.loop_header232.us.us ], [ 0, %polly.loop_header225.us.us ]
  %122 = add nuw nsw i64 %polly.indvar236.us.us, %109
  %123 = mul i64 %122, 8000
  %124 = add i64 %123, %120
  %scevgep239.us.us = getelementptr i8, i8* %call1, i64 %124
  %scevgep239240.us.us = bitcast i8* %scevgep239.us.us to double*
  %_p_scalar_241.us.us = load double, double* %scevgep239240.us.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us = fmul fast double %_p_scalar_244.us.us, %_p_scalar_241.us.us
  %scevgep245.us.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep245246.us.us = bitcast i8* %scevgep245.us.us to double*
  %_p_scalar_247.us.us = load double, double* %scevgep245246.us.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us = fmul fast double %_p_scalar_250.us.us, %_p_scalar_247.us.us
  %125 = shl i64 %122, 3
  %126 = add i64 %125, %116
  %scevgep251.us.us = getelementptr i8, i8* %call, i64 %126
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
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 32
  %exitcond909.not = icmp eq i64 %polly.indvar_next203, 38
  br i1 %exitcond909.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header340:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit348
  %indvar1106 = phi i64 [ %indvar.next1107, %polly.loop_exit348 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_exit348 ], [ 1, %kernel_syr2k.exit ]
  %127 = add i64 %indvar1106, 1
  %128 = mul nuw nsw i64 %polly.indvar343, 9600
  %scevgep352 = getelementptr i8, i8* %call, i64 %128
  %min.iters.check1108 = icmp ult i64 %127, 4
  br i1 %min.iters.check1108, label %polly.loop_header346.preheader, label %vector.ph1109

vector.ph1109:                                    ; preds = %polly.loop_header340
  %n.vec1111 = and i64 %127, -4
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %vector.ph1109
  %index1112 = phi i64 [ 0, %vector.ph1109 ], [ %index.next1113, %vector.body1105 ]
  %129 = shl nuw nsw i64 %index1112, 3
  %130 = getelementptr i8, i8* %scevgep352, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1116 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !69, !noalias !71
  %132 = fmul fast <4 x double> %wide.load1116, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %132, <4 x double>* %133, align 8, !alias.scope !69, !noalias !71
  %index.next1113 = add i64 %index1112, 4
  %134 = icmp eq i64 %index.next1113, %n.vec1111
  br i1 %134, label %middle.block1103, label %vector.body1105, !llvm.loop !74

middle.block1103:                                 ; preds = %vector.body1105
  %cmp.n1115 = icmp eq i64 %127, %n.vec1111
  br i1 %cmp.n1115, label %polly.loop_exit348, label %polly.loop_header346.preheader

polly.loop_header346.preheader:                   ; preds = %polly.loop_header340, %middle.block1103
  %polly.indvar349.ph = phi i64 [ 0, %polly.loop_header340 ], [ %n.vec1111, %middle.block1103 ]
  br label %polly.loop_header346

polly.loop_exit348:                               ; preds = %polly.loop_header346, %middle.block1103
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next344, 1200
  %indvar.next1107 = add i64 %indvar1106, 1
  br i1 %exitcond933.not, label %polly.loop_header356, label %polly.loop_header340

polly.loop_header346:                             ; preds = %polly.loop_header346.preheader, %polly.loop_header346
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_header346 ], [ %polly.indvar349.ph, %polly.loop_header346.preheader ]
  %135 = shl nuw nsw i64 %polly.indvar349, 3
  %scevgep353 = getelementptr i8, i8* %scevgep352, i64 %135
  %scevgep353354 = bitcast i8* %scevgep353 to double*
  %_p_scalar_355 = load double, double* %scevgep353354, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_355, 1.200000e+00
  store double %p_mul.i57, double* %scevgep353354, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next350, %polly.indvar343
  br i1 %exitcond932.not, label %polly.loop_exit348, label %polly.loop_header346, !llvm.loop !75

polly.loop_header356:                             ; preds = %polly.loop_exit348, %polly.loop_exit364
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %136 = mul nuw nsw i64 %polly.indvar359, 9
  %137 = add nuw nsw i64 %136, 34
  %pexp.p_div_q368 = udiv i64 %137, 25
  %138 = sub nsw i64 %polly.indvar359, %pexp.p_div_q368
  %139 = add nsw i64 %138, 1
  %.inv780 = icmp slt i64 %138, 23
  %140 = select i1 %.inv780, i64 %139, i64 23
  %polly.loop_guard373 = icmp sgt i64 %140, -1
  %141 = mul nsw i64 %polly.indvar359, -32
  %142 = icmp slt i64 %141, -1168
  %143 = select i1 %142, i64 %141, i64 -1168
  %144 = add nsw i64 %143, 1199
  %145 = shl nsw i64 %polly.indvar359, 5
  br i1 %polly.loop_guard373, label %polly.loop_header362.us, label %polly.loop_exit364

polly.loop_header362.us:                          ; preds = %polly.loop_header356, %polly.loop_exit372.loopexit.us
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit372.loopexit.us ], [ 0, %polly.loop_header356 ]
  %polly.indvar365.us = phi i64 [ %polly.indvar_next366.us, %polly.loop_exit372.loopexit.us ], [ 0, %polly.loop_header356 ]
  %smin927 = call i64 @llvm.smin.i64(i64 %indvars.iv925, i64 -920)
  %146 = mul nuw nsw i64 %polly.indvar365.us, 80
  %147 = add nsw i64 %smin927, 999
  br label %polly.loop_header370.us

polly.loop_header370.us:                          ; preds = %polly.loop_header362.us, %polly.loop_exit380.us
  %indvars.iv919 = phi i64 [ %indvars.iv917, %polly.loop_header362.us ], [ %indvars.iv.next920, %polly.loop_exit380.us ]
  %indvars.iv914 = phi i64 [ %indvars.iv912, %polly.loop_header362.us ], [ %indvars.iv.next915, %polly.loop_exit380.us ]
  %polly.indvar374.us = phi i64 [ 0, %polly.loop_header362.us ], [ %polly.indvar_next375.us, %polly.loop_exit380.us ]
  %148 = mul nsw i64 %polly.indvar374.us, 50
  %149 = add nsw i64 %148, %141
  %150 = icmp sgt i64 %149, 0
  %151 = select i1 %150, i64 %149, i64 0
  %polly.loop_guard381.not.us = icmp sgt i64 %151, %144
  br i1 %polly.loop_guard381.not.us, label %polly.loop_exit380.us, label %polly.loop_header378.preheader.us

polly.loop_header378.us:                          ; preds = %polly.loop_header378.preheader.us, %polly.loop_exit387.us
  %indvars.iv921 = phi i64 [ %156, %polly.loop_header378.preheader.us ], [ %indvars.iv.next922, %polly.loop_exit387.us ]
  %polly.indvar382.us = phi i64 [ %151, %polly.loop_header378.preheader.us ], [ %polly.indvar_next383.us, %polly.loop_exit387.us ]
  %smin923 = call i64 @llvm.smin.i64(i64 %indvars.iv921, i64 49)
  %152 = add nsw i64 %polly.indvar382.us, %157
  %polly.loop_guard395.us991 = icmp sgt i64 %152, -1
  %153 = add nuw nsw i64 %polly.indvar382.us, %145
  %154 = mul i64 %153, 8000
  %155 = mul i64 %153, 9600
  br i1 %polly.loop_guard395.us991, label %polly.loop_header385.us.us, label %polly.loop_exit387.us

polly.loop_exit387.us:                            ; preds = %polly.loop_exit394.loopexit.us.us, %polly.loop_header378.us
  %polly.indvar_next383.us = add nuw nsw i64 %polly.indvar382.us, 1
  %polly.loop_cond384.not.not.us = icmp ult i64 %polly.indvar382.us, %144
  %indvars.iv.next922 = add i64 %indvars.iv921, 1
  br i1 %polly.loop_cond384.not.not.us, label %polly.loop_header378.us, label %polly.loop_exit380.us

polly.loop_exit380.us:                            ; preds = %polly.loop_exit387.us, %polly.loop_header370.us
  %polly.indvar_next375.us = add nuw i64 %polly.indvar374.us, 1
  %indvars.iv.next915 = add i64 %indvars.iv914, 50
  %indvars.iv.next920 = add i64 %indvars.iv919, -50
  %exitcond929.not = icmp eq i64 %polly.indvar374.us, %140
  br i1 %exitcond929.not, label %polly.loop_exit372.loopexit.us, label %polly.loop_header370.us

polly.loop_header378.preheader.us:                ; preds = %polly.loop_header370.us
  %smax916 = call i64 @llvm.smax.i64(i64 %indvars.iv914, i64 0)
  %156 = add i64 %smax916, %indvars.iv919
  %157 = sub nsw i64 %145, %148
  br label %polly.loop_header378.us

polly.loop_exit372.loopexit.us:                   ; preds = %polly.loop_exit380.us
  %polly.indvar_next366.us = add nuw nsw i64 %polly.indvar365.us, 1
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, -80
  %exitcond930.not = icmp eq i64 %polly.indvar_next366.us, 13
  br i1 %exitcond930.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_header385.us.us:                       ; preds = %polly.loop_header378.us, %polly.loop_exit394.loopexit.us.us
  %polly.indvar388.us.us = phi i64 [ %polly.indvar_next389.us.us, %polly.loop_exit394.loopexit.us.us ], [ 0, %polly.loop_header378.us ]
  %158 = add nuw nsw i64 %polly.indvar388.us.us, %146
  %159 = shl i64 %158, 3
  %160 = add i64 %159, %154
  %scevgep402.us.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep402403.us.us = bitcast i8* %scevgep402.us.us to double*
  %_p_scalar_404.us.us = load double, double* %scevgep402403.us.us, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us = getelementptr i8, i8* %call1, i64 %160
  %scevgep408409.us.us = bitcast i8* %scevgep408.us.us to double*
  %_p_scalar_410.us.us = load double, double* %scevgep408409.us.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us

polly.loop_exit394.loopexit.us.us:                ; preds = %polly.loop_header392.us.us
  %polly.indvar_next389.us.us = add nuw nsw i64 %polly.indvar388.us.us, 1
  %exitcond928.not = icmp eq i64 %polly.indvar388.us.us, %147
  br i1 %exitcond928.not, label %polly.loop_exit387.us, label %polly.loop_header385.us.us

polly.loop_header392.us.us:                       ; preds = %polly.loop_header392.us.us, %polly.loop_header385.us.us
  %polly.indvar396.us.us = phi i64 [ %polly.indvar_next397.us.us, %polly.loop_header392.us.us ], [ 0, %polly.loop_header385.us.us ]
  %161 = add nuw nsw i64 %polly.indvar396.us.us, %148
  %162 = mul i64 %161, 8000
  %163 = add i64 %162, %159
  %scevgep399.us.us = getelementptr i8, i8* %call1, i64 %163
  %scevgep399400.us.us = bitcast i8* %scevgep399.us.us to double*
  %_p_scalar_401.us.us = load double, double* %scevgep399400.us.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us = fmul fast double %_p_scalar_404.us.us, %_p_scalar_401.us.us
  %scevgep405.us.us = getelementptr i8, i8* %call2, i64 %163
  %scevgep405406.us.us = bitcast i8* %scevgep405.us.us to double*
  %_p_scalar_407.us.us = load double, double* %scevgep405406.us.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us = fmul fast double %_p_scalar_410.us.us, %_p_scalar_407.us.us
  %164 = shl i64 %161, 3
  %165 = add i64 %164, %155
  %scevgep411.us.us = getelementptr i8, i8* %call, i64 %165
  %scevgep411412.us.us = bitcast i8* %scevgep411.us.us to double*
  %_p_scalar_413.us.us = load double, double* %scevgep411412.us.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us = fadd fast double %p_mul37.i75.us.us, %p_mul27.i73.us.us
  %p_reass.mul.i78.us.us = fmul fast double %p_reass.add.i77.us.us, 1.500000e+00
  %p_add42.i79.us.us = fadd fast double %p_reass.mul.i78.us.us, %_p_scalar_413.us.us
  store double %p_add42.i79.us.us, double* %scevgep411412.us.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us = add nuw nsw i64 %polly.indvar396.us.us, 1
  %exitcond924.not = icmp eq i64 %polly.indvar396.us.us, %smin923
  br i1 %exitcond924.not, label %polly.loop_exit394.loopexit.us.us, label %polly.loop_header392.us.us

polly.loop_exit364:                               ; preds = %polly.loop_exit372.loopexit.us, %polly.loop_header356
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, -32
  %indvars.iv.next918 = add nuw nsw i64 %indvars.iv917, 32
  %exitcond931.not = icmp eq i64 %polly.indvar_next360, 38
  br i1 %exitcond931.not, label %kernel_syr2k.exit90, label %polly.loop_header356

polly.loop_header500:                             ; preds = %init_array.exit, %polly.loop_exit508
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit508 ], [ 0, %init_array.exit ]
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 1, %init_array.exit ]
  %166 = add i64 %indvar, 1
  %167 = mul nuw nsw i64 %polly.indvar503, 9600
  %scevgep512 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1082 = icmp ult i64 %166, 4
  br i1 %min.iters.check1082, label %polly.loop_header506.preheader, label %vector.ph1083

vector.ph1083:                                    ; preds = %polly.loop_header500
  %n.vec1085 = and i64 %166, -4
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1087, %vector.body1081 ]
  %168 = shl nuw nsw i64 %index1086, 3
  %169 = getelementptr i8, i8* %scevgep512, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1090 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !78, !noalias !80
  %171 = fmul fast <4 x double> %wide.load1090, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !78, !noalias !80
  %index.next1087 = add i64 %index1086, 4
  %173 = icmp eq i64 %index.next1087, %n.vec1085
  br i1 %173, label %middle.block1079, label %vector.body1081, !llvm.loop !83

middle.block1079:                                 ; preds = %vector.body1081
  %cmp.n1089 = icmp eq i64 %166, %n.vec1085
  br i1 %cmp.n1089, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_header500, %middle.block1079
  %polly.indvar509.ph = phi i64 [ 0, %polly.loop_header500 ], [ %n.vec1085, %middle.block1079 ]
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506, %middle.block1079
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next504, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond955.not, label %polly.loop_header516, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_header506
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_header506 ], [ %polly.indvar509.ph, %polly.loop_header506.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar509, 3
  %scevgep513 = getelementptr i8, i8* %scevgep512, i64 %174
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_515, 1.200000e+00
  store double %p_mul.i, double* %scevgep513514, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next510, %polly.indvar503
  br i1 %exitcond954.not, label %polly.loop_exit508, label %polly.loop_header506, !llvm.loop !84

polly.loop_header516:                             ; preds = %polly.loop_exit508, %polly.loop_exit524
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %polly.indvar519 = phi i64 [ %polly.indvar_next520, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %175 = mul nuw nsw i64 %polly.indvar519, 9
  %176 = add nuw nsw i64 %175, 34
  %pexp.p_div_q528 = udiv i64 %176, 25
  %177 = sub nsw i64 %polly.indvar519, %pexp.p_div_q528
  %178 = add nsw i64 %177, 1
  %.inv781 = icmp slt i64 %177, 23
  %179 = select i1 %.inv781, i64 %178, i64 23
  %polly.loop_guard533 = icmp sgt i64 %179, -1
  %180 = mul nsw i64 %polly.indvar519, -32
  %181 = icmp slt i64 %180, -1168
  %182 = select i1 %181, i64 %180, i64 -1168
  %183 = add nsw i64 %182, 1199
  %184 = shl nsw i64 %polly.indvar519, 5
  br i1 %polly.loop_guard533, label %polly.loop_header522.us, label %polly.loop_exit524

polly.loop_header522.us:                          ; preds = %polly.loop_header516, %polly.loop_exit532.loopexit.us
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit532.loopexit.us ], [ 0, %polly.loop_header516 ]
  %polly.indvar525.us = phi i64 [ %polly.indvar_next526.us, %polly.loop_exit532.loopexit.us ], [ 0, %polly.loop_header516 ]
  %smin949 = call i64 @llvm.smin.i64(i64 %indvars.iv947, i64 -920)
  %185 = mul nuw nsw i64 %polly.indvar525.us, 80
  %186 = add nsw i64 %smin949, 999
  br label %polly.loop_header530.us

polly.loop_header530.us:                          ; preds = %polly.loop_header522.us, %polly.loop_exit540.us
  %indvars.iv941 = phi i64 [ %indvars.iv939, %polly.loop_header522.us ], [ %indvars.iv.next942, %polly.loop_exit540.us ]
  %indvars.iv936 = phi i64 [ %indvars.iv934, %polly.loop_header522.us ], [ %indvars.iv.next937, %polly.loop_exit540.us ]
  %polly.indvar534.us = phi i64 [ 0, %polly.loop_header522.us ], [ %polly.indvar_next535.us, %polly.loop_exit540.us ]
  %187 = mul nsw i64 %polly.indvar534.us, 50
  %188 = add nsw i64 %187, %180
  %189 = icmp sgt i64 %188, 0
  %190 = select i1 %189, i64 %188, i64 0
  %polly.loop_guard541.not.us = icmp sgt i64 %190, %183
  br i1 %polly.loop_guard541.not.us, label %polly.loop_exit540.us, label %polly.loop_header538.preheader.us

polly.loop_header538.us:                          ; preds = %polly.loop_header538.preheader.us, %polly.loop_exit547.us
  %indvars.iv943 = phi i64 [ %195, %polly.loop_header538.preheader.us ], [ %indvars.iv.next944, %polly.loop_exit547.us ]
  %polly.indvar542.us = phi i64 [ %190, %polly.loop_header538.preheader.us ], [ %polly.indvar_next543.us, %polly.loop_exit547.us ]
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 49)
  %191 = add nsw i64 %polly.indvar542.us, %196
  %polly.loop_guard555.us992 = icmp sgt i64 %191, -1
  %192 = add nuw nsw i64 %polly.indvar542.us, %184
  %193 = mul i64 %192, 8000
  %194 = mul i64 %192, 9600
  br i1 %polly.loop_guard555.us992, label %polly.loop_header545.us.us, label %polly.loop_exit547.us

polly.loop_exit547.us:                            ; preds = %polly.loop_exit554.loopexit.us.us, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.not.not.us = icmp ult i64 %polly.indvar542.us, %183
  %indvars.iv.next944 = add i64 %indvars.iv943, 1
  br i1 %polly.loop_cond544.not.not.us, label %polly.loop_header538.us, label %polly.loop_exit540.us

polly.loop_exit540.us:                            ; preds = %polly.loop_exit547.us, %polly.loop_header530.us
  %polly.indvar_next535.us = add nuw i64 %polly.indvar534.us, 1
  %indvars.iv.next937 = add i64 %indvars.iv936, 50
  %indvars.iv.next942 = add i64 %indvars.iv941, -50
  %exitcond951.not = icmp eq i64 %polly.indvar534.us, %179
  br i1 %exitcond951.not, label %polly.loop_exit532.loopexit.us, label %polly.loop_header530.us

polly.loop_header538.preheader.us:                ; preds = %polly.loop_header530.us
  %smax938 = call i64 @llvm.smax.i64(i64 %indvars.iv936, i64 0)
  %195 = add i64 %smax938, %indvars.iv941
  %196 = sub nsw i64 %184, %187
  br label %polly.loop_header538.us

polly.loop_exit532.loopexit.us:                   ; preds = %polly.loop_exit540.us
  %polly.indvar_next526.us = add nuw nsw i64 %polly.indvar525.us, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -80
  %exitcond952.not = icmp eq i64 %polly.indvar_next526.us, 13
  br i1 %exitcond952.not, label %polly.loop_exit524, label %polly.loop_header522.us

polly.loop_header545.us.us:                       ; preds = %polly.loop_header538.us, %polly.loop_exit554.loopexit.us.us
  %polly.indvar548.us.us = phi i64 [ %polly.indvar_next549.us.us, %polly.loop_exit554.loopexit.us.us ], [ 0, %polly.loop_header538.us ]
  %197 = add nuw nsw i64 %polly.indvar548.us.us, %185
  %198 = shl i64 %197, 3
  %199 = add i64 %198, %193
  %scevgep562.us.us = getelementptr i8, i8* %call2, i64 %199
  %scevgep562563.us.us = bitcast i8* %scevgep562.us.us to double*
  %_p_scalar_564.us.us = load double, double* %scevgep562563.us.us, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us = getelementptr i8, i8* %call1, i64 %199
  %scevgep568569.us.us = bitcast i8* %scevgep568.us.us to double*
  %_p_scalar_570.us.us = load double, double* %scevgep568569.us.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us

polly.loop_exit554.loopexit.us.us:                ; preds = %polly.loop_header552.us.us
  %polly.indvar_next549.us.us = add nuw nsw i64 %polly.indvar548.us.us, 1
  %exitcond950.not = icmp eq i64 %polly.indvar548.us.us, %186
  br i1 %exitcond950.not, label %polly.loop_exit547.us, label %polly.loop_header545.us.us

polly.loop_header552.us.us:                       ; preds = %polly.loop_header552.us.us, %polly.loop_header545.us.us
  %polly.indvar556.us.us = phi i64 [ %polly.indvar_next557.us.us, %polly.loop_header552.us.us ], [ 0, %polly.loop_header545.us.us ]
  %200 = add nuw nsw i64 %polly.indvar556.us.us, %187
  %201 = mul i64 %200, 8000
  %202 = add i64 %201, %198
  %scevgep559.us.us = getelementptr i8, i8* %call1, i64 %202
  %scevgep559560.us.us = bitcast i8* %scevgep559.us.us to double*
  %_p_scalar_561.us.us = load double, double* %scevgep559560.us.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us = fmul fast double %_p_scalar_564.us.us, %_p_scalar_561.us.us
  %scevgep565.us.us = getelementptr i8, i8* %call2, i64 %202
  %scevgep565566.us.us = bitcast i8* %scevgep565.us.us to double*
  %_p_scalar_567.us.us = load double, double* %scevgep565566.us.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us = fmul fast double %_p_scalar_570.us.us, %_p_scalar_567.us.us
  %203 = shl i64 %200, 3
  %204 = add i64 %203, %194
  %scevgep571.us.us = getelementptr i8, i8* %call, i64 %204
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
  %polly.indvar_next520 = add nuw nsw i64 %polly.indvar519, 1
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -32
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 32
  %exitcond953.not = icmp eq i64 %polly.indvar_next520, 38
  br i1 %exitcond953.not, label %kernel_syr2k.exit, label %polly.loop_header516

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %polly.loop_exit708 ], [ 0, %entry ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %smin982 = call i64 @llvm.smin.i64(i64 %indvars.iv980, i64 -1168)
  %205 = shl nsw i64 %polly.indvar703, 5
  %206 = add nsw i64 %smin982, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next981 = add nsw i64 %indvars.iv980, -32
  %exitcond985.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond985.not, label %polly.loop_header727, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %indvars.iv976 = phi i64 [ %indvars.iv.next977, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %207 = mul nsw i64 %polly.indvar709, -32
  %smin1020 = call i64 @llvm.smin.i64(i64 %207, i64 -1168)
  %208 = add nsw i64 %smin1020, 1200
  %smin978 = call i64 @llvm.smin.i64(i64 %indvars.iv976, i64 -1168)
  %209 = shl nsw i64 %polly.indvar709, 5
  %210 = add nsw i64 %smin978, 1199
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_exit720
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %indvars.iv.next977 = add nsw i64 %indvars.iv976, -32
  %exitcond984.not = icmp eq i64 %polly.indvar_next710, 38
  br i1 %exitcond984.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_exit720, %polly.loop_header706
  %polly.indvar715 = phi i64 [ 0, %polly.loop_header706 ], [ %polly.indvar_next716, %polly.loop_exit720 ]
  %211 = add nuw nsw i64 %polly.indvar715, %205
  %212 = trunc i64 %211 to i32
  %213 = mul nuw nsw i64 %211, 9600
  %min.iters.check = icmp eq i64 %208, 0
  br i1 %min.iters.check, label %polly.loop_header718, label %vector.ph1021

vector.ph1021:                                    ; preds = %polly.loop_header712
  %broadcast.splatinsert1028 = insertelement <4 x i64> poison, i64 %209, i32 0
  %broadcast.splat1029 = shufflevector <4 x i64> %broadcast.splatinsert1028, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1021
  %index1022 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1023, %vector.body1019 ]
  %vec.ind1026 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1021 ], [ %vec.ind.next1027, %vector.body1019 ]
  %214 = add nuw nsw <4 x i64> %vec.ind1026, %broadcast.splat1029
  %215 = trunc <4 x i64> %214 to <4 x i32>
  %216 = mul <4 x i32> %broadcast.splat1031, %215
  %217 = add <4 x i32> %216, <i32 3, i32 3, i32 3, i32 3>
  %218 = urem <4 x i32> %217, <i32 1200, i32 1200, i32 1200, i32 1200>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %221 = extractelement <4 x i64> %214, i32 0
  %222 = shl i64 %221, 3
  %223 = add nuw nsw i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %220, <4 x double>* %225, align 8, !alias.scope !87, !noalias !89
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1027 = add <4 x i64> %vec.ind1026, <i64 4, i64 4, i64 4, i64 4>
  %226 = icmp eq i64 %index.next1023, %208
  br i1 %226, label %polly.loop_exit720, label %vector.body1019, !llvm.loop !92

polly.loop_exit720:                               ; preds = %vector.body1019, %polly.loop_header718
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond983.not = icmp eq i64 %polly.indvar715, %206
  br i1 %exitcond983.not, label %polly.loop_exit714, label %polly.loop_header712

polly.loop_header718:                             ; preds = %polly.loop_header712, %polly.loop_header718
  %polly.indvar721 = phi i64 [ %polly.indvar_next722, %polly.loop_header718 ], [ 0, %polly.loop_header712 ]
  %227 = add nuw nsw i64 %polly.indvar721, %209
  %228 = trunc i64 %227 to i32
  %229 = mul i32 %228, %212
  %230 = add i32 %229, 3
  %231 = urem i32 %230, 1200
  %p_conv31.i = sitofp i32 %231 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %232 = shl i64 %227, 3
  %233 = add nuw nsw i64 %232, %213
  %scevgep724 = getelementptr i8, i8* %call, i64 %233
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  store double %p_div33.i, double* %scevgep724725, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next722 = add nuw nsw i64 %polly.indvar721, 1
  %exitcond979.not = icmp eq i64 %polly.indvar721, %210
  br i1 %exitcond979.not, label %polly.loop_exit720, label %polly.loop_header718, !llvm.loop !93

polly.loop_header727:                             ; preds = %polly.loop_exit708, %polly.loop_exit735
  %indvars.iv970 = phi i64 [ %indvars.iv.next971, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %smin972 = call i64 @llvm.smin.i64(i64 %indvars.iv970, i64 -1168)
  %234 = shl nsw i64 %polly.indvar730, 5
  %235 = add nsw i64 %smin972, 1199
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next971 = add nsw i64 %indvars.iv970, -32
  %exitcond975.not = icmp eq i64 %polly.indvar_next731, 38
  br i1 %exitcond975.not, label %polly.loop_header753, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %236 = mul nsw i64 %polly.indvar736, -32
  %smin1035 = call i64 @llvm.smin.i64(i64 %236, i64 -968)
  %237 = add nsw i64 %smin1035, 1000
  %smin968 = call i64 @llvm.smin.i64(i64 %indvars.iv966, i64 -968)
  %238 = shl nsw i64 %polly.indvar736, 5
  %239 = add nsw i64 %smin968, 999
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next967 = add nsw i64 %indvars.iv966, -32
  %exitcond974.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond974.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %polly.indvar742 = phi i64 [ 0, %polly.loop_header733 ], [ %polly.indvar_next743, %polly.loop_exit747 ]
  %240 = add nuw nsw i64 %polly.indvar742, %234
  %241 = trunc i64 %240 to i32
  %242 = mul nuw nsw i64 %240, 8000
  %min.iters.check1036 = icmp eq i64 %237, 0
  br i1 %min.iters.check1036, label %polly.loop_header745, label %vector.ph1037

vector.ph1037:                                    ; preds = %polly.loop_header739
  %broadcast.splatinsert1046 = insertelement <4 x i64> poison, i64 %238, i32 0
  %broadcast.splat1047 = shufflevector <4 x i64> %broadcast.splatinsert1046, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %241, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1037
  %index1040 = phi i64 [ 0, %vector.ph1037 ], [ %index.next1041, %vector.body1034 ]
  %vec.ind1044 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1037 ], [ %vec.ind.next1045, %vector.body1034 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1044, %broadcast.splat1047
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1049, %244
  %246 = add <4 x i32> %245, <i32 2, i32 2, i32 2, i32 2>
  %247 = urem <4 x i32> %246, <i32 1000, i32 1000, i32 1000, i32 1000>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add nuw nsw i64 %251, %242
  %253 = getelementptr i8, i8* %call2, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !91, !noalias !94
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1045 = add <4 x i64> %vec.ind1044, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1041, %237
  br i1 %255, label %polly.loop_exit747, label %vector.body1034, !llvm.loop !95

polly.loop_exit747:                               ; preds = %vector.body1034, %polly.loop_header745
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond973.not = icmp eq i64 %polly.indvar742, %235
  br i1 %exitcond973.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_header739, %polly.loop_header745
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_header745 ], [ 0, %polly.loop_header739 ]
  %256 = add nuw nsw i64 %polly.indvar748, %238
  %257 = trunc i64 %256 to i32
  %258 = mul i32 %257, %241
  %259 = add i32 %258, 2
  %260 = urem i32 %259, 1000
  %p_conv10.i = sitofp i32 %260 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %261 = shl i64 %256, 3
  %262 = add nuw nsw i64 %261, %242
  %scevgep751 = getelementptr i8, i8* %call2, i64 %262
  %scevgep751752 = bitcast i8* %scevgep751 to double*
  store double %p_div12.i, double* %scevgep751752, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond969.not = icmp eq i64 %polly.indvar748, %239
  br i1 %exitcond969.not, label %polly.loop_exit747, label %polly.loop_header745, !llvm.loop !96

polly.loop_header753:                             ; preds = %polly.loop_exit735, %polly.loop_exit761
  %indvars.iv960 = phi i64 [ %indvars.iv.next961, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %smin962 = call i64 @llvm.smin.i64(i64 %indvars.iv960, i64 -1168)
  %263 = shl nsw i64 %polly.indvar756, 5
  %264 = add nsw i64 %smin962, 1199
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next961 = add nsw i64 %indvars.iv960, -32
  %exitcond965.not = icmp eq i64 %polly.indvar_next757, 38
  br i1 %exitcond965.not, label %init_array.exit, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %265 = mul nsw i64 %polly.indvar762, -32
  %smin1053 = call i64 @llvm.smin.i64(i64 %265, i64 -968)
  %266 = add nsw i64 %smin1053, 1000
  %smin958 = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 -968)
  %267 = shl nsw i64 %polly.indvar762, 5
  %268 = add nsw i64 %smin958, 999
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next957 = add nsw i64 %indvars.iv956, -32
  %exitcond964.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond964.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %polly.indvar768 = phi i64 [ 0, %polly.loop_header759 ], [ %polly.indvar_next769, %polly.loop_exit773 ]
  %269 = add nuw nsw i64 %polly.indvar768, %263
  %270 = trunc i64 %269 to i32
  %271 = mul nuw nsw i64 %269, 8000
  %min.iters.check1054 = icmp eq i64 %266, 0
  br i1 %min.iters.check1054, label %polly.loop_header771, label %vector.ph1055

vector.ph1055:                                    ; preds = %polly.loop_header765
  %broadcast.splatinsert1064 = insertelement <4 x i64> poison, i64 %267, i32 0
  %broadcast.splat1065 = shufflevector <4 x i64> %broadcast.splatinsert1064, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1055
  %index1058 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1059, %vector.body1052 ]
  %vec.ind1062 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1055 ], [ %vec.ind.next1063, %vector.body1052 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1062, %broadcast.splat1065
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1067, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 1200, i32 1200, i32 1200, i32 1200>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add nuw nsw i64 %280, %271
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !90, !noalias !97
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1063 = add <4 x i64> %vec.ind1062, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1059, %266
  br i1 %284, label %polly.loop_exit773, label %vector.body1052, !llvm.loop !98

polly.loop_exit773:                               ; preds = %vector.body1052, %polly.loop_header771
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond963.not = icmp eq i64 %polly.indvar768, %264
  br i1 %exitcond963.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_header765, %polly.loop_header771
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_header771 ], [ 0, %polly.loop_header765 ]
  %285 = add nuw nsw i64 %polly.indvar774, %267
  %286 = trunc i64 %285 to i32
  %287 = mul i32 %286, %270
  %288 = add i32 %287, 1
  %289 = urem i32 %288, 1200
  %p_conv.i = sitofp i32 %289 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %290 = shl i64 %285, 3
  %291 = add nuw nsw i64 %290, %271
  %scevgep778 = getelementptr i8, i8* %call1, i64 %291
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  store double %p_div.i, double* %scevgep778779, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond959.not = icmp eq i64 %polly.indvar774, %268
  br i1 %exitcond959.not, label %polly.loop_exit773, label %polly.loop_header771, !llvm.loop !99
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
!24 = !{!"llvm.loop.tile.size", i32 50}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 80}
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
!44 = !{!"llvm.loop.tile.size", i32 32}
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
