; ModuleID = 'syr2k_exhaustive/mmp_all_SM_33.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_33.c"
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
  %call868 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1720 = bitcast i8* %call1 to double*
  %polly.access.call1729 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2730 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1729, %call2
  %polly.access.call2749 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2749, %call1
  %2 = or i1 %0, %1
  %polly.access.call769 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call769, %call2
  %4 = icmp ule i8* %polly.access.call2749, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call769, %call1
  %8 = icmp ule i8* %polly.access.call1729, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header842, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1065 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1064 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1063 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1062 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1062, %scevgep1065
  %bound1 = icmp ult i8* %scevgep1064, %scevgep1063
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
  br i1 %exitcond18.not.i, label %vector.ph1069, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1069:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1076 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1077 = shufflevector <4 x i64> %broadcast.splatinsert1076, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %vector.ph1069
  %index1070 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1074 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1069 ], [ %vec.ind.next1075, %vector.body1068 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1074, %broadcast.splat1077
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv7.i, i64 %index1070
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1075 = add <4 x i64> %vec.ind1074, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1071, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1068, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1068
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1069, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit903
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1132 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1132, label %for.body3.i46.preheader1337, label %vector.ph1133

vector.ph1133:                                    ; preds = %for.body3.i46.preheader
  %n.vec1135 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1137, %vector.body1131 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i, i64 %index1136
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1137 = add i64 %index1136, 4
  %46 = icmp eq i64 %index.next1137, %n.vec1135
  br i1 %46, label %middle.block1129, label %vector.body1131, !llvm.loop !18

middle.block1129:                                 ; preds = %vector.body1131
  %cmp.n1139 = icmp eq i64 %indvars.iv21.i, %n.vec1135
  br i1 %cmp.n1139, label %for.inc6.i, label %for.body3.i46.preheader1337

for.body3.i46.preheader1337:                      ; preds = %for.body3.i46.preheader, %middle.block1129
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1135, %middle.block1129 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1337, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1337 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1129, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1195, label %for.body3.i60.preheader1335, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i60.preheader
  %n.vec1198 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i52, i64 %index1199
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %57 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %57, label %middle.block1192, label %vector.body1194, !llvm.loop !63

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i52, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i63, label %for.body3.i60.preheader1335

for.body3.i60.preheader1335:                      ; preds = %for.body3.i60.preheader, %middle.block1192
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1335, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1335 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1192, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1265 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1265, label %for.body3.i99.preheader1333, label %vector.ph1266

vector.ph1266:                                    ; preds = %for.body3.i99.preheader
  %n.vec1268 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1264 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i91, i64 %index1269
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1270 = add i64 %index1269, 4
  %68 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %68, label %middle.block1262, label %vector.body1264, !llvm.loop !65

middle.block1262:                                 ; preds = %vector.body1264
  %cmp.n1272 = icmp eq i64 %indvars.iv21.i91, %n.vec1268
  br i1 %cmp.n1272, label %for.inc6.i102, label %for.body3.i99.preheader1333

for.body3.i99.preheader1333:                      ; preds = %for.body3.i99.preheader, %middle.block1262
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1268, %middle.block1262 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1333, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1333 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1262, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #8
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1277 = phi i64 [ %indvar.next1278, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1277, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1279 = icmp ult i64 %88, 4
  br i1 %min.iters.check1279, label %polly.loop_header192.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header
  %n.vec1282 = and i64 %88, -4
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1276 ]
  %90 = shl nuw nsw i64 %index1283, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1284 = add i64 %index1283, 4
  %95 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %95, label %middle.block1274, label %vector.body1276, !llvm.loop !78

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1286 = icmp eq i64 %88, %n.vec1282
  br i1 %cmp.n1286, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1274
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1282, %middle.block1274 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1274
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %exitcond977.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond976.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond975.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header212

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %exitcond974.not = icmp eq i64 %polly.indvar_next210, 300
  br i1 %exitcond974.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %99 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond961.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond961.not, label %polly.loop_header228.preheader, label %polly.loop_header212

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit220
  %100 = mul nsw i64 %polly.indvar209, -4
  %polly.access.mul.call1247 = mul nsw i64 %polly.indvar209, 4000
  %101 = or i64 %98, 1
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %101, 1000
  %102 = or i64 %98, 2
  %polly.access.mul.call1247.2 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %98, 3
  %polly.access.mul.call1247.3 = mul nuw nsw i64 %103, 1000
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 4000
  %104 = or i64 %98, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %98, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %105, 1000
  %106 = or i64 %98, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %106, 1000
  br label %polly.loop_header228

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %107 = add nuw nsw i64 %polly.indvar221, %98
  %polly.access.mul.call2225 = mul nuw nsw i64 %107, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %99, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit265
  %indvar1309 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1310, %polly.loop_exit265 ]
  %indvars.iv966 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvars.iv.next967, %polly.loop_exit265 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit265 ]
  %108 = shl nuw nsw i64 %indvar1309, 2
  %109 = or i64 %108, 2
  %smin1311 = call i64 @llvm.smin.i64(i64 %109, i64 3)
  %110 = shl nsw i64 %polly.indvar231, 2
  %111 = add nsw i64 %110, %100
  %112 = icmp ugt i64 %111, 4
  %113 = select i1 %112, i64 %111, i64 4
  %114 = or i64 %111, 3
  %polly.loop_guard.not = icmp ugt i64 %113, %114
  br i1 %polly.loop_guard.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228 ]
  %115 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %115
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %115
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %115
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %115
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond965.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_exit265:                               ; preds = %polly.loop_exit277.3
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 4
  %exitcond973.not = icmp eq i64 %polly.indvar_next232, 300
  %indvar.next1310 = add i64 %indvar1309, 1
  br i1 %exitcond973.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228 ]
  %116 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %116
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %116
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1248.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %116
  %polly.access.call1249.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2
  %polly.access.call1249.load.2 = load double, double* %polly.access.call1249.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1249.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1248.3 = add nuw nsw i64 %polly.access.mul.call1247.3, %116
  %polly.access.call1249.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3
  %polly.access.call1249.load.3 = load double, double* %polly.access.call1249.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1249.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond963.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_header234.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv966, i64 3)
  %117 = mul nsw i64 %polly.indvar231, 38400
  %indvars.iv.next969 = or i64 %indvars.iv966, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next969, i64 3)
  %118 = or i64 %111, 1
  %119 = or i64 %110, 1
  %120 = mul nuw nsw i64 %119, 9600
  %121 = or i64 %111, 2
  %122 = or i64 %110, 2
  %123 = mul nuw nsw i64 %122, 9600
  %124 = or i64 %111, 3
  %125 = or i64 %110, 3
  %126 = mul nuw nsw i64 %125, 9600
  br label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %113, %polly.loop_header234 ]
  %127 = add nuw nsw i64 %polly.indvar253, %98
  %polly.access.mul.call1257 = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %polly.access.mul.call1257, %116
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp ult i64 %polly.indvar253, %114
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit277.3
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit277.3 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar266, 1200
  %polly.access.add.Packed_MemRef_call2286 = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  br label %polly.loop_header275

polly.loop_exit277:                               ; preds = %polly.loop_header275
  %polly.access.add.Packed_MemRef_call2286.1 = add nuw nsw i64 %118, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call2287.1, align 8
  %polly.access.Packed_MemRef_call1295.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_296.1 = load double, double* %polly.access.Packed_MemRef_call1295.1, align 8
  br label %polly.loop_header275.1

polly.loop_header275:                             ; preds = %polly.loop_header275, %polly.loop_header263
  %polly.indvar278 = phi i64 [ 0, %polly.loop_header263 ], [ %polly.indvar_next279, %polly.loop_header275 ]
  %128 = add nuw nsw i64 %polly.indvar278, %98
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %129 = shl i64 %128, 3
  %130 = add nuw nsw i64 %129, %117
  %scevgep297 = getelementptr i8, i8* %call, i64 %130
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond970.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond970.not, label %polly.loop_exit277, label %polly.loop_header275

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #8
  %malloccall306 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #8
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit414
  tail call void @free(i8* nonnull %malloccall304)
  tail call void @free(i8* nonnull %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1207 = phi i64 [ %indvar.next1208, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %131 = add i64 %indvar1207, 1
  %132 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1209 = icmp ult i64 %131, 4
  br i1 %min.iters.check1209, label %polly.loop_header396.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header390
  %n.vec1212 = and i64 %131, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %133 = shl nuw nsw i64 %index1213, 3
  %134 = getelementptr i8, i8* %scevgep402, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !83, !noalias !85
  %136 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !83, !noalias !85
  %index.next1214 = add i64 %index1213, 4
  %138 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %138, label %middle.block1204, label %vector.body1206, !llvm.loop !90

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %131, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1204
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1204
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond998.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %139
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !83, !noalias !85
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond997.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !91

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %140 = mul nuw nsw i64 %polly.indvar409, 20
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit436
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next410, 50
  br i1 %exitcond996.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit436, %polly.loop_header406
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit436 ], [ 1200, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit436 ], [ 0, %polly.loop_header406 ]
  %141 = shl nsw i64 %polly.indvar415, 2
  br label %polly.loop_header418

polly.loop_exit436:                               ; preds = %polly.loop_exit473
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -4
  %exitcond995.not = icmp eq i64 %polly.indvar_next416, 300
  br i1 %exitcond995.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit426, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_exit426 ]
  %142 = add nuw nsw i64 %polly.indvar421, %140
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar421, 1200
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next422, 20
  br i1 %exitcond981.not, label %polly.loop_header434.preheader, label %polly.loop_header418

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit426
  %143 = mul nsw i64 %polly.indvar415, -4
  %polly.access.mul.call1453 = mul nsw i64 %polly.indvar415, 4000
  %144 = or i64 %141, 1
  %polly.access.mul.call1453.1 = mul nuw nsw i64 %144, 1000
  %145 = or i64 %141, 2
  %polly.access.mul.call1453.2 = mul nuw nsw i64 %145, 1000
  %146 = or i64 %141, 3
  %polly.access.mul.call1453.3 = mul nuw nsw i64 %146, 1000
  %polly.access.mul.call1453.us = mul nsw i64 %polly.indvar415, 4000
  %147 = or i64 %141, 1
  %polly.access.mul.call1453.us.1 = mul nuw nsw i64 %147, 1000
  %148 = or i64 %141, 2
  %polly.access.mul.call1453.us.2 = mul nuw nsw i64 %148, 1000
  %149 = or i64 %141, 3
  %polly.access.mul.call1453.us.3 = mul nuw nsw i64 %149, 1000
  br label %polly.loop_header434

polly.loop_header424:                             ; preds = %polly.loop_header424, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_header424 ]
  %150 = add nuw nsw i64 %polly.indvar427, %141
  %polly.access.mul.call2431 = mul nuw nsw i64 %150, 1000
  %polly.access.add.call2432 = add nuw nsw i64 %142, %polly.access.mul.call2431
  %polly.access.call2433 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432
  %polly.access.call2433.load = load double, double* %polly.access.call2433, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2433.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next428, %indvars.iv978
  br i1 %exitcond980.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit473
  %indvar1239 = phi i64 [ 0, %polly.loop_header434.preheader ], [ %indvar.next1240, %polly.loop_exit473 ]
  %indvars.iv986 = phi i64 [ 0, %polly.loop_header434.preheader ], [ %indvars.iv.next987, %polly.loop_exit473 ]
  %polly.indvar437 = phi i64 [ %polly.indvar415, %polly.loop_header434.preheader ], [ %polly.indvar_next438, %polly.loop_exit473 ]
  %151 = shl nuw nsw i64 %indvar1239, 2
  %152 = or i64 %151, 2
  %smin1241 = call i64 @llvm.smin.i64(i64 %152, i64 3)
  %153 = shl nsw i64 %polly.indvar437, 2
  %154 = add nsw i64 %153, %143
  %155 = icmp ugt i64 %154, 4
  %156 = select i1 %155, i64 %154, i64 4
  %157 = or i64 %154, 3
  %polly.loop_guard460.not = icmp ugt i64 %156, %157
  br i1 %polly.loop_guard460.not, label %polly.loop_header440.us, label %polly.loop_header440

polly.loop_header440.us:                          ; preds = %polly.loop_header434, %polly.loop_header440.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_header440.us ], [ 0, %polly.loop_header434 ]
  %158 = add nuw nsw i64 %polly.indvar443.us, %140
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar443.us, 1200
  %polly.access.add.call1454.us = add nuw nsw i64 %polly.access.mul.call1453.us, %158
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.access.add.call1454.us.1 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %158
  %polly.access.call1455.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1
  %polly.access.call1455.load.us.1 = load double, double* %polly.access.call1455.us.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 1
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1455.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.access.add.call1454.us.2 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %158
  %polly.access.call1455.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2
  %polly.access.call1455.load.us.2 = load double, double* %polly.access.call1455.us.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 2
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1455.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.access.add.call1454.us.3 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %158
  %polly.access.call1455.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3
  %polly.access.call1455.load.us.3 = load double, double* %polly.access.call1455.us.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 3
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1455.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next444.us, 20
  br i1 %exitcond985.not, label %polly.loop_header471.preheader, label %polly.loop_header440.us

polly.loop_exit473:                               ; preds = %polly.loop_exit485.3
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 4
  %exitcond994.not = icmp eq i64 %polly.indvar_next438, 300
  %indvar.next1240 = add i64 %indvar1239, 1
  br i1 %exitcond994.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header440:                             ; preds = %polly.loop_header434, %polly.loop_exit459
  %polly.indvar443 = phi i64 [ %polly.indvar_next444, %polly.loop_exit459 ], [ 0, %polly.loop_header434 ]
  %159 = add nuw nsw i64 %polly.indvar443, %140
  %polly.access.mul.Packed_MemRef_call1305 = mul nuw nsw i64 %polly.indvar443, 1200
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %159
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1305 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1305, align 8
  %polly.access.add.call1454.1 = add nuw nsw i64 %polly.access.mul.call1453.1, %159
  %polly.access.call1455.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1
  %polly.access.call1455.load.1 = load double, double* %polly.access.call1455.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.1 = or i64 %polly.access.mul.Packed_MemRef_call1305, 1
  %polly.access.Packed_MemRef_call1305.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.1
  store double %polly.access.call1455.load.1, double* %polly.access.Packed_MemRef_call1305.1, align 8
  %polly.access.add.call1454.2 = add nuw nsw i64 %polly.access.mul.call1453.2, %159
  %polly.access.call1455.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2
  %polly.access.call1455.load.2 = load double, double* %polly.access.call1455.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.2 = or i64 %polly.access.mul.Packed_MemRef_call1305, 2
  %polly.access.Packed_MemRef_call1305.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.2
  store double %polly.access.call1455.load.2, double* %polly.access.Packed_MemRef_call1305.2, align 8
  %polly.access.add.call1454.3 = add nuw nsw i64 %polly.access.mul.call1453.3, %159
  %polly.access.call1455.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3
  %polly.access.call1455.load.3 = load double, double* %polly.access.call1455.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.3 = or i64 %polly.access.mul.Packed_MemRef_call1305, 3
  %polly.access.Packed_MemRef_call1305.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.3
  store double %polly.access.call1455.load.3, double* %polly.access.Packed_MemRef_call1305.3, align 8
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_header457
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next444, 20
  br i1 %exitcond983.not, label %polly.loop_header471.preheader, label %polly.loop_header440

polly.loop_header471.preheader:                   ; preds = %polly.loop_exit459, %polly.loop_header440.us
  %smin990 = call i64 @llvm.smin.i64(i64 %indvars.iv986, i64 3)
  %160 = mul nsw i64 %polly.indvar437, 38400
  %indvars.iv.next989 = or i64 %indvars.iv986, 1
  %smin990.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next989, i64 3)
  %161 = or i64 %154, 1
  %162 = or i64 %153, 1
  %163 = mul nuw nsw i64 %162, 9600
  %164 = or i64 %154, 2
  %165 = or i64 %153, 2
  %166 = mul nuw nsw i64 %165, 9600
  %167 = or i64 %154, 3
  %168 = or i64 %153, 3
  %169 = mul nuw nsw i64 %168, 9600
  br label %polly.loop_header471

polly.loop_header457:                             ; preds = %polly.loop_header440, %polly.loop_header457
  %polly.indvar461 = phi i64 [ %polly.indvar_next462, %polly.loop_header457 ], [ %156, %polly.loop_header440 ]
  %170 = add nuw nsw i64 %polly.indvar461, %141
  %polly.access.mul.call1465 = mul nuw nsw i64 %170, 1000
  %polly.access.add.call1466 = add nuw nsw i64 %polly.access.mul.call1465, %159
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305469 = add nuw nsw i64 %polly.indvar461, %polly.access.mul.Packed_MemRef_call1305
  %polly.access.Packed_MemRef_call1305470 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305469
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1305470, align 8
  %polly.indvar_next462 = add nuw nsw i64 %polly.indvar461, 1
  %polly.loop_cond463.not.not = icmp ult i64 %polly.indvar461, %157
  br i1 %polly.loop_cond463.not.not, label %polly.loop_header457, label %polly.loop_exit459

polly.loop_header471:                             ; preds = %polly.loop_header471.preheader, %polly.loop_exit485.3
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_exit485.3 ], [ 0, %polly.loop_header471.preheader ]
  %polly.access.mul.Packed_MemRef_call1305489 = mul nuw nsw i64 %polly.indvar474, 1200
  %polly.access.add.Packed_MemRef_call2307494 = add nuw nsw i64 %154, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call2307495, align 8
  %polly.access.Packed_MemRef_call1305503 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call1305503, align 8
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483
  %polly.access.add.Packed_MemRef_call2307494.1 = add nuw nsw i64 %161, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call2307495.1, align 8
  %polly.access.Packed_MemRef_call1305503.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call1305503.1, align 8
  br label %polly.loop_header483.1

polly.loop_header483:                             ; preds = %polly.loop_header483, %polly.loop_header471
  %polly.indvar486 = phi i64 [ 0, %polly.loop_header471 ], [ %polly.indvar_next487, %polly.loop_header483 ]
  %171 = add nuw nsw i64 %polly.indvar486, %141
  %polly.access.add.Packed_MemRef_call1305490 = add nuw nsw i64 %polly.indvar486, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1305491, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %polly.access.Packed_MemRef_call2307499 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2307499, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_504, %_p_scalar_500
  %172 = shl i64 %171, 3
  %173 = add nuw nsw i64 %172, %160
  %scevgep505 = getelementptr i8, i8* %call, i64 %173
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_507
  store double %p_add42.i79, double* %scevgep505506, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond991.not = icmp eq i64 %polly.indvar486, %smin990
  br i1 %exitcond991.not, label %polly.loop_exit485, label %polly.loop_header483

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #8
  %malloccall514 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #8
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* nonnull %malloccall512)
  tail call void @free(i8* nonnull %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar601, 9600
  %scevgep610 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1143 = icmp ult i64 %174, 4
  br i1 %min.iters.check1143, label %polly.loop_header604.preheader, label %vector.ph1144

vector.ph1144:                                    ; preds = %polly.loop_header598
  %n.vec1146 = and i64 %174, -4
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %vector.ph1144
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1148, %vector.body1142 ]
  %176 = shl nuw nsw i64 %index1147, 3
  %177 = getelementptr i8, i8* %scevgep610, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1151 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !94, !noalias !96
  %179 = fmul fast <4 x double> %wide.load1151, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !94, !noalias !96
  %index.next1148 = add i64 %index1147, 4
  %181 = icmp eq i64 %index.next1148, %n.vec1146
  br i1 %181, label %middle.block1140, label %vector.body1142, !llvm.loop !101

middle.block1140:                                 ; preds = %vector.body1142
  %cmp.n1150 = icmp eq i64 %174, %n.vec1146
  br i1 %cmp.n1150, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1140
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1146, %middle.block1140 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1140
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next602, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1019.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %182
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !94, !noalias !96
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1018.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !102

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %183 = mul nuw nsw i64 %polly.indvar617, 20
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit644
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next618, 50
  br i1 %exitcond1017.not, label %polly.exiting511, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_exit644, %polly.loop_header614
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit644 ], [ 1200, %polly.loop_header614 ]
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit644 ], [ 0, %polly.loop_header614 ]
  %184 = shl nsw i64 %polly.indvar623, 2
  br label %polly.loop_header626

polly.loop_exit644:                               ; preds = %polly.loop_exit681
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, -4
  %exitcond1016.not = icmp eq i64 %polly.indvar_next624, 300
  br i1 %exitcond1016.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit634, %polly.loop_header620
  %polly.indvar629 = phi i64 [ 0, %polly.loop_header620 ], [ %polly.indvar_next630, %polly.loop_exit634 ]
  %185 = add nuw nsw i64 %polly.indvar629, %183
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar629, 1200
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_header632
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next630, 20
  br i1 %exitcond1002.not, label %polly.loop_header642.preheader, label %polly.loop_header626

polly.loop_header642.preheader:                   ; preds = %polly.loop_exit634
  %186 = mul nsw i64 %polly.indvar623, -4
  %polly.access.mul.call1661 = mul nsw i64 %polly.indvar623, 4000
  %187 = or i64 %184, 1
  %polly.access.mul.call1661.1 = mul nuw nsw i64 %187, 1000
  %188 = or i64 %184, 2
  %polly.access.mul.call1661.2 = mul nuw nsw i64 %188, 1000
  %189 = or i64 %184, 3
  %polly.access.mul.call1661.3 = mul nuw nsw i64 %189, 1000
  %polly.access.mul.call1661.us = mul nsw i64 %polly.indvar623, 4000
  %190 = or i64 %184, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %190, 1000
  %191 = or i64 %184, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %191, 1000
  %192 = or i64 %184, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %192, 1000
  br label %polly.loop_header642

polly.loop_header632:                             ; preds = %polly.loop_header632, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_header632 ]
  %193 = add nuw nsw i64 %polly.indvar635, %184
  %polly.access.mul.call2639 = mul nuw nsw i64 %193, 1000
  %polly.access.add.call2640 = add nuw nsw i64 %185, %polly.access.mul.call2639
  %polly.access.call2641 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640
  %polly.access.call2641.load = load double, double* %polly.access.call2641, align 8, !alias.scope !98, !noalias !103
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar635, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2641.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next636, %indvars.iv999
  br i1 %exitcond1001.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header642:                             ; preds = %polly.loop_header642.preheader, %polly.loop_exit681
  %indvar1172 = phi i64 [ 0, %polly.loop_header642.preheader ], [ %indvar.next1173, %polly.loop_exit681 ]
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_header642.preheader ], [ %indvars.iv.next1008, %polly.loop_exit681 ]
  %polly.indvar645 = phi i64 [ %polly.indvar623, %polly.loop_header642.preheader ], [ %polly.indvar_next646, %polly.loop_exit681 ]
  %194 = shl nuw nsw i64 %indvar1172, 2
  %195 = or i64 %194, 2
  %smin1174 = call i64 @llvm.smin.i64(i64 %195, i64 3)
  %196 = shl nsw i64 %polly.indvar645, 2
  %197 = add nsw i64 %196, %186
  %198 = icmp ugt i64 %197, 4
  %199 = select i1 %198, i64 %197, i64 4
  %200 = or i64 %197, 3
  %polly.loop_guard668.not = icmp ugt i64 %199, %200
  br i1 %polly.loop_guard668.not, label %polly.loop_header648.us, label %polly.loop_header648

polly.loop_header648.us:                          ; preds = %polly.loop_header642, %polly.loop_header648.us
  %polly.indvar651.us = phi i64 [ %polly.indvar_next652.us, %polly.loop_header648.us ], [ 0, %polly.loop_header642 ]
  %201 = add nuw nsw i64 %polly.indvar651.us, %183
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar651.us, 1200
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %201
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !97, !noalias !104
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.mul.Packed_MemRef_call1513.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %201
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 1
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1513.us.1, align 8
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %201
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 2
  %polly.access.Packed_MemRef_call1513.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.2
  store double %polly.access.call1663.load.us.2, double* %polly.access.Packed_MemRef_call1513.us.2, align 8
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %201
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 3
  %polly.access.Packed_MemRef_call1513.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.3
  store double %polly.access.call1663.load.us.3, double* %polly.access.Packed_MemRef_call1513.us.3, align 8
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next652.us, 20
  br i1 %exitcond1006.not, label %polly.loop_header679.preheader, label %polly.loop_header648.us

polly.loop_exit681:                               ; preds = %polly.loop_exit693.3
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 4
  %exitcond1015.not = icmp eq i64 %polly.indvar_next646, 300
  %indvar.next1173 = add i64 %indvar1172, 1
  br i1 %exitcond1015.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header648:                             ; preds = %polly.loop_header642, %polly.loop_exit667
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_exit667 ], [ 0, %polly.loop_header642 ]
  %202 = add nuw nsw i64 %polly.indvar651, %183
  %polly.access.mul.Packed_MemRef_call1513 = mul nuw nsw i64 %polly.indvar651, 1200
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661, %202
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !97, !noalias !104
  %polly.access.Packed_MemRef_call1513 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.mul.Packed_MemRef_call1513
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1513, align 8
  %polly.access.add.call1662.1 = add nuw nsw i64 %polly.access.mul.call1661.1, %202
  %polly.access.call1663.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1
  %polly.access.call1663.load.1 = load double, double* %polly.access.call1663.1, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.1 = or i64 %polly.access.mul.Packed_MemRef_call1513, 1
  %polly.access.Packed_MemRef_call1513.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.1
  store double %polly.access.call1663.load.1, double* %polly.access.Packed_MemRef_call1513.1, align 8
  %polly.access.add.call1662.2 = add nuw nsw i64 %polly.access.mul.call1661.2, %202
  %polly.access.call1663.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2
  %polly.access.call1663.load.2 = load double, double* %polly.access.call1663.2, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.2 = or i64 %polly.access.mul.Packed_MemRef_call1513, 2
  %polly.access.Packed_MemRef_call1513.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.2
  store double %polly.access.call1663.load.2, double* %polly.access.Packed_MemRef_call1513.2, align 8
  %polly.access.add.call1662.3 = add nuw nsw i64 %polly.access.mul.call1661.3, %202
  %polly.access.call1663.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3
  %polly.access.call1663.load.3 = load double, double* %polly.access.call1663.3, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.3 = or i64 %polly.access.mul.Packed_MemRef_call1513, 3
  %polly.access.Packed_MemRef_call1513.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.3
  store double %polly.access.call1663.load.3, double* %polly.access.Packed_MemRef_call1513.3, align 8
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next652, 20
  br i1 %exitcond1004.not, label %polly.loop_header679.preheader, label %polly.loop_header648

polly.loop_header679.preheader:                   ; preds = %polly.loop_exit667, %polly.loop_header648.us
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 3)
  %203 = mul nsw i64 %polly.indvar645, 38400
  %indvars.iv.next1010 = or i64 %indvars.iv1007, 1
  %smin1011.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1010, i64 3)
  %204 = or i64 %197, 1
  %205 = or i64 %196, 1
  %206 = mul nuw nsw i64 %205, 9600
  %207 = or i64 %197, 2
  %208 = or i64 %196, 2
  %209 = mul nuw nsw i64 %208, 9600
  %210 = or i64 %197, 3
  %211 = or i64 %196, 3
  %212 = mul nuw nsw i64 %211, 9600
  br label %polly.loop_header679

polly.loop_header665:                             ; preds = %polly.loop_header648, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %199, %polly.loop_header648 ]
  %213 = add nuw nsw i64 %polly.indvar669, %184
  %polly.access.mul.call1673 = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %202
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513677 = add nuw nsw i64 %polly.indvar669, %polly.access.mul.Packed_MemRef_call1513
  %polly.access.Packed_MemRef_call1513678 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1513678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp ult i64 %polly.indvar669, %200
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_exit693.3
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_exit693.3 ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1513697 = mul nuw nsw i64 %polly.indvar682, 1200
  %polly.access.add.Packed_MemRef_call2515702 = add nuw nsw i64 %197, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_704 = load double, double* %polly.access.Packed_MemRef_call2515703, align 8
  %polly.access.Packed_MemRef_call1513711 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call1513711, align 8
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_header691
  %polly.access.add.Packed_MemRef_call2515702.1 = add nuw nsw i64 %204, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.1
  %_p_scalar_704.1 = load double, double* %polly.access.Packed_MemRef_call2515703.1, align 8
  %polly.access.Packed_MemRef_call1513711.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.1
  %_p_scalar_712.1 = load double, double* %polly.access.Packed_MemRef_call1513711.1, align 8
  br label %polly.loop_header691.1

polly.loop_header691:                             ; preds = %polly.loop_header691, %polly.loop_header679
  %polly.indvar694 = phi i64 [ 0, %polly.loop_header679 ], [ %polly.indvar_next695, %polly.loop_header691 ]
  %214 = add nuw nsw i64 %polly.indvar694, %184
  %polly.access.add.Packed_MemRef_call1513698 = add nuw nsw i64 %polly.indvar694, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1513699, align 8
  %p_mul27.i = fmul fast double %_p_scalar_704, %_p_scalar_700
  %polly.access.Packed_MemRef_call2515707 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call2515707, align 8
  %p_mul37.i = fmul fast double %_p_scalar_712, %_p_scalar_708
  %215 = shl i64 %214, 3
  %216 = add nuw nsw i64 %215, %203
  %scevgep713 = getelementptr i8, i8* %call, i64 %216
  %scevgep713714 = bitcast i8* %scevgep713 to double*
  %_p_scalar_715 = load double, double* %scevgep713714, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_715
  store double %p_add42.i, double* %scevgep713714, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar694, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit693, label %polly.loop_header691

polly.loop_header842:                             ; preds = %entry, %polly.loop_exit850
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit850 ], [ 0, %entry ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %entry ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %217 = shl nsw i64 %polly.indvar845, 5
  %218 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next846, 38
  br i1 %exitcond1049.not, label %polly.loop_header869, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %219 = mul nsw i64 %polly.indvar851, -32
  %smin1081 = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin1081, 1200
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 -1168)
  %221 = shl nsw i64 %polly.indvar851, 5
  %222 = add nsw i64 %smin1042, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1048.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %polly.indvar857 = phi i64 [ 0, %polly.loop_header848 ], [ %polly.indvar_next858, %polly.loop_exit862 ]
  %223 = add nuw nsw i64 %polly.indvar857, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header860, label %vector.ph1082

vector.ph1082:                                    ; preds = %polly.loop_header854
  %broadcast.splatinsert1089 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat1090 = shufflevector <4 x i64> %broadcast.splatinsert1089, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1082
  %index1083 = phi i64 [ 0, %vector.ph1082 ], [ %index.next1084, %vector.body1080 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1082 ], [ %vec.ind.next1088, %vector.body1080 ]
  %226 = add nuw nsw <4 x i64> %vec.ind1087, %broadcast.splat1090
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1092, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !105, !noalias !107
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next1084, %220
  br i1 %238, label %polly.loop_exit862, label %vector.body1080, !llvm.loop !110

polly.loop_exit862:                               ; preds = %vector.body1080, %polly.loop_header860
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar857, %218
  br i1 %exitcond1047.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_header854, %polly.loop_header860
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_header860 ], [ 0, %polly.loop_header854 ]
  %239 = add nuw nsw i64 %polly.indvar863, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep866 = getelementptr i8, i8* %call, i64 %245
  %scevgep866867 = bitcast i8* %scevgep866 to double*
  store double %p_div33.i, double* %scevgep866867, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar863, %222
  br i1 %exitcond1043.not, label %polly.loop_exit862, label %polly.loop_header860, !llvm.loop !111

polly.loop_header869:                             ; preds = %polly.loop_exit850, %polly.loop_exit877
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit877 ], [ 0, %polly.loop_exit850 ]
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_exit877 ], [ 0, %polly.loop_exit850 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -1168)
  %246 = shl nsw i64 %polly.indvar872, 5
  %247 = add nsw i64 %smin1036, 1199
  br label %polly.loop_header875

polly.loop_exit877:                               ; preds = %polly.loop_exit883
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1039.not = icmp eq i64 %polly.indvar_next873, 38
  br i1 %exitcond1039.not, label %polly.loop_header895, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_exit883, %polly.loop_header869
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit883 ], [ 0, %polly.loop_header869 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_header869 ]
  %248 = mul nsw i64 %polly.indvar878, -32
  %smin1096 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin1096, 1000
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -968)
  %250 = shl nsw i64 %polly.indvar878, 5
  %251 = add nsw i64 %smin1032, 999
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next879, 32
  br i1 %exitcond1038.not, label %polly.loop_exit877, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %polly.indvar884 = phi i64 [ 0, %polly.loop_header875 ], [ %polly.indvar_next885, %polly.loop_exit889 ]
  %252 = add nuw nsw i64 %polly.indvar884, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check1097 = icmp eq i64 %249, 0
  br i1 %min.iters.check1097, label %polly.loop_header887, label %vector.ph1098

vector.ph1098:                                    ; preds = %polly.loop_header881
  %broadcast.splatinsert1107 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat1108 = shufflevector <4 x i64> %broadcast.splatinsert1107, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1109 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1110 = shufflevector <4 x i32> %broadcast.splatinsert1109, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1098
  %index1101 = phi i64 [ 0, %vector.ph1098 ], [ %index.next1102, %vector.body1095 ]
  %vec.ind1105 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1098 ], [ %vec.ind.next1106, %vector.body1095 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1105, %broadcast.splat1108
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1110, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !109, !noalias !112
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1106 = add <4 x i64> %vec.ind1105, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1102, %249
  br i1 %267, label %polly.loop_exit889, label %vector.body1095, !llvm.loop !113

polly.loop_exit889:                               ; preds = %vector.body1095, %polly.loop_header887
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar884, %247
  br i1 %exitcond1037.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_header881, %polly.loop_header887
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_header887 ], [ 0, %polly.loop_header881 ]
  %268 = add nuw nsw i64 %polly.indvar890, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep893 = getelementptr i8, i8* %call2, i64 %274
  %scevgep893894 = bitcast i8* %scevgep893 to double*
  store double %p_div12.i, double* %scevgep893894, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar890, %251
  br i1 %exitcond1033.not, label %polly.loop_exit889, label %polly.loop_header887, !llvm.loop !114

polly.loop_header895:                             ; preds = %polly.loop_exit877, %polly.loop_exit903
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit903 ], [ 0, %polly.loop_exit877 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit877 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 -1168)
  %275 = shl nsw i64 %polly.indvar898, 5
  %276 = add nsw i64 %smin1026, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, -32
  %exitcond1029.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1029.not, label %init_array.exit, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %277 = mul nsw i64 %polly.indvar904, -32
  %smin1114 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin1114, 1000
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1020, i64 -968)
  %279 = shl nsw i64 %polly.indvar904, 5
  %280 = add nsw i64 %smin1022, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -32
  %exitcond1028.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1028.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %281 = add nuw nsw i64 %polly.indvar910, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check1115 = icmp eq i64 %278, 0
  br i1 %min.iters.check1115, label %polly.loop_header913, label %vector.ph1116

vector.ph1116:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1125 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat1126 = shufflevector <4 x i64> %broadcast.splatinsert1125, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1116
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1120, %vector.body1113 ]
  %vec.ind1123 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1116 ], [ %vec.ind.next1124, %vector.body1113 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1123, %broadcast.splat1126
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1128, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !108, !noalias !115
  %index.next1120 = add i64 %index1119, 4
  %vec.ind.next1124 = add <4 x i64> %vec.ind1123, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1120, %278
  br i1 %296, label %polly.loop_exit915, label %vector.body1113, !llvm.loop !116

polly.loop_exit915:                               ; preds = %vector.body1113, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar910, %276
  br i1 %exitcond1027.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %297 = add nuw nsw i64 %polly.indvar916, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep920 = getelementptr i8, i8* %call1, i64 %303
  %scevgep920921 = bitcast i8* %scevgep920 to double*
  store double %p_div.i, double* %scevgep920921, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar916, %280
  br i1 %exitcond1023.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !117

polly.loop_header275.1:                           ; preds = %polly.loop_header275.1, %polly.loop_exit277
  %polly.indvar278.1 = phi i64 [ 0, %polly.loop_exit277 ], [ %polly.indvar_next279.1, %polly.loop_header275.1 ]
  %304 = add nuw nsw i64 %polly.indvar278.1, %98
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.indvar278.1, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_288.1, %_p_scalar_284.1
  %polly.access.Packed_MemRef_call2291.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call2291.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_296.1, %_p_scalar_292.1
  %305 = shl i64 %304, 3
  %306 = add nuw nsw i64 %305, %120
  %scevgep297.1 = getelementptr i8, i8* %call, i64 %306
  %scevgep297298.1 = bitcast i8* %scevgep297.1 to double*
  %_p_scalar_299.1 = load double, double* %scevgep297298.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_299.1
  store double %p_add42.i118.1, double* %scevgep297298.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.1 = add nuw nsw i64 %polly.indvar278.1, 1
  %exitcond970.1.not = icmp eq i64 %polly.indvar278.1, %smin.1
  br i1 %exitcond970.1.not, label %polly.loop_exit277.1, label %polly.loop_header275.1

polly.loop_exit277.1:                             ; preds = %polly.loop_header275.1
  %polly.access.add.Packed_MemRef_call2286.2 = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1295.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.2
  %_p_scalar_296.2 = load double, double* %polly.access.Packed_MemRef_call1295.2, align 8
  %polly.access.Packed_MemRef_call2287.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.2
  %_p_scalar_288.2 = load double, double* %polly.access.Packed_MemRef_call2287.2, align 8
  %n.rnd.up1313 = add nsw i64 %smin1311, 4
  %n.vec1315 = and i64 %n.rnd.up1313, -4
  %broadcast.splatinsert1320 = insertelement <4 x i64> poison, i64 %smin1311, i32 0
  %broadcast.splat1321 = shufflevector <4 x i64> %broadcast.splatinsert1320, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_288.2, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1329 = insertelement <4 x double> poison, double %_p_scalar_296.2, i32 0
  %broadcast.splat1330 = shufflevector <4 x double> %broadcast.splatinsert1329, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %polly.loop_exit277.1
  %index1316 = phi i64 [ 0, %polly.loop_exit277.1 ], [ %index.next1317, %vector.body1308 ]
  %broadcast.splatinsert1322 = insertelement <4 x i64> poison, i64 %index1316, i32 0
  %broadcast.splat1323 = shufflevector <4 x i64> %broadcast.splatinsert1322, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1324 = or <4 x i64> %broadcast.splat1323, <i64 0, i64 1, i64 2, i64 3>
  %307 = icmp ule <4 x i64> %induction1324, %broadcast.splat1321
  %308 = add nuw nsw i64 %index1316, %98
  %309 = add nuw nsw i64 %index1316, %polly.access.mul.Packed_MemRef_call1281
  %310 = getelementptr double, double* %Packed_MemRef_call1, i64 %309
  %311 = bitcast double* %310 to <4 x double>*
  %wide.masked.load1325 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %311, i32 8, <4 x i1> %307, <4 x double> poison)
  %312 = fmul fast <4 x double> %broadcast.splat1327, %wide.masked.load1325
  %313 = getelementptr double, double* %Packed_MemRef_call2, i64 %309
  %314 = bitcast double* %313 to <4 x double>*
  %wide.masked.load1328 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %314, i32 8, <4 x i1> %307, <4 x double> poison)
  %315 = fmul fast <4 x double> %broadcast.splat1330, %wide.masked.load1328
  %316 = shl i64 %308, 3
  %317 = add nuw nsw i64 %316, %123
  %318 = getelementptr i8, i8* %call, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  %wide.masked.load1331 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %319, i32 8, <4 x i1> %307, <4 x double> poison), !alias.scope !71, !noalias !73
  %320 = fadd fast <4 x double> %315, %312
  %321 = fmul fast <4 x double> %320, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %322 = fadd fast <4 x double> %321, %wide.masked.load1331
  %323 = bitcast i8* %318 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %322, <4 x double>* %323, i32 8, <4 x i1> %307), !alias.scope !71, !noalias !73
  %index.next1317 = add i64 %index1316, 4
  %324 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %324, label %polly.loop_exit277.2, label %vector.body1308, !llvm.loop !118

polly.loop_exit277.2:                             ; preds = %vector.body1308
  %polly.access.add.Packed_MemRef_call2286.3 = add nuw nsw i64 %124, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1295.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.3
  %_p_scalar_296.3 = load double, double* %polly.access.Packed_MemRef_call1295.3, align 8
  %polly.access.Packed_MemRef_call2287.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.3
  %_p_scalar_288.3 = load double, double* %polly.access.Packed_MemRef_call2287.3, align 8
  %broadcast.splatinsert1300 = insertelement <4 x double> poison, double %_p_scalar_288.3, i32 0
  %broadcast.splat1301 = shufflevector <4 x double> %broadcast.splatinsert1300, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1303 = insertelement <4 x double> poison, double %_p_scalar_296.3, i32 0
  %broadcast.splat1304 = shufflevector <4 x double> %broadcast.splatinsert1303, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_exit277.2
  %index1292 = phi i64 [ 0, %polly.loop_exit277.2 ], [ %index.next1293, %vector.body1290 ]
  %325 = add nuw nsw i64 %index1292, %98
  %326 = add nuw nsw i64 %index1292, %polly.access.mul.Packed_MemRef_call1281
  %327 = getelementptr double, double* %Packed_MemRef_call1, i64 %326
  %328 = bitcast double* %327 to <4 x double>*
  %wide.load1299 = load <4 x double>, <4 x double>* %328, align 8
  %329 = fmul fast <4 x double> %broadcast.splat1301, %wide.load1299
  %330 = getelementptr double, double* %Packed_MemRef_call2, i64 %326
  %331 = bitcast double* %330 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %331, align 8
  %332 = fmul fast <4 x double> %broadcast.splat1304, %wide.load1302
  %333 = shl i64 %325, 3
  %334 = add nuw nsw i64 %333, %126
  %335 = getelementptr i8, i8* %call, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %336, align 8, !alias.scope !71, !noalias !73
  %337 = fadd fast <4 x double> %332, %329
  %338 = fmul fast <4 x double> %337, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %339 = fadd fast <4 x double> %338, %wide.load1305
  %340 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %339, <4 x double>* %340, align 8, !alias.scope !71, !noalias !73
  %index.next1293 = add i64 %index1292, 4
  %341 = icmp eq i64 %index1292, 0
  br i1 %341, label %polly.loop_exit277.3, label %vector.body1290, !llvm.loop !119

polly.loop_exit277.3:                             ; preds = %vector.body1290
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next267, 20
  br i1 %exitcond972.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header483.1:                           ; preds = %polly.loop_header483.1, %polly.loop_exit485
  %polly.indvar486.1 = phi i64 [ 0, %polly.loop_exit485 ], [ %polly.indvar_next487.1, %polly.loop_header483.1 ]
  %342 = add nuw nsw i64 %polly.indvar486.1, %141
  %polly.access.add.Packed_MemRef_call1305490.1 = add nuw nsw i64 %polly.indvar486.1, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.1
  %_p_scalar_492.1 = load double, double* %polly.access.Packed_MemRef_call1305491.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_496.1, %_p_scalar_492.1
  %polly.access.Packed_MemRef_call2307499.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call2307499.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_504.1, %_p_scalar_500.1
  %343 = shl i64 %342, 3
  %344 = add nuw nsw i64 %343, %163
  %scevgep505.1 = getelementptr i8, i8* %call, i64 %344
  %scevgep505506.1 = bitcast i8* %scevgep505.1 to double*
  %_p_scalar_507.1 = load double, double* %scevgep505506.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_507.1
  store double %p_add42.i79.1, double* %scevgep505506.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.1 = add nuw nsw i64 %polly.indvar486.1, 1
  %exitcond991.1.not = icmp eq i64 %polly.indvar486.1, %smin990.1
  br i1 %exitcond991.1.not, label %polly.loop_exit485.1, label %polly.loop_header483.1

polly.loop_exit485.1:                             ; preds = %polly.loop_header483.1
  %polly.access.add.Packed_MemRef_call2307494.2 = add nuw nsw i64 %164, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305503.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.2
  %_p_scalar_504.2 = load double, double* %polly.access.Packed_MemRef_call1305503.2, align 8
  %polly.access.Packed_MemRef_call2307495.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.2
  %_p_scalar_496.2 = load double, double* %polly.access.Packed_MemRef_call2307495.2, align 8
  %n.rnd.up1243 = add nsw i64 %smin1241, 4
  %n.vec1245 = and i64 %n.rnd.up1243, -4
  %broadcast.splatinsert1250 = insertelement <4 x i64> poison, i64 %smin1241, i32 0
  %broadcast.splat1251 = shufflevector <4 x i64> %broadcast.splatinsert1250, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_496.2, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x double> poison, double %_p_scalar_504.2, i32 0
  %broadcast.splat1260 = shufflevector <4 x double> %broadcast.splatinsert1259, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_exit485.1
  %index1246 = phi i64 [ 0, %polly.loop_exit485.1 ], [ %index.next1247, %vector.body1238 ]
  %broadcast.splatinsert1252 = insertelement <4 x i64> poison, i64 %index1246, i32 0
  %broadcast.splat1253 = shufflevector <4 x i64> %broadcast.splatinsert1252, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1254 = or <4 x i64> %broadcast.splat1253, <i64 0, i64 1, i64 2, i64 3>
  %345 = icmp ule <4 x i64> %induction1254, %broadcast.splat1251
  %346 = add nuw nsw i64 %index1246, %141
  %347 = add nuw nsw i64 %index1246, %polly.access.mul.Packed_MemRef_call1305489
  %348 = getelementptr double, double* %Packed_MemRef_call1305, i64 %347
  %349 = bitcast double* %348 to <4 x double>*
  %wide.masked.load1255 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %349, i32 8, <4 x i1> %345, <4 x double> poison)
  %350 = fmul fast <4 x double> %broadcast.splat1257, %wide.masked.load1255
  %351 = getelementptr double, double* %Packed_MemRef_call2307, i64 %347
  %352 = bitcast double* %351 to <4 x double>*
  %wide.masked.load1258 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %352, i32 8, <4 x i1> %345, <4 x double> poison)
  %353 = fmul fast <4 x double> %broadcast.splat1260, %wide.masked.load1258
  %354 = shl i64 %346, 3
  %355 = add nuw nsw i64 %354, %166
  %356 = getelementptr i8, i8* %call, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  %wide.masked.load1261 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %357, i32 8, <4 x i1> %345, <4 x double> poison), !alias.scope !83, !noalias !85
  %358 = fadd fast <4 x double> %353, %350
  %359 = fmul fast <4 x double> %358, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %360 = fadd fast <4 x double> %359, %wide.masked.load1261
  %361 = bitcast i8* %356 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %360, <4 x double>* %361, i32 8, <4 x i1> %345), !alias.scope !83, !noalias !85
  %index.next1247 = add i64 %index1246, 4
  %362 = icmp eq i64 %index.next1247, %n.vec1245
  br i1 %362, label %polly.loop_exit485.2, label %vector.body1238, !llvm.loop !120

polly.loop_exit485.2:                             ; preds = %vector.body1238
  %polly.access.add.Packed_MemRef_call2307494.3 = add nuw nsw i64 %167, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305503.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.3
  %_p_scalar_504.3 = load double, double* %polly.access.Packed_MemRef_call1305503.3, align 8
  %polly.access.Packed_MemRef_call2307495.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.3
  %_p_scalar_496.3 = load double, double* %polly.access.Packed_MemRef_call2307495.3, align 8
  %broadcast.splatinsert1230 = insertelement <4 x double> poison, double %_p_scalar_496.3, i32 0
  %broadcast.splat1231 = shufflevector <4 x double> %broadcast.splatinsert1230, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1233 = insertelement <4 x double> poison, double %_p_scalar_504.3, i32 0
  %broadcast.splat1234 = shufflevector <4 x double> %broadcast.splatinsert1233, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_exit485.2
  %index1222 = phi i64 [ 0, %polly.loop_exit485.2 ], [ %index.next1223, %vector.body1220 ]
  %363 = add nuw nsw i64 %index1222, %141
  %364 = add nuw nsw i64 %index1222, %polly.access.mul.Packed_MemRef_call1305489
  %365 = getelementptr double, double* %Packed_MemRef_call1305, i64 %364
  %366 = bitcast double* %365 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %366, align 8
  %367 = fmul fast <4 x double> %broadcast.splat1231, %wide.load1229
  %368 = getelementptr double, double* %Packed_MemRef_call2307, i64 %364
  %369 = bitcast double* %368 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %369, align 8
  %370 = fmul fast <4 x double> %broadcast.splat1234, %wide.load1232
  %371 = shl i64 %363, 3
  %372 = add nuw nsw i64 %371, %169
  %373 = getelementptr i8, i8* %call, i64 %372
  %374 = bitcast i8* %373 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %374, align 8, !alias.scope !83, !noalias !85
  %375 = fadd fast <4 x double> %370, %367
  %376 = fmul fast <4 x double> %375, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %377 = fadd fast <4 x double> %376, %wide.load1235
  %378 = bitcast i8* %373 to <4 x double>*
  store <4 x double> %377, <4 x double>* %378, align 8, !alias.scope !83, !noalias !85
  %index.next1223 = add i64 %index1222, 4
  %379 = icmp eq i64 %index1222, 0
  br i1 %379, label %polly.loop_exit485.3, label %vector.body1220, !llvm.loop !121

polly.loop_exit485.3:                             ; preds = %vector.body1220
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next475, 20
  br i1 %exitcond993.not, label %polly.loop_exit473, label %polly.loop_header471

polly.loop_header691.1:                           ; preds = %polly.loop_header691.1, %polly.loop_exit693
  %polly.indvar694.1 = phi i64 [ 0, %polly.loop_exit693 ], [ %polly.indvar_next695.1, %polly.loop_header691.1 ]
  %380 = add nuw nsw i64 %polly.indvar694.1, %184
  %polly.access.add.Packed_MemRef_call1513698.1 = add nuw nsw i64 %polly.indvar694.1, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.1
  %_p_scalar_700.1 = load double, double* %polly.access.Packed_MemRef_call1513699.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_704.1, %_p_scalar_700.1
  %polly.access.Packed_MemRef_call2515707.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.1
  %_p_scalar_708.1 = load double, double* %polly.access.Packed_MemRef_call2515707.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_712.1, %_p_scalar_708.1
  %381 = shl i64 %380, 3
  %382 = add nuw nsw i64 %381, %206
  %scevgep713.1 = getelementptr i8, i8* %call, i64 %382
  %scevgep713714.1 = bitcast i8* %scevgep713.1 to double*
  %_p_scalar_715.1 = load double, double* %scevgep713714.1, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_715.1
  store double %p_add42.i.1, double* %scevgep713714.1, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.1 = add nuw nsw i64 %polly.indvar694.1, 1
  %exitcond1012.1.not = icmp eq i64 %polly.indvar694.1, %smin1011.1
  br i1 %exitcond1012.1.not, label %polly.loop_exit693.1, label %polly.loop_header691.1

polly.loop_exit693.1:                             ; preds = %polly.loop_header691.1
  %polly.access.add.Packed_MemRef_call2515702.2 = add nuw nsw i64 %207, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513711.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.2
  %_p_scalar_712.2 = load double, double* %polly.access.Packed_MemRef_call1513711.2, align 8
  %polly.access.Packed_MemRef_call2515703.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.2
  %_p_scalar_704.2 = load double, double* %polly.access.Packed_MemRef_call2515703.2, align 8
  %n.rnd.up = add nsw i64 %smin1174, 4
  %n.vec1177 = and i64 %n.rnd.up, -4
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %smin1174, i32 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1186 = insertelement <4 x double> poison, double %_p_scalar_704.2, i32 0
  %broadcast.splat1187 = shufflevector <4 x double> %broadcast.splatinsert1186, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1189 = insertelement <4 x double> poison, double %_p_scalar_712.2, i32 0
  %broadcast.splat1190 = shufflevector <4 x double> %broadcast.splatinsert1189, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_exit693.1
  %index1178 = phi i64 [ 0, %polly.loop_exit693.1 ], [ %index.next1179, %vector.body1171 ]
  %broadcast.splatinsert1183 = insertelement <4 x i64> poison, i64 %index1178, i32 0
  %broadcast.splat1184 = shufflevector <4 x i64> %broadcast.splatinsert1183, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1185 = or <4 x i64> %broadcast.splat1184, <i64 0, i64 1, i64 2, i64 3>
  %383 = icmp ule <4 x i64> %induction1185, %broadcast.splat1182
  %384 = add nuw nsw i64 %index1178, %184
  %385 = add nuw nsw i64 %index1178, %polly.access.mul.Packed_MemRef_call1513697
  %386 = getelementptr double, double* %Packed_MemRef_call1513, i64 %385
  %387 = bitcast double* %386 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %387, i32 8, <4 x i1> %383, <4 x double> poison)
  %388 = fmul fast <4 x double> %broadcast.splat1187, %wide.masked.load
  %389 = getelementptr double, double* %Packed_MemRef_call2515, i64 %385
  %390 = bitcast double* %389 to <4 x double>*
  %wide.masked.load1188 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %390, i32 8, <4 x i1> %383, <4 x double> poison)
  %391 = fmul fast <4 x double> %broadcast.splat1190, %wide.masked.load1188
  %392 = shl i64 %384, 3
  %393 = add nuw nsw i64 %392, %209
  %394 = getelementptr i8, i8* %call, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  %wide.masked.load1191 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %395, i32 8, <4 x i1> %383, <4 x double> poison), !alias.scope !94, !noalias !96
  %396 = fadd fast <4 x double> %391, %388
  %397 = fmul fast <4 x double> %396, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %398 = fadd fast <4 x double> %397, %wide.masked.load1191
  %399 = bitcast i8* %394 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %398, <4 x double>* %399, i32 8, <4 x i1> %383), !alias.scope !94, !noalias !96
  %index.next1179 = add i64 %index1178, 4
  %400 = icmp eq i64 %index.next1179, %n.vec1177
  br i1 %400, label %polly.loop_exit693.2, label %vector.body1171, !llvm.loop !122

polly.loop_exit693.2:                             ; preds = %vector.body1171
  %polly.access.add.Packed_MemRef_call2515702.3 = add nuw nsw i64 %210, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513711.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.3
  %_p_scalar_712.3 = load double, double* %polly.access.Packed_MemRef_call1513711.3, align 8
  %polly.access.Packed_MemRef_call2515703.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.3
  %_p_scalar_704.3 = load double, double* %polly.access.Packed_MemRef_call2515703.3, align 8
  %broadcast.splatinsert1163 = insertelement <4 x double> poison, double %_p_scalar_704.3, i32 0
  %broadcast.splat1164 = shufflevector <4 x double> %broadcast.splatinsert1163, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1166 = insertelement <4 x double> poison, double %_p_scalar_712.3, i32 0
  %broadcast.splat1167 = shufflevector <4 x double> %broadcast.splatinsert1166, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %polly.loop_exit693.2
  %index1156 = phi i64 [ 0, %polly.loop_exit693.2 ], [ %index.next1157, %vector.body1154 ]
  %401 = add nuw nsw i64 %index1156, %184
  %402 = add nuw nsw i64 %index1156, %polly.access.mul.Packed_MemRef_call1513697
  %403 = getelementptr double, double* %Packed_MemRef_call1513, i64 %402
  %404 = bitcast double* %403 to <4 x double>*
  %wide.load1162 = load <4 x double>, <4 x double>* %404, align 8
  %405 = fmul fast <4 x double> %broadcast.splat1164, %wide.load1162
  %406 = getelementptr double, double* %Packed_MemRef_call2515, i64 %402
  %407 = bitcast double* %406 to <4 x double>*
  %wide.load1165 = load <4 x double>, <4 x double>* %407, align 8
  %408 = fmul fast <4 x double> %broadcast.splat1167, %wide.load1165
  %409 = shl i64 %401, 3
  %410 = add nuw nsw i64 %409, %212
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  %wide.load1168 = load <4 x double>, <4 x double>* %412, align 8, !alias.scope !94, !noalias !96
  %413 = fadd fast <4 x double> %408, %405
  %414 = fmul fast <4 x double> %413, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %415 = fadd fast <4 x double> %414, %wide.load1168
  %416 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %415, <4 x double>* %416, align 8, !alias.scope !94, !noalias !96
  %index.next1157 = add i64 %index1156, 4
  %417 = icmp eq i64 %index1156, 0
  br i1 %417, label %polly.loop_exit693.3, label %vector.body1154, !llvm.loop !123

polly.loop_exit693.3:                             ; preds = %vector.body1154
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next683, 20
  br i1 %exitcond1014.not, label %polly.loop_exit681, label %polly.loop_header679
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
!26 = !{!"llvm.loop.tile.size", i32 4}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !26, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88, !89}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !80, !13}
!92 = !{!83, !86, !88, !89}
!93 = !{!83, !87, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98, !99, !100}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !95, !"polly.alias.scope.Packed_MemRef_call1"}
!100 = distinct !{!100, !95, !"polly.alias.scope.Packed_MemRef_call2"}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !80, !13}
!103 = !{!94, !97, !99, !100}
!104 = !{!94, !98, !99, !100}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !80, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !80, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
