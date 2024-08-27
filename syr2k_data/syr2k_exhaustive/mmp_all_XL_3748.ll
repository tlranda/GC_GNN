; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3748.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3748.c"
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
  %call862 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1714 = bitcast i8* %call1 to double*
  %polly.access.call1723 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1723, %call2
  %polly.access.call2743 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2743, %call1
  %2 = or i1 %0, %1
  %polly.access.call763 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call763, %call2
  %4 = icmp ule i8* %polly.access.call2743, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call763, %call1
  %8 = icmp ule i8* %polly.access.call1723, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header836, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1059 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1058 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1057 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1056 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1056, %scevgep1059
  %bound1 = icmp ult i8* %scevgep1058, %scevgep1057
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
  br i1 %exitcond18.not.i, label %vector.ph1063, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1063:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1070 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1071 = shufflevector <4 x i64> %broadcast.splatinsert1070, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1063
  %index1064 = phi i64 [ 0, %vector.ph1063 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1063 ], [ %vec.ind.next1069, %vector.body1062 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1068, %broadcast.splat1071
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv7.i, i64 %index1064
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1065, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1062, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1062
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1063, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit897
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start505, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1126 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1126, label %for.body3.i46.preheader1206, label %vector.ph1127

vector.ph1127:                                    ; preds = %for.body3.i46.preheader
  %n.vec1129 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1127
  %index1130 = phi i64 [ 0, %vector.ph1127 ], [ %index.next1131, %vector.body1125 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i, i64 %index1130
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1131 = add i64 %index1130, 4
  %46 = icmp eq i64 %index.next1131, %n.vec1129
  br i1 %46, label %middle.block1123, label %vector.body1125, !llvm.loop !18

middle.block1123:                                 ; preds = %vector.body1125
  %cmp.n1133 = icmp eq i64 %indvars.iv21.i, %n.vec1129
  br i1 %cmp.n1133, label %for.inc6.i, label %for.body3.i46.preheader1206

for.body3.i46.preheader1206:                      ; preds = %for.body3.i46.preheader, %middle.block1123
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1129, %middle.block1123 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1206, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1206 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1123, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting506
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1149 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1149, label %for.body3.i60.preheader1203, label %vector.ph1150

vector.ph1150:                                    ; preds = %for.body3.i60.preheader
  %n.vec1152 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1150
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1154, %vector.body1148 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i52, i64 %index1153
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1157 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1157, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1154 = add i64 %index1153, 4
  %57 = icmp eq i64 %index.next1154, %n.vec1152
  br i1 %57, label %middle.block1146, label %vector.body1148, !llvm.loop !60

middle.block1146:                                 ; preds = %vector.body1148
  %cmp.n1156 = icmp eq i64 %indvars.iv21.i52, %n.vec1152
  br i1 %cmp.n1156, label %for.inc6.i63, label %for.body3.i60.preheader1203

for.body3.i60.preheader1203:                      ; preds = %for.body3.i60.preheader, %middle.block1146
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1152, %middle.block1146 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1203, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1203 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1175 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1175, label %for.body3.i99.preheader1200, label %vector.ph1176

vector.ph1176:                                    ; preds = %for.body3.i99.preheader
  %n.vec1178 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1176
  %index1179 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1180, %vector.body1174 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i91, i64 %index1179
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1183 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1183, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1180 = add i64 %index1179, 4
  %68 = icmp eq i64 %index.next1180, %n.vec1178
  br i1 %68, label %middle.block1172, label %vector.body1174, !llvm.loop !62

middle.block1172:                                 ; preds = %vector.body1174
  %cmp.n1182 = icmp eq i64 %indvars.iv21.i91, %n.vec1178
  br i1 %cmp.n1182, label %for.inc6.i102, label %for.body3.i99.preheader1200

for.body3.i99.preheader1200:                      ; preds = %for.body3.i99.preheader, %middle.block1172
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1178, %middle.block1172 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1200, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1200 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1172, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call862, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %indvar1187 = phi i64 [ %indvar.next1188, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1187, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1189 = icmp ult i64 %88, 4
  br i1 %min.iters.check1189, label %polly.loop_header191.preheader, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header
  %n.vec1192 = and i64 %88, -4
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1186 ]
  %90 = shl nuw nsw i64 %index1193, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1197 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1197, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1194 = add i64 %index1193, 4
  %95 = icmp eq i64 %index.next1194, %n.vec1192
  br i1 %95, label %middle.block1184, label %vector.body1186, !llvm.loop !74

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1196 = icmp eq i64 %88, %n.vec1192
  br i1 %cmp.n1196, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1184
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1192, %middle.block1184 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1184
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond956.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1188 = add i64 %indvar1187, 1
  br i1 %exitcond956.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond955.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv945 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next946, %polly.loop_exit207 ]
  %indvars.iv941 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next942, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 96, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %100, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  %98 = mul nsw i64 %polly.indvar202, -100
  %99 = add nsw i64 %98, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit257
  %100 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next942 = add nuw nsw i64 %indvars.iv941, 4
  %indvars.iv.next946 = add nsw i64 %indvars.iv945, -4
  %exitcond954.not = icmp eq i64 %100, 12
  br i1 %exitcond954.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit257, %polly.loop_header199
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit257 ], [ %indvars.iv945, %polly.loop_header199 ]
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit257 ], [ %indvars.iv941, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit257 ], [ %polly.indvar202, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv943, i64 0)
  %101 = add i64 %smax, %indvars.iv947
  %.not.not = icmp ugt i64 %polly.indvar208, %polly.indvar202
  %102 = mul nuw nsw i64 %polly.indvar208, 96
  %103 = add nsw i64 %102, %98
  %104 = add nsw i64 %103, -1
  %.inv = icmp sgt i64 %103, 99
  %105 = select i1 %.inv, i64 99, i64 %104
  %polly.loop_guard = icmp sgt i64 %105, -1
  %106 = add nsw i64 %103, 95
  %107 = icmp ult i64 %99, %106
  %108 = select i1 %107, i64 %99, i64 %106
  %polly.loop_guard231.not = icmp sgt i64 %103, %108
  br i1 %.not.not, label %polly.loop_header211.us, label %polly.loop_header211

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.us ], [ 0, %polly.loop_header205 ]
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader.us, label %polly.loop_exit219.us

polly.loop_header217.us:                          ; preds = %polly.loop_header217.preheader.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header217.preheader.us ]
  %109 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.call1224.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw i64 %polly.indvar220.us, 1
  %exitcond939.not = icmp eq i64 %polly.indvar220.us, %105
  br i1 %exitcond939.not, label %polly.loop_exit219.us, label %polly.loop_header217.us

polly.loop_exit219.us:                            ; preds = %polly.loop_header217.us, %polly.loop_header211.us
  br i1 %polly.loop_guard231.not, label %polly.merge.us, label %polly.loop_header228.preheader.us

polly.loop_header228.us:                          ; preds = %polly.loop_header228.preheader.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %103, %polly.loop_header228.preheader.us ]
  %110 = add nsw i64 %polly.indvar232.us, %97
  %polly.access.mul.call1236.us = mul nuw nsw i64 %110, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1239.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nsw i64 %polly.indvar232.us, 1
  %polly.loop_cond234.not.not.us = icmp slt i64 %polly.indvar232.us, %108
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header228.us, %polly.loop_exit219.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond940.not, label %polly.loop_header255.preheader, label %polly.loop_header211.us

polly.loop_header228.preheader.us:                ; preds = %polly.loop_exit219.us
  %polly.access.mul.Packed_MemRef_call1239.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header228.us

polly.loop_header217.preheader.us:                ; preds = %polly.loop_header211.us
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_exit257:                               ; preds = %polly.loop_exit264, %polly.loop_header255.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, -96
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, 96
  %exitcond953.not = icmp eq i64 %polly.indvar_next209, 13
  br i1 %exitcond953.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.merge
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.merge ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1252 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header242

polly.merge:                                      ; preds = %polly.loop_header242
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond938.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond938.not, label %polly.loop_header255.preheader, label %polly.loop_header211

polly.loop_header255.preheader:                   ; preds = %polly.merge, %polly.merge.us
  %111 = sub nsw i64 %97, %102
  %112 = icmp sgt i64 %111, 0
  %113 = select i1 %112, i64 %111, i64 0
  %114 = mul nsw i64 %polly.indvar208, -96
  %115 = icmp slt i64 %114, -1104
  %116 = select i1 %115, i64 %114, i64 -1104
  %117 = add nsw i64 %116, 1199
  %polly.loop_guard265.not = icmp sgt i64 %113, %117
  br i1 %polly.loop_guard265.not, label %polly.loop_exit257, label %polly.loop_header255

polly.loop_header242:                             ; preds = %polly.loop_header242, %polly.loop_header211
  %polly.indvar245 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next246, %polly.loop_header242 ]
  %118 = add nuw nsw i64 %polly.indvar245, %97
  %polly.access.mul.call1249 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call1250 = add nuw nsw i64 %polly.access.mul.call1249, %polly.indvar214
  %polly.access.call1251 = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1250
  %polly.access.call1251.load = load double, double* %polly.access.call1251, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1253 = add nuw nsw i64 %polly.indvar245, %polly.access.mul.Packed_MemRef_call1252
  %polly.access.Packed_MemRef_call1254 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1253
  store double %polly.access.call1251.load, double* %polly.access.Packed_MemRef_call1254, align 8
  %polly.indvar_next246 = add nuw nsw i64 %polly.indvar245, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next246, %indvars.iv
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header242

polly.loop_header255:                             ; preds = %polly.loop_header255.preheader, %polly.loop_exit264
  %polly.indvar258 = phi i64 [ %polly.indvar_next259, %polly.loop_exit264 ], [ 0, %polly.loop_header255.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar258, 3
  %scevgep281 = getelementptr i8, i8* %call2, i64 %119
  %polly.access.mul.Packed_MemRef_call1277 = mul nuw nsw i64 %polly.indvar258, 1200
  br label %polly.loop_header262

polly.loop_exit264:                               ; preds = %polly.loop_exit272
  %polly.indvar_next259 = add nuw nsw i64 %polly.indvar258, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next259, 1000
  br i1 %exitcond952.not, label %polly.loop_exit257, label %polly.loop_header255

polly.loop_header262:                             ; preds = %polly.loop_exit272, %polly.loop_header255
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %polly.loop_exit272 ], [ %101, %polly.loop_header255 ]
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit272 ], [ %113, %polly.loop_header255 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv949, i64 99)
  %120 = add nuw i64 %polly.indvar266, %102
  %121 = add i64 %120, %98
  %polly.loop_guard2731042 = icmp sgt i64 %121, -1
  br i1 %polly.loop_guard2731042, label %polly.loop_header270.preheader, label %polly.loop_exit272

polly.loop_header270.preheader:                   ; preds = %polly.loop_header262
  %122 = mul i64 %120, 8000
  %scevgep282 = getelementptr i8, i8* %scevgep281, i64 %122
  %scevgep282283 = bitcast i8* %scevgep282 to double*
  %_p_scalar_284 = load double, double* %scevgep282283, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1290 = add nsw i64 %polly.access.mul.Packed_MemRef_call1277, %121
  %polly.access.Packed_MemRef_call1291 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call1291, align 8
  %123 = mul i64 %120, 9600
  br label %polly.loop_header270

polly.loop_exit272:                               ; preds = %polly.loop_header270, %polly.loop_header262
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %polly.loop_cond268.not.not = icmp slt i64 %polly.indvar266, %117
  %indvars.iv.next950 = add i64 %indvars.iv949, 1
  br i1 %polly.loop_cond268.not.not, label %polly.loop_header262, label %polly.loop_exit264

polly.loop_header270:                             ; preds = %polly.loop_header270.preheader, %polly.loop_header270
  %polly.indvar274 = phi i64 [ %polly.indvar_next275, %polly.loop_header270 ], [ 0, %polly.loop_header270.preheader ]
  %124 = add nuw nsw i64 %polly.indvar274, %97
  %polly.access.add.Packed_MemRef_call1278 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1277
  %polly.access.Packed_MemRef_call1279 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call1279, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %125 = mul nuw nsw i64 %124, 8000
  %scevgep286 = getelementptr i8, i8* %scevgep281, i64 %125
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %126 = shl i64 %124, 3
  %127 = add i64 %126, %123
  %scevgep293 = getelementptr i8, i8* %call, i64 %127
  %scevgep293294 = bitcast i8* %scevgep293 to double*
  %_p_scalar_295 = load double, double* %scevgep293294, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_295
  store double %p_add42.i118, double* %scevgep293294, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond951.not = icmp eq i64 %polly.indvar274, %smin
  br i1 %exitcond951.not, label %polly.loop_exit272, label %polly.loop_header270

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header384

polly.exiting299:                                 ; preds = %polly.loop_exit408
  tail call void @free(i8* %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start298
  %indvar1161 = phi i64 [ %indvar.next1162, %polly.loop_exit392 ], [ 0, %polly.start298 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start298 ]
  %128 = add i64 %indvar1161, 1
  %129 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1163 = icmp ult i64 %128, 4
  br i1 %min.iters.check1163, label %polly.loop_header390.preheader, label %vector.ph1164

vector.ph1164:                                    ; preds = %polly.loop_header384
  %n.vec1166 = and i64 %128, -4
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1164
  %index1167 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1168, %vector.body1160 ]
  %130 = shl nuw nsw i64 %index1167, 3
  %131 = getelementptr i8, i8* %scevgep396, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1171 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !79, !noalias !81
  %133 = fmul fast <4 x double> %wide.load1171, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !79, !noalias !81
  %index.next1168 = add i64 %index1167, 4
  %135 = icmp eq i64 %index.next1168, %n.vec1166
  br i1 %135, label %middle.block1158, label %vector.body1160, !llvm.loop !85

middle.block1158:                                 ; preds = %vector.body1160
  %cmp.n1170 = icmp eq i64 %128, %n.vec1166
  br i1 %cmp.n1170, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1158
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1166, %middle.block1158 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1158
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1162 = add i64 %indvar1161, 1
  br i1 %exitcond980.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %136
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond979.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !86

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit408
  %indvars.iv968 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next969, %polly.loop_exit408 ]
  %indvars.iv963 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next964, %polly.loop_exit408 ]
  %indvars.iv957 = phi i64 [ 96, %polly.loop_header400.preheader ], [ %indvars.iv.next958, %polly.loop_exit408 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %140, %polly.loop_exit408 ]
  %137 = mul nuw nsw i64 %polly.indvar403, 100
  %138 = mul nsw i64 %polly.indvar403, -100
  %139 = add nsw i64 %138, 1199
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit464
  %140 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -4
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 4
  %indvars.iv.next969 = add nsw i64 %indvars.iv968, -4
  %exitcond978.not = icmp eq i64 %140, 12
  br i1 %exitcond978.not, label %polly.exiting299, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit464, %polly.loop_header400
  %indvars.iv970 = phi i64 [ %indvars.iv.next971, %polly.loop_exit464 ], [ %indvars.iv968, %polly.loop_header400 ]
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit464 ], [ %indvars.iv963, %polly.loop_header400 ]
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit464 ], [ %polly.indvar403, %polly.loop_header400 ]
  %smax967 = call i64 @llvm.smax.i64(i64 %indvars.iv965, i64 0)
  %141 = add i64 %smax967, %indvars.iv970
  %.not.not916 = icmp ugt i64 %polly.indvar409, %polly.indvar403
  %142 = mul nuw nsw i64 %polly.indvar409, 96
  %143 = add nsw i64 %142, %138
  %144 = add nsw i64 %143, -1
  %.inv917 = icmp sgt i64 %143, 99
  %145 = select i1 %.inv917, i64 99, i64 %144
  %polly.loop_guard426 = icmp sgt i64 %145, -1
  %146 = add nsw i64 %143, 95
  %147 = icmp ult i64 %139, %146
  %148 = select i1 %147, i64 %139, i64 %146
  %polly.loop_guard438.not = icmp sgt i64 %143, %148
  br i1 %.not.not916, label %polly.loop_header412.us, label %polly.loop_header412

polly.loop_header412.us:                          ; preds = %polly.loop_header406, %polly.merge419.us
  %polly.indvar415.us = phi i64 [ %polly.indvar_next416.us, %polly.merge419.us ], [ 0, %polly.loop_header406 ]
  br i1 %polly.loop_guard426, label %polly.loop_header423.preheader.us, label %polly.loop_exit425.us

polly.loop_header423.us:                          ; preds = %polly.loop_header423.preheader.us, %polly.loop_header423.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_header423.us ], [ 0, %polly.loop_header423.preheader.us ]
  %149 = add nuw nsw i64 %polly.indvar427.us, %137
  %polly.access.mul.call1431.us = mul nuw nsw i64 %149, 1000
  %polly.access.add.call1432.us = add nuw nsw i64 %polly.access.mul.call1431.us, %polly.indvar415.us
  %polly.access.call1433.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1432.us
  %polly.access.call1433.load.us = load double, double* %polly.access.call1433.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar427.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1433.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next428.us = add nuw i64 %polly.indvar427.us, 1
  %exitcond961.not = icmp eq i64 %polly.indvar427.us, %145
  br i1 %exitcond961.not, label %polly.loop_exit425.us, label %polly.loop_header423.us

polly.loop_exit425.us:                            ; preds = %polly.loop_header423.us, %polly.loop_header412.us
  br i1 %polly.loop_guard438.not, label %polly.merge419.us, label %polly.loop_header435.preheader.us

polly.loop_header435.us:                          ; preds = %polly.loop_header435.preheader.us, %polly.loop_header435.us
  %polly.indvar439.us = phi i64 [ %polly.indvar_next440.us, %polly.loop_header435.us ], [ %143, %polly.loop_header435.preheader.us ]
  %150 = add nsw i64 %polly.indvar439.us, %137
  %polly.access.mul.call1443.us = mul nuw nsw i64 %150, 1000
  %polly.access.add.call1444.us = add nuw nsw i64 %polly.access.mul.call1443.us, %polly.indvar415.us
  %polly.access.call1445.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1444.us
  %polly.access.call1445.load.us = load double, double* %polly.access.call1445.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301447.us = add nsw i64 %polly.indvar439.us, %polly.access.mul.Packed_MemRef_call1301446.us
  %polly.access.Packed_MemRef_call1301448.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301447.us
  store double %polly.access.call1445.load.us, double* %polly.access.Packed_MemRef_call1301448.us, align 8
  %polly.indvar_next440.us = add nsw i64 %polly.indvar439.us, 1
  %polly.loop_cond441.not.not.us = icmp slt i64 %polly.indvar439.us, %148
  br i1 %polly.loop_cond441.not.not.us, label %polly.loop_header435.us, label %polly.merge419.us

polly.merge419.us:                                ; preds = %polly.loop_header435.us, %polly.loop_exit425.us
  %polly.indvar_next416.us = add nuw nsw i64 %polly.indvar415.us, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next416.us, 1000
  br i1 %exitcond962.not, label %polly.loop_header462.preheader, label %polly.loop_header412.us

polly.loop_header435.preheader.us:                ; preds = %polly.loop_exit425.us
  %polly.access.mul.Packed_MemRef_call1301446.us = mul nuw nsw i64 %polly.indvar415.us, 1200
  br label %polly.loop_header435.us

polly.loop_header423.preheader.us:                ; preds = %polly.loop_header412.us
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar415.us, 1200
  br label %polly.loop_header423.us

polly.loop_exit464:                               ; preds = %polly.loop_exit471, %polly.loop_header462.preheader
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, -96
  %indvars.iv.next971 = add nsw i64 %indvars.iv970, 96
  %exitcond977.not = icmp eq i64 %polly.indvar_next410, 13
  br i1 %exitcond977.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_header406, %polly.merge419
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.merge419 ], [ 0, %polly.loop_header406 ]
  %polly.access.mul.Packed_MemRef_call1301459 = mul nuw nsw i64 %polly.indvar415, 1200
  br label %polly.loop_header449

polly.merge419:                                   ; preds = %polly.loop_header449
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond960.not = icmp eq i64 %polly.indvar_next416, 1000
  br i1 %exitcond960.not, label %polly.loop_header462.preheader, label %polly.loop_header412

polly.loop_header462.preheader:                   ; preds = %polly.merge419, %polly.merge419.us
  %151 = sub nsw i64 %137, %142
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  %154 = mul nsw i64 %polly.indvar409, -96
  %155 = icmp slt i64 %154, -1104
  %156 = select i1 %155, i64 %154, i64 -1104
  %157 = add nsw i64 %156, 1199
  %polly.loop_guard472.not = icmp sgt i64 %153, %157
  br i1 %polly.loop_guard472.not, label %polly.loop_exit464, label %polly.loop_header462

polly.loop_header449:                             ; preds = %polly.loop_header449, %polly.loop_header412
  %polly.indvar452 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next453, %polly.loop_header449 ]
  %158 = add nuw nsw i64 %polly.indvar452, %137
  %polly.access.mul.call1456 = mul nuw nsw i64 %158, 1000
  %polly.access.add.call1457 = add nuw nsw i64 %polly.access.mul.call1456, %polly.indvar415
  %polly.access.call1458 = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1457
  %polly.access.call1458.load = load double, double* %polly.access.call1458, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301460 = add nuw nsw i64 %polly.indvar452, %polly.access.mul.Packed_MemRef_call1301459
  %polly.access.Packed_MemRef_call1301461 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301460
  store double %polly.access.call1458.load, double* %polly.access.Packed_MemRef_call1301461, align 8
  %polly.indvar_next453 = add nuw nsw i64 %polly.indvar452, 1
  %exitcond959.not = icmp eq i64 %polly.indvar_next453, %indvars.iv957
  br i1 %exitcond959.not, label %polly.merge419, label %polly.loop_header449

polly.loop_header462:                             ; preds = %polly.loop_header462.preheader, %polly.loop_exit471
  %polly.indvar465 = phi i64 [ %polly.indvar_next466, %polly.loop_exit471 ], [ 0, %polly.loop_header462.preheader ]
  %159 = shl nuw nsw i64 %polly.indvar465, 3
  %scevgep488 = getelementptr i8, i8* %call2, i64 %159
  %polly.access.mul.Packed_MemRef_call1301484 = mul nuw nsw i64 %polly.indvar465, 1200
  br label %polly.loop_header469

polly.loop_exit471:                               ; preds = %polly.loop_exit479
  %polly.indvar_next466 = add nuw nsw i64 %polly.indvar465, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next466, 1000
  br i1 %exitcond976.not, label %polly.loop_exit464, label %polly.loop_header462

polly.loop_header469:                             ; preds = %polly.loop_exit479, %polly.loop_header462
  %indvars.iv972 = phi i64 [ %indvars.iv.next973, %polly.loop_exit479 ], [ %141, %polly.loop_header462 ]
  %polly.indvar473 = phi i64 [ %polly.indvar_next474, %polly.loop_exit479 ], [ %153, %polly.loop_header462 ]
  %smin974 = call i64 @llvm.smin.i64(i64 %indvars.iv972, i64 99)
  %160 = add nuw i64 %polly.indvar473, %142
  %161 = add i64 %160, %138
  %polly.loop_guard4801043 = icmp sgt i64 %161, -1
  br i1 %polly.loop_guard4801043, label %polly.loop_header477.preheader, label %polly.loop_exit479

polly.loop_header477.preheader:                   ; preds = %polly.loop_header469
  %162 = mul i64 %160, 8000
  %scevgep489 = getelementptr i8, i8* %scevgep488, i64 %162
  %scevgep489490 = bitcast i8* %scevgep489 to double*
  %_p_scalar_491 = load double, double* %scevgep489490, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1301497 = add nsw i64 %polly.access.mul.Packed_MemRef_call1301484, %161
  %polly.access.Packed_MemRef_call1301498 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301497
  %_p_scalar_499 = load double, double* %polly.access.Packed_MemRef_call1301498, align 8
  %163 = mul i64 %160, 9600
  br label %polly.loop_header477

polly.loop_exit479:                               ; preds = %polly.loop_header477, %polly.loop_header469
  %polly.indvar_next474 = add nuw nsw i64 %polly.indvar473, 1
  %polly.loop_cond475.not.not = icmp slt i64 %polly.indvar473, %157
  %indvars.iv.next973 = add i64 %indvars.iv972, 1
  br i1 %polly.loop_cond475.not.not, label %polly.loop_header469, label %polly.loop_exit471

polly.loop_header477:                             ; preds = %polly.loop_header477.preheader, %polly.loop_header477
  %polly.indvar481 = phi i64 [ %polly.indvar_next482, %polly.loop_header477 ], [ 0, %polly.loop_header477.preheader ]
  %164 = add nuw nsw i64 %polly.indvar481, %137
  %polly.access.add.Packed_MemRef_call1301485 = add nuw nsw i64 %polly.indvar481, %polly.access.mul.Packed_MemRef_call1301484
  %polly.access.Packed_MemRef_call1301486 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301485
  %_p_scalar_487 = load double, double* %polly.access.Packed_MemRef_call1301486, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_491, %_p_scalar_487
  %165 = mul nuw nsw i64 %164, 8000
  %scevgep493 = getelementptr i8, i8* %scevgep488, i64 %165
  %scevgep493494 = bitcast i8* %scevgep493 to double*
  %_p_scalar_495 = load double, double* %scevgep493494, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_499, %_p_scalar_495
  %166 = shl i64 %164, 3
  %167 = add i64 %166, %163
  %scevgep500 = getelementptr i8, i8* %call, i64 %167
  %scevgep500501 = bitcast i8* %scevgep500 to double*
  %_p_scalar_502 = load double, double* %scevgep500501, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_502
  store double %p_add42.i79, double* %scevgep500501, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next482 = add nuw nsw i64 %polly.indvar481, 1
  %exitcond975.not = icmp eq i64 %polly.indvar481, %smin974
  br i1 %exitcond975.not, label %polly.loop_exit479, label %polly.loop_header477

polly.start505:                                   ; preds = %init_array.exit
  %malloccall507 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header591

polly.exiting506:                                 ; preds = %polly.loop_exit615
  tail call void @free(i8* %malloccall507)
  br label %kernel_syr2k.exit

polly.loop_header591:                             ; preds = %polly.loop_exit599, %polly.start505
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit599 ], [ 0, %polly.start505 ]
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit599 ], [ 1, %polly.start505 ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar594, 9600
  %scevgep603 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check1137 = icmp ult i64 %168, 4
  br i1 %min.iters.check1137, label %polly.loop_header597.preheader, label %vector.ph1138

vector.ph1138:                                    ; preds = %polly.loop_header591
  %n.vec1140 = and i64 %168, -4
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1138
  %index1141 = phi i64 [ 0, %vector.ph1138 ], [ %index.next1142, %vector.body1136 ]
  %170 = shl nuw nsw i64 %index1141, 3
  %171 = getelementptr i8, i8* %scevgep603, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1145 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !89, !noalias !91
  %173 = fmul fast <4 x double> %wide.load1145, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !89, !noalias !91
  %index.next1142 = add i64 %index1141, 4
  %175 = icmp eq i64 %index.next1142, %n.vec1140
  br i1 %175, label %middle.block1134, label %vector.body1136, !llvm.loop !95

middle.block1134:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %168, %n.vec1140
  br i1 %cmp.n1144, label %polly.loop_exit599, label %polly.loop_header597.preheader

polly.loop_header597.preheader:                   ; preds = %polly.loop_header591, %middle.block1134
  %polly.indvar600.ph = phi i64 [ 0, %polly.loop_header591 ], [ %n.vec1140, %middle.block1134 ]
  br label %polly.loop_header597

polly.loop_exit599:                               ; preds = %polly.loop_header597, %middle.block1134
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next595, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1004.not, label %polly.loop_header607.preheader, label %polly.loop_header591

polly.loop_header607.preheader:                   ; preds = %polly.loop_exit599
  %Packed_MemRef_call1508 = bitcast i8* %malloccall507 to double*
  br label %polly.loop_header607

polly.loop_header597:                             ; preds = %polly.loop_header597.preheader, %polly.loop_header597
  %polly.indvar600 = phi i64 [ %polly.indvar_next601, %polly.loop_header597 ], [ %polly.indvar600.ph, %polly.loop_header597.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar600, 3
  %scevgep604 = getelementptr i8, i8* %scevgep603, i64 %176
  %scevgep604605 = bitcast i8* %scevgep604 to double*
  %_p_scalar_606 = load double, double* %scevgep604605, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_606, 1.200000e+00
  store double %p_mul.i, double* %scevgep604605, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next601 = add nuw nsw i64 %polly.indvar600, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next601, %polly.indvar594
  br i1 %exitcond1003.not, label %polly.loop_exit599, label %polly.loop_header597, !llvm.loop !96

polly.loop_header607:                             ; preds = %polly.loop_header607.preheader, %polly.loop_exit615
  %indvars.iv992 = phi i64 [ 0, %polly.loop_header607.preheader ], [ %indvars.iv.next993, %polly.loop_exit615 ]
  %indvars.iv987 = phi i64 [ 0, %polly.loop_header607.preheader ], [ %indvars.iv.next988, %polly.loop_exit615 ]
  %indvars.iv981 = phi i64 [ 96, %polly.loop_header607.preheader ], [ %indvars.iv.next982, %polly.loop_exit615 ]
  %polly.indvar610 = phi i64 [ 0, %polly.loop_header607.preheader ], [ %180, %polly.loop_exit615 ]
  %177 = mul nuw nsw i64 %polly.indvar610, 100
  %178 = mul nsw i64 %polly.indvar610, -100
  %179 = add nsw i64 %178, 1199
  br label %polly.loop_header613

polly.loop_exit615:                               ; preds = %polly.loop_exit671
  %180 = add nuw nsw i64 %polly.indvar610, 1
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -4
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 4
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, -4
  %exitcond1002.not = icmp eq i64 %180, 12
  br i1 %exitcond1002.not, label %polly.exiting506, label %polly.loop_header607

polly.loop_header613:                             ; preds = %polly.loop_exit671, %polly.loop_header607
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %polly.loop_exit671 ], [ %indvars.iv992, %polly.loop_header607 ]
  %indvars.iv989 = phi i64 [ %indvars.iv.next990, %polly.loop_exit671 ], [ %indvars.iv987, %polly.loop_header607 ]
  %polly.indvar616 = phi i64 [ %polly.indvar_next617, %polly.loop_exit671 ], [ %polly.indvar610, %polly.loop_header607 ]
  %smax991 = call i64 @llvm.smax.i64(i64 %indvars.iv989, i64 0)
  %181 = add i64 %smax991, %indvars.iv994
  %.not.not918 = icmp ugt i64 %polly.indvar616, %polly.indvar610
  %182 = mul nuw nsw i64 %polly.indvar616, 96
  %183 = add nsw i64 %182, %178
  %184 = add nsw i64 %183, -1
  %.inv919 = icmp sgt i64 %183, 99
  %185 = select i1 %.inv919, i64 99, i64 %184
  %polly.loop_guard633 = icmp sgt i64 %185, -1
  %186 = add nsw i64 %183, 95
  %187 = icmp ult i64 %179, %186
  %188 = select i1 %187, i64 %179, i64 %186
  %polly.loop_guard645.not = icmp sgt i64 %183, %188
  br i1 %.not.not918, label %polly.loop_header619.us, label %polly.loop_header619

polly.loop_header619.us:                          ; preds = %polly.loop_header613, %polly.merge626.us
  %polly.indvar622.us = phi i64 [ %polly.indvar_next623.us, %polly.merge626.us ], [ 0, %polly.loop_header613 ]
  br i1 %polly.loop_guard633, label %polly.loop_header630.preheader.us, label %polly.loop_exit632.us

polly.loop_header630.us:                          ; preds = %polly.loop_header630.preheader.us, %polly.loop_header630.us
  %polly.indvar634.us = phi i64 [ %polly.indvar_next635.us, %polly.loop_header630.us ], [ 0, %polly.loop_header630.preheader.us ]
  %189 = add nuw nsw i64 %polly.indvar634.us, %177
  %polly.access.mul.call1638.us = mul nuw nsw i64 %189, 1000
  %polly.access.add.call1639.us = add nuw nsw i64 %polly.access.mul.call1638.us, %polly.indvar622.us
  %polly.access.call1640.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1639.us
  %polly.access.call1640.load.us = load double, double* %polly.access.call1640.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1508.us = add nuw nsw i64 %polly.indvar634.us, %polly.access.mul.Packed_MemRef_call1508.us
  %polly.access.Packed_MemRef_call1508.us = getelementptr double, double* %Packed_MemRef_call1508, i64 %polly.access.add.Packed_MemRef_call1508.us
  store double %polly.access.call1640.load.us, double* %polly.access.Packed_MemRef_call1508.us, align 8
  %polly.indvar_next635.us = add nuw i64 %polly.indvar634.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar634.us, %185
  br i1 %exitcond985.not, label %polly.loop_exit632.us, label %polly.loop_header630.us

polly.loop_exit632.us:                            ; preds = %polly.loop_header630.us, %polly.loop_header619.us
  br i1 %polly.loop_guard645.not, label %polly.merge626.us, label %polly.loop_header642.preheader.us

polly.loop_header642.us:                          ; preds = %polly.loop_header642.preheader.us, %polly.loop_header642.us
  %polly.indvar646.us = phi i64 [ %polly.indvar_next647.us, %polly.loop_header642.us ], [ %183, %polly.loop_header642.preheader.us ]
  %190 = add nsw i64 %polly.indvar646.us, %177
  %polly.access.mul.call1650.us = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1651.us = add nuw nsw i64 %polly.access.mul.call1650.us, %polly.indvar622.us
  %polly.access.call1652.us = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1651.us
  %polly.access.call1652.load.us = load double, double* %polly.access.call1652.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1508654.us = add nsw i64 %polly.indvar646.us, %polly.access.mul.Packed_MemRef_call1508653.us
  %polly.access.Packed_MemRef_call1508655.us = getelementptr double, double* %Packed_MemRef_call1508, i64 %polly.access.add.Packed_MemRef_call1508654.us
  store double %polly.access.call1652.load.us, double* %polly.access.Packed_MemRef_call1508655.us, align 8
  %polly.indvar_next647.us = add nsw i64 %polly.indvar646.us, 1
  %polly.loop_cond648.not.not.us = icmp slt i64 %polly.indvar646.us, %188
  br i1 %polly.loop_cond648.not.not.us, label %polly.loop_header642.us, label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.loop_header642.us, %polly.loop_exit632.us
  %polly.indvar_next623.us = add nuw nsw i64 %polly.indvar622.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next623.us, 1000
  br i1 %exitcond986.not, label %polly.loop_header669.preheader, label %polly.loop_header619.us

polly.loop_header642.preheader.us:                ; preds = %polly.loop_exit632.us
  %polly.access.mul.Packed_MemRef_call1508653.us = mul nuw nsw i64 %polly.indvar622.us, 1200
  br label %polly.loop_header642.us

polly.loop_header630.preheader.us:                ; preds = %polly.loop_header619.us
  %polly.access.mul.Packed_MemRef_call1508.us = mul nuw nsw i64 %polly.indvar622.us, 1200
  br label %polly.loop_header630.us

polly.loop_exit671:                               ; preds = %polly.loop_exit678, %polly.loop_header669.preheader
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %indvars.iv.next990 = add nsw i64 %indvars.iv989, -96
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, 96
  %exitcond1001.not = icmp eq i64 %polly.indvar_next617, 13
  br i1 %exitcond1001.not, label %polly.loop_exit615, label %polly.loop_header613

polly.loop_header619:                             ; preds = %polly.loop_header613, %polly.merge626
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.merge626 ], [ 0, %polly.loop_header613 ]
  %polly.access.mul.Packed_MemRef_call1508666 = mul nuw nsw i64 %polly.indvar622, 1200
  br label %polly.loop_header656

polly.merge626:                                   ; preds = %polly.loop_header656
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next623, 1000
  br i1 %exitcond984.not, label %polly.loop_header669.preheader, label %polly.loop_header619

polly.loop_header669.preheader:                   ; preds = %polly.merge626, %polly.merge626.us
  %191 = sub nsw i64 %177, %182
  %192 = icmp sgt i64 %191, 0
  %193 = select i1 %192, i64 %191, i64 0
  %194 = mul nsw i64 %polly.indvar616, -96
  %195 = icmp slt i64 %194, -1104
  %196 = select i1 %195, i64 %194, i64 -1104
  %197 = add nsw i64 %196, 1199
  %polly.loop_guard679.not = icmp sgt i64 %193, %197
  br i1 %polly.loop_guard679.not, label %polly.loop_exit671, label %polly.loop_header669

polly.loop_header656:                             ; preds = %polly.loop_header656, %polly.loop_header619
  %polly.indvar659 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next660, %polly.loop_header656 ]
  %198 = add nuw nsw i64 %polly.indvar659, %177
  %polly.access.mul.call1663 = mul nuw nsw i64 %198, 1000
  %polly.access.add.call1664 = add nuw nsw i64 %polly.access.mul.call1663, %polly.indvar622
  %polly.access.call1665 = getelementptr double, double* %polly.access.cast.call1714, i64 %polly.access.add.call1664
  %polly.access.call1665.load = load double, double* %polly.access.call1665, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1508667 = add nuw nsw i64 %polly.indvar659, %polly.access.mul.Packed_MemRef_call1508666
  %polly.access.Packed_MemRef_call1508668 = getelementptr double, double* %Packed_MemRef_call1508, i64 %polly.access.add.Packed_MemRef_call1508667
  store double %polly.access.call1665.load, double* %polly.access.Packed_MemRef_call1508668, align 8
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next660, %indvars.iv981
  br i1 %exitcond983.not, label %polly.merge626, label %polly.loop_header656

polly.loop_header669:                             ; preds = %polly.loop_header669.preheader, %polly.loop_exit678
  %polly.indvar672 = phi i64 [ %polly.indvar_next673, %polly.loop_exit678 ], [ 0, %polly.loop_header669.preheader ]
  %199 = shl nuw nsw i64 %polly.indvar672, 3
  %scevgep695 = getelementptr i8, i8* %call2, i64 %199
  %polly.access.mul.Packed_MemRef_call1508691 = mul nuw nsw i64 %polly.indvar672, 1200
  br label %polly.loop_header676

polly.loop_exit678:                               ; preds = %polly.loop_exit686
  %polly.indvar_next673 = add nuw nsw i64 %polly.indvar672, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next673, 1000
  br i1 %exitcond1000.not, label %polly.loop_exit671, label %polly.loop_header669

polly.loop_header676:                             ; preds = %polly.loop_exit686, %polly.loop_header669
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit686 ], [ %181, %polly.loop_header669 ]
  %polly.indvar680 = phi i64 [ %polly.indvar_next681, %polly.loop_exit686 ], [ %193, %polly.loop_header669 ]
  %smin998 = call i64 @llvm.smin.i64(i64 %indvars.iv996, i64 99)
  %200 = add nuw i64 %polly.indvar680, %182
  %201 = add i64 %200, %178
  %polly.loop_guard6871044 = icmp sgt i64 %201, -1
  br i1 %polly.loop_guard6871044, label %polly.loop_header684.preheader, label %polly.loop_exit686

polly.loop_header684.preheader:                   ; preds = %polly.loop_header676
  %202 = mul i64 %200, 8000
  %scevgep696 = getelementptr i8, i8* %scevgep695, i64 %202
  %scevgep696697 = bitcast i8* %scevgep696 to double*
  %_p_scalar_698 = load double, double* %scevgep696697, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1508704 = add nsw i64 %polly.access.mul.Packed_MemRef_call1508691, %201
  %polly.access.Packed_MemRef_call1508705 = getelementptr double, double* %Packed_MemRef_call1508, i64 %polly.access.add.Packed_MemRef_call1508704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call1508705, align 8
  %203 = mul i64 %200, 9600
  br label %polly.loop_header684

polly.loop_exit686:                               ; preds = %polly.loop_header684, %polly.loop_header676
  %polly.indvar_next681 = add nuw nsw i64 %polly.indvar680, 1
  %polly.loop_cond682.not.not = icmp slt i64 %polly.indvar680, %197
  %indvars.iv.next997 = add i64 %indvars.iv996, 1
  br i1 %polly.loop_cond682.not.not, label %polly.loop_header676, label %polly.loop_exit678

polly.loop_header684:                             ; preds = %polly.loop_header684.preheader, %polly.loop_header684
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_header684 ], [ 0, %polly.loop_header684.preheader ]
  %204 = add nuw nsw i64 %polly.indvar688, %177
  %polly.access.add.Packed_MemRef_call1508692 = add nuw nsw i64 %polly.indvar688, %polly.access.mul.Packed_MemRef_call1508691
  %polly.access.Packed_MemRef_call1508693 = getelementptr double, double* %Packed_MemRef_call1508, i64 %polly.access.add.Packed_MemRef_call1508692
  %_p_scalar_694 = load double, double* %polly.access.Packed_MemRef_call1508693, align 8
  %p_mul27.i = fmul fast double %_p_scalar_698, %_p_scalar_694
  %205 = mul nuw nsw i64 %204, 8000
  %scevgep700 = getelementptr i8, i8* %scevgep695, i64 %205
  %scevgep700701 = bitcast i8* %scevgep700 to double*
  %_p_scalar_702 = load double, double* %scevgep700701, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_706, %_p_scalar_702
  %206 = shl i64 %204, 3
  %207 = add i64 %206, %203
  %scevgep707 = getelementptr i8, i8* %call, i64 %207
  %scevgep707708 = bitcast i8* %scevgep707 to double*
  %_p_scalar_709 = load double, double* %scevgep707708, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_709
  store double %p_add42.i, double* %scevgep707708, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond999.not = icmp eq i64 %polly.indvar688, %smin998
  br i1 %exitcond999.not, label %polly.loop_exit686, label %polly.loop_header684

polly.loop_header836:                             ; preds = %entry, %polly.loop_exit844
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit844 ], [ 0, %entry ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %entry ]
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 -1168)
  %208 = shl nsw i64 %polly.indvar839, 5
  %209 = add nsw i64 %smin1031, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -32
  %exitcond1034.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1034.not, label %polly.loop_header863, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %210 = mul nsw i64 %polly.indvar845, -32
  %smin1075 = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin1075, 1200
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1025, i64 -1168)
  %212 = shl nsw i64 %polly.indvar845, 5
  %213 = add nsw i64 %smin1027, 1199
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -32
  %exitcond1033.not = icmp eq i64 %polly.indvar_next846, 38
  br i1 %exitcond1033.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %214 = add nuw nsw i64 %polly.indvar851, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header854, label %vector.ph1076

vector.ph1076:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1083 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat1084 = shufflevector <4 x i64> %broadcast.splatinsert1083, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %vector.ph1076
  %index1077 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1078, %vector.body1074 ]
  %vec.ind1081 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1076 ], [ %vec.ind.next1082, %vector.body1074 ]
  %217 = add nuw nsw <4 x i64> %vec.ind1081, %broadcast.splat1084
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat1086, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !99, !noalias !101
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1082 = add <4 x i64> %vec.ind1081, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next1078, %211
  br i1 %229, label %polly.loop_exit856, label %vector.body1074, !llvm.loop !104

polly.loop_exit856:                               ; preds = %vector.body1074, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar851, %209
  br i1 %exitcond1032.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %230 = add nuw nsw i64 %polly.indvar857, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep860 = getelementptr i8, i8* %call, i64 %236
  %scevgep860861 = bitcast i8* %scevgep860 to double*
  store double %p_div33.i, double* %scevgep860861, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar857, %213
  br i1 %exitcond1028.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !105

polly.loop_header863:                             ; preds = %polly.loop_exit844, %polly.loop_exit871
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %polly.loop_exit871 ], [ 0, %polly.loop_exit844 ]
  %polly.indvar866 = phi i64 [ %polly.indvar_next867, %polly.loop_exit871 ], [ 0, %polly.loop_exit844 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 -1168)
  %237 = shl nsw i64 %polly.indvar866, 5
  %238 = add nsw i64 %smin1021, 1199
  br label %polly.loop_header869

polly.loop_exit871:                               ; preds = %polly.loop_exit877
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -32
  %exitcond1024.not = icmp eq i64 %polly.indvar_next867, 38
  br i1 %exitcond1024.not, label %polly.loop_header889, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_exit877, %polly.loop_header863
  %indvars.iv1015 = phi i64 [ %indvars.iv.next1016, %polly.loop_exit877 ], [ 0, %polly.loop_header863 ]
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_exit877 ], [ 0, %polly.loop_header863 ]
  %239 = mul nsw i64 %polly.indvar872, -32
  %smin1090 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin1090, 1000
  %smin1017 = call i64 @llvm.smin.i64(i64 %indvars.iv1015, i64 -968)
  %241 = shl nsw i64 %polly.indvar872, 5
  %242 = add nsw i64 %smin1017, 999
  br label %polly.loop_header875

polly.loop_exit877:                               ; preds = %polly.loop_exit883
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %indvars.iv.next1016 = add nsw i64 %indvars.iv1015, -32
  %exitcond1023.not = icmp eq i64 %polly.indvar_next873, 32
  br i1 %exitcond1023.not, label %polly.loop_exit871, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_exit883, %polly.loop_header869
  %polly.indvar878 = phi i64 [ 0, %polly.loop_header869 ], [ %polly.indvar_next879, %polly.loop_exit883 ]
  %243 = add nuw nsw i64 %polly.indvar878, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check1091 = icmp eq i64 %240, 0
  br i1 %min.iters.check1091, label %polly.loop_header881, label %vector.ph1092

vector.ph1092:                                    ; preds = %polly.loop_header875
  %broadcast.splatinsert1101 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat1102 = shufflevector <4 x i64> %broadcast.splatinsert1101, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1092
  %index1095 = phi i64 [ 0, %vector.ph1092 ], [ %index.next1096, %vector.body1089 ]
  %vec.ind1099 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1092 ], [ %vec.ind.next1100, %vector.body1089 ]
  %246 = add nuw nsw <4 x i64> %vec.ind1099, %broadcast.splat1102
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat1104, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !103, !noalias !106
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1100 = add <4 x i64> %vec.ind1099, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next1096, %240
  br i1 %258, label %polly.loop_exit883, label %vector.body1089, !llvm.loop !107

polly.loop_exit883:                               ; preds = %vector.body1089, %polly.loop_header881
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar878, %238
  br i1 %exitcond1022.not, label %polly.loop_exit877, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_header875, %polly.loop_header881
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_header881 ], [ 0, %polly.loop_header875 ]
  %259 = add nuw nsw i64 %polly.indvar884, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep887 = getelementptr i8, i8* %call2, i64 %265
  %scevgep887888 = bitcast i8* %scevgep887 to double*
  store double %p_div12.i, double* %scevgep887888, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar884, %242
  br i1 %exitcond1018.not, label %polly.loop_exit883, label %polly.loop_header881, !llvm.loop !108

polly.loop_header889:                             ; preds = %polly.loop_exit871, %polly.loop_exit897
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit897 ], [ 0, %polly.loop_exit871 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit871 ]
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1009, i64 -1168)
  %266 = shl nsw i64 %polly.indvar892, 5
  %267 = add nsw i64 %smin1011, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, -32
  %exitcond1014.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1014.not, label %init_array.exit, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %268 = mul nsw i64 %polly.indvar898, -32
  %smin1108 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin1108, 1000
  %smin1007 = call i64 @llvm.smin.i64(i64 %indvars.iv1005, i64 -968)
  %270 = shl nsw i64 %polly.indvar898, 5
  %271 = add nsw i64 %smin1007, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, -32
  %exitcond1013.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1013.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %272 = add nuw nsw i64 %polly.indvar904, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check1109 = icmp eq i64 %269, 0
  br i1 %min.iters.check1109, label %polly.loop_header907, label %vector.ph1110

vector.ph1110:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1119 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat1120 = shufflevector <4 x i64> %broadcast.splatinsert1119, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1114, %vector.body1107 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1110 ], [ %vec.ind.next1118, %vector.body1107 ]
  %275 = add nuw nsw <4 x i64> %vec.ind1117, %broadcast.splat1120
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat1122, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !102, !noalias !109
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next1114, %269
  br i1 %287, label %polly.loop_exit909, label %vector.body1107, !llvm.loop !110

polly.loop_exit909:                               ; preds = %vector.body1107, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar904, %267
  br i1 %exitcond1012.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %288 = add nuw nsw i64 %polly.indvar910, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep914 = getelementptr i8, i8* %call1, i64 %294
  %scevgep914915 = bitcast i8* %scevgep914 to double*
  store double %p_div.i, double* %scevgep914915, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar910, %271
  br i1 %exitcond1008.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 96}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
