; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4513.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4513.c"
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
  %call819 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1671 = bitcast i8* %call1 to double*
  %polly.access.call1680 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1680, %call2
  %polly.access.call2700 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2700, %call1
  %2 = or i1 %0, %1
  %polly.access.call720 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call720, %call2
  %4 = icmp ule i8* %polly.access.call2700, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call720, %call1
  %8 = icmp ule i8* %polly.access.call1680, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1091 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1090 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1089 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1088 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1088, %scevgep1091
  %bound1 = icmp ult i8* %scevgep1090, %scevgep1089
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
  br i1 %exitcond18.not.i, label %vector.ph1095, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1095:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1102 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1103 = shufflevector <4 x i64> %broadcast.splatinsert1102, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1095
  %index1096 = phi i64 [ 0, %vector.ph1095 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1095 ], [ %vec.ind.next1101, %vector.body1094 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1100, %broadcast.splat1103
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1096
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1097, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1094, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1094
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1095, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1157 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1157, label %for.body3.i46.preheader1231, label %vector.ph1158

vector.ph1158:                                    ; preds = %for.body3.i46.preheader
  %n.vec1160 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1156 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1161
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1162 = add i64 %index1161, 4
  %46 = icmp eq i64 %index.next1162, %n.vec1160
  br i1 %46, label %middle.block1154, label %vector.body1156, !llvm.loop !18

middle.block1154:                                 ; preds = %vector.body1156
  %cmp.n1164 = icmp eq i64 %indvars.iv21.i, %n.vec1160
  br i1 %cmp.n1164, label %for.inc6.i, label %for.body3.i46.preheader1231

for.body3.i46.preheader1231:                      ; preds = %for.body3.i46.preheader, %middle.block1154
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1160, %middle.block1154 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1231, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1231 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1154, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !43

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting477
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1180 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1180, label %for.body3.i60.preheader1230, label %vector.ph1181

vector.ph1181:                                    ; preds = %for.body3.i60.preheader
  %n.vec1183 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1181
  %index1184 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1185, %vector.body1179 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1184
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1188, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1185 = add i64 %index1184, 4
  %57 = icmp eq i64 %index.next1185, %n.vec1183
  br i1 %57, label %middle.block1177, label %vector.body1179, !llvm.loop !54

middle.block1177:                                 ; preds = %vector.body1179
  %cmp.n1187 = icmp eq i64 %indvars.iv21.i52, %n.vec1183
  br i1 %cmp.n1187, label %for.inc6.i63, label %for.body3.i60.preheader1230

for.body3.i60.preheader1230:                      ; preds = %for.body3.i60.preheader, %middle.block1177
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1183, %middle.block1177 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1230, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1230 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1177, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !43

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
  %min.iters.check1206 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1206, label %for.body3.i99.preheader1229, label %vector.ph1207

vector.ph1207:                                    ; preds = %for.body3.i99.preheader
  %n.vec1209 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1205 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1210
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1211 = add i64 %index1210, 4
  %68 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %68, label %middle.block1203, label %vector.body1205, !llvm.loop !56

middle.block1203:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %indvars.iv21.i91, %n.vec1209
  br i1 %cmp.n1213, label %for.inc6.i102, label %for.body3.i99.preheader1229

for.body3.i99.preheader1229:                      ; preds = %for.body3.i99.preheader, %middle.block1203
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1209, %middle.block1203 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1229, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1229 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1203, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !43

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1218 = phi i64 [ %indvar.next1219, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1218, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1220 = icmp ult i64 %88, 4
  br i1 %min.iters.check1220, label %polly.loop_header191.preheader, label %vector.ph1221

vector.ph1221:                                    ; preds = %polly.loop_header
  %n.vec1223 = and i64 %88, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1217 ]
  %90 = shl nuw nsw i64 %index1224, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1225 = add i64 %index1224, 4
  %95 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %95, label %middle.block1215, label %vector.body1217, !llvm.loop !68

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1227 = icmp eq i64 %88, %n.vec1223
  br i1 %cmp.n1227, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1215
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1223, %middle.block1215 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1215
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1219 = add i64 %indvar1218, 1
  br i1 %exitcond1002.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1001.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv987 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next988, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 1
  %98 = add nuw nsw i64 %97, 2
  %pexp.p_div_q = udiv i64 %98, 5
  %99 = sub nsw i64 %97, %pexp.p_div_q
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 59
  %101 = select i1 %.inv, i64 %100, i64 59
  %polly.loop_guard = icmp sgt i64 %101, -1
  %102 = mul nsw i64 %polly.indvar202, -32
  %103 = icmp slt i64 %102, -1168
  %104 = select i1 %103, i64 %102, i64 -1168
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 32
  %exitcond1000.not = icmp eq i64 %polly.indvar_next203, 38
  br i1 %exitcond1000.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %107 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond999.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv989 = phi i64 [ %indvars.iv987, %polly.loop_header211.preheader ], [ %indvars.iv.next990, %polly.loop_exit220 ]
  %indvars.iv985 = phi i64 [ %indvars.iv, %polly.loop_header211.preheader ], [ %indvars.iv.next986, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %108 = mul nsw i64 %polly.indvar214, 20
  %109 = add nsw i64 %108, %102
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard221.not = icmp sgt i64 %111, %105
  br i1 %polly.loop_guard221.not, label %polly.loop_exit220, label %polly.loop_header218.preheader

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv985, i64 0)
  %112 = add i64 %smax, %indvars.iv989
  %113 = sub nsw i64 %106, %108
  %114 = add nuw nsw i64 %108, 20
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw i64 %polly.indvar214, 1
  %indvars.iv.next986 = add i64 %indvars.iv985, 20
  %indvars.iv.next990 = add i64 %indvars.iv989, -20
  %exitcond998.not = icmp eq i64 %polly.indvar214, %101
  br i1 %exitcond998.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv991 = phi i64 [ %112, %polly.loop_header218.preheader ], [ %indvars.iv.next992, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %111, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin995 = call i64 @llvm.smin.i64(i64 %indvars.iv991, i64 19)
  %115 = add nsw i64 %polly.indvar222, %113
  %polly.loop_guard2351083 = icmp sgt i64 %115, -1
  %116 = add nuw nsw i64 %polly.indvar222, %106
  %.not = icmp ult i64 %116, %114
  %polly.access.mul.call1244 = mul nsw i64 %116, 1000
  %117 = add nuw i64 %polly.access.mul.call1244, %107
  br i1 %polly.loop_guard2351083, label %polly.loop_header225.us, label %polly.loop_header218.split

polly.loop_header225.us:                          ; preds = %polly.loop_header218, %polly.merge.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.merge.us ], [ 0, %polly.loop_header218 ]
  %118 = add nuw nsw i64 %polly.indvar228.us, %107
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar228.us, 1200
  br label %polly.loop_header232.us

polly.loop_header232.us:                          ; preds = %polly.loop_header225.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header225.us ]
  %119 = add nuw nsw i64 %polly.indvar236.us, %108
  %polly.access.mul.call1240.us = mul nsw i64 %119, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %118, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar236.us, %smin995
  br i1 %exitcond993.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1245.us = add i64 %117, %polly.indvar228.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %115
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next229.us, 20
  br i1 %exitcond994.not, label %polly.loop_header250.preheader, label %polly.loop_header225.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225.preheader

polly.loop_header225.preheader:                   ; preds = %polly.loop_header218.split
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %117
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !65, !noalias !71
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %115
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.access.add.call1245.1 = or i64 %117, 1
  %polly.access.call1246.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.1
  %polly.access.call1246.load.1 = load double, double* %polly.access.call1246.1, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.1 = add nsw i64 %115, 1200
  %polly.access.Packed_MemRef_call1249.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.1
  store double %polly.access.call1246.load.1, double* %polly.access.Packed_MemRef_call1249.1, align 8
  %polly.access.add.call1245.2 = or i64 %117, 2
  %polly.access.call1246.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.2
  %polly.access.call1246.load.2 = load double, double* %polly.access.call1246.2, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.2 = add nsw i64 %115, 2400
  %polly.access.Packed_MemRef_call1249.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.2
  store double %polly.access.call1246.load.2, double* %polly.access.Packed_MemRef_call1249.2, align 8
  %polly.access.add.call1245.3 = or i64 %117, 3
  %polly.access.call1246.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.3
  %polly.access.call1246.load.3 = load double, double* %polly.access.call1246.3, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.3 = add nsw i64 %115, 3600
  %polly.access.Packed_MemRef_call1249.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.3
  store double %polly.access.call1246.load.3, double* %polly.access.Packed_MemRef_call1249.3, align 8
  %polly.access.add.call1245.4 = add i64 %117, 4
  %polly.access.call1246.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.4
  %polly.access.call1246.load.4 = load double, double* %polly.access.call1246.4, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.4 = add nsw i64 %115, 4800
  %polly.access.Packed_MemRef_call1249.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.4
  store double %polly.access.call1246.load.4, double* %polly.access.Packed_MemRef_call1249.4, align 8
  %polly.access.add.call1245.5 = add i64 %117, 5
  %polly.access.call1246.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.5
  %polly.access.call1246.load.5 = load double, double* %polly.access.call1246.5, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.5 = add nsw i64 %115, 6000
  %polly.access.Packed_MemRef_call1249.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.5
  store double %polly.access.call1246.load.5, double* %polly.access.Packed_MemRef_call1249.5, align 8
  %polly.access.add.call1245.6 = add i64 %117, 6
  %polly.access.call1246.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.6
  %polly.access.call1246.load.6 = load double, double* %polly.access.call1246.6, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.6 = add nsw i64 %115, 7200
  %polly.access.Packed_MemRef_call1249.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.6
  store double %polly.access.call1246.load.6, double* %polly.access.Packed_MemRef_call1249.6, align 8
  %polly.access.add.call1245.7 = add i64 %117, 7
  %polly.access.call1246.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.7
  %polly.access.call1246.load.7 = load double, double* %polly.access.call1246.7, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.7 = add nsw i64 %115, 8400
  %polly.access.Packed_MemRef_call1249.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.7
  store double %polly.access.call1246.load.7, double* %polly.access.Packed_MemRef_call1249.7, align 8
  %polly.access.add.call1245.8 = add i64 %117, 8
  %polly.access.call1246.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.8
  %polly.access.call1246.load.8 = load double, double* %polly.access.call1246.8, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.8 = add nsw i64 %115, 9600
  %polly.access.Packed_MemRef_call1249.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.8
  store double %polly.access.call1246.load.8, double* %polly.access.Packed_MemRef_call1249.8, align 8
  %polly.access.add.call1245.9 = add i64 %117, 9
  %polly.access.call1246.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.9
  %polly.access.call1246.load.9 = load double, double* %polly.access.call1246.9, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.9 = add nsw i64 %115, 10800
  %polly.access.Packed_MemRef_call1249.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.9
  store double %polly.access.call1246.load.9, double* %polly.access.Packed_MemRef_call1249.9, align 8
  %polly.access.add.call1245.10 = add i64 %117, 10
  %polly.access.call1246.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.10
  %polly.access.call1246.load.10 = load double, double* %polly.access.call1246.10, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.10 = add nsw i64 %115, 12000
  %polly.access.Packed_MemRef_call1249.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.10
  store double %polly.access.call1246.load.10, double* %polly.access.Packed_MemRef_call1249.10, align 8
  %polly.access.add.call1245.11 = add i64 %117, 11
  %polly.access.call1246.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.11
  %polly.access.call1246.load.11 = load double, double* %polly.access.call1246.11, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.11 = add nsw i64 %115, 13200
  %polly.access.Packed_MemRef_call1249.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.11
  store double %polly.access.call1246.load.11, double* %polly.access.Packed_MemRef_call1249.11, align 8
  %polly.access.add.call1245.12 = add i64 %117, 12
  %polly.access.call1246.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.12
  %polly.access.call1246.load.12 = load double, double* %polly.access.call1246.12, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.12 = add nsw i64 %115, 14400
  %polly.access.Packed_MemRef_call1249.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.12
  store double %polly.access.call1246.load.12, double* %polly.access.Packed_MemRef_call1249.12, align 8
  %polly.access.add.call1245.13 = add i64 %117, 13
  %polly.access.call1246.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.13
  %polly.access.call1246.load.13 = load double, double* %polly.access.call1246.13, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.13 = add nsw i64 %115, 15600
  %polly.access.Packed_MemRef_call1249.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.13
  store double %polly.access.call1246.load.13, double* %polly.access.Packed_MemRef_call1249.13, align 8
  %polly.access.add.call1245.14 = add i64 %117, 14
  %polly.access.call1246.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.14
  %polly.access.call1246.load.14 = load double, double* %polly.access.call1246.14, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.14 = add nsw i64 %115, 16800
  %polly.access.Packed_MemRef_call1249.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.14
  store double %polly.access.call1246.load.14, double* %polly.access.Packed_MemRef_call1249.14, align 8
  %polly.access.add.call1245.15 = add i64 %117, 15
  %polly.access.call1246.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.15
  %polly.access.call1246.load.15 = load double, double* %polly.access.call1246.15, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.15 = add nsw i64 %115, 18000
  %polly.access.Packed_MemRef_call1249.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.15
  store double %polly.access.call1246.load.15, double* %polly.access.Packed_MemRef_call1249.15, align 8
  %polly.access.add.call1245.16 = add i64 %117, 16
  %polly.access.call1246.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.16
  %polly.access.call1246.load.16 = load double, double* %polly.access.call1246.16, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.16 = add nsw i64 %115, 19200
  %polly.access.Packed_MemRef_call1249.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.16
  store double %polly.access.call1246.load.16, double* %polly.access.Packed_MemRef_call1249.16, align 8
  %polly.access.add.call1245.17 = add i64 %117, 17
  %polly.access.call1246.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.17
  %polly.access.call1246.load.17 = load double, double* %polly.access.call1246.17, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.17 = add nsw i64 %115, 20400
  %polly.access.Packed_MemRef_call1249.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.17
  store double %polly.access.call1246.load.17, double* %polly.access.Packed_MemRef_call1249.17, align 8
  %polly.access.add.call1245.18 = add i64 %117, 18
  %polly.access.call1246.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.18
  %polly.access.call1246.load.18 = load double, double* %polly.access.call1246.18, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.18 = add nsw i64 %115, 21600
  %polly.access.Packed_MemRef_call1249.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.18
  store double %polly.access.call1246.load.18, double* %polly.access.Packed_MemRef_call1249.18, align 8
  %polly.access.add.call1245.19 = add i64 %117, 19
  %polly.access.call1246.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.19
  %polly.access.call1246.load.19 = load double, double* %polly.access.call1246.19, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.19 = add nsw i64 %115, 22800
  %polly.access.Packed_MemRef_call1249.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.19
  store double %polly.access.call1246.load.19, double* %polly.access.Packed_MemRef_call1249.19, align 8
  br label %polly.loop_exit252

polly.loop_exit252:                               ; preds = %polly.loop_exit259.loopexit.us, %polly.loop_header218.split, %polly.loop_header225.preheader, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224.not.not = icmp ult i64 %polly.indvar222, %105
  %indvars.iv.next992 = add i64 %indvars.iv991, 1
  br i1 %polly.loop_cond224.not.not, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header250.preheader:                   ; preds = %polly.merge.us
  %120 = mul i64 %116, 8000
  %121 = mul i64 %116, 9600
  br i1 %polly.loop_guard2351083, label %polly.loop_header250.us, label %polly.loop_exit252

polly.loop_header250.us:                          ; preds = %polly.loop_header250.preheader, %polly.loop_exit259.loopexit.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.loopexit.us ], [ 0, %polly.loop_header250.preheader ]
  %122 = add nuw nsw i64 %polly.indvar253.us, %107
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar253.us, 1200
  %123 = shl i64 %122, 3
  %124 = add i64 %123, %120
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1264.us, %115
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us ]
  %125 = add nuw nsw i64 %polly.indvar261.us, %108
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %126 = mul i64 %125, 8000
  %127 = add i64 %126, %123
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %127
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %121
  %scevgep278.us = getelementptr i8, i8* %call, i64 %129
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar261.us, %smin995
  br i1 %exitcond996.not, label %polly.loop_exit259.loopexit.us, label %polly.loop_header257.us

polly.loop_exit259.loopexit.us:                   ; preds = %polly.loop_header257.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next254.us, 20
  br i1 %exitcond997.not, label %polly.loop_exit252, label %polly.loop_header250.us

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1192 = phi i64 [ %indvar.next1193, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %130 = add i64 %indvar1192, 1
  %131 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1194 = icmp ult i64 %130, 4
  br i1 %min.iters.check1194, label %polly.loop_header375.preheader, label %vector.ph1195

vector.ph1195:                                    ; preds = %polly.loop_header369
  %n.vec1197 = and i64 %130, -4
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1199, %vector.body1191 ]
  %132 = shl nuw nsw i64 %index1198, 3
  %133 = getelementptr i8, i8* %scevgep381, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1202 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !73, !noalias !75
  %135 = fmul fast <4 x double> %wide.load1202, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !73, !noalias !75
  %index.next1199 = add i64 %index1198, 4
  %137 = icmp eq i64 %index.next1199, %n.vec1197
  br i1 %137, label %middle.block1189, label %vector.body1191, !llvm.loop !79

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1201 = icmp eq i64 %130, %n.vec1197
  br i1 %cmp.n1201, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1189
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1197, %middle.block1189 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1189
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1193 = add i64 %indvar1192, 1
  br i1 %exitcond1025.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %138
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1024.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !80

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1009 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1010, %polly.loop_exit393 ]
  %indvars.iv1004 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1005, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %139 = shl nuw nsw i64 %polly.indvar388, 1
  %140 = add nuw nsw i64 %139, 2
  %pexp.p_div_q397 = udiv i64 %140, 5
  %141 = sub nsw i64 %139, %pexp.p_div_q397
  %142 = add nsw i64 %141, 1
  %.inv873 = icmp slt i64 %141, 59
  %143 = select i1 %.inv873, i64 %142, i64 59
  %polly.loop_guard402 = icmp sgt i64 %143, -1
  %144 = mul nsw i64 %polly.indvar388, -32
  %145 = icmp slt i64 %144, -1168
  %146 = select i1 %145, i64 %144, i64 -1168
  %147 = add nsw i64 %146, 1199
  %148 = shl nsw i64 %polly.indvar388, 5
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -32
  %indvars.iv.next1010 = add nuw nsw i64 %indvars.iv1009, 32
  %exitcond1023.not = icmp eq i64 %polly.indvar_next389, 38
  br i1 %exitcond1023.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit401 ]
  br i1 %polly.loop_guard402, label %polly.loop_header399.preheader, label %polly.loop_exit401

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %149 = mul nuw nsw i64 %polly.indvar394, 20
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next395, 50
  br i1 %exitcond1022.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1011 = phi i64 [ %indvars.iv1009, %polly.loop_header399.preheader ], [ %indvars.iv.next1012, %polly.loop_exit409 ]
  %indvars.iv1006 = phi i64 [ %indvars.iv1004, %polly.loop_header399.preheader ], [ %indvars.iv.next1007, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %150 = mul nsw i64 %polly.indvar403, 20
  %151 = add nsw i64 %150, %144
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  %polly.loop_guard410.not = icmp sgt i64 %153, %147
  br i1 %polly.loop_guard410.not, label %polly.loop_exit409, label %polly.loop_header407.preheader

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1008 = call i64 @llvm.smax.i64(i64 %indvars.iv1006, i64 0)
  %154 = add i64 %smax1008, %indvars.iv1011
  %155 = sub nsw i64 %148, %150
  %156 = add nuw nsw i64 %150, 20
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw i64 %polly.indvar403, 1
  %indvars.iv.next1007 = add i64 %indvars.iv1006, 20
  %indvars.iv.next1012 = add i64 %indvars.iv1011, -20
  %exitcond1021.not = icmp eq i64 %polly.indvar403, %143
  br i1 %exitcond1021.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1013 = phi i64 [ %154, %polly.loop_header407.preheader ], [ %indvars.iv.next1014, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %153, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1013, i64 19)
  %157 = add nsw i64 %polly.indvar411, %155
  %polly.loop_guard4241084 = icmp sgt i64 %157, -1
  %158 = add nuw nsw i64 %polly.indvar411, %148
  %.not874 = icmp ult i64 %158, %156
  %polly.access.mul.call1437 = mul nsw i64 %158, 1000
  %159 = add nuw i64 %polly.access.mul.call1437, %149
  br i1 %polly.loop_guard4241084, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.merge433.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.merge433.us ], [ 0, %polly.loop_header407 ]
  %160 = add nuw nsw i64 %polly.indvar417.us, %149
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %161 = add nuw nsw i64 %polly.indvar425.us, %150
  %polly.access.mul.call1429.us = mul nsw i64 %161, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %160, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar425.us, %smin1018
  br i1 %exitcond1016.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.add.call1438.us = add i64 %159, %polly.indvar417.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, %157
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.merge433.us

polly.merge433.us:                                ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next418.us, 20
  br i1 %exitcond1017.not, label %polly.loop_header443.preheader, label %polly.loop_header414.us

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not874, label %polly.merge433.us, label %polly.then434.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not874, label %polly.loop_exit445, label %polly.loop_header414.preheader

polly.loop_header414.preheader:                   ; preds = %polly.loop_header407.split
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %159
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !76, !noalias !81
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %157
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.access.add.call1438.1 = or i64 %159, 1
  %polly.access.call1439.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.1
  %polly.access.call1439.load.1 = load double, double* %polly.access.call1439.1, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.1 = add nsw i64 %157, 1200
  %polly.access.Packed_MemRef_call1286442.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.1
  store double %polly.access.call1439.load.1, double* %polly.access.Packed_MemRef_call1286442.1, align 8
  %polly.access.add.call1438.2 = or i64 %159, 2
  %polly.access.call1439.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.2
  %polly.access.call1439.load.2 = load double, double* %polly.access.call1439.2, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.2 = add nsw i64 %157, 2400
  %polly.access.Packed_MemRef_call1286442.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.2
  store double %polly.access.call1439.load.2, double* %polly.access.Packed_MemRef_call1286442.2, align 8
  %polly.access.add.call1438.3 = or i64 %159, 3
  %polly.access.call1439.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.3
  %polly.access.call1439.load.3 = load double, double* %polly.access.call1439.3, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.3 = add nsw i64 %157, 3600
  %polly.access.Packed_MemRef_call1286442.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.3
  store double %polly.access.call1439.load.3, double* %polly.access.Packed_MemRef_call1286442.3, align 8
  %polly.access.add.call1438.4 = add i64 %159, 4
  %polly.access.call1439.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.4
  %polly.access.call1439.load.4 = load double, double* %polly.access.call1439.4, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.4 = add nsw i64 %157, 4800
  %polly.access.Packed_MemRef_call1286442.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.4
  store double %polly.access.call1439.load.4, double* %polly.access.Packed_MemRef_call1286442.4, align 8
  %polly.access.add.call1438.5 = add i64 %159, 5
  %polly.access.call1439.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.5
  %polly.access.call1439.load.5 = load double, double* %polly.access.call1439.5, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.5 = add nsw i64 %157, 6000
  %polly.access.Packed_MemRef_call1286442.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.5
  store double %polly.access.call1439.load.5, double* %polly.access.Packed_MemRef_call1286442.5, align 8
  %polly.access.add.call1438.6 = add i64 %159, 6
  %polly.access.call1439.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.6
  %polly.access.call1439.load.6 = load double, double* %polly.access.call1439.6, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.6 = add nsw i64 %157, 7200
  %polly.access.Packed_MemRef_call1286442.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.6
  store double %polly.access.call1439.load.6, double* %polly.access.Packed_MemRef_call1286442.6, align 8
  %polly.access.add.call1438.7 = add i64 %159, 7
  %polly.access.call1439.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.7
  %polly.access.call1439.load.7 = load double, double* %polly.access.call1439.7, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.7 = add nsw i64 %157, 8400
  %polly.access.Packed_MemRef_call1286442.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.7
  store double %polly.access.call1439.load.7, double* %polly.access.Packed_MemRef_call1286442.7, align 8
  %polly.access.add.call1438.8 = add i64 %159, 8
  %polly.access.call1439.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.8
  %polly.access.call1439.load.8 = load double, double* %polly.access.call1439.8, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.8 = add nsw i64 %157, 9600
  %polly.access.Packed_MemRef_call1286442.8 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.8
  store double %polly.access.call1439.load.8, double* %polly.access.Packed_MemRef_call1286442.8, align 8
  %polly.access.add.call1438.9 = add i64 %159, 9
  %polly.access.call1439.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.9
  %polly.access.call1439.load.9 = load double, double* %polly.access.call1439.9, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.9 = add nsw i64 %157, 10800
  %polly.access.Packed_MemRef_call1286442.9 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.9
  store double %polly.access.call1439.load.9, double* %polly.access.Packed_MemRef_call1286442.9, align 8
  %polly.access.add.call1438.10 = add i64 %159, 10
  %polly.access.call1439.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.10
  %polly.access.call1439.load.10 = load double, double* %polly.access.call1439.10, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.10 = add nsw i64 %157, 12000
  %polly.access.Packed_MemRef_call1286442.10 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.10
  store double %polly.access.call1439.load.10, double* %polly.access.Packed_MemRef_call1286442.10, align 8
  %polly.access.add.call1438.11 = add i64 %159, 11
  %polly.access.call1439.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.11
  %polly.access.call1439.load.11 = load double, double* %polly.access.call1439.11, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.11 = add nsw i64 %157, 13200
  %polly.access.Packed_MemRef_call1286442.11 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.11
  store double %polly.access.call1439.load.11, double* %polly.access.Packed_MemRef_call1286442.11, align 8
  %polly.access.add.call1438.12 = add i64 %159, 12
  %polly.access.call1439.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.12
  %polly.access.call1439.load.12 = load double, double* %polly.access.call1439.12, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.12 = add nsw i64 %157, 14400
  %polly.access.Packed_MemRef_call1286442.12 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.12
  store double %polly.access.call1439.load.12, double* %polly.access.Packed_MemRef_call1286442.12, align 8
  %polly.access.add.call1438.13 = add i64 %159, 13
  %polly.access.call1439.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.13
  %polly.access.call1439.load.13 = load double, double* %polly.access.call1439.13, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.13 = add nsw i64 %157, 15600
  %polly.access.Packed_MemRef_call1286442.13 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.13
  store double %polly.access.call1439.load.13, double* %polly.access.Packed_MemRef_call1286442.13, align 8
  %polly.access.add.call1438.14 = add i64 %159, 14
  %polly.access.call1439.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.14
  %polly.access.call1439.load.14 = load double, double* %polly.access.call1439.14, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.14 = add nsw i64 %157, 16800
  %polly.access.Packed_MemRef_call1286442.14 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.14
  store double %polly.access.call1439.load.14, double* %polly.access.Packed_MemRef_call1286442.14, align 8
  %polly.access.add.call1438.15 = add i64 %159, 15
  %polly.access.call1439.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.15
  %polly.access.call1439.load.15 = load double, double* %polly.access.call1439.15, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.15 = add nsw i64 %157, 18000
  %polly.access.Packed_MemRef_call1286442.15 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.15
  store double %polly.access.call1439.load.15, double* %polly.access.Packed_MemRef_call1286442.15, align 8
  %polly.access.add.call1438.16 = add i64 %159, 16
  %polly.access.call1439.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.16
  %polly.access.call1439.load.16 = load double, double* %polly.access.call1439.16, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.16 = add nsw i64 %157, 19200
  %polly.access.Packed_MemRef_call1286442.16 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.16
  store double %polly.access.call1439.load.16, double* %polly.access.Packed_MemRef_call1286442.16, align 8
  %polly.access.add.call1438.17 = add i64 %159, 17
  %polly.access.call1439.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.17
  %polly.access.call1439.load.17 = load double, double* %polly.access.call1439.17, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.17 = add nsw i64 %157, 20400
  %polly.access.Packed_MemRef_call1286442.17 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.17
  store double %polly.access.call1439.load.17, double* %polly.access.Packed_MemRef_call1286442.17, align 8
  %polly.access.add.call1438.18 = add i64 %159, 18
  %polly.access.call1439.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.18
  %polly.access.call1439.load.18 = load double, double* %polly.access.call1439.18, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.18 = add nsw i64 %157, 21600
  %polly.access.Packed_MemRef_call1286442.18 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.18
  store double %polly.access.call1439.load.18, double* %polly.access.Packed_MemRef_call1286442.18, align 8
  %polly.access.add.call1438.19 = add i64 %159, 19
  %polly.access.call1439.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.19
  %polly.access.call1439.load.19 = load double, double* %polly.access.call1439.19, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.19 = add nsw i64 %157, 22800
  %polly.access.Packed_MemRef_call1286442.19 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.19
  store double %polly.access.call1439.load.19, double* %polly.access.Packed_MemRef_call1286442.19, align 8
  br label %polly.loop_exit445

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header407.split, %polly.loop_header414.preheader, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413.not.not = icmp ult i64 %polly.indvar411, %147
  %indvars.iv.next1014 = add i64 %indvars.iv1013, 1
  br i1 %polly.loop_cond413.not.not, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header443.preheader:                   ; preds = %polly.merge433.us
  %162 = mul i64 %158, 8000
  %163 = mul i64 %158, 9600
  br i1 %polly.loop_guard4241084, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %164 = add nuw nsw i64 %polly.indvar446.us, %149
  %polly.access.mul.Packed_MemRef_call1286457.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %165 = shl i64 %164, 3
  %166 = add i64 %165, %162
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %166
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286457.us, %157
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %167 = add nuw nsw i64 %polly.indvar454.us, %150
  %polly.access.add.Packed_MemRef_call1286458.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1286457.us
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %168 = mul i64 %167, 8000
  %169 = add i64 %168, %165
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %169
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %170 = shl i64 %167, 3
  %171 = add i64 %170, %163
  %scevgep471.us = getelementptr i8, i8* %call, i64 %171
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar454.us, %smin1018
  br i1 %exitcond1019.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next447.us, 20
  br i1 %exitcond1020.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1168 = icmp ult i64 %172, 4
  br i1 %min.iters.check1168, label %polly.loop_header568.preheader, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header562
  %n.vec1171 = and i64 %172, -4
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1167 ]
  %174 = shl nuw nsw i64 %index1172, 3
  %175 = getelementptr i8, i8* %scevgep574, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1176 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !83, !noalias !85
  %177 = fmul fast <4 x double> %wide.load1176, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !83, !noalias !85
  %index.next1173 = add i64 %index1172, 4
  %179 = icmp eq i64 %index.next1173, %n.vec1171
  br i1 %179, label %middle.block1165, label %vector.body1167, !llvm.loop !89

middle.block1165:                                 ; preds = %vector.body1167
  %cmp.n1175 = icmp eq i64 %172, %n.vec1171
  br i1 %cmp.n1175, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1165
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1171, %middle.block1165 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1165
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1048.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %180
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1047.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !90

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1032 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1033, %polly.loop_exit586 ]
  %indvars.iv1027 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1028, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit586 ]
  %181 = shl nuw nsw i64 %polly.indvar581, 1
  %182 = add nuw nsw i64 %181, 2
  %pexp.p_div_q590 = udiv i64 %182, 5
  %183 = sub nsw i64 %181, %pexp.p_div_q590
  %184 = add nsw i64 %183, 1
  %.inv875 = icmp slt i64 %183, 59
  %185 = select i1 %.inv875, i64 %184, i64 59
  %polly.loop_guard595 = icmp sgt i64 %185, -1
  %186 = mul nsw i64 %polly.indvar581, -32
  %187 = icmp slt i64 %186, -1168
  %188 = select i1 %187, i64 %186, i64 -1168
  %189 = add nsw i64 %188, 1199
  %190 = shl nsw i64 %polly.indvar581, 5
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1028 = add nsw i64 %indvars.iv1027, -32
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 32
  %exitcond1046.not = icmp eq i64 %polly.indvar_next582, 38
  br i1 %exitcond1046.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header578 ], [ %polly.indvar_next588, %polly.loop_exit594 ]
  br i1 %polly.loop_guard595, label %polly.loop_header592.preheader, label %polly.loop_exit594

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %191 = mul nuw nsw i64 %polly.indvar587, 20
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next588, 50
  br i1 %exitcond1045.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1034 = phi i64 [ %indvars.iv1032, %polly.loop_header592.preheader ], [ %indvars.iv.next1035, %polly.loop_exit602 ]
  %indvars.iv1029 = phi i64 [ %indvars.iv1027, %polly.loop_header592.preheader ], [ %indvars.iv.next1030, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %192 = mul nsw i64 %polly.indvar596, 20
  %193 = add nsw i64 %192, %186
  %194 = icmp sgt i64 %193, 0
  %195 = select i1 %194, i64 %193, i64 0
  %polly.loop_guard603.not = icmp sgt i64 %195, %189
  br i1 %polly.loop_guard603.not, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1031 = call i64 @llvm.smax.i64(i64 %indvars.iv1029, i64 0)
  %196 = add i64 %smax1031, %indvars.iv1034
  %197 = sub nsw i64 %190, %192
  %198 = add nuw nsw i64 %192, 20
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw i64 %polly.indvar596, 1
  %indvars.iv.next1030 = add i64 %indvars.iv1029, 20
  %indvars.iv.next1035 = add i64 %indvars.iv1034, -20
  %exitcond1044.not = icmp eq i64 %polly.indvar596, %185
  br i1 %exitcond1044.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1036 = phi i64 [ %196, %polly.loop_header600.preheader ], [ %indvars.iv.next1037, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %195, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 19)
  %199 = add nsw i64 %polly.indvar604, %197
  %polly.loop_guard6171085 = icmp sgt i64 %199, -1
  %200 = add nuw nsw i64 %polly.indvar604, %190
  %.not876 = icmp ult i64 %200, %198
  %polly.access.mul.call1630 = mul nsw i64 %200, 1000
  %201 = add nuw i64 %polly.access.mul.call1630, %191
  br i1 %polly.loop_guard6171085, label %polly.loop_header607.us, label %polly.loop_header600.split

polly.loop_header607.us:                          ; preds = %polly.loop_header600, %polly.merge626.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.merge626.us ], [ 0, %polly.loop_header600 ]
  %202 = add nuw nsw i64 %polly.indvar610.us, %191
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar610.us, 1200
  br label %polly.loop_header614.us

polly.loop_header614.us:                          ; preds = %polly.loop_header607.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header607.us ]
  %203 = add nuw nsw i64 %polly.indvar618.us, %192
  %polly.access.mul.call1622.us = mul nsw i64 %203, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %202, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar618.us, %smin1041
  br i1 %exitcond1039.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.add.call1631.us = add i64 %201, %polly.indvar610.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, %199
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next611.us, 20
  br i1 %exitcond1040.not, label %polly.loop_header636.preheader, label %polly.loop_header607.us

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not876, label %polly.merge626.us, label %polly.then627.us

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not876, label %polly.loop_exit638, label %polly.loop_header607.preheader

polly.loop_header607.preheader:                   ; preds = %polly.loop_header600.split
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %201
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !86, !noalias !91
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %199
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.access.add.call1631.1 = or i64 %201, 1
  %polly.access.call1632.1 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.1
  %polly.access.call1632.load.1 = load double, double* %polly.access.call1632.1, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.1 = add nsw i64 %199, 1200
  %polly.access.Packed_MemRef_call1479635.1 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.1
  store double %polly.access.call1632.load.1, double* %polly.access.Packed_MemRef_call1479635.1, align 8
  %polly.access.add.call1631.2 = or i64 %201, 2
  %polly.access.call1632.2 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.2
  %polly.access.call1632.load.2 = load double, double* %polly.access.call1632.2, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.2 = add nsw i64 %199, 2400
  %polly.access.Packed_MemRef_call1479635.2 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.2
  store double %polly.access.call1632.load.2, double* %polly.access.Packed_MemRef_call1479635.2, align 8
  %polly.access.add.call1631.3 = or i64 %201, 3
  %polly.access.call1632.3 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.3
  %polly.access.call1632.load.3 = load double, double* %polly.access.call1632.3, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.3 = add nsw i64 %199, 3600
  %polly.access.Packed_MemRef_call1479635.3 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.3
  store double %polly.access.call1632.load.3, double* %polly.access.Packed_MemRef_call1479635.3, align 8
  %polly.access.add.call1631.4 = add i64 %201, 4
  %polly.access.call1632.4 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.4
  %polly.access.call1632.load.4 = load double, double* %polly.access.call1632.4, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.4 = add nsw i64 %199, 4800
  %polly.access.Packed_MemRef_call1479635.4 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.4
  store double %polly.access.call1632.load.4, double* %polly.access.Packed_MemRef_call1479635.4, align 8
  %polly.access.add.call1631.5 = add i64 %201, 5
  %polly.access.call1632.5 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.5
  %polly.access.call1632.load.5 = load double, double* %polly.access.call1632.5, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.5 = add nsw i64 %199, 6000
  %polly.access.Packed_MemRef_call1479635.5 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.5
  store double %polly.access.call1632.load.5, double* %polly.access.Packed_MemRef_call1479635.5, align 8
  %polly.access.add.call1631.6 = add i64 %201, 6
  %polly.access.call1632.6 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.6
  %polly.access.call1632.load.6 = load double, double* %polly.access.call1632.6, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.6 = add nsw i64 %199, 7200
  %polly.access.Packed_MemRef_call1479635.6 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.6
  store double %polly.access.call1632.load.6, double* %polly.access.Packed_MemRef_call1479635.6, align 8
  %polly.access.add.call1631.7 = add i64 %201, 7
  %polly.access.call1632.7 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.7
  %polly.access.call1632.load.7 = load double, double* %polly.access.call1632.7, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.7 = add nsw i64 %199, 8400
  %polly.access.Packed_MemRef_call1479635.7 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.7
  store double %polly.access.call1632.load.7, double* %polly.access.Packed_MemRef_call1479635.7, align 8
  %polly.access.add.call1631.8 = add i64 %201, 8
  %polly.access.call1632.8 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.8
  %polly.access.call1632.load.8 = load double, double* %polly.access.call1632.8, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.8 = add nsw i64 %199, 9600
  %polly.access.Packed_MemRef_call1479635.8 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.8
  store double %polly.access.call1632.load.8, double* %polly.access.Packed_MemRef_call1479635.8, align 8
  %polly.access.add.call1631.9 = add i64 %201, 9
  %polly.access.call1632.9 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.9
  %polly.access.call1632.load.9 = load double, double* %polly.access.call1632.9, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.9 = add nsw i64 %199, 10800
  %polly.access.Packed_MemRef_call1479635.9 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.9
  store double %polly.access.call1632.load.9, double* %polly.access.Packed_MemRef_call1479635.9, align 8
  %polly.access.add.call1631.10 = add i64 %201, 10
  %polly.access.call1632.10 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.10
  %polly.access.call1632.load.10 = load double, double* %polly.access.call1632.10, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.10 = add nsw i64 %199, 12000
  %polly.access.Packed_MemRef_call1479635.10 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.10
  store double %polly.access.call1632.load.10, double* %polly.access.Packed_MemRef_call1479635.10, align 8
  %polly.access.add.call1631.11 = add i64 %201, 11
  %polly.access.call1632.11 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.11
  %polly.access.call1632.load.11 = load double, double* %polly.access.call1632.11, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.11 = add nsw i64 %199, 13200
  %polly.access.Packed_MemRef_call1479635.11 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.11
  store double %polly.access.call1632.load.11, double* %polly.access.Packed_MemRef_call1479635.11, align 8
  %polly.access.add.call1631.12 = add i64 %201, 12
  %polly.access.call1632.12 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.12
  %polly.access.call1632.load.12 = load double, double* %polly.access.call1632.12, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.12 = add nsw i64 %199, 14400
  %polly.access.Packed_MemRef_call1479635.12 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.12
  store double %polly.access.call1632.load.12, double* %polly.access.Packed_MemRef_call1479635.12, align 8
  %polly.access.add.call1631.13 = add i64 %201, 13
  %polly.access.call1632.13 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.13
  %polly.access.call1632.load.13 = load double, double* %polly.access.call1632.13, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.13 = add nsw i64 %199, 15600
  %polly.access.Packed_MemRef_call1479635.13 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.13
  store double %polly.access.call1632.load.13, double* %polly.access.Packed_MemRef_call1479635.13, align 8
  %polly.access.add.call1631.14 = add i64 %201, 14
  %polly.access.call1632.14 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.14
  %polly.access.call1632.load.14 = load double, double* %polly.access.call1632.14, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.14 = add nsw i64 %199, 16800
  %polly.access.Packed_MemRef_call1479635.14 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.14
  store double %polly.access.call1632.load.14, double* %polly.access.Packed_MemRef_call1479635.14, align 8
  %polly.access.add.call1631.15 = add i64 %201, 15
  %polly.access.call1632.15 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.15
  %polly.access.call1632.load.15 = load double, double* %polly.access.call1632.15, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.15 = add nsw i64 %199, 18000
  %polly.access.Packed_MemRef_call1479635.15 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.15
  store double %polly.access.call1632.load.15, double* %polly.access.Packed_MemRef_call1479635.15, align 8
  %polly.access.add.call1631.16 = add i64 %201, 16
  %polly.access.call1632.16 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.16
  %polly.access.call1632.load.16 = load double, double* %polly.access.call1632.16, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.16 = add nsw i64 %199, 19200
  %polly.access.Packed_MemRef_call1479635.16 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.16
  store double %polly.access.call1632.load.16, double* %polly.access.Packed_MemRef_call1479635.16, align 8
  %polly.access.add.call1631.17 = add i64 %201, 17
  %polly.access.call1632.17 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.17
  %polly.access.call1632.load.17 = load double, double* %polly.access.call1632.17, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.17 = add nsw i64 %199, 20400
  %polly.access.Packed_MemRef_call1479635.17 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.17
  store double %polly.access.call1632.load.17, double* %polly.access.Packed_MemRef_call1479635.17, align 8
  %polly.access.add.call1631.18 = add i64 %201, 18
  %polly.access.call1632.18 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.18
  %polly.access.call1632.load.18 = load double, double* %polly.access.call1632.18, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.18 = add nsw i64 %199, 21600
  %polly.access.Packed_MemRef_call1479635.18 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.18
  store double %polly.access.call1632.load.18, double* %polly.access.Packed_MemRef_call1479635.18, align 8
  %polly.access.add.call1631.19 = add i64 %201, 19
  %polly.access.call1632.19 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.19
  %polly.access.call1632.load.19 = load double, double* %polly.access.call1632.19, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.19 = add nsw i64 %199, 22800
  %polly.access.Packed_MemRef_call1479635.19 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.19
  store double %polly.access.call1632.load.19, double* %polly.access.Packed_MemRef_call1479635.19, align 8
  br label %polly.loop_exit638

polly.loop_exit638:                               ; preds = %polly.loop_exit645.loopexit.us, %polly.loop_header600.split, %polly.loop_header607.preheader, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606.not.not = icmp ult i64 %polly.indvar604, %189
  %indvars.iv.next1037 = add i64 %indvars.iv1036, 1
  br i1 %polly.loop_cond606.not.not, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header636.preheader:                   ; preds = %polly.merge626.us
  %204 = mul i64 %200, 8000
  %205 = mul i64 %200, 9600
  br i1 %polly.loop_guard6171085, label %polly.loop_header636.us, label %polly.loop_exit638

polly.loop_header636.us:                          ; preds = %polly.loop_header636.preheader, %polly.loop_exit645.loopexit.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_exit645.loopexit.us ], [ 0, %polly.loop_header636.preheader ]
  %206 = add nuw nsw i64 %polly.indvar639.us, %191
  %polly.access.mul.Packed_MemRef_call1479650.us = mul nuw nsw i64 %polly.indvar639.us, 1200
  %207 = shl i64 %206, 3
  %208 = add i64 %207, %204
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %208
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479650.us, %199
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us ]
  %209 = add nuw nsw i64 %polly.indvar647.us, %192
  %polly.access.add.Packed_MemRef_call1479651.us = add nuw nsw i64 %polly.indvar647.us, %polly.access.mul.Packed_MemRef_call1479650.us
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %210 = mul i64 %209, 8000
  %211 = add i64 %210, %207
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %211
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %212 = shl i64 %209, 3
  %213 = add i64 %212, %205
  %scevgep664.us = getelementptr i8, i8* %call, i64 %213
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar647.us, %smin1041
  br i1 %exitcond1042.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next640.us, 20
  br i1 %exitcond1043.not, label %polly.loop_exit638, label %polly.loop_header636.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %214 = shl nsw i64 %polly.indvar796, 5
  %215 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1078.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %216 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin, 1200
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %218 = shl nsw i64 %polly.indvar802, 5
  %219 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1077.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %220 = add nuw nsw i64 %polly.indvar808, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1107

vector.ph1107:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1114 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat1115 = shufflevector <4 x i64> %broadcast.splatinsert1114, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %vector.ph1107
  %index1108 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1112 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1107 ], [ %vec.ind.next1113, %vector.body1106 ]
  %223 = add nuw nsw <4 x i64> %vec.ind1112, %broadcast.splat1115
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat1117, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !93, !noalias !95
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1113 = add <4 x i64> %vec.ind1112, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next1109, %217
  br i1 %235, label %polly.loop_exit813, label %vector.body1106, !llvm.loop !98

polly.loop_exit813:                               ; preds = %vector.body1106, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar808, %215
  br i1 %exitcond1076.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %236 = add nuw nsw i64 %polly.indvar814, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep817 = getelementptr i8, i8* %call, i64 %242
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar814, %219
  br i1 %exitcond1072.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !99

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %243 = shl nsw i64 %polly.indvar823, 5
  %244 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1068.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %245 = mul nsw i64 %polly.indvar829, -32
  %smin1121 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin1121, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %247 = shl nsw i64 %polly.indvar829, 5
  %248 = add nsw i64 %smin1061, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1067.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %249 = add nuw nsw i64 %polly.indvar835, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check1122 = icmp eq i64 %246, 0
  br i1 %min.iters.check1122, label %polly.loop_header838, label %vector.ph1123

vector.ph1123:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1132 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1133 = shufflevector <4 x i64> %broadcast.splatinsert1132, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1123
  %index1126 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1127, %vector.body1120 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1123 ], [ %vec.ind.next1131, %vector.body1120 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1130, %broadcast.splat1133
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1135, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !97, !noalias !100
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1127, %246
  br i1 %264, label %polly.loop_exit840, label %vector.body1120, !llvm.loop !101

polly.loop_exit840:                               ; preds = %vector.body1120, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar835, %244
  br i1 %exitcond1066.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %265 = add nuw nsw i64 %polly.indvar841, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep844 = getelementptr i8, i8* %call2, i64 %271
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar841, %248
  br i1 %exitcond1062.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !102

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1053, i64 -1168)
  %272 = shl nsw i64 %polly.indvar849, 5
  %273 = add nsw i64 %smin1055, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1058.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %274 = mul nsw i64 %polly.indvar855, -32
  %smin1139 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1139, 1000
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -968)
  %276 = shl nsw i64 %polly.indvar855, 5
  %277 = add nsw i64 %smin1051, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1057.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %278 = add nuw nsw i64 %polly.indvar861, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1140 = icmp eq i64 %275, 0
  br i1 %min.iters.check1140, label %polly.loop_header864, label %vector.ph1141

vector.ph1141:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1150 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1151 = shufflevector <4 x i64> %broadcast.splatinsert1150, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %vector.ph1141
  %index1144 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1145, %vector.body1138 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1141 ], [ %vec.ind.next1149, %vector.body1138 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1148, %broadcast.splat1151
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1153, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !96, !noalias !103
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1145, %275
  br i1 %293, label %polly.loop_exit866, label %vector.body1138, !llvm.loop !104

polly.loop_exit866:                               ; preds = %vector.body1138, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar861, %273
  br i1 %exitcond1056.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %294 = add nuw nsw i64 %polly.indvar867, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep871 = getelementptr i8, i8* %call1, i64 %300
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar867, %277
  br i1 %exitcond1052.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40, !41, !42}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.data.pack.enable", i1 true}
!41 = !{!"llvm.data.pack.array", !21}
!42 = !{!"llvm.data.pack.allocate", !"malloc"}
!43 = distinct !{!43, !12, !23, !44, !45, !46, !47, !48, !51}
!44 = !{!"llvm.loop.id", !"i"}
!45 = !{!"llvm.loop.tile.enable", i1 true}
!46 = !{!"llvm.loop.tile.depth", i32 3}
!47 = !{!"llvm.loop.tile.size", i32 32}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
