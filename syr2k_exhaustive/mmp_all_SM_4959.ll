; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4959.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4959.c"
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
  %call807 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1659 = bitcast i8* %call1 to double*
  %polly.access.call1668 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1668, %call2
  %polly.access.call2688 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2688, %call1
  %2 = or i1 %0, %1
  %polly.access.call708 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call708, %call2
  %4 = icmp ule i8* %polly.access.call2688, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call708, %call1
  %8 = icmp ule i8* %polly.access.call1668, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header781, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1092 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1091 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1090 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1089 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1089, %scevgep1092
  %bound1 = icmp ult i8* %scevgep1091, %scevgep1090
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
  br i1 %exitcond18.not.i, label %vector.ph1096, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1096:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1103 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1104 = shufflevector <4 x i64> %broadcast.splatinsert1103, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1096
  %index1097 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1096 ], [ %vec.ind.next1102, %vector.body1095 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1101, %broadcast.splat1104
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv7.i, i64 %index1097
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1098, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1095, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1095
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1096, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit842
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start468, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1158 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1158, label %for.body3.i46.preheader1235, label %vector.ph1159

vector.ph1159:                                    ; preds = %for.body3.i46.preheader
  %n.vec1161 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1159
  %index1162 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1163, %vector.body1157 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %index1162
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1163 = add i64 %index1162, 4
  %46 = icmp eq i64 %index.next1163, %n.vec1161
  br i1 %46, label %middle.block1155, label %vector.body1157, !llvm.loop !18

middle.block1155:                                 ; preds = %vector.body1157
  %cmp.n1165 = icmp eq i64 %indvars.iv21.i, %n.vec1161
  br i1 %cmp.n1165, label %for.inc6.i, label %for.body3.i46.preheader1235

for.body3.i46.preheader1235:                      ; preds = %for.body3.i46.preheader, %middle.block1155
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1161, %middle.block1155 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1235, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1235 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1155, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting469
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1181 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1181, label %for.body3.i60.preheader1233, label %vector.ph1182

vector.ph1182:                                    ; preds = %for.body3.i60.preheader
  %n.vec1184 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1180 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1185
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1189 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1189, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1186 = add i64 %index1185, 4
  %57 = icmp eq i64 %index.next1186, %n.vec1184
  br i1 %57, label %middle.block1178, label %vector.body1180, !llvm.loop !55

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1188 = icmp eq i64 %indvars.iv21.i52, %n.vec1184
  br i1 %cmp.n1188, label %for.inc6.i63, label %for.body3.i60.preheader1233

for.body3.i60.preheader1233:                      ; preds = %for.body3.i60.preheader, %middle.block1178
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1184, %middle.block1178 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1233, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1233 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1178, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1207 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1207, label %for.body3.i99.preheader1231, label %vector.ph1208

vector.ph1208:                                    ; preds = %for.body3.i99.preheader
  %n.vec1210 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1206 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1211
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1215 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1215, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %68 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %68, label %middle.block1204, label %vector.body1206, !llvm.loop !57

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i91, %n.vec1210
  br i1 %cmp.n1214, label %for.inc6.i102, label %for.body3.i99.preheader1231

for.body3.i99.preheader1231:                      ; preds = %for.body3.i99.preheader, %middle.block1204
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1210, %middle.block1204 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1231, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1231 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1204, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1219 = phi i64 [ %indvar.next1220, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1219, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1221 = icmp ult i64 %88, 4
  br i1 %min.iters.check1221, label %polly.loop_header191.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %polly.loop_header
  %n.vec1224 = and i64 %88, -4
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1218 ]
  %90 = shl nuw nsw i64 %index1225, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1226 = add i64 %index1225, 4
  %95 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %95, label %middle.block1216, label %vector.body1218, !llvm.loop !69

middle.block1216:                                 ; preds = %vector.body1218
  %cmp.n1228 = icmp eq i64 %88, %n.vec1224
  br i1 %cmp.n1228, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1216
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1224, %middle.block1216 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1216
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1220 = add i64 %indvar1219, 1
  br i1 %exitcond991.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond990.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond990.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv986 = phi i64 [ 3, %polly.loop_header199.preheader ], [ %indvars.iv.next987, %polly.loop_exit207 ]
  %indvars.iv984 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next985, %polly.loop_exit207 ]
  %indvars.iv973 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next974, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv986, 3
  %98 = sub nsw i64 %indvars.iv984, %97
  %99 = mul nuw nsw i64 %polly.indvar202, 3
  %100 = add nuw nsw i64 %99, 3
  %pexp.p_div_q = lshr i64 %100, 3
  %polly.loop_guard.not = icmp ult i64 %polly.indvar202, %pexp.p_div_q
  br i1 %polly.loop_guard.not, label %polly.loop_exit207, label %polly.loop_header205.preheader

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %101 = mul nsw i64 %polly.indvar202, -80
  %102 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit214, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 80
  %indvars.iv.next985 = add nuw nsw i64 %indvars.iv984, 1
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 3
  %exitcond989.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond989.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit214
  %indvars.iv975 = phi i64 [ %indvars.iv973, %polly.loop_header205.preheader ], [ %indvars.iv.next976, %polly.loop_exit214 ]
  %indvars.iv971 = phi i64 [ %indvars.iv, %polly.loop_header205.preheader ], [ %indvars.iv.next972, %polly.loop_exit214 ]
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit214 ]
  %103 = shl nsw i64 %polly.indvar208, 7
  %104 = add nsw i64 %103, %101
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard215 = icmp slt i64 %106, 80
  br i1 %polly.loop_guard215, label %polly.loop_header212.preheader, label %polly.loop_exit214

polly.loop_header212.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv971, i64 0)
  %107 = add i64 %smax, %indvars.iv975
  %108 = sub nsw i64 %102, %103
  %109 = add nuw nsw i64 %103, 128
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit246, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, 128
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -128
  %exitcond988.not = icmp eq i64 %polly.indvar_next209, %98
  br i1 %exitcond988.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header212:                             ; preds = %polly.loop_header212.preheader, %polly.loop_exit246
  %indvars.iv977 = phi i64 [ %107, %polly.loop_header212.preheader ], [ %indvars.iv.next978, %polly.loop_exit246 ]
  %polly.indvar216 = phi i64 [ %106, %polly.loop_header212.preheader ], [ %polly.indvar_next217, %polly.loop_exit246 ]
  %smin981 = call i64 @llvm.smin.i64(i64 %indvars.iv977, i64 127)
  %110 = add nsw i64 %polly.indvar216, %108
  %polly.loop_guard2291078 = icmp sgt i64 %110, -1
  %111 = add nuw nsw i64 %polly.indvar216, %102
  %.not = icmp ult i64 %111, %109
  %polly.access.mul.call1238 = mul nsw i64 %111, 1000
  br i1 %polly.loop_guard2291078, label %polly.loop_header219.us, label %polly.loop_header212.split

polly.loop_header219.us:                          ; preds = %polly.loop_header212, %polly.merge.us
  %polly.indvar222.us = phi i64 [ %polly.indvar_next223.us, %polly.merge.us ], [ 0, %polly.loop_header212 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar222.us, 1200
  br label %polly.loop_header226.us

polly.loop_header226.us:                          ; preds = %polly.loop_header219.us, %polly.loop_header226.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header226.us ], [ 0, %polly.loop_header219.us ]
  %112 = add nuw nsw i64 %polly.indvar230.us, %103
  %polly.access.mul.call1234.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.access.mul.call1234.us, %polly.indvar222.us
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar230.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar230.us, %smin981
  br i1 %exitcond979.not, label %polly.cond.loopexit.us, label %polly.loop_header226.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1239.us = add nuw nsw i64 %polly.indvar222.us, %polly.access.mul.call1238
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1242.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %110
  %polly.access.Packed_MemRef_call1243.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1242.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1243.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next223.us, 1000
  br i1 %exitcond980.not, label %polly.loop_header244.preheader, label %polly.loop_header219.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header226.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header212.split:                       ; preds = %polly.loop_header212
  br i1 %.not, label %polly.loop_exit246, label %polly.loop_header219

polly.loop_exit246:                               ; preds = %polly.loop_exit253.loopexit.us, %polly.loop_header212.split, %polly.loop_header244.preheader
  %polly.indvar_next217 = add nuw nsw i64 %polly.indvar216, 1
  %polly.loop_cond218 = icmp ult i64 %polly.indvar216, 79
  %indvars.iv.next978 = add i64 %indvars.iv977, 1
  br i1 %polly.loop_cond218, label %polly.loop_header212, label %polly.loop_exit214

polly.loop_header219:                             ; preds = %polly.loop_header212.split, %polly.loop_header219
  %polly.indvar222 = phi i64 [ %polly.indvar_next223, %polly.loop_header219 ], [ 0, %polly.loop_header212.split ]
  %polly.access.add.call1239 = add nuw nsw i64 %polly.indvar222, %polly.access.mul.call1238
  %polly.access.call1240 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1239
  %polly.access.call1240.load = load double, double* %polly.access.call1240, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1241 = mul nuw nsw i64 %polly.indvar222, 1200
  %polly.access.add.Packed_MemRef_call1242 = add nsw i64 %polly.access.mul.Packed_MemRef_call1241, %110
  %polly.access.Packed_MemRef_call1243 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1242
  store double %polly.access.call1240.load, double* %polly.access.Packed_MemRef_call1243, align 8
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next223, 1000
  br i1 %exitcond.not, label %polly.loop_header244.preheader, label %polly.loop_header219

polly.loop_header244.preheader:                   ; preds = %polly.loop_header219, %polly.merge.us
  %113 = mul i64 %111, 8000
  %114 = mul i64 %111, 9600
  br i1 %polly.loop_guard2291078, label %polly.loop_header244.us, label %polly.loop_exit246

polly.loop_header244.us:                          ; preds = %polly.loop_header244.preheader, %polly.loop_exit253.loopexit.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_exit253.loopexit.us ], [ 0, %polly.loop_header244.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar247.us, 3
  %scevgep262.us = getelementptr i8, i8* %call2, i64 %115
  %polly.access.mul.Packed_MemRef_call1258.us = mul nuw nsw i64 %polly.indvar247.us, 1200
  %scevgep263.us = getelementptr i8, i8* %scevgep262.us, i64 %113
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1258.us, %110
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header251.us

polly.loop_header251.us:                          ; preds = %polly.loop_header251.us, %polly.loop_header244.us
  %polly.indvar255.us = phi i64 [ 0, %polly.loop_header244.us ], [ %polly.indvar_next256.us, %polly.loop_header251.us ]
  %116 = add nuw nsw i64 %polly.indvar255.us, %103
  %polly.access.add.Packed_MemRef_call1259.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1258.us
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call1260.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_265.us, %_p_scalar_261.us
  %117 = mul nuw nsw i64 %116, 8000
  %scevgep267.us = getelementptr i8, i8* %scevgep262.us, i64 %117
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %118 = shl i64 %116, 3
  %119 = add i64 %118, %114
  %scevgep274.us = getelementptr i8, i8* %call, i64 %119
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar255.us, %smin981
  br i1 %exitcond982.not, label %polly.loop_exit253.loopexit.us, label %polly.loop_header251.us

polly.loop_exit253.loopexit.us:                   ; preds = %polly.loop_header251.us
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next248.us, 1000
  br i1 %exitcond983.not, label %polly.loop_exit246, label %polly.loop_header244.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1193 = phi i64 [ %indvar.next1194, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %120 = add i64 %indvar1193, 1
  %121 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1195 = icmp ult i64 %120, 4
  br i1 %min.iters.check1195, label %polly.loop_header371.preheader, label %vector.ph1196

vector.ph1196:                                    ; preds = %polly.loop_header365
  %n.vec1198 = and i64 %120, -4
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1192 ]
  %122 = shl nuw nsw i64 %index1199, 3
  %123 = getelementptr i8, i8* %scevgep377, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !74, !noalias !76
  %125 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !74, !noalias !76
  %index.next1200 = add i64 %index1199, 4
  %127 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %127, label %middle.block1190, label %vector.body1192, !llvm.loop !80

middle.block1190:                                 ; preds = %vector.body1192
  %cmp.n1202 = icmp eq i64 %120, %n.vec1198
  br i1 %cmp.n1202, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1190
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1198, %middle.block1190 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1190
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1194 = add i64 %indvar1193, 1
  br i1 %exitcond1017.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %128
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1016.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !81

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit391
  %indvars.iv1012 = phi i64 [ 3, %polly.loop_header381.preheader ], [ %indvars.iv.next1013, %polly.loop_exit391 ]
  %indvars.iv1010 = phi i64 [ 1, %polly.loop_header381.preheader ], [ %indvars.iv.next1011, %polly.loop_exit391 ]
  %indvars.iv998 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next999, %polly.loop_exit391 ]
  %indvars.iv993 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next994, %polly.loop_exit391 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit391 ]
  %129 = lshr i64 %indvars.iv1012, 3
  %130 = sub nsw i64 %indvars.iv1010, %129
  %131 = mul nuw nsw i64 %polly.indvar384, 3
  %132 = add nuw nsw i64 %131, 3
  %pexp.p_div_q387 = lshr i64 %132, 3
  %polly.loop_guard392.not = icmp ult i64 %polly.indvar384, %pexp.p_div_q387
  br i1 %polly.loop_guard392.not, label %polly.loop_exit391, label %polly.loop_header389.preheader

polly.loop_header389.preheader:                   ; preds = %polly.loop_header381
  %133 = mul nsw i64 %polly.indvar384, -80
  %134 = mul nuw nsw i64 %polly.indvar384, 80
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit399, %polly.loop_header381
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, -80
  %indvars.iv.next999 = add nuw nsw i64 %indvars.iv998, 80
  %indvars.iv.next1011 = add nuw nsw i64 %indvars.iv1010, 1
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 3
  %exitcond1015.not = icmp eq i64 %polly.indvar_next385, 15
  br i1 %exitcond1015.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit399
  %indvars.iv1000 = phi i64 [ %indvars.iv998, %polly.loop_header389.preheader ], [ %indvars.iv.next1001, %polly.loop_exit399 ]
  %indvars.iv995 = phi i64 [ %indvars.iv993, %polly.loop_header389.preheader ], [ %indvars.iv.next996, %polly.loop_exit399 ]
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next394, %polly.loop_exit399 ]
  %135 = shl nsw i64 %polly.indvar393, 7
  %136 = add nsw i64 %135, %133
  %137 = icmp sgt i64 %136, 0
  %138 = select i1 %137, i64 %136, i64 0
  %polly.loop_guard400 = icmp slt i64 %138, 80
  br i1 %polly.loop_guard400, label %polly.loop_header397.preheader, label %polly.loop_exit399

polly.loop_header397.preheader:                   ; preds = %polly.loop_header389
  %smax997 = call i64 @llvm.smax.i64(i64 %indvars.iv995, i64 0)
  %139 = add i64 %smax997, %indvars.iv1000
  %140 = sub nsw i64 %134, %135
  %141 = add nuw nsw i64 %135, 128
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit435, %polly.loop_header389
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, 128
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, -128
  %exitcond1014.not = icmp eq i64 %polly.indvar_next394, %130
  br i1 %exitcond1014.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header397:                             ; preds = %polly.loop_header397.preheader, %polly.loop_exit435
  %indvars.iv1002 = phi i64 [ %139, %polly.loop_header397.preheader ], [ %indvars.iv.next1003, %polly.loop_exit435 ]
  %polly.indvar401 = phi i64 [ %138, %polly.loop_header397.preheader ], [ %polly.indvar_next402, %polly.loop_exit435 ]
  %smin1007 = call i64 @llvm.smin.i64(i64 %indvars.iv1002, i64 127)
  %142 = add nsw i64 %polly.indvar401, %140
  %polly.loop_guard4141079 = icmp sgt i64 %142, -1
  %143 = add nuw nsw i64 %polly.indvar401, %134
  %.not861 = icmp ult i64 %143, %141
  %polly.access.mul.call1427 = mul nsw i64 %143, 1000
  br i1 %polly.loop_guard4141079, label %polly.loop_header404.us, label %polly.loop_header397.split

polly.loop_header404.us:                          ; preds = %polly.loop_header397, %polly.merge423.us
  %polly.indvar407.us = phi i64 [ %polly.indvar_next408.us, %polly.merge423.us ], [ 0, %polly.loop_header397 ]
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar407.us, 1200
  br label %polly.loop_header411.us

polly.loop_header411.us:                          ; preds = %polly.loop_header404.us, %polly.loop_header411.us
  %polly.indvar415.us = phi i64 [ %polly.indvar_next416.us, %polly.loop_header411.us ], [ 0, %polly.loop_header404.us ]
  %144 = add nuw nsw i64 %polly.indvar415.us, %135
  %polly.access.mul.call1419.us = mul nuw nsw i64 %144, 1000
  %polly.access.add.call1420.us = add nuw nsw i64 %polly.access.mul.call1419.us, %polly.indvar407.us
  %polly.access.call1421.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1420.us
  %polly.access.call1421.load.us = load double, double* %polly.access.call1421.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar415.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1421.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next416.us = add nuw nsw i64 %polly.indvar415.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar415.us, %smin1007
  br i1 %exitcond1005.not, label %polly.cond422.loopexit.us, label %polly.loop_header411.us

polly.then424.us:                                 ; preds = %polly.cond422.loopexit.us
  %polly.access.add.call1428.us = add nuw nsw i64 %polly.indvar407.us, %polly.access.mul.call1427
  %polly.access.call1429.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1428.us
  %polly.access.call1429.load.us = load double, double* %polly.access.call1429.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282431.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %142
  %polly.access.Packed_MemRef_call1282432.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282431.us
  store double %polly.access.call1429.load.us, double* %polly.access.Packed_MemRef_call1282432.us, align 8
  br label %polly.merge423.us

polly.merge423.us:                                ; preds = %polly.then424.us, %polly.cond422.loopexit.us
  %polly.indvar_next408.us = add nuw nsw i64 %polly.indvar407.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next408.us, 1000
  br i1 %exitcond1006.not, label %polly.loop_header433.preheader, label %polly.loop_header404.us

polly.cond422.loopexit.us:                        ; preds = %polly.loop_header411.us
  br i1 %.not861, label %polly.merge423.us, label %polly.then424.us

polly.loop_header397.split:                       ; preds = %polly.loop_header397
  br i1 %.not861, label %polly.loop_exit435, label %polly.loop_header404

polly.loop_exit435:                               ; preds = %polly.loop_exit442.loopexit.us, %polly.loop_header397.split, %polly.loop_header433.preheader
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %polly.loop_cond403 = icmp ult i64 %polly.indvar401, 79
  %indvars.iv.next1003 = add i64 %indvars.iv1002, 1
  br i1 %polly.loop_cond403, label %polly.loop_header397, label %polly.loop_exit399

polly.loop_header404:                             ; preds = %polly.loop_header397.split, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ 0, %polly.loop_header397.split ]
  %polly.access.add.call1428 = add nuw nsw i64 %polly.indvar407, %polly.access.mul.call1427
  %polly.access.call1429 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1428
  %polly.access.call1429.load = load double, double* %polly.access.call1429, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1282430 = mul nuw nsw i64 %polly.indvar407, 1200
  %polly.access.add.Packed_MemRef_call1282431 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282430, %142
  %polly.access.Packed_MemRef_call1282432 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282431
  store double %polly.access.call1429.load, double* %polly.access.Packed_MemRef_call1282432, align 8
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond992.not, label %polly.loop_header433.preheader, label %polly.loop_header404

polly.loop_header433.preheader:                   ; preds = %polly.loop_header404, %polly.merge423.us
  %145 = mul i64 %143, 8000
  %146 = mul i64 %143, 9600
  br i1 %polly.loop_guard4141079, label %polly.loop_header433.us, label %polly.loop_exit435

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader, %polly.loop_exit442.loopexit.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit442.loopexit.us ], [ 0, %polly.loop_header433.preheader ]
  %147 = shl nuw nsw i64 %polly.indvar436.us, 3
  %scevgep451.us = getelementptr i8, i8* %call2, i64 %147
  %polly.access.mul.Packed_MemRef_call1282447.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  %scevgep452.us = getelementptr i8, i8* %scevgep451.us, i64 %145
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282447.us, %142
  %polly.access.Packed_MemRef_call1282461.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us
  %_p_scalar_462.us = load double, double* %polly.access.Packed_MemRef_call1282461.us, align 8
  br label %polly.loop_header440.us

polly.loop_header440.us:                          ; preds = %polly.loop_header440.us, %polly.loop_header433.us
  %polly.indvar444.us = phi i64 [ 0, %polly.loop_header433.us ], [ %polly.indvar_next445.us, %polly.loop_header440.us ]
  %148 = add nuw nsw i64 %polly.indvar444.us, %135
  %polly.access.add.Packed_MemRef_call1282448.us = add nuw nsw i64 %polly.indvar444.us, %polly.access.mul.Packed_MemRef_call1282447.us
  %polly.access.Packed_MemRef_call1282449.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282448.us
  %_p_scalar_450.us = load double, double* %polly.access.Packed_MemRef_call1282449.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_450.us
  %149 = mul nuw nsw i64 %148, 8000
  %scevgep456.us = getelementptr i8, i8* %scevgep451.us, i64 %149
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %150 = shl i64 %148, 3
  %151 = add i64 %150, %146
  %scevgep463.us = getelementptr i8, i8* %call, i64 %151
  %scevgep463464.us = bitcast i8* %scevgep463.us to double*
  %_p_scalar_465.us = load double, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_465.us
  store double %p_add42.i79.us, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next445.us = add nuw nsw i64 %polly.indvar444.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar444.us, %smin1007
  br i1 %exitcond1008.not, label %polly.loop_exit442.loopexit.us, label %polly.loop_header440.us

polly.loop_exit442.loopexit.us:                   ; preds = %polly.loop_header440.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1009.not, label %polly.loop_exit435, label %polly.loop_header433.us

polly.start468:                                   ; preds = %init_array.exit
  %malloccall470 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header554

polly.exiting469:                                 ; preds = %polly.loop_exit580
  tail call void @free(i8* %malloccall470)
  br label %kernel_syr2k.exit

polly.loop_header554:                             ; preds = %polly.loop_exit562, %polly.start468
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit562 ], [ 0, %polly.start468 ]
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_exit562 ], [ 1, %polly.start468 ]
  %152 = add i64 %indvar, 1
  %153 = mul nuw nsw i64 %polly.indvar557, 9600
  %scevgep566 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1169 = icmp ult i64 %152, 4
  br i1 %min.iters.check1169, label %polly.loop_header560.preheader, label %vector.ph1170

vector.ph1170:                                    ; preds = %polly.loop_header554
  %n.vec1172 = and i64 %152, -4
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1170
  %index1173 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1174, %vector.body1168 ]
  %154 = shl nuw nsw i64 %index1173, 3
  %155 = getelementptr i8, i8* %scevgep566, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1177 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %157 = fmul fast <4 x double> %wide.load1177, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %index.next1174 = add i64 %index1173, 4
  %159 = icmp eq i64 %index.next1174, %n.vec1172
  br i1 %159, label %middle.block1166, label %vector.body1168, !llvm.loop !90

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1176 = icmp eq i64 %152, %n.vec1172
  br i1 %cmp.n1176, label %polly.loop_exit562, label %polly.loop_header560.preheader

polly.loop_header560.preheader:                   ; preds = %polly.loop_header554, %middle.block1166
  %polly.indvar563.ph = phi i64 [ 0, %polly.loop_header554 ], [ %n.vec1172, %middle.block1166 ]
  br label %polly.loop_header560

polly.loop_exit562:                               ; preds = %polly.loop_header560, %middle.block1166
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next558, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1043.not, label %polly.loop_header570.preheader, label %polly.loop_header554

polly.loop_header570.preheader:                   ; preds = %polly.loop_exit562
  %Packed_MemRef_call1471 = bitcast i8* %malloccall470 to double*
  br label %polly.loop_header570

polly.loop_header560:                             ; preds = %polly.loop_header560.preheader, %polly.loop_header560
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_header560 ], [ %polly.indvar563.ph, %polly.loop_header560.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar563, 3
  %scevgep567 = getelementptr i8, i8* %scevgep566, i64 %160
  %scevgep567568 = bitcast i8* %scevgep567 to double*
  %_p_scalar_569 = load double, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_569, 1.200000e+00
  store double %p_mul.i, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next564, %polly.indvar557
  br i1 %exitcond1042.not, label %polly.loop_exit562, label %polly.loop_header560, !llvm.loop !91

polly.loop_header570:                             ; preds = %polly.loop_header570.preheader, %polly.loop_exit580
  %indvars.iv1038 = phi i64 [ 3, %polly.loop_header570.preheader ], [ %indvars.iv.next1039, %polly.loop_exit580 ]
  %indvars.iv1036 = phi i64 [ 1, %polly.loop_header570.preheader ], [ %indvars.iv.next1037, %polly.loop_exit580 ]
  %indvars.iv1024 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1025, %polly.loop_exit580 ]
  %indvars.iv1019 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1020, %polly.loop_exit580 ]
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %polly.indvar_next574, %polly.loop_exit580 ]
  %161 = lshr i64 %indvars.iv1038, 3
  %162 = sub nsw i64 %indvars.iv1036, %161
  %163 = mul nuw nsw i64 %polly.indvar573, 3
  %164 = add nuw nsw i64 %163, 3
  %pexp.p_div_q576 = lshr i64 %164, 3
  %polly.loop_guard581.not = icmp ult i64 %polly.indvar573, %pexp.p_div_q576
  br i1 %polly.loop_guard581.not, label %polly.loop_exit580, label %polly.loop_header578.preheader

polly.loop_header578.preheader:                   ; preds = %polly.loop_header570
  %165 = mul nsw i64 %polly.indvar573, -80
  %166 = mul nuw nsw i64 %polly.indvar573, 80
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588, %polly.loop_header570
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -80
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 80
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 3
  %exitcond1041.not = icmp eq i64 %polly.indvar_next574, 15
  br i1 %exitcond1041.not, label %polly.exiting469, label %polly.loop_header570

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit588
  %indvars.iv1026 = phi i64 [ %indvars.iv1024, %polly.loop_header578.preheader ], [ %indvars.iv.next1027, %polly.loop_exit588 ]
  %indvars.iv1021 = phi i64 [ %indvars.iv1019, %polly.loop_header578.preheader ], [ %indvars.iv.next1022, %polly.loop_exit588 ]
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next583, %polly.loop_exit588 ]
  %167 = shl nsw i64 %polly.indvar582, 7
  %168 = add nsw i64 %167, %165
  %169 = icmp sgt i64 %168, 0
  %170 = select i1 %169, i64 %168, i64 0
  %polly.loop_guard589 = icmp slt i64 %170, 80
  br i1 %polly.loop_guard589, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %smax1023 = call i64 @llvm.smax.i64(i64 %indvars.iv1021, i64 0)
  %171 = add i64 %smax1023, %indvars.iv1026
  %172 = sub nsw i64 %166, %167
  %173 = add nuw nsw i64 %167, 128
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit624, %polly.loop_header578
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, 128
  %indvars.iv.next1027 = add nsw i64 %indvars.iv1026, -128
  %exitcond1040.not = icmp eq i64 %polly.indvar_next583, %162
  br i1 %exitcond1040.not, label %polly.loop_exit580, label %polly.loop_header578

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit624
  %indvars.iv1028 = phi i64 [ %171, %polly.loop_header586.preheader ], [ %indvars.iv.next1029, %polly.loop_exit624 ]
  %polly.indvar590 = phi i64 [ %170, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit624 ]
  %smin1033 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 127)
  %174 = add nsw i64 %polly.indvar590, %172
  %polly.loop_guard6031080 = icmp sgt i64 %174, -1
  %175 = add nuw nsw i64 %polly.indvar590, %166
  %.not862 = icmp ult i64 %175, %173
  %polly.access.mul.call1616 = mul nsw i64 %175, 1000
  br i1 %polly.loop_guard6031080, label %polly.loop_header593.us, label %polly.loop_header586.split

polly.loop_header593.us:                          ; preds = %polly.loop_header586, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header586 ]
  %polly.access.mul.Packed_MemRef_call1471.us = mul nuw nsw i64 %polly.indvar596.us, 1200
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %176 = add nuw nsw i64 %polly.indvar604.us, %167
  %polly.access.mul.call1608.us = mul nuw nsw i64 %176, 1000
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar596.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1471.us
  %polly.access.Packed_MemRef_call1471.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1471.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar604.us, %smin1033
  br i1 %exitcond1031.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %polly.indvar596.us, %polly.access.mul.call1616
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1471.us, %174
  %polly.access.Packed_MemRef_call1471621.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1471621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next597.us, 1000
  br i1 %exitcond1032.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not862, label %polly.merge612.us, label %polly.then613.us

polly.loop_header586.split:                       ; preds = %polly.loop_header586
  br i1 %.not862, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header586.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592 = icmp ult i64 %polly.indvar590, 79
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1
  br i1 %polly.loop_cond592, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header593:                             ; preds = %polly.loop_header586.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header586.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %polly.indvar596, %polly.access.mul.call1616
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1471619 = mul nuw nsw i64 %polly.indvar596, 1200
  %polly.access.add.Packed_MemRef_call1471620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1471619, %174
  %polly.access.Packed_MemRef_call1471621 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1471621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next597, 1000
  br i1 %exitcond1018.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %177 = mul i64 %175, 8000
  %178 = mul i64 %175, 9600
  br i1 %polly.loop_guard6031080, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %179 = shl nuw nsw i64 %polly.indvar625.us, 3
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %179
  %polly.access.mul.Packed_MemRef_call1471636.us = mul nuw nsw i64 %polly.indvar625.us, 1200
  %scevgep641.us = getelementptr i8, i8* %scevgep640.us, i64 %177
  %scevgep641642.us = bitcast i8* %scevgep641.us to double*
  %_p_scalar_643.us = load double, double* %scevgep641642.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1471636.us, %174
  %polly.access.Packed_MemRef_call1471650.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1471650.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header629.us, %polly.loop_header622.us
  %polly.indvar633.us = phi i64 [ 0, %polly.loop_header622.us ], [ %polly.indvar_next634.us, %polly.loop_header629.us ]
  %180 = add nuw nsw i64 %polly.indvar633.us, %167
  %polly.access.add.Packed_MemRef_call1471637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1471636.us
  %polly.access.Packed_MemRef_call1471638.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1471638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_643.us, %_p_scalar_639.us
  %181 = mul nuw nsw i64 %180, 8000
  %scevgep645.us = getelementptr i8, i8* %scevgep640.us, i64 %181
  %scevgep645646.us = bitcast i8* %scevgep645.us to double*
  %_p_scalar_647.us = load double, double* %scevgep645646.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_651.us, %_p_scalar_647.us
  %182 = shl i64 %180, 3
  %183 = add i64 %182, %178
  %scevgep652.us = getelementptr i8, i8* %call, i64 %183
  %scevgep652653.us = bitcast i8* %scevgep652.us to double*
  %_p_scalar_654.us = load double, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_654.us
  store double %p_add42.i.us, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar633.us, %smin1033
  br i1 %exitcond1034.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next626.us, 1000
  br i1 %exitcond1035.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header781:                             ; preds = %entry, %polly.loop_exit789
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit789 ], [ 0, %entry ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %entry ]
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -1168)
  %184 = shl nsw i64 %polly.indvar784, 5
  %185 = add nsw i64 %smin1070, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1073.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond1073.not, label %polly.loop_header808, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %186 = mul nsw i64 %polly.indvar790, -32
  %smin = call i64 @llvm.smin.i64(i64 %186, i64 -1168)
  %187 = add nsw i64 %smin, 1200
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -1168)
  %188 = shl nsw i64 %polly.indvar790, 5
  %189 = add nsw i64 %smin1066, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1072.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %polly.indvar796 = phi i64 [ 0, %polly.loop_header787 ], [ %polly.indvar_next797, %polly.loop_exit801 ]
  %190 = add nuw nsw i64 %polly.indvar796, %184
  %191 = trunc i64 %190 to i32
  %192 = mul nuw nsw i64 %190, 9600
  %min.iters.check = icmp eq i64 %187, 0
  br i1 %min.iters.check, label %polly.loop_header799, label %vector.ph1108

vector.ph1108:                                    ; preds = %polly.loop_header793
  %broadcast.splatinsert1115 = insertelement <4 x i64> poison, i64 %188, i32 0
  %broadcast.splat1116 = shufflevector <4 x i64> %broadcast.splatinsert1115, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1108
  %index1109 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1108 ], [ %vec.ind.next1114, %vector.body1107 ]
  %193 = add nuw nsw <4 x i64> %vec.ind1113, %broadcast.splat1116
  %194 = trunc <4 x i64> %193 to <4 x i32>
  %195 = mul <4 x i32> %broadcast.splat1118, %194
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 1200, i32 1200, i32 1200, i32 1200>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %200 = extractelement <4 x i64> %193, i32 0
  %201 = shl i64 %200, 3
  %202 = add nuw nsw i64 %201, %192
  %203 = getelementptr i8, i8* %call, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %199, <4 x double>* %204, align 8, !alias.scope !94, !noalias !96
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %205 = icmp eq i64 %index.next1110, %187
  br i1 %205, label %polly.loop_exit801, label %vector.body1107, !llvm.loop !99

polly.loop_exit801:                               ; preds = %vector.body1107, %polly.loop_header799
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar796, %185
  br i1 %exitcond1071.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_header793, %polly.loop_header799
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_header799 ], [ 0, %polly.loop_header793 ]
  %206 = add nuw nsw i64 %polly.indvar802, %188
  %207 = trunc i64 %206 to i32
  %208 = mul i32 %207, %191
  %209 = add i32 %208, 3
  %210 = urem i32 %209, 1200
  %p_conv31.i = sitofp i32 %210 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %211 = shl i64 %206, 3
  %212 = add nuw nsw i64 %211, %192
  %scevgep805 = getelementptr i8, i8* %call, i64 %212
  %scevgep805806 = bitcast i8* %scevgep805 to double*
  store double %p_div33.i, double* %scevgep805806, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar802, %189
  br i1 %exitcond1067.not, label %polly.loop_exit801, label %polly.loop_header799, !llvm.loop !100

polly.loop_header808:                             ; preds = %polly.loop_exit789, %polly.loop_exit816
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -1168)
  %213 = shl nsw i64 %polly.indvar811, 5
  %214 = add nsw i64 %smin1060, 1199
  br label %polly.loop_header814

polly.loop_exit816:                               ; preds = %polly.loop_exit822
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next812, 38
  br i1 %exitcond1063.not, label %polly.loop_header834, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_exit822, %polly.loop_header808
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %215 = mul nsw i64 %polly.indvar817, -32
  %smin1122 = call i64 @llvm.smin.i64(i64 %215, i64 -968)
  %216 = add nsw i64 %smin1122, 1000
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -968)
  %217 = shl nsw i64 %polly.indvar817, 5
  %218 = add nsw i64 %smin1056, 999
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next818, 32
  br i1 %exitcond1062.not, label %polly.loop_exit816, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %polly.indvar823 = phi i64 [ 0, %polly.loop_header814 ], [ %polly.indvar_next824, %polly.loop_exit828 ]
  %219 = add nuw nsw i64 %polly.indvar823, %213
  %220 = trunc i64 %219 to i32
  %221 = mul nuw nsw i64 %219, 8000
  %min.iters.check1123 = icmp eq i64 %216, 0
  br i1 %min.iters.check1123, label %polly.loop_header826, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header820
  %broadcast.splatinsert1133 = insertelement <4 x i64> poison, i64 %217, i32 0
  %broadcast.splat1134 = shufflevector <4 x i64> %broadcast.splatinsert1133, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1124
  %index1127 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1128, %vector.body1121 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1132, %vector.body1121 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1131, %broadcast.splat1134
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1136, %223
  %225 = add <4 x i32> %224, <i32 2, i32 2, i32 2, i32 2>
  %226 = urem <4 x i32> %225, <i32 1000, i32 1000, i32 1000, i32 1000>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add nuw nsw i64 %230, %221
  %232 = getelementptr i8, i8* %call2, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !98, !noalias !101
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1128, %216
  br i1 %234, label %polly.loop_exit828, label %vector.body1121, !llvm.loop !102

polly.loop_exit828:                               ; preds = %vector.body1121, %polly.loop_header826
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar823, %214
  br i1 %exitcond1061.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_header820, %polly.loop_header826
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_header826 ], [ 0, %polly.loop_header820 ]
  %235 = add nuw nsw i64 %polly.indvar829, %217
  %236 = trunc i64 %235 to i32
  %237 = mul i32 %236, %220
  %238 = add i32 %237, 2
  %239 = urem i32 %238, 1000
  %p_conv10.i = sitofp i32 %239 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %240 = shl i64 %235, 3
  %241 = add nuw nsw i64 %240, %221
  %scevgep832 = getelementptr i8, i8* %call2, i64 %241
  %scevgep832833 = bitcast i8* %scevgep832 to double*
  store double %p_div12.i, double* %scevgep832833, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar829, %218
  br i1 %exitcond1057.not, label %polly.loop_exit828, label %polly.loop_header826, !llvm.loop !103

polly.loop_header834:                             ; preds = %polly.loop_exit816, %polly.loop_exit842
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %242 = shl nsw i64 %polly.indvar837, 5
  %243 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1053.not, label %init_array.exit, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %244 = mul nsw i64 %polly.indvar843, -32
  %smin1140 = call i64 @llvm.smin.i64(i64 %244, i64 -968)
  %245 = add nsw i64 %smin1140, 1000
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -968)
  %246 = shl nsw i64 %polly.indvar843, 5
  %247 = add nsw i64 %smin1046, 999
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next844, 32
  br i1 %exitcond1052.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %polly.indvar849 = phi i64 [ 0, %polly.loop_header840 ], [ %polly.indvar_next850, %polly.loop_exit854 ]
  %248 = add nuw nsw i64 %polly.indvar849, %242
  %249 = trunc i64 %248 to i32
  %250 = mul nuw nsw i64 %248, 8000
  %min.iters.check1141 = icmp eq i64 %245, 0
  br i1 %min.iters.check1141, label %polly.loop_header852, label %vector.ph1142

vector.ph1142:                                    ; preds = %polly.loop_header846
  %broadcast.splatinsert1151 = insertelement <4 x i64> poison, i64 %246, i32 0
  %broadcast.splat1152 = shufflevector <4 x i64> %broadcast.splatinsert1151, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %vector.ph1142
  %index1145 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1146, %vector.body1139 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1142 ], [ %vec.ind.next1150, %vector.body1139 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1149, %broadcast.splat1152
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1154, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 1200, i32 1200, i32 1200, i32 1200>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add nuw nsw i64 %259, %250
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !97, !noalias !104
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1146, %245
  br i1 %263, label %polly.loop_exit854, label %vector.body1139, !llvm.loop !105

polly.loop_exit854:                               ; preds = %vector.body1139, %polly.loop_header852
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar849, %243
  br i1 %exitcond1051.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_header846, %polly.loop_header852
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_header852 ], [ 0, %polly.loop_header846 ]
  %264 = add nuw nsw i64 %polly.indvar855, %246
  %265 = trunc i64 %264 to i32
  %266 = mul i32 %265, %249
  %267 = add i32 %266, 1
  %268 = urem i32 %267, 1200
  %p_conv.i = sitofp i32 %268 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %269 = shl i64 %264, 3
  %270 = add nuw nsw i64 %269, %250
  %scevgep859 = getelementptr i8, i8* %call1, i64 %270
  %scevgep859860 = bitcast i8* %scevgep859 to double*
  store double %p_div.i, double* %scevgep859860, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar855, %247
  br i1 %exitcond1047.not, label %polly.loop_exit854, label %polly.loop_header852, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 128}
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
!48 = !{!"llvm.loop.tile.size", i32 80}
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
