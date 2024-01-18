; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2514.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2514.c"
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
  %call878 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1730 = bitcast i8* %call1 to double*
  %polly.access.call1739 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2740 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1739, %call2
  %polly.access.call2759 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2759, %call1
  %2 = or i1 %0, %1
  %polly.access.call779 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call779, %call2
  %4 = icmp ule i8* %polly.access.call2759, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call779, %call1
  %8 = icmp ule i8* %polly.access.call1739, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header852, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1157 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1156 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1155 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1154 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1154, %scevgep1157
  %bound1 = icmp ult i8* %scevgep1156, %scevgep1155
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
  br i1 %exitcond18.not.i, label %vector.ph1161, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1161:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1168 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1169 = shufflevector <4 x i64> %broadcast.splatinsert1168, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1161
  %index1162 = phi i64 [ 0, %vector.ph1161 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1166 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1161 ], [ %vec.ind.next1167, %vector.body1160 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1166, %broadcast.splat1169
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv7.i, i64 %index1162
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1167 = add <4 x i64> %vec.ind1166, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1163, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1160, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1160
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1161, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit913
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1223 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1223, label %for.body3.i46.preheader1366, label %vector.ph1224

vector.ph1224:                                    ; preds = %for.body3.i46.preheader
  %n.vec1226 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %index1227
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1228 = add i64 %index1227, 4
  %46 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %46, label %middle.block1220, label %vector.body1222, !llvm.loop !18

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %indvars.iv21.i, %n.vec1226
  br i1 %cmp.n1230, label %for.inc6.i, label %for.body3.i46.preheader1366

for.body3.i46.preheader1366:                      ; preds = %for.body3.i46.preheader, %middle.block1220
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1226, %middle.block1220 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1366, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1366 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1220, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1268 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1268, label %for.body3.i60.preheader1364, label %vector.ph1269

vector.ph1269:                                    ; preds = %for.body3.i60.preheader
  %n.vec1271 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1267 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %index1272
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1276, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1273 = add i64 %index1272, 4
  %57 = icmp eq i64 %index.next1273, %n.vec1271
  br i1 %57, label %middle.block1265, label %vector.body1267, !llvm.loop !56

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1275 = icmp eq i64 %indvars.iv21.i52, %n.vec1271
  br i1 %cmp.n1275, label %for.inc6.i63, label %for.body3.i60.preheader1364

for.body3.i60.preheader1364:                      ; preds = %for.body3.i60.preheader, %middle.block1265
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1271, %middle.block1265 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1364, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1364 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1265, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1316 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1316, label %for.body3.i99.preheader1362, label %vector.ph1317

vector.ph1317:                                    ; preds = %for.body3.i99.preheader
  %n.vec1319 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1315 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %index1320
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1324, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1321 = add i64 %index1320, 4
  %68 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %68, label %middle.block1313, label %vector.body1315, !llvm.loop !58

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1323 = icmp eq i64 %indvars.iv21.i91, %n.vec1319
  br i1 %cmp.n1323, label %for.inc6.i102, label %for.body3.i99.preheader1362

for.body3.i99.preheader1362:                      ; preds = %for.body3.i99.preheader, %middle.block1313
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1319, %middle.block1313 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1362, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1362 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1313, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1328 = phi i64 [ %indvar.next1329, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1328, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1330 = icmp ult i64 %88, 4
  br i1 %min.iters.check1330, label %polly.loop_header192.preheader, label %vector.ph1331

vector.ph1331:                                    ; preds = %polly.loop_header
  %n.vec1333 = and i64 %88, -4
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1327 ]
  %90 = shl nuw nsw i64 %index1334, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1338, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1335 = add i64 %index1334, 4
  %95 = icmp eq i64 %index.next1335, %n.vec1333
  br i1 %95, label %middle.block1325, label %vector.body1327, !llvm.loop !71

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1337 = icmp eq i64 %88, %n.vec1333
  br i1 %cmp.n1337, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1325
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1333, %middle.block1325 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1325
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %exitcond1060.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1059.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1058.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1057.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -100
  %98 = mul nuw nsw i64 %polly.indvar219, 100
  %99 = shl nuw nsw i64 %polly.indvar219, 1
  %100 = mul nuw nsw i64 %polly.indvar219, 7
  %101 = add nuw nsw i64 %100, 7
  %pexp.p_div_q = lshr i64 %101, 4
  %102 = sub nsw i64 %99, %pexp.p_div_q
  %polly.loop_guard = icmp sgt i64 %102, -2
  %103 = mul nsw i64 %polly.indvar219, -100
  %104 = mul nuw nsw i64 %polly.indvar219, 100
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 100
  %exitcond1056.not = icmp eq i64 %polly.indvar_next220, 12
  br i1 %exitcond1056.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %105 = mul nuw nsw i64 %polly.indvar225, 100
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next226, 10
  br i1 %exitcond1055.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1046 = phi i64 [ %indvars.iv1044, %polly.loop_header228.preheader ], [ %indvars.iv.next1047, %polly.loop_exit237 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1043, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %106 = shl nuw nsw i64 %polly.indvar231, 6
  %107 = add i64 %97, %106
  %smax1342 = call i64 @llvm.smax.i64(i64 %107, i64 0)
  %108 = mul nsw i64 %polly.indvar231, -64
  %109 = add i64 %98, %108
  %110 = add i64 %smax1342, %109
  %111 = shl nsw i64 %polly.indvar231, 6
  %112 = add nsw i64 %111, %103
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %polly.loop_guard238 = icmp slt i64 %114, 100
  br i1 %polly.loop_guard238, label %polly.loop_header235.preheader, label %polly.loop_exit237

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %115 = add i64 %smax, %indvars.iv1046
  %116 = sub nsw i64 %104, %111
  %117 = add nuw nsw i64 %111, 64
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233.not = icmp sgt i64 %polly.indvar231, %102
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 64
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -64
  br i1 %polly.loop_cond233.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1343 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1344, %polly.loop_exit269 ]
  %indvars.iv1048 = phi i64 [ %115, %polly.loop_header235.preheader ], [ %indvars.iv.next1049, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %114, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %118 = add i64 %110, %indvar1343
  %smin1345 = call i64 @llvm.smin.i64(i64 %118, i64 63)
  %119 = add nsw i64 %smin1345, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 63)
  %120 = add nsw i64 %polly.indvar239, %116
  %polly.loop_guard2521143 = icmp sgt i64 %120, -1
  %121 = add nuw nsw i64 %polly.indvar239, %104
  %.not = icmp ult i64 %121, %117
  %polly.access.mul.call1261 = mul nsw i64 %121, 1000
  %122 = add nuw i64 %polly.access.mul.call1261, %105
  br i1 %polly.loop_guard2521143, label %polly.loop_header242.us, label %polly.loop_header235.split

polly.loop_header242.us:                          ; preds = %polly.loop_header235, %polly.merge.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.merge.us ], [ 0, %polly.loop_header235 ]
  %123 = add nuw nsw i64 %polly.indvar245.us, %105
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header242.us, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header242.us ]
  %124 = add nuw nsw i64 %polly.indvar253.us, %111
  %polly.access.mul.call1257.us = mul nuw nsw i64 %124, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %123, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar253.us, %smin1052
  br i1 %exitcond1050.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1262.us = add nuw nsw i64 %122, %polly.indvar245.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1265.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %120
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next246.us, 100
  br i1 %exitcond1051.not, label %polly.loop_header267.preheader, label %polly.loop_header242.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242

polly.loop_exit269:                               ; preds = %polly.loop_exit276.loopexit.us, %polly.loop_header235.split, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241 = icmp ult i64 %polly.indvar239, 99
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %indvar.next1344 = add i64 %indvar1343, 1
  br i1 %polly.loop_cond241, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header242:                             ; preds = %polly.loop_header235.split, %polly.loop_header242
  %polly.indvar245 = phi i64 [ %polly.indvar_next246, %polly.loop_header242 ], [ 0, %polly.loop_header235.split ]
  %polly.access.add.call1262 = add nuw nsw i64 %122, %polly.indvar245
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar245, 1200
  %polly.access.add.Packed_MemRef_call1265 = add nsw i64 %polly.access.mul.Packed_MemRef_call1264, %120
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next246 = add nuw nsw i64 %polly.indvar245, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next246, 100
  br i1 %exitcond.not, label %polly.loop_header267.preheader, label %polly.loop_header242

polly.loop_header267.preheader:                   ; preds = %polly.loop_header242, %polly.merge.us
  %125 = mul i64 %121, 9600
  br i1 %polly.loop_guard2521143, label %polly.loop_header267.us, label %polly.loop_exit269

polly.loop_header267.us:                          ; preds = %polly.loop_header267.preheader, %polly.loop_exit276.loopexit.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_exit276.loopexit.us ], [ 0, %polly.loop_header267.preheader ]
  %polly.access.mul.Packed_MemRef_call1281.us = mul nuw nsw i64 %polly.indvar270.us, 1200
  %126 = add nuw nsw i64 %polly.indvar270.us, %105
  %polly.access.mul.Packed_MemRef_call2285.us = mul nuw nsw i64 %126, 1200
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %121
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.add.Packed_MemRef_call1294.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1281.us, %120
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1346 = icmp ult i64 %119, 4
  br i1 %min.iters.check1346, label %polly.loop_header274.us.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header267.us
  %n.vec1349 = and i64 %119, -4
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1358 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1359 = shufflevector <4 x double> %broadcast.splatinsert1358, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1341 ]
  %127 = add nuw nsw i64 %index1350, %111
  %128 = add nuw nsw i64 %index1350, %polly.access.mul.Packed_MemRef_call1281.us
  %129 = getelementptr double, double* %Packed_MemRef_call1, i64 %128
  %130 = bitcast double* %129 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %130, align 8
  %131 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %132 = add nuw nsw i64 %127, %polly.access.mul.Packed_MemRef_call2285.us
  %133 = getelementptr double, double* %Packed_MemRef_call2, i64 %132
  %134 = bitcast double* %133 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %134, align 8
  %135 = fmul fast <4 x double> %broadcast.splat1359, %wide.load1357
  %136 = shl i64 %127, 3
  %137 = add i64 %136, %125
  %138 = getelementptr i8, i8* %call, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !64, !noalias !66
  %140 = fadd fast <4 x double> %135, %131
  %141 = fmul fast <4 x double> %140, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %142 = fadd fast <4 x double> %141, %wide.load1360
  %143 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !64, !noalias !66
  %index.next1351 = add i64 %index1350, 4
  %144 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %144, label %middle.block1339, label %vector.body1341, !llvm.loop !76

middle.block1339:                                 ; preds = %vector.body1341
  %cmp.n1353 = icmp eq i64 %119, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %polly.loop_header267.us, %middle.block1339
  %polly.indvar278.us.ph = phi i64 [ 0, %polly.loop_header267.us ], [ %n.vec1349, %middle.block1339 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %145 = add nuw nsw i64 %polly.indvar278.us, %111
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar278.us, %polly.access.mul.Packed_MemRef_call1281.us
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %145, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %146 = shl i64 %145, 3
  %147 = add i64 %146, %125
  %scevgep297.us = getelementptr i8, i8* %call, i64 %147
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar278.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us, !llvm.loop !77

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_header274.us, %middle.block1339
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next271.us, 100
  br i1 %exitcond1054.not, label %polly.loop_exit269, label %polly.loop_header267.us

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit430
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1280 = phi i64 [ %indvar.next1281, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %148 = add i64 %indvar1280, 1
  %149 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1282 = icmp ult i64 %148, 4
  br i1 %min.iters.check1282, label %polly.loop_header396.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %polly.loop_header390
  %n.vec1285 = and i64 %148, -4
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1279 ]
  %150 = shl nuw nsw i64 %index1286, 3
  %151 = getelementptr i8, i8* %scevgep402, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !78, !noalias !80
  %153 = fmul fast <4 x double> %wide.load1290, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !78, !noalias !80
  %index.next1287 = add i64 %index1286, 4
  %155 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %155, label %middle.block1277, label %vector.body1279, !llvm.loop !85

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1289 = icmp eq i64 %148, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1277
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1285, %middle.block1277 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1277
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1281 = add i64 %indvar1280, 1
  br i1 %exitcond1084.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %156
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1083.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !86

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond1082.not, label %polly.loop_header422, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %polly.access.mul.call2419 = mul nuw nsw i64 %polly.indvar415, 1000
  %polly.access.add.call2420 = add nuw nsw i64 %polly.access.mul.call2419, %polly.indvar409
  %polly.access.call2421 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2420
  %polly.access.call2421.load = load double, double* %polly.access.call2421, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar415, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2421.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next416, 1200
  br i1 %exitcond1081.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_exit414, %polly.loop_exit430
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit430 ], [ 0, %polly.loop_exit414 ]
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit430 ], [ 0, %polly.loop_exit414 ]
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.loop_exit430 ], [ 0, %polly.loop_exit414 ]
  %157 = mul nsw i64 %polly.indvar425, -100
  %158 = mul nuw nsw i64 %polly.indvar425, 100
  %159 = shl nuw nsw i64 %polly.indvar425, 1
  %160 = mul nuw nsw i64 %polly.indvar425, 7
  %161 = add nuw nsw i64 %160, 7
  %pexp.p_div_q434 = lshr i64 %161, 4
  %162 = sub nsw i64 %159, %pexp.p_div_q434
  %polly.loop_guard439 = icmp sgt i64 %162, -2
  %163 = mul nsw i64 %polly.indvar425, -100
  %164 = mul nuw nsw i64 %polly.indvar425, 100
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -100
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 100
  %exitcond1080.not = icmp eq i64 %polly.indvar_next426, 12
  br i1 %exitcond1080.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439, label %polly.loop_header436.preheader, label %polly.loop_exit438

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %165 = mul nuw nsw i64 %polly.indvar431, 100
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next432, 10
  br i1 %exitcond1079.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1069 = phi i64 [ %indvars.iv1067, %polly.loop_header436.preheader ], [ %indvars.iv.next1070, %polly.loop_exit446 ]
  %indvars.iv1064 = phi i64 [ %indvars.iv1062, %polly.loop_header436.preheader ], [ %indvars.iv.next1065, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %166 = shl nuw nsw i64 %polly.indvar440, 6
  %167 = add i64 %157, %166
  %smax1294 = call i64 @llvm.smax.i64(i64 %167, i64 0)
  %168 = mul nsw i64 %polly.indvar440, -64
  %169 = add i64 %158, %168
  %170 = add i64 %smax1294, %169
  %171 = shl nsw i64 %polly.indvar440, 6
  %172 = add nsw i64 %171, %163
  %173 = icmp sgt i64 %172, 0
  %174 = select i1 %173, i64 %172, i64 0
  %polly.loop_guard447 = icmp slt i64 %174, 100
  br i1 %polly.loop_guard447, label %polly.loop_header444.preheader, label %polly.loop_exit446

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1066 = call i64 @llvm.smax.i64(i64 %indvars.iv1064, i64 0)
  %175 = add i64 %smax1066, %indvars.iv1069
  %176 = sub nsw i64 %164, %171
  %177 = add nuw nsw i64 %171, 64
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %polly.loop_cond442.not = icmp sgt i64 %polly.indvar440, %162
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, 64
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -64
  br i1 %polly.loop_cond442.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1295 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1296, %polly.loop_exit482 ]
  %indvars.iv1071 = phi i64 [ %175, %polly.loop_header444.preheader ], [ %indvars.iv.next1072, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %174, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %178 = add i64 %170, %indvar1295
  %smin1297 = call i64 @llvm.smin.i64(i64 %178, i64 63)
  %179 = add nsw i64 %smin1297, 1
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 63)
  %180 = add nsw i64 %polly.indvar448, %176
  %polly.loop_guard4611144 = icmp sgt i64 %180, -1
  %181 = add nuw nsw i64 %polly.indvar448, %164
  %.not932 = icmp ult i64 %181, %177
  %polly.access.mul.call1474 = mul nsw i64 %181, 1000
  %182 = add nuw i64 %polly.access.mul.call1474, %165
  br i1 %polly.loop_guard4611144, label %polly.loop_header451.us, label %polly.loop_header444.split

polly.loop_header451.us:                          ; preds = %polly.loop_header444, %polly.merge470.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.merge470.us ], [ 0, %polly.loop_header444 ]
  %183 = add nuw nsw i64 %polly.indvar454.us, %165
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar454.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header451.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header451.us ]
  %184 = add nuw nsw i64 %polly.indvar462.us, %171
  %polly.access.mul.call1466.us = mul nuw nsw i64 %184, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %183, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar462.us, %smin1076
  br i1 %exitcond1074.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.add.call1475.us = add nuw nsw i64 %182, %polly.indvar454.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1305478.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305.us, %180
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.merge470.us

polly.merge470.us:                                ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next455.us, 100
  br i1 %exitcond1075.not, label %polly.loop_header480.preheader, label %polly.loop_header451.us

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not932, label %polly.merge470.us, label %polly.then471.us

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not932, label %polly.loop_exit482, label %polly.loop_header451

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header444.split, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp ult i64 %polly.indvar448, 99
  %indvars.iv.next1072 = add i64 %indvars.iv1071, 1
  %indvar.next1296 = add i64 %indvar1295, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header451:                             ; preds = %polly.loop_header444.split, %polly.loop_header451
  %polly.indvar454 = phi i64 [ %polly.indvar_next455, %polly.loop_header451 ], [ 0, %polly.loop_header444.split ]
  %polly.access.add.call1475 = add nuw nsw i64 %182, %polly.indvar454
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1305477 = mul nuw nsw i64 %polly.indvar454, 1200
  %polly.access.add.Packed_MemRef_call1305478 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305477, %180
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next455, 100
  br i1 %exitcond1061.not, label %polly.loop_header480.preheader, label %polly.loop_header451

polly.loop_header480.preheader:                   ; preds = %polly.loop_header451, %polly.merge470.us
  %185 = mul i64 %181, 9600
  br i1 %polly.loop_guard4611144, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1305494.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  %186 = add nuw nsw i64 %polly.indvar483.us, %165
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nuw nsw i64 %186, 1200
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %181
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.add.Packed_MemRef_call1305507.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305494.us, %180
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1298 = icmp ult i64 %179, 4
  br i1 %min.iters.check1298, label %polly.loop_header487.us.preheader, label %vector.ph1299

vector.ph1299:                                    ; preds = %polly.loop_header480.us
  %n.vec1301 = and i64 %179, -4
  %broadcast.splatinsert1307 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1308 = shufflevector <4 x double> %broadcast.splatinsert1307, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1310 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1311 = shufflevector <4 x double> %broadcast.splatinsert1310, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1293 ]
  %187 = add nuw nsw i64 %index1302, %171
  %188 = add nuw nsw i64 %index1302, %polly.access.mul.Packed_MemRef_call1305494.us
  %189 = getelementptr double, double* %Packed_MemRef_call1305, i64 %188
  %190 = bitcast double* %189 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %190, align 8
  %191 = fmul fast <4 x double> %broadcast.splat1308, %wide.load1306
  %192 = add nuw nsw i64 %187, %polly.access.mul.Packed_MemRef_call2307498.us
  %193 = getelementptr double, double* %Packed_MemRef_call2307, i64 %192
  %194 = bitcast double* %193 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %194, align 8
  %195 = fmul fast <4 x double> %broadcast.splat1311, %wide.load1309
  %196 = shl i64 %187, 3
  %197 = add i64 %196, %185
  %198 = getelementptr i8, i8* %call, i64 %197
  %199 = bitcast i8* %198 to <4 x double>*
  %wide.load1312 = load <4 x double>, <4 x double>* %199, align 8, !alias.scope !78, !noalias !80
  %200 = fadd fast <4 x double> %195, %191
  %201 = fmul fast <4 x double> %200, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %202 = fadd fast <4 x double> %201, %wide.load1312
  %203 = bitcast i8* %198 to <4 x double>*
  store <4 x double> %202, <4 x double>* %203, align 8, !alias.scope !78, !noalias !80
  %index.next1303 = add i64 %index1302, 4
  %204 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %204, label %middle.block1291, label %vector.body1293, !llvm.loop !89

middle.block1291:                                 ; preds = %vector.body1293
  %cmp.n1305 = icmp eq i64 %179, %n.vec1301
  br i1 %cmp.n1305, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %polly.loop_header480.us, %middle.block1291
  %polly.indvar491.us.ph = phi i64 [ 0, %polly.loop_header480.us ], [ %n.vec1301, %middle.block1291 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %205 = add nuw nsw i64 %polly.indvar491.us, %171
  %polly.access.add.Packed_MemRef_call1305495.us = add nuw nsw i64 %polly.indvar491.us, %polly.access.mul.Packed_MemRef_call1305494.us
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %206 = shl i64 %205, 3
  %207 = add i64 %206, %185
  %scevgep510.us = getelementptr i8, i8* %call, i64 %207
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar491.us, %smin1076
  br i1 %exitcond1077.not, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us, !llvm.loop !90

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_header487.us, %middle.block1291
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next484.us, 100
  br i1 %exitcond1078.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.start515:                                   ; preds = %init_array.exit
  %malloccall517 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  %malloccall519 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header603

polly.exiting516:                                 ; preds = %polly.loop_exit643
  tail call void @free(i8* %malloccall517)
  tail call void @free(i8* %malloccall519)
  br label %kernel_syr2k.exit

polly.loop_header603:                             ; preds = %polly.loop_exit611, %polly.start515
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit611 ], [ 0, %polly.start515 ]
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 1, %polly.start515 ]
  %208 = add i64 %indvar, 1
  %209 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %209
  %min.iters.check1234 = icmp ult i64 %208, 4
  br i1 %min.iters.check1234, label %polly.loop_header609.preheader, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header603
  %n.vec1237 = and i64 %208, -4
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1235
  %index1238 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1239, %vector.body1233 ]
  %210 = shl nuw nsw i64 %index1238, 3
  %211 = getelementptr i8, i8* %scevgep615, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %212, align 8, !alias.scope !91, !noalias !93
  %213 = fmul fast <4 x double> %wide.load1242, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %214 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %213, <4 x double>* %214, align 8, !alias.scope !91, !noalias !93
  %index.next1239 = add i64 %index1238, 4
  %215 = icmp eq i64 %index.next1239, %n.vec1237
  br i1 %215, label %middle.block1231, label %vector.body1233, !llvm.loop !98

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1241 = icmp eq i64 %208, %n.vec1237
  br i1 %cmp.n1241, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1231
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1237, %middle.block1231 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1231
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1108.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %216 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %216
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1107.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !99

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit627
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit627 ], [ 0, %polly.loop_header619.preheader ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar622, 1200
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_header625
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next623, 1000
  br i1 %exitcond1106.not, label %polly.loop_header635, label %polly.loop_header619

polly.loop_header625:                             ; preds = %polly.loop_header625, %polly.loop_header619
  %polly.indvar628 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next629, %polly.loop_header625 ]
  %polly.access.mul.call2632 = mul nuw nsw i64 %polly.indvar628, 1000
  %polly.access.add.call2633 = add nuw nsw i64 %polly.access.mul.call2632, %polly.indvar622
  %polly.access.call2634 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2633
  %polly.access.call2634.load = load double, double* %polly.access.call2634, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2520 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call2520
  %polly.access.Packed_MemRef_call2520 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520
  store double %polly.access.call2634.load, double* %polly.access.Packed_MemRef_call2520, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next629, 1200
  br i1 %exitcond1105.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header635:                             ; preds = %polly.loop_exit627, %polly.loop_exit643
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit643 ], [ 0, %polly.loop_exit627 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit643 ], [ 0, %polly.loop_exit627 ]
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_exit643 ], [ 0, %polly.loop_exit627 ]
  %217 = mul nsw i64 %polly.indvar638, -100
  %218 = mul nuw nsw i64 %polly.indvar638, 100
  %219 = shl nuw nsw i64 %polly.indvar638, 1
  %220 = mul nuw nsw i64 %polly.indvar638, 7
  %221 = add nuw nsw i64 %220, 7
  %pexp.p_div_q647 = lshr i64 %221, 4
  %222 = sub nsw i64 %219, %pexp.p_div_q647
  %polly.loop_guard652 = icmp sgt i64 %222, -2
  %223 = mul nsw i64 %polly.indvar638, -100
  %224 = mul nuw nsw i64 %polly.indvar638, 100
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -100
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 100
  %exitcond1104.not = icmp eq i64 %polly.indvar_next639, 12
  br i1 %exitcond1104.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %225 = mul nuw nsw i64 %polly.indvar644, 100
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next645, 10
  br i1 %exitcond1103.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1093 = phi i64 [ %indvars.iv1091, %polly.loop_header649.preheader ], [ %indvars.iv.next1094, %polly.loop_exit659 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv1086, %polly.loop_header649.preheader ], [ %indvars.iv.next1089, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %226 = shl nuw nsw i64 %polly.indvar653, 6
  %227 = add i64 %217, %226
  %smax1246 = call i64 @llvm.smax.i64(i64 %227, i64 0)
  %228 = mul nsw i64 %polly.indvar653, -64
  %229 = add i64 %218, %228
  %230 = add i64 %smax1246, %229
  %231 = shl nsw i64 %polly.indvar653, 6
  %232 = add nsw i64 %231, %223
  %233 = icmp sgt i64 %232, 0
  %234 = select i1 %233, i64 %232, i64 0
  %polly.loop_guard660 = icmp slt i64 %234, 100
  br i1 %polly.loop_guard660, label %polly.loop_header657.preheader, label %polly.loop_exit659

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1090 = call i64 @llvm.smax.i64(i64 %indvars.iv1088, i64 0)
  %235 = add i64 %smax1090, %indvars.iv1093
  %236 = sub nsw i64 %224, %231
  %237 = add nuw nsw i64 %231, 64
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655.not = icmp sgt i64 %polly.indvar653, %222
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, 64
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -64
  br i1 %polly.loop_cond655.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1247 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1248, %polly.loop_exit695 ]
  %indvars.iv1095 = phi i64 [ %235, %polly.loop_header657.preheader ], [ %indvars.iv.next1096, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %234, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %238 = add i64 %230, %indvar1247
  %smin1249 = call i64 @llvm.smin.i64(i64 %238, i64 63)
  %239 = add nsw i64 %smin1249, 1
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 63)
  %240 = add nsw i64 %polly.indvar661, %236
  %polly.loop_guard6741145 = icmp sgt i64 %240, -1
  %241 = add nuw nsw i64 %polly.indvar661, %224
  %.not933 = icmp ult i64 %241, %237
  %polly.access.mul.call1687 = mul nsw i64 %241, 1000
  %242 = add nuw i64 %polly.access.mul.call1687, %225
  br i1 %polly.loop_guard6741145, label %polly.loop_header664.us, label %polly.loop_header657.split

polly.loop_header664.us:                          ; preds = %polly.loop_header657, %polly.merge683.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.merge683.us ], [ 0, %polly.loop_header657 ]
  %243 = add nuw nsw i64 %polly.indvar667.us, %225
  %polly.access.mul.Packed_MemRef_call1518.us = mul nuw nsw i64 %polly.indvar667.us, 1200
  br label %polly.loop_header671.us

polly.loop_header671.us:                          ; preds = %polly.loop_header664.us, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header664.us ]
  %244 = add nuw nsw i64 %polly.indvar675.us, %231
  %polly.access.mul.call1679.us = mul nuw nsw i64 %244, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %243, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1518.us = add nuw nsw i64 %polly.indvar675.us, %polly.access.mul.Packed_MemRef_call1518.us
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar675.us, %smin1100
  br i1 %exitcond1098.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.add.call1688.us = add nuw nsw i64 %242, %polly.indvar667.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1518691.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1518.us, %240
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.merge683.us

polly.merge683.us:                                ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next668.us, 100
  br i1 %exitcond1099.not, label %polly.loop_header693.preheader, label %polly.loop_header664.us

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not933, label %polly.merge683.us, label %polly.then684.us

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not933, label %polly.loop_exit695, label %polly.loop_header664

polly.loop_exit695:                               ; preds = %polly.loop_exit702.loopexit.us, %polly.loop_header657.split, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663 = icmp ult i64 %polly.indvar661, 99
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 1
  %indvar.next1248 = add i64 %indvar1247, 1
  br i1 %polly.loop_cond663, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header664:                             ; preds = %polly.loop_header657.split, %polly.loop_header664
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_header664 ], [ 0, %polly.loop_header657.split ]
  %polly.access.add.call1688 = add nuw nsw i64 %242, %polly.indvar667
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1518690 = mul nuw nsw i64 %polly.indvar667, 1200
  %polly.access.add.Packed_MemRef_call1518691 = add nsw i64 %polly.access.mul.Packed_MemRef_call1518690, %240
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next668, 100
  br i1 %exitcond1085.not, label %polly.loop_header693.preheader, label %polly.loop_header664

polly.loop_header693.preheader:                   ; preds = %polly.loop_header664, %polly.merge683.us
  %245 = mul i64 %241, 9600
  br i1 %polly.loop_guard6741145, label %polly.loop_header693.us, label %polly.loop_exit695

polly.loop_header693.us:                          ; preds = %polly.loop_header693.preheader, %polly.loop_exit702.loopexit.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_exit702.loopexit.us ], [ 0, %polly.loop_header693.preheader ]
  %polly.access.mul.Packed_MemRef_call1518707.us = mul nuw nsw i64 %polly.indvar696.us, 1200
  %246 = add nuw nsw i64 %polly.indvar696.us, %225
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nuw nsw i64 %246, 1200
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %241
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.add.Packed_MemRef_call1518720.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1518707.us, %240
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1250 = icmp ult i64 %239, 4
  br i1 %min.iters.check1250, label %polly.loop_header700.us.preheader, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header693.us
  %n.vec1253 = and i64 %239, -4
  %broadcast.splatinsert1259 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1260 = shufflevector <4 x double> %broadcast.splatinsert1259, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1262 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1263 = shufflevector <4 x double> %broadcast.splatinsert1262, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1245 ]
  %247 = add nuw nsw i64 %index1254, %231
  %248 = add nuw nsw i64 %index1254, %polly.access.mul.Packed_MemRef_call1518707.us
  %249 = getelementptr double, double* %Packed_MemRef_call1518, i64 %248
  %250 = bitcast double* %249 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %250, align 8
  %251 = fmul fast <4 x double> %broadcast.splat1260, %wide.load1258
  %252 = add nuw nsw i64 %247, %polly.access.mul.Packed_MemRef_call2520711.us
  %253 = getelementptr double, double* %Packed_MemRef_call2520, i64 %252
  %254 = bitcast double* %253 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %254, align 8
  %255 = fmul fast <4 x double> %broadcast.splat1263, %wide.load1261
  %256 = shl i64 %247, 3
  %257 = add i64 %256, %245
  %258 = getelementptr i8, i8* %call, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !91, !noalias !93
  %260 = fadd fast <4 x double> %255, %251
  %261 = fmul fast <4 x double> %260, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %262 = fadd fast <4 x double> %261, %wide.load1264
  %263 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %262, <4 x double>* %263, align 8, !alias.scope !91, !noalias !93
  %index.next1255 = add i64 %index1254, 4
  %264 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %264, label %middle.block1243, label %vector.body1245, !llvm.loop !102

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1257 = icmp eq i64 %239, %n.vec1253
  br i1 %cmp.n1257, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %polly.loop_header693.us, %middle.block1243
  %polly.indvar704.us.ph = phi i64 [ 0, %polly.loop_header693.us ], [ %n.vec1253, %middle.block1243 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %265 = add nuw nsw i64 %polly.indvar704.us, %231
  %polly.access.add.Packed_MemRef_call1518708.us = add nuw nsw i64 %polly.indvar704.us, %polly.access.mul.Packed_MemRef_call1518707.us
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %265, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %245
  %scevgep723.us = getelementptr i8, i8* %call, i64 %267
  %scevgep723724.us = bitcast i8* %scevgep723.us to double*
  %_p_scalar_725.us = load double, double* %scevgep723724.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_725.us
  store double %p_add42.i.us, double* %scevgep723724.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar704.us, %smin1100
  br i1 %exitcond1101.not, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us, !llvm.loop !103

polly.loop_exit702.loopexit.us:                   ; preds = %polly.loop_header700.us, %middle.block1243
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next697.us, 100
  br i1 %exitcond1102.not, label %polly.loop_exit695, label %polly.loop_header693.us

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1135 = call i64 @llvm.smin.i64(i64 %indvars.iv1133, i64 -1168)
  %268 = shl nsw i64 %polly.indvar855, 5
  %269 = add nsw i64 %smin1135, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -32
  %exitcond1138.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1138.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %270 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %270, i64 -1168)
  %271 = add nsw i64 %smin, 1200
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 -1168)
  %272 = shl nsw i64 %polly.indvar861, 5
  %273 = add nsw i64 %smin1131, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1137.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %274 = add nuw nsw i64 %polly.indvar867, %268
  %275 = trunc i64 %274 to i32
  %276 = mul nuw nsw i64 %274, 9600
  %min.iters.check = icmp eq i64 %271, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1173

vector.ph1173:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1180 = insertelement <4 x i64> poison, i64 %272, i32 0
  %broadcast.splat1181 = shufflevector <4 x i64> %broadcast.splatinsert1180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1173
  %index1174 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1173 ], [ %vec.ind.next1179, %vector.body1172 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1178, %broadcast.splat1181
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1183, %278
  %280 = add <4 x i32> %279, <i32 3, i32 3, i32 3, i32 3>
  %281 = urem <4 x i32> %280, <i32 1200, i32 1200, i32 1200, i32 1200>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add nuw nsw i64 %285, %276
  %287 = getelementptr i8, i8* %call, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !104, !noalias !106
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1175, %271
  br i1 %289, label %polly.loop_exit872, label %vector.body1172, !llvm.loop !109

polly.loop_exit872:                               ; preds = %vector.body1172, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar867, %269
  br i1 %exitcond1136.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %290 = add nuw nsw i64 %polly.indvar873, %272
  %291 = trunc i64 %290 to i32
  %292 = mul i32 %291, %275
  %293 = add i32 %292, 3
  %294 = urem i32 %293, 1200
  %p_conv31.i = sitofp i32 %294 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %295 = shl i64 %290, 3
  %296 = add nuw nsw i64 %295, %276
  %scevgep876 = getelementptr i8, i8* %call, i64 %296
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar873, %273
  br i1 %exitcond1132.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !110

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 -1168)
  %297 = shl nsw i64 %polly.indvar882, 5
  %298 = add nsw i64 %smin1125, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1128.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %299 = mul nsw i64 %polly.indvar888, -32
  %smin1187 = call i64 @llvm.smin.i64(i64 %299, i64 -968)
  %300 = add nsw i64 %smin1187, 1000
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -968)
  %301 = shl nsw i64 %polly.indvar888, 5
  %302 = add nsw i64 %smin1121, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1127.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %303 = add nuw nsw i64 %polly.indvar894, %297
  %304 = trunc i64 %303 to i32
  %305 = mul nuw nsw i64 %303, 8000
  %min.iters.check1188 = icmp eq i64 %300, 0
  br i1 %min.iters.check1188, label %polly.loop_header897, label %vector.ph1189

vector.ph1189:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1198 = insertelement <4 x i64> poison, i64 %301, i32 0
  %broadcast.splat1199 = shufflevector <4 x i64> %broadcast.splatinsert1198, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1193, %vector.body1186 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1189 ], [ %vec.ind.next1197, %vector.body1186 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1196, %broadcast.splat1199
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1201, %307
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 1000, i32 1000, i32 1000, i32 1000>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add nuw nsw i64 %314, %305
  %316 = getelementptr i8, i8* %call2, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !108, !noalias !111
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1193, %300
  br i1 %318, label %polly.loop_exit899, label %vector.body1186, !llvm.loop !112

polly.loop_exit899:                               ; preds = %vector.body1186, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar894, %298
  br i1 %exitcond1126.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %319 = add nuw nsw i64 %polly.indvar900, %301
  %320 = trunc i64 %319 to i32
  %321 = mul i32 %320, %304
  %322 = add i32 %321, 2
  %323 = urem i32 %322, 1000
  %p_conv10.i = sitofp i32 %323 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %324 = shl i64 %319, 3
  %325 = add nuw nsw i64 %324, %305
  %scevgep903 = getelementptr i8, i8* %call2, i64 %325
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !108, !noalias !111
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar900, %302
  br i1 %exitcond1122.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !113

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %326 = shl nsw i64 %polly.indvar908, 5
  %327 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1118.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %328 = mul nsw i64 %polly.indvar914, -32
  %smin1205 = call i64 @llvm.smin.i64(i64 %328, i64 -968)
  %329 = add nsw i64 %smin1205, 1000
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -968)
  %330 = shl nsw i64 %polly.indvar914, 5
  %331 = add nsw i64 %smin1111, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1117.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %332 = add nuw nsw i64 %polly.indvar920, %326
  %333 = trunc i64 %332 to i32
  %334 = mul nuw nsw i64 %332, 8000
  %min.iters.check1206 = icmp eq i64 %329, 0
  br i1 %min.iters.check1206, label %polly.loop_header923, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1216 = insertelement <4 x i64> poison, i64 %330, i32 0
  %broadcast.splat1217 = shufflevector <4 x i64> %broadcast.splatinsert1216, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1218 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1219 = shufflevector <4 x i32> %broadcast.splatinsert1218, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1204 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1207 ], [ %vec.ind.next1215, %vector.body1204 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1214, %broadcast.splat1217
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1219, %336
  %338 = add <4 x i32> %337, <i32 1, i32 1, i32 1, i32 1>
  %339 = urem <4 x i32> %338, <i32 1200, i32 1200, i32 1200, i32 1200>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add nuw nsw i64 %343, %334
  %345 = getelementptr i8, i8* %call1, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !107, !noalias !114
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1211, %329
  br i1 %347, label %polly.loop_exit925, label %vector.body1204, !llvm.loop !115

polly.loop_exit925:                               ; preds = %vector.body1204, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar920, %327
  br i1 %exitcond1116.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %348 = add nuw nsw i64 %polly.indvar926, %330
  %349 = trunc i64 %348 to i32
  %350 = mul i32 %349, %333
  %351 = add i32 %350, 1
  %352 = urem i32 %351, 1200
  %p_conv.i = sitofp i32 %352 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %353 = shl i64 %348, 3
  %354 = add nuw nsw i64 %353, %334
  %scevgep930 = getelementptr i8, i8* %call1, i64 %354
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !107, !noalias !114
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar926, %331
  br i1 %exitcond1112.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !116
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 100}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !35, !49, !53}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !42, !52, !44}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !73, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !73, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !73, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !73, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !73, !13}
!111 = !{!107, !104}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !73, !13}
!114 = !{!108, !104}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !73, !13}
