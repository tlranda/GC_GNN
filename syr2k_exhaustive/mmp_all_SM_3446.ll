; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3446.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3446.c"
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
  %call829 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1681 = bitcast i8* %call1 to double*
  %polly.access.call1690 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1690, %call2
  %polly.access.call2710 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2710, %call1
  %2 = or i1 %0, %1
  %polly.access.call730 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call730, %call2
  %4 = icmp ule i8* %polly.access.call2710, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call730, %call1
  %8 = icmp ule i8* %polly.access.call1690, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header803, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1126 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1125 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1124 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1123 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1123, %scevgep1126
  %bound1 = icmp ult i8* %scevgep1125, %scevgep1124
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
  br i1 %exitcond18.not.i, label %vector.ph1130, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1130:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1137 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1138 = shufflevector <4 x i64> %broadcast.splatinsert1137, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1130
  %index1131 = phi i64 [ 0, %vector.ph1130 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1130 ], [ %vec.ind.next1136, %vector.body1129 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1135, %broadcast.splat1138
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv7.i, i64 %index1131
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1132, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1129, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1129
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1130, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit864
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1193 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1193, label %for.body3.i46.preheader1273, label %vector.ph1194

vector.ph1194:                                    ; preds = %for.body3.i46.preheader
  %n.vec1196 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1194
  %index1197 = phi i64 [ 0, %vector.ph1194 ], [ %index.next1198, %vector.body1192 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i, i64 %index1197
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1198 = add i64 %index1197, 4
  %46 = icmp eq i64 %index.next1198, %n.vec1196
  br i1 %46, label %middle.block1190, label %vector.body1192, !llvm.loop !18

middle.block1190:                                 ; preds = %vector.body1192
  %cmp.n1200 = icmp eq i64 %indvars.iv21.i, %n.vec1196
  br i1 %cmp.n1200, label %for.inc6.i, label %for.body3.i46.preheader1273

for.body3.i46.preheader1273:                      ; preds = %for.body3.i46.preheader, %middle.block1190
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1196, %middle.block1190 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1273, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1273 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1190, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting485
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start289, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1216 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1216, label %for.body3.i60.preheader1270, label %vector.ph1217

vector.ph1217:                                    ; preds = %for.body3.i60.preheader
  %n.vec1219 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i52, i64 %index1220
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1224 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1224, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %57 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %57, label %middle.block1213, label %vector.body1215, !llvm.loop !60

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %indvars.iv21.i52, %n.vec1219
  br i1 %cmp.n1223, label %for.inc6.i63, label %for.body3.i60.preheader1270

for.body3.i60.preheader1270:                      ; preds = %for.body3.i60.preheader, %middle.block1213
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1219, %middle.block1213 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1270, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1270 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1213, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting290
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1242 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1242, label %for.body3.i99.preheader1267, label %vector.ph1243

vector.ph1243:                                    ; preds = %for.body3.i99.preheader
  %n.vec1245 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1243
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1247, %vector.body1241 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i91, i64 %index1246
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1250 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1250, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1247 = add i64 %index1246, 4
  %68 = icmp eq i64 %index.next1247, %n.vec1245
  br i1 %68, label %middle.block1239, label %vector.body1241, !llvm.loop !62

middle.block1239:                                 ; preds = %vector.body1241
  %cmp.n1249 = icmp eq i64 %indvars.iv21.i91, %n.vec1245
  br i1 %cmp.n1249, label %for.inc6.i102, label %for.body3.i99.preheader1267

for.body3.i99.preheader1267:                      ; preds = %for.body3.i99.preheader, %middle.block1239
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1245, %middle.block1239 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1267, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1267 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1239, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1254 = phi i64 [ %indvar.next1255, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1254, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1256 = icmp ult i64 %88, 4
  br i1 %min.iters.check1256, label %polly.loop_header191.preheader, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header
  %n.vec1259 = and i64 %88, -4
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1253 ]
  %90 = shl nuw nsw i64 %index1260, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1261 = add i64 %index1260, 4
  %95 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %95, label %middle.block1251, label %vector.body1253, !llvm.loop !74

middle.block1251:                                 ; preds = %vector.body1253
  %cmp.n1263 = icmp eq i64 %88, %n.vec1259
  br i1 %cmp.n1263, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1251
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1259, %middle.block1251 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1251
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1255 = add i64 %indvar1254, 1
  br i1 %exitcond1023.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1022.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1022.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond1021.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = shl nuw nsw i64 %indvars.iv1007, 2
  %99 = and i64 %98, 9223372036854775744
  %100 = sub nsw i64 %indvars.iv, %99
  %101 = add i64 %indvars.iv1011, %99
  %102 = mul nuw nsw i64 %polly.indvar208, 5
  %pexp.p_div_q = lshr i64 %102, 4
  %103 = mul nsw i64 %polly.indvar208, -20
  %104 = mul nuw nsw i64 %polly.indvar208, 20
  %105 = add nsw i64 %103, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 5
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -20
  %exitcond1020.not = icmp eq i64 %polly.indvar_next209, 60
  br i1 %exitcond1020.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %polly.loop_exit250 ], [ %101, %polly.loop_header205 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit250 ], [ %100, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %pexp.p_div_q, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %106 = add i64 %smax, %indvars.iv1013
  %107 = shl nsw i64 %polly.indvar214, 6
  %108 = add nsw i64 %107, %103
  %109 = add nsw i64 %108, -1
  %.inv = icmp sgt i64 %108, 19
  %110 = select i1 %.inv, i64 19, i64 %109
  %polly.loop_guard = icmp sgt i64 %110, -1
  %111 = icmp sgt i64 %108, 0
  %112 = select i1 %111, i64 %108, i64 0
  %113 = add nsw i64 %108, 63
  %114 = icmp slt i64 %105, %113
  %115 = select i1 %114, i64 %105, i64 %113
  %polly.loop_guard237.not = icmp sgt i64 %112, %115
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %116 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %117 = add nuw nsw i64 %polly.indvar226.us, %104
  %polly.access.mul.call1230.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %116, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar226.us, %110
  br i1 %exitcond1005.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %112, %polly.loop_exit225.loopexit.us ]
  %118 = add nuw nsw i64 %polly.indvar238.us, %104
  %polly.access.mul.call1242.us = mul nsw i64 %118, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %116, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %115
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_exit225.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond1006.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard237.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_exit250:                               ; preds = %polly.loop_exit257, %polly.loop_header248.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next1010 = add i64 %indvars.iv1009, -64
  %indvars.iv.next1014 = add i64 %indvars.iv1013, 64
  %exitcond1019.not = icmp eq i64 %polly.indvar_next215, 19
  br i1 %exitcond1019.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211.split ]
  %119 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 50
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236, %polly.loop_exit236.us, %polly.loop_header211.split
  %120 = sub nsw i64 %104, %107
  %121 = icmp sgt i64 %120, 0
  %122 = select i1 %121, i64 %120, i64 0
  %123 = mul nsw i64 %polly.indvar214, -64
  %124 = icmp slt i64 %123, -1136
  %125 = select i1 %124, i64 %123, i64 -1136
  %126 = add nsw i64 %125, 1199
  %polly.loop_guard258.not = icmp sgt i64 %122, %126
  br i1 %polly.loop_guard258.not, label %polly.loop_exit250, label %polly.loop_header248

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %112, %polly.loop_header217 ]
  %127 = add nuw nsw i64 %polly.indvar238, %104
  %polly.access.mul.call1242 = mul nsw i64 %127, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %119, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp slt i64 %polly.indvar238, %115
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header248:                             ; preds = %polly.loop_header248.preheader, %polly.loop_exit257
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_exit257 ], [ 0, %polly.loop_header248.preheader ]
  %128 = add nuw nsw i64 %polly.indvar251, %97
  %polly.access.mul.Packed_MemRef_call1270 = mul nuw nsw i64 %polly.indvar251, 1200
  %129 = shl i64 %128, 3
  br label %polly.loop_header255

polly.loop_exit257:                               ; preds = %polly.loop_exit265
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next252, 50
  br i1 %exitcond1018.not, label %polly.loop_exit250, label %polly.loop_header248

polly.loop_header255:                             ; preds = %polly.loop_header248, %polly.loop_exit265
  %indvars.iv1015 = phi i64 [ %106, %polly.loop_header248 ], [ %indvars.iv.next1016, %polly.loop_exit265 ]
  %polly.indvar259 = phi i64 [ %122, %polly.loop_header248 ], [ %polly.indvar_next260, %polly.loop_exit265 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1015, i64 19)
  %130 = add nsw i64 %polly.indvar259, %108
  %polly.loop_guard2661109 = icmp sgt i64 %130, -1
  br i1 %polly.loop_guard2661109, label %polly.loop_header263.preheader, label %polly.loop_exit265

polly.loop_header263.preheader:                   ; preds = %polly.loop_header255
  %131 = add nuw nsw i64 %polly.indvar259, %107
  %132 = mul i64 %131, 8000
  %133 = add i64 %132, %129
  %scevgep274 = getelementptr i8, i8* %call2, i64 %133
  %scevgep274275 = bitcast i8* %scevgep274 to double*
  %_p_scalar_276 = load double, double* %scevgep274275, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1281 = add nsw i64 %130, %polly.access.mul.Packed_MemRef_call1270
  %polly.access.Packed_MemRef_call1282 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1281
  %_p_scalar_283 = load double, double* %polly.access.Packed_MemRef_call1282, align 8
  %134 = mul i64 %131, 9600
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_header263, %polly.loop_header255
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %polly.loop_cond261.not.not = icmp slt i64 %polly.indvar259, %126
  %indvars.iv.next1016 = add i64 %indvars.iv1015, 1
  br i1 %polly.loop_cond261.not.not, label %polly.loop_header255, label %polly.loop_exit257

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_header263
  %polly.indvar267 = phi i64 [ %polly.indvar_next268, %polly.loop_header263 ], [ 0, %polly.loop_header263.preheader ]
  %135 = add nuw nsw i64 %polly.indvar267, %104
  %polly.access.add.Packed_MemRef_call1271 = add nuw nsw i64 %polly.indvar267, %polly.access.mul.Packed_MemRef_call1270
  %polly.access.Packed_MemRef_call1272 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call1272, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_276, %_p_scalar_273
  %136 = mul nuw nsw i64 %135, 8000
  %137 = add nuw nsw i64 %136, %129
  %scevgep277 = getelementptr i8, i8* %call2, i64 %137
  %scevgep277278 = bitcast i8* %scevgep277 to double*
  %_p_scalar_279 = load double, double* %scevgep277278, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_283, %_p_scalar_279
  %138 = shl i64 %135, 3
  %139 = add i64 %138, %134
  %scevgep284 = getelementptr i8, i8* %call, i64 %139
  %scevgep284285 = bitcast i8* %scevgep284 to double*
  %_p_scalar_286 = load double, double* %scevgep284285, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_286
  store double %p_add42.i118, double* %scevgep284285, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next268 = add nuw nsw i64 %polly.indvar267, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar267, %smin
  br i1 %exitcond1017.not, label %polly.loop_exit265, label %polly.loop_header263

polly.start289:                                   ; preds = %kernel_syr2k.exit
  %malloccall291 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header375

polly.exiting290:                                 ; preds = %polly.loop_exit399
  tail call void @free(i8* %malloccall291)
  br label %kernel_syr2k.exit90

polly.loop_header375:                             ; preds = %polly.loop_exit383, %polly.start289
  %indvar1228 = phi i64 [ %indvar.next1229, %polly.loop_exit383 ], [ 0, %polly.start289 ]
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_exit383 ], [ 1, %polly.start289 ]
  %140 = add i64 %indvar1228, 1
  %141 = mul nuw nsw i64 %polly.indvar378, 9600
  %scevgep387 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1230 = icmp ult i64 %140, 4
  br i1 %min.iters.check1230, label %polly.loop_header381.preheader, label %vector.ph1231

vector.ph1231:                                    ; preds = %polly.loop_header375
  %n.vec1233 = and i64 %140, -4
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1227 ]
  %142 = shl nuw nsw i64 %index1234, 3
  %143 = getelementptr i8, i8* %scevgep387, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !79, !noalias !81
  %145 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !79, !noalias !81
  %index.next1235 = add i64 %index1234, 4
  %147 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %147, label %middle.block1225, label %vector.body1227, !llvm.loop !85

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1237 = icmp eq i64 %140, %n.vec1233
  br i1 %cmp.n1237, label %polly.loop_exit383, label %polly.loop_header381.preheader

polly.loop_header381.preheader:                   ; preds = %polly.loop_header375, %middle.block1225
  %polly.indvar384.ph = phi i64 [ 0, %polly.loop_header375 ], [ %n.vec1233, %middle.block1225 ]
  br label %polly.loop_header381

polly.loop_exit383:                               ; preds = %polly.loop_header381, %middle.block1225
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next379, 1200
  %indvar.next1229 = add i64 %indvar1228, 1
  br i1 %exitcond1047.not, label %polly.loop_header391.preheader, label %polly.loop_header375

polly.loop_header391.preheader:                   ; preds = %polly.loop_exit383
  %Packed_MemRef_call1292 = bitcast i8* %malloccall291 to double*
  br label %polly.loop_header391

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_header381
  %polly.indvar384 = phi i64 [ %polly.indvar_next385, %polly.loop_header381 ], [ %polly.indvar384.ph, %polly.loop_header381.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar384, 3
  %scevgep388 = getelementptr i8, i8* %scevgep387, i64 %148
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_390, 1.200000e+00
  store double %p_mul.i57, double* %scevgep388389, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next385, %polly.indvar378
  br i1 %exitcond1046.not, label %polly.loop_exit383, label %polly.loop_header381, !llvm.loop !86

polly.loop_header391:                             ; preds = %polly.loop_header391.preheader, %polly.loop_exit399
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit399 ], [ 0, %polly.loop_header391.preheader ]
  %149 = mul nuw nsw i64 %polly.indvar394, 50
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit406
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next395, 20
  br i1 %exitcond1045.not, label %polly.exiting290, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit406, %polly.loop_header391
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %150 = shl nuw nsw i64 %indvars.iv1029, 2
  %151 = and i64 %150, 9223372036854775744
  %152 = sub nsw i64 %indvars.iv1027, %151
  %153 = add i64 %indvars.iv1034, %151
  %154 = mul nuw nsw i64 %polly.indvar400, 5
  %pexp.p_div_q403 = lshr i64 %154, 4
  %155 = mul nsw i64 %polly.indvar400, -20
  %156 = mul nuw nsw i64 %polly.indvar400, 20
  %157 = add nsw i64 %155, 1199
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_exit445
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 20
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 5
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -20
  %exitcond1044.not = icmp eq i64 %polly.indvar_next401, 60
  br i1 %exitcond1044.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header404:                             ; preds = %polly.loop_exit445, %polly.loop_header397
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit445 ], [ %153, %polly.loop_header397 ]
  %indvars.iv1031 = phi i64 [ %indvars.iv.next1032, %polly.loop_exit445 ], [ %152, %polly.loop_header397 ]
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit445 ], [ %pexp.p_div_q403, %polly.loop_header397 ]
  %smax1033 = call i64 @llvm.smax.i64(i64 %indvars.iv1031, i64 0)
  %158 = add i64 %smax1033, %indvars.iv1036
  %159 = shl nsw i64 %polly.indvar407, 6
  %160 = add nsw i64 %159, %155
  %161 = add nsw i64 %160, -1
  %.inv883 = icmp sgt i64 %160, 19
  %162 = select i1 %.inv883, i64 19, i64 %161
  %polly.loop_guard420 = icmp sgt i64 %162, -1
  %163 = icmp sgt i64 %160, 0
  %164 = select i1 %163, i64 %160, i64 0
  %165 = add nsw i64 %160, 63
  %166 = icmp slt i64 %157, %165
  %167 = select i1 %166, i64 %157, i64 %165
  %polly.loop_guard432.not = icmp sgt i64 %164, %167
  br i1 %polly.loop_guard420, label %polly.loop_header410.us, label %polly.loop_header404.split

polly.loop_header410.us:                          ; preds = %polly.loop_header404, %polly.loop_exit431.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header404 ]
  %168 = add nuw nsw i64 %polly.indvar413.us, %149
  %polly.access.mul.Packed_MemRef_call1292.us = mul nuw nsw i64 %polly.indvar413.us, 1200
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %169 = add nuw nsw i64 %polly.indvar421.us, %156
  %polly.access.mul.call1425.us = mul nuw nsw i64 %169, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %168, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1292.us
  %polly.access.Packed_MemRef_call1292.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1292.us, align 8
  %polly.indvar_next422.us = add nuw i64 %polly.indvar421.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar421.us, %162
  br i1 %exitcond1025.not, label %polly.loop_exit419.loopexit.us, label %polly.loop_header417.us

polly.loop_header429.us:                          ; preds = %polly.loop_exit419.loopexit.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %164, %polly.loop_exit419.loopexit.us ]
  %170 = add nuw nsw i64 %polly.indvar433.us, %156
  %polly.access.mul.call1437.us = mul nsw i64 %170, 1000
  %polly.access.add.call1438.us = add nuw nsw i64 %168, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1292.us
  %polly.access.Packed_MemRef_call1292442.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1292442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %167
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_exit419.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next414.us, 50
  br i1 %exitcond1026.not, label %polly.loop_header443.preheader, label %polly.loop_header410.us

polly.loop_exit419.loopexit.us:                   ; preds = %polly.loop_header417.us
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header404.split:                       ; preds = %polly.loop_header404
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header410

polly.loop_exit445:                               ; preds = %polly.loop_exit452, %polly.loop_header443.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next1032 = add i64 %indvars.iv1031, -64
  %indvars.iv.next1037 = add i64 %indvars.iv1036, 64
  %exitcond1043.not = icmp eq i64 %polly.indvar_next408, 19
  br i1 %exitcond1043.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header404.split, %polly.loop_exit431
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit431 ], [ 0, %polly.loop_header404.split ]
  %171 = add nuw nsw i64 %polly.indvar413, %149
  %polly.access.mul.Packed_MemRef_call1292440 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next414, 50
  br i1 %exitcond1024.not, label %polly.loop_header443.preheader, label %polly.loop_header410

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header404.split
  %172 = sub nsw i64 %156, %159
  %173 = icmp sgt i64 %172, 0
  %174 = select i1 %173, i64 %172, i64 0
  %175 = mul nsw i64 %polly.indvar407, -64
  %176 = icmp slt i64 %175, -1136
  %177 = select i1 %176, i64 %175, i64 -1136
  %178 = add nsw i64 %177, 1199
  %polly.loop_guard453.not = icmp sgt i64 %174, %178
  br i1 %polly.loop_guard453.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header429:                             ; preds = %polly.loop_header410, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %164, %polly.loop_header410 ]
  %179 = add nuw nsw i64 %polly.indvar433, %156
  %polly.access.mul.call1437 = mul nsw i64 %179, 1000
  %polly.access.add.call1438 = add nuw nsw i64 %171, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1292440
  %polly.access.Packed_MemRef_call1292442 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1292442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %167
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header443:                             ; preds = %polly.loop_header443.preheader, %polly.loop_exit452
  %polly.indvar446 = phi i64 [ %polly.indvar_next447, %polly.loop_exit452 ], [ 0, %polly.loop_header443.preheader ]
  %180 = add nuw nsw i64 %polly.indvar446, %149
  %polly.access.mul.Packed_MemRef_call1292465 = mul nuw nsw i64 %polly.indvar446, 1200
  %181 = shl i64 %180, 3
  br label %polly.loop_header450

polly.loop_exit452:                               ; preds = %polly.loop_exit460
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next447, 50
  br i1 %exitcond1042.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header450:                             ; preds = %polly.loop_header443, %polly.loop_exit460
  %indvars.iv1038 = phi i64 [ %158, %polly.loop_header443 ], [ %indvars.iv.next1039, %polly.loop_exit460 ]
  %polly.indvar454 = phi i64 [ %174, %polly.loop_header443 ], [ %polly.indvar_next455, %polly.loop_exit460 ]
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 19)
  %182 = add nsw i64 %polly.indvar454, %160
  %polly.loop_guard4611110 = icmp sgt i64 %182, -1
  br i1 %polly.loop_guard4611110, label %polly.loop_header458.preheader, label %polly.loop_exit460

polly.loop_header458.preheader:                   ; preds = %polly.loop_header450
  %183 = add nuw nsw i64 %polly.indvar454, %159
  %184 = mul i64 %183, 8000
  %185 = add i64 %184, %181
  %scevgep469 = getelementptr i8, i8* %call2, i64 %185
  %scevgep469470 = bitcast i8* %scevgep469 to double*
  %_p_scalar_471 = load double, double* %scevgep469470, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1292476 = add nsw i64 %182, %polly.access.mul.Packed_MemRef_call1292465
  %polly.access.Packed_MemRef_call1292477 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292476
  %_p_scalar_478 = load double, double* %polly.access.Packed_MemRef_call1292477, align 8
  %186 = mul i64 %183, 9600
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458, %polly.loop_header450
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %polly.loop_cond456.not.not = icmp slt i64 %polly.indvar454, %178
  %indvars.iv.next1039 = add i64 %indvars.iv1038, 1
  br i1 %polly.loop_cond456.not.not, label %polly.loop_header450, label %polly.loop_exit452

polly.loop_header458:                             ; preds = %polly.loop_header458.preheader, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ 0, %polly.loop_header458.preheader ]
  %187 = add nuw nsw i64 %polly.indvar462, %156
  %polly.access.add.Packed_MemRef_call1292466 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1292465
  %polly.access.Packed_MemRef_call1292467 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292466
  %_p_scalar_468 = load double, double* %polly.access.Packed_MemRef_call1292467, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_471, %_p_scalar_468
  %188 = mul nuw nsw i64 %187, 8000
  %189 = add nuw nsw i64 %188, %181
  %scevgep472 = getelementptr i8, i8* %call2, i64 %189
  %scevgep472473 = bitcast i8* %scevgep472 to double*
  %_p_scalar_474 = load double, double* %scevgep472473, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_478, %_p_scalar_474
  %190 = shl i64 %187, 3
  %191 = add i64 %190, %186
  %scevgep479 = getelementptr i8, i8* %call, i64 %191
  %scevgep479480 = bitcast i8* %scevgep479 to double*
  %_p_scalar_481 = load double, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_481
  store double %p_add42.i79, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar462, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit460, label %polly.loop_header458

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %192 = add i64 %indvar, 1
  %193 = mul nuw nsw i64 %polly.indvar573, 9600
  %scevgep582 = getelementptr i8, i8* %call, i64 %193
  %min.iters.check1204 = icmp ult i64 %192, 4
  br i1 %min.iters.check1204, label %polly.loop_header576.preheader, label %vector.ph1205

vector.ph1205:                                    ; preds = %polly.loop_header570
  %n.vec1207 = and i64 %192, -4
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1203 ]
  %194 = shl nuw nsw i64 %index1208, 3
  %195 = getelementptr i8, i8* %scevgep582, i64 %194
  %196 = bitcast i8* %195 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !89, !noalias !91
  %197 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %198 = bitcast i8* %195 to <4 x double>*
  store <4 x double> %197, <4 x double>* %198, align 8, !alias.scope !89, !noalias !91
  %index.next1209 = add i64 %index1208, 4
  %199 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %199, label %middle.block1201, label %vector.body1203, !llvm.loop !95

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1211 = icmp eq i64 %192, %n.vec1207
  br i1 %cmp.n1211, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1201
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1207, %middle.block1201 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1201
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next574, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1071.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %200 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %200
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1070.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !96

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 0, %polly.loop_header586.preheader ]
  %201 = mul nuw nsw i64 %polly.indvar589, 50
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next590, 20
  br i1 %exitcond1069.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %202 = shl nuw nsw i64 %indvars.iv1053, 2
  %203 = and i64 %202, 9223372036854775744
  %204 = sub nsw i64 %indvars.iv1051, %203
  %205 = add i64 %indvars.iv1058, %203
  %206 = mul nuw nsw i64 %polly.indvar595, 5
  %pexp.p_div_q598 = lshr i64 %206, 4
  %207 = mul nsw i64 %polly.indvar595, -20
  %208 = mul nuw nsw i64 %polly.indvar595, 20
  %209 = add nsw i64 %207, 1199
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit640
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 20
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 5
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -20
  %exitcond1068.not = icmp eq i64 %polly.indvar_next596, 60
  br i1 %exitcond1068.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit640, %polly.loop_header592
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit640 ], [ %205, %polly.loop_header592 ]
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit640 ], [ %204, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit640 ], [ %pexp.p_div_q598, %polly.loop_header592 ]
  %smax1057 = call i64 @llvm.smax.i64(i64 %indvars.iv1055, i64 0)
  %210 = add i64 %smax1057, %indvars.iv1060
  %211 = shl nsw i64 %polly.indvar602, 6
  %212 = add nsw i64 %211, %207
  %213 = add nsw i64 %212, -1
  %.inv884 = icmp sgt i64 %212, 19
  %214 = select i1 %.inv884, i64 19, i64 %213
  %polly.loop_guard615 = icmp sgt i64 %214, -1
  %215 = icmp sgt i64 %212, 0
  %216 = select i1 %215, i64 %212, i64 0
  %217 = add nsw i64 %212, 63
  %218 = icmp slt i64 %209, %217
  %219 = select i1 %218, i64 %209, i64 %217
  %polly.loop_guard627.not = icmp sgt i64 %216, %219
  br i1 %polly.loop_guard615, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit626.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit626.us ], [ 0, %polly.loop_header599 ]
  %220 = add nuw nsw i64 %polly.indvar608.us, %201
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 1200
  br label %polly.loop_header612.us

polly.loop_header612.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header612.us
  %polly.indvar616.us = phi i64 [ %polly.indvar_next617.us, %polly.loop_header612.us ], [ 0, %polly.loop_header605.us ]
  %221 = add nuw nsw i64 %polly.indvar616.us, %208
  %polly.access.mul.call1620.us = mul nuw nsw i64 %221, 1000
  %polly.access.add.call1621.us = add nuw nsw i64 %220, %polly.access.mul.call1620.us
  %polly.access.call1622.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1621.us
  %polly.access.call1622.load.us = load double, double* %polly.access.call1622.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us = add nuw nsw i64 %polly.indvar616.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us
  store double %polly.access.call1622.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.indvar_next617.us = add nuw i64 %polly.indvar616.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar616.us, %214
  br i1 %exitcond1049.not, label %polly.loop_exit614.loopexit.us, label %polly.loop_header612.us

polly.loop_header624.us:                          ; preds = %polly.loop_exit614.loopexit.us, %polly.loop_header624.us
  %polly.indvar628.us = phi i64 [ %polly.indvar_next629.us, %polly.loop_header624.us ], [ %216, %polly.loop_exit614.loopexit.us ]
  %222 = add nuw nsw i64 %polly.indvar628.us, %208
  %polly.access.mul.call1632.us = mul nsw i64 %222, 1000
  %polly.access.add.call1633.us = add nuw nsw i64 %220, %polly.access.mul.call1632.us
  %polly.access.call1634.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1633.us
  %polly.access.call1634.load.us = load double, double* %polly.access.call1634.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487636.us = add nuw nsw i64 %polly.indvar628.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487637.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487636.us
  store double %polly.access.call1634.load.us, double* %polly.access.Packed_MemRef_call1487637.us, align 8
  %polly.indvar_next629.us = add nuw nsw i64 %polly.indvar628.us, 1
  %polly.loop_cond630.not.not.us = icmp slt i64 %polly.indvar628.us, %219
  br i1 %polly.loop_cond630.not.not.us, label %polly.loop_header624.us, label %polly.loop_exit626.us

polly.loop_exit626.us:                            ; preds = %polly.loop_header624.us, %polly.loop_exit614.loopexit.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next609.us, 50
  br i1 %exitcond1050.not, label %polly.loop_header638.preheader, label %polly.loop_header605.us

polly.loop_exit614.loopexit.us:                   ; preds = %polly.loop_header612.us
  br i1 %polly.loop_guard627.not, label %polly.loop_exit626.us, label %polly.loop_header624.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard627.not, label %polly.loop_header638.preheader, label %polly.loop_header605

polly.loop_exit640:                               ; preds = %polly.loop_exit647, %polly.loop_header638.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %indvars.iv.next1056 = add i64 %indvars.iv1055, -64
  %indvars.iv.next1061 = add i64 %indvars.iv1060, 64
  %exitcond1067.not = icmp eq i64 %polly.indvar_next603, 19
  br i1 %exitcond1067.not, label %polly.loop_exit601, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit626
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit626 ], [ 0, %polly.loop_header599.split ]
  %223 = add nuw nsw i64 %polly.indvar608, %201
  %polly.access.mul.Packed_MemRef_call1487635 = mul nuw nsw i64 %polly.indvar608, 1200
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_header624
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next609, 50
  br i1 %exitcond1048.not, label %polly.loop_header638.preheader, label %polly.loop_header605

polly.loop_header638.preheader:                   ; preds = %polly.loop_exit626, %polly.loop_exit626.us, %polly.loop_header599.split
  %224 = sub nsw i64 %208, %211
  %225 = icmp sgt i64 %224, 0
  %226 = select i1 %225, i64 %224, i64 0
  %227 = mul nsw i64 %polly.indvar602, -64
  %228 = icmp slt i64 %227, -1136
  %229 = select i1 %228, i64 %227, i64 -1136
  %230 = add nsw i64 %229, 1199
  %polly.loop_guard648.not = icmp sgt i64 %226, %230
  br i1 %polly.loop_guard648.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header624:                             ; preds = %polly.loop_header605, %polly.loop_header624
  %polly.indvar628 = phi i64 [ %polly.indvar_next629, %polly.loop_header624 ], [ %216, %polly.loop_header605 ]
  %231 = add nuw nsw i64 %polly.indvar628, %208
  %polly.access.mul.call1632 = mul nsw i64 %231, 1000
  %polly.access.add.call1633 = add nuw nsw i64 %223, %polly.access.mul.call1632
  %polly.access.call1634 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1633
  %polly.access.call1634.load = load double, double* %polly.access.call1634, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487636 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call1487635
  %polly.access.Packed_MemRef_call1487637 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487636
  store double %polly.access.call1634.load, double* %polly.access.Packed_MemRef_call1487637, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %polly.loop_cond630.not.not = icmp slt i64 %polly.indvar628, %219
  br i1 %polly.loop_cond630.not.not, label %polly.loop_header624, label %polly.loop_exit626

polly.loop_header638:                             ; preds = %polly.loop_header638.preheader, %polly.loop_exit647
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit647 ], [ 0, %polly.loop_header638.preheader ]
  %232 = add nuw nsw i64 %polly.indvar641, %201
  %polly.access.mul.Packed_MemRef_call1487660 = mul nuw nsw i64 %polly.indvar641, 1200
  %233 = shl i64 %232, 3
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_exit655
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next642, 50
  br i1 %exitcond1066.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header645:                             ; preds = %polly.loop_header638, %polly.loop_exit655
  %indvars.iv1062 = phi i64 [ %210, %polly.loop_header638 ], [ %indvars.iv.next1063, %polly.loop_exit655 ]
  %polly.indvar649 = phi i64 [ %226, %polly.loop_header638 ], [ %polly.indvar_next650, %polly.loop_exit655 ]
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 19)
  %234 = add nsw i64 %polly.indvar649, %212
  %polly.loop_guard6561111 = icmp sgt i64 %234, -1
  br i1 %polly.loop_guard6561111, label %polly.loop_header653.preheader, label %polly.loop_exit655

polly.loop_header653.preheader:                   ; preds = %polly.loop_header645
  %235 = add nuw nsw i64 %polly.indvar649, %211
  %236 = mul i64 %235, 8000
  %237 = add i64 %236, %233
  %scevgep664 = getelementptr i8, i8* %call2, i64 %237
  %scevgep664665 = bitcast i8* %scevgep664 to double*
  %_p_scalar_666 = load double, double* %scevgep664665, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1487671 = add nsw i64 %234, %polly.access.mul.Packed_MemRef_call1487660
  %polly.access.Packed_MemRef_call1487672 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487671
  %_p_scalar_673 = load double, double* %polly.access.Packed_MemRef_call1487672, align 8
  %238 = mul i64 %235, 9600
  br label %polly.loop_header653

polly.loop_exit655:                               ; preds = %polly.loop_header653, %polly.loop_header645
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %polly.loop_cond651.not.not = icmp slt i64 %polly.indvar649, %230
  %indvars.iv.next1063 = add i64 %indvars.iv1062, 1
  br i1 %polly.loop_cond651.not.not, label %polly.loop_header645, label %polly.loop_exit647

polly.loop_header653:                             ; preds = %polly.loop_header653.preheader, %polly.loop_header653
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header653 ], [ 0, %polly.loop_header653.preheader ]
  %239 = add nuw nsw i64 %polly.indvar657, %208
  %polly.access.add.Packed_MemRef_call1487661 = add nuw nsw i64 %polly.indvar657, %polly.access.mul.Packed_MemRef_call1487660
  %polly.access.Packed_MemRef_call1487662 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487661
  %_p_scalar_663 = load double, double* %polly.access.Packed_MemRef_call1487662, align 8
  %p_mul27.i = fmul fast double %_p_scalar_666, %_p_scalar_663
  %240 = mul nuw nsw i64 %239, 8000
  %241 = add nuw nsw i64 %240, %233
  %scevgep667 = getelementptr i8, i8* %call2, i64 %241
  %scevgep667668 = bitcast i8* %scevgep667 to double*
  %_p_scalar_669 = load double, double* %scevgep667668, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_673, %_p_scalar_669
  %242 = shl i64 %239, 3
  %243 = add i64 %242, %238
  %scevgep674 = getelementptr i8, i8* %call, i64 %243
  %scevgep674675 = bitcast i8* %scevgep674 to double*
  %_p_scalar_676 = load double, double* %scevgep674675, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_676
  store double %p_add42.i, double* %scevgep674675, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar657, %smin1064
  br i1 %exitcond1065.not, label %polly.loop_exit655, label %polly.loop_header653

polly.loop_header803:                             ; preds = %entry, %polly.loop_exit811
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit811 ], [ 0, %entry ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %entry ]
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 -1168)
  %244 = shl nsw i64 %polly.indvar806, 5
  %245 = add nsw i64 %smin1098, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -32
  %exitcond1101.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond1101.not, label %polly.loop_header830, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %246 = mul nsw i64 %polly.indvar812, -32
  %smin1142 = call i64 @llvm.smin.i64(i64 %246, i64 -1168)
  %247 = add nsw i64 %smin1142, 1200
  %smin1094 = call i64 @llvm.smin.i64(i64 %indvars.iv1092, i64 -1168)
  %248 = shl nsw i64 %polly.indvar812, 5
  %249 = add nsw i64 %smin1094, 1199
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -32
  %exitcond1100.not = icmp eq i64 %polly.indvar_next813, 38
  br i1 %exitcond1100.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %polly.indvar818 = phi i64 [ 0, %polly.loop_header809 ], [ %polly.indvar_next819, %polly.loop_exit823 ]
  %250 = add nuw nsw i64 %polly.indvar818, %244
  %251 = trunc i64 %250 to i32
  %252 = mul nuw nsw i64 %250, 9600
  %min.iters.check = icmp eq i64 %247, 0
  br i1 %min.iters.check, label %polly.loop_header821, label %vector.ph1143

vector.ph1143:                                    ; preds = %polly.loop_header815
  %broadcast.splatinsert1150 = insertelement <4 x i64> poison, i64 %248, i32 0
  %broadcast.splat1151 = shufflevector <4 x i64> %broadcast.splatinsert1150, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1143
  %index1144 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1145, %vector.body1141 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1143 ], [ %vec.ind.next1149, %vector.body1141 ]
  %253 = add nuw nsw <4 x i64> %vec.ind1148, %broadcast.splat1151
  %254 = trunc <4 x i64> %253 to <4 x i32>
  %255 = mul <4 x i32> %broadcast.splat1153, %254
  %256 = add <4 x i32> %255, <i32 3, i32 3, i32 3, i32 3>
  %257 = urem <4 x i32> %256, <i32 1200, i32 1200, i32 1200, i32 1200>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %260 = extractelement <4 x i64> %253, i32 0
  %261 = shl i64 %260, 3
  %262 = add nuw nsw i64 %261, %252
  %263 = getelementptr i8, i8* %call, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %259, <4 x double>* %264, align 8, !alias.scope !99, !noalias !101
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %265 = icmp eq i64 %index.next1145, %247
  br i1 %265, label %polly.loop_exit823, label %vector.body1141, !llvm.loop !104

polly.loop_exit823:                               ; preds = %vector.body1141, %polly.loop_header821
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar818, %245
  br i1 %exitcond1099.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_header815, %polly.loop_header821
  %polly.indvar824 = phi i64 [ %polly.indvar_next825, %polly.loop_header821 ], [ 0, %polly.loop_header815 ]
  %266 = add nuw nsw i64 %polly.indvar824, %248
  %267 = trunc i64 %266 to i32
  %268 = mul i32 %267, %251
  %269 = add i32 %268, 3
  %270 = urem i32 %269, 1200
  %p_conv31.i = sitofp i32 %270 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %271 = shl i64 %266, 3
  %272 = add nuw nsw i64 %271, %252
  %scevgep827 = getelementptr i8, i8* %call, i64 %272
  %scevgep827828 = bitcast i8* %scevgep827 to double*
  store double %p_div33.i, double* %scevgep827828, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar824, %249
  br i1 %exitcond1095.not, label %polly.loop_exit823, label %polly.loop_header821, !llvm.loop !105

polly.loop_header830:                             ; preds = %polly.loop_exit811, %polly.loop_exit838
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit838 ], [ 0, %polly.loop_exit811 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_exit811 ]
  %smin1088 = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 -1168)
  %273 = shl nsw i64 %polly.indvar833, 5
  %274 = add nsw i64 %smin1088, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -32
  %exitcond1091.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1091.not, label %polly.loop_header856, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %275 = mul nsw i64 %polly.indvar839, -32
  %smin1157 = call i64 @llvm.smin.i64(i64 %275, i64 -968)
  %276 = add nsw i64 %smin1157, 1000
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -968)
  %277 = shl nsw i64 %polly.indvar839, 5
  %278 = add nsw i64 %smin1084, 999
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -32
  %exitcond1090.not = icmp eq i64 %polly.indvar_next840, 32
  br i1 %exitcond1090.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %polly.indvar845 = phi i64 [ 0, %polly.loop_header836 ], [ %polly.indvar_next846, %polly.loop_exit850 ]
  %279 = add nuw nsw i64 %polly.indvar845, %273
  %280 = trunc i64 %279 to i32
  %281 = mul nuw nsw i64 %279, 8000
  %min.iters.check1158 = icmp eq i64 %276, 0
  br i1 %min.iters.check1158, label %polly.loop_header848, label %vector.ph1159

vector.ph1159:                                    ; preds = %polly.loop_header842
  %broadcast.splatinsert1168 = insertelement <4 x i64> poison, i64 %277, i32 0
  %broadcast.splat1169 = shufflevector <4 x i64> %broadcast.splatinsert1168, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1159
  %index1162 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1163, %vector.body1156 ]
  %vec.ind1166 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1159 ], [ %vec.ind.next1167, %vector.body1156 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1166, %broadcast.splat1169
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1171, %283
  %285 = add <4 x i32> %284, <i32 2, i32 2, i32 2, i32 2>
  %286 = urem <4 x i32> %285, <i32 1000, i32 1000, i32 1000, i32 1000>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add nuw nsw i64 %290, %281
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !103, !noalias !106
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1167 = add <4 x i64> %vec.ind1166, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1163, %276
  br i1 %294, label %polly.loop_exit850, label %vector.body1156, !llvm.loop !107

polly.loop_exit850:                               ; preds = %vector.body1156, %polly.loop_header848
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar845, %274
  br i1 %exitcond1089.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_header842, %polly.loop_header848
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_header848 ], [ 0, %polly.loop_header842 ]
  %295 = add nuw nsw i64 %polly.indvar851, %277
  %296 = trunc i64 %295 to i32
  %297 = mul i32 %296, %280
  %298 = add i32 %297, 2
  %299 = urem i32 %298, 1000
  %p_conv10.i = sitofp i32 %299 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %300 = shl i64 %295, 3
  %301 = add nuw nsw i64 %300, %281
  %scevgep854 = getelementptr i8, i8* %call2, i64 %301
  %scevgep854855 = bitcast i8* %scevgep854 to double*
  store double %p_div12.i, double* %scevgep854855, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar851, %278
  br i1 %exitcond1085.not, label %polly.loop_exit850, label %polly.loop_header848, !llvm.loop !108

polly.loop_header856:                             ; preds = %polly.loop_exit838, %polly.loop_exit864
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit864 ], [ 0, %polly.loop_exit838 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_exit838 ]
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 -1168)
  %302 = shl nsw i64 %polly.indvar859, 5
  %303 = add nsw i64 %smin1078, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1077 = add nsw i64 %indvars.iv1076, -32
  %exitcond1081.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1081.not, label %init_array.exit, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %304 = mul nsw i64 %polly.indvar865, -32
  %smin1175 = call i64 @llvm.smin.i64(i64 %304, i64 -968)
  %305 = add nsw i64 %smin1175, 1000
  %smin1074 = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 -968)
  %306 = shl nsw i64 %polly.indvar865, 5
  %307 = add nsw i64 %smin1074, 999
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -32
  %exitcond1080.not = icmp eq i64 %polly.indvar_next866, 32
  br i1 %exitcond1080.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %polly.indvar871 = phi i64 [ 0, %polly.loop_header862 ], [ %polly.indvar_next872, %polly.loop_exit876 ]
  %308 = add nuw nsw i64 %polly.indvar871, %302
  %309 = trunc i64 %308 to i32
  %310 = mul nuw nsw i64 %308, 8000
  %min.iters.check1176 = icmp eq i64 %305, 0
  br i1 %min.iters.check1176, label %polly.loop_header874, label %vector.ph1177

vector.ph1177:                                    ; preds = %polly.loop_header868
  %broadcast.splatinsert1186 = insertelement <4 x i64> poison, i64 %306, i32 0
  %broadcast.splat1187 = shufflevector <4 x i64> %broadcast.splatinsert1186, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1174 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1177 ], [ %vec.ind.next1185, %vector.body1174 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1184, %broadcast.splat1187
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1189, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 1200, i32 1200, i32 1200, i32 1200>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add nuw nsw i64 %319, %310
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !102, !noalias !109
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1181, %305
  br i1 %323, label %polly.loop_exit876, label %vector.body1174, !llvm.loop !110

polly.loop_exit876:                               ; preds = %vector.body1174, %polly.loop_header874
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar871, %303
  br i1 %exitcond1079.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_header868, %polly.loop_header874
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_header874 ], [ 0, %polly.loop_header868 ]
  %324 = add nuw nsw i64 %polly.indvar877, %306
  %325 = trunc i64 %324 to i32
  %326 = mul i32 %325, %309
  %327 = add i32 %326, 1
  %328 = urem i32 %327, 1200
  %p_conv.i = sitofp i32 %328 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %329 = shl i64 %324, 3
  %330 = add nuw nsw i64 %329, %310
  %scevgep881 = getelementptr i8, i8* %call1, i64 %330
  %scevgep881882 = bitcast i8* %scevgep881 to double*
  store double %p_div.i, double* %scevgep881882, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar877, %307
  br i1 %exitcond1075.not, label %polly.loop_exit876, label %polly.loop_header874, !llvm.loop !111
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
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 50}
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
!50 = !{!"llvm.loop.tile.size", i32 64}
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
