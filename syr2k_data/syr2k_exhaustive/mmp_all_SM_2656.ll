; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2656.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2656.c"
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
  %call854 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1706 = bitcast i8* %call1 to double*
  %polly.access.call1715 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2716 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1715, %call2
  %polly.access.call2735 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2735, %call1
  %2 = or i1 %0, %1
  %polly.access.call755 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call755, %call2
  %4 = icmp ule i8* %polly.access.call2735, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call755, %call1
  %8 = icmp ule i8* %polly.access.call1715, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header828, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1154 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1153 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1152 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1151 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1151, %scevgep1154
  %bound1 = icmp ult i8* %scevgep1153, %scevgep1152
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
  br i1 %exitcond18.not.i, label %vector.ph1158, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1158:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1165 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1166 = shufflevector <4 x i64> %broadcast.splatinsert1165, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1158
  %index1159 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1158 ], [ %vec.ind.next1164, %vector.body1157 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1163, %broadcast.splat1166
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv7.i, i64 %index1159
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1160, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1157, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1157
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1158, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit889
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start499, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1220 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1220, label %for.body3.i46.preheader1363, label %vector.ph1221

vector.ph1221:                                    ; preds = %for.body3.i46.preheader
  %n.vec1223 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1219 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i, i64 %index1224
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1225 = add i64 %index1224, 4
  %46 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %46, label %middle.block1217, label %vector.body1219, !llvm.loop !18

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %indvars.iv21.i, %n.vec1223
  br i1 %cmp.n1227, label %for.inc6.i, label %for.body3.i46.preheader1363

for.body3.i46.preheader1363:                      ; preds = %for.body3.i46.preheader, %middle.block1217
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1223, %middle.block1217 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1363, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1363 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1217, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting500
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start294, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1265 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1265, label %for.body3.i60.preheader1361, label %vector.ph1266

vector.ph1266:                                    ; preds = %for.body3.i60.preheader
  %n.vec1268 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1264 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i52, i64 %index1269
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1270 = add i64 %index1269, 4
  %57 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %57, label %middle.block1262, label %vector.body1264, !llvm.loop !57

middle.block1262:                                 ; preds = %vector.body1264
  %cmp.n1272 = icmp eq i64 %indvars.iv21.i52, %n.vec1268
  br i1 %cmp.n1272, label %for.inc6.i63, label %for.body3.i60.preheader1361

for.body3.i60.preheader1361:                      ; preds = %for.body3.i60.preheader, %middle.block1262
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1268, %middle.block1262 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1361, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1361 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1262, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting295
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1313 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1313, label %for.body3.i99.preheader1359, label %vector.ph1314

vector.ph1314:                                    ; preds = %for.body3.i99.preheader
  %n.vec1316 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1312 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i91, i64 %index1317
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1318 = add i64 %index1317, 4
  %68 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %68, label %middle.block1310, label %vector.body1312, !llvm.loop !59

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1320 = icmp eq i64 %indvars.iv21.i91, %n.vec1316
  br i1 %cmp.n1320, label %for.inc6.i102, label %for.body3.i99.preheader1359

for.body3.i99.preheader1359:                      ; preds = %for.body3.i99.preheader, %middle.block1310
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1316, %middle.block1310 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1359, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1359 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1310, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call854, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1325, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1327 = icmp ult i64 %88, 4
  br i1 %min.iters.check1327, label %polly.loop_header192.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %polly.loop_header
  %n.vec1330 = and i64 %88, -4
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1332, %vector.body1324 ]
  %90 = shl nuw nsw i64 %index1331, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1335, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1332 = add i64 %index1331, 4
  %95 = icmp eq i64 %index.next1332, %n.vec1330
  br i1 %95, label %middle.block1322, label %vector.body1324, !llvm.loop !72

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1334 = icmp eq i64 %88, %n.vec1330
  br i1 %cmp.n1334, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1322
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1330, %middle.block1322 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1322
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %exitcond1045.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1044.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1043.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2716, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1042.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 36, %polly.loop_exit208 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -128
  %98 = shl nuw nsw i64 %polly.indvar219, 7
  %99 = udiv i64 %indvars.iv1036, 25
  %100 = sub nsw i64 %indvars.iv1034, %99
  %smin1038 = call i64 @llvm.smin.i64(i64 %100, i64 20)
  %101 = add nsw i64 %smin1038, 3
  %smax1039 = call i64 @llvm.smax.i64(i64 %101, i64 0)
  %102 = mul nsw i64 %polly.indvar219, -128
  %103 = icmp slt i64 %102, -1072
  %104 = select i1 %103, i64 %102, i64 -1072
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar219, 7
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 128
  %indvars.iv.next1035 = add nuw nsw i64 %indvars.iv1034, 3
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 11
  %exitcond1041.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1041.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit230 ], [ %indvars.iv1023, %polly.loop_header216 ]
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %107 = mul nuw nsw i64 %polly.indvar225, 50
  %108 = add i64 %97, %107
  %smax1339 = call i64 @llvm.smax.i64(i64 %108, i64 0)
  %109 = mul nsw i64 %polly.indvar225, -50
  %110 = add i64 %98, %109
  %111 = add i64 %smax1339, %110
  %112 = mul nuw nsw i64 %polly.indvar225, 50
  %113 = add nsw i64 %112, %102
  %114 = icmp sgt i64 %113, 0
  %115 = select i1 %114, i64 %113, i64 0
  %polly.loop_guard.not = icmp sgt i64 %115, %105
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1021, i64 0)
  %116 = add i64 %smax, %indvars.iv1025
  %117 = sub nsw i64 %106, %112
  %118 = add nuw nsw i64 %112, 50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, 50
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -50
  %exitcond1040.not = icmp eq i64 %polly.indvar225, %smax1039
  br i1 %exitcond1040.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1340 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1341, %polly.loop_exit261 ]
  %indvars.iv1027 = phi i64 [ %116, %polly.loop_header228.preheader ], [ %indvars.iv.next1028, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %115, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %119 = add i64 %111, %indvar1340
  %smin1342 = call i64 @llvm.smin.i64(i64 %119, i64 49)
  %120 = add nsw i64 %smin1342, 1
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1027, i64 49)
  %121 = add nsw i64 %polly.indvar231, %117
  %polly.loop_guard2441140 = icmp sgt i64 %121, -1
  %122 = add nuw nsw i64 %polly.indvar231, %106
  %.not = icmp ult i64 %122, %118
  %polly.access.mul.call1253 = mul nsw i64 %122, 1000
  br i1 %polly.loop_guard2441140, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %123 = add nuw nsw i64 %polly.indvar245.us, %112
  %polly.access.mul.call1249.us = mul nuw nsw i64 %123, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %polly.access.mul.call1249.us, %polly.indvar237.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar245.us, %smin1031
  br i1 %exitcond1029.not, label %polly.cond.loopexit.us, label %polly.loop_header241.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1253
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %121
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next238.us, 1000
  br i1 %exitcond1030.not, label %polly.loop_header259.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header241.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit261, label %polly.loop_header234

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header228.split, %polly.loop_header259.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233.not.not = icmp ult i64 %polly.indvar231, %105
  %indvars.iv.next1028 = add i64 %indvars.iv1027, 1
  %indvar.next1341 = add i64 %indvar1340, 1
  br i1 %polly.loop_cond233.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %121
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 1000
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %124 = mul i64 %122, 9600
  br i1 %polly.loop_guard2441140, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 1200
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %122
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %121
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1343 = icmp ult i64 %120, 4
  br i1 %min.iters.check1343, label %polly.loop_header266.us.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %polly.loop_header259.us
  %n.vec1346 = and i64 %120, -4
  %broadcast.splatinsert1352 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1353 = shufflevector <4 x double> %broadcast.splatinsert1352, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1338 ]
  %125 = add nuw nsw i64 %index1347, %112
  %126 = add nuw nsw i64 %index1347, %polly.access.mul.Packed_MemRef_call1273.us
  %127 = getelementptr double, double* %Packed_MemRef_call1, i64 %126
  %128 = bitcast double* %127 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %128, align 8
  %129 = fmul fast <4 x double> %broadcast.splat1353, %wide.load1351
  %130 = add nuw nsw i64 %125, %polly.access.mul.Packed_MemRef_call1273.us
  %131 = getelementptr double, double* %Packed_MemRef_call2, i64 %130
  %132 = bitcast double* %131 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %132, align 8
  %133 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %134 = shl i64 %125, 3
  %135 = add i64 %134, %124
  %136 = getelementptr i8, i8* %call, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %137, align 8, !alias.scope !65, !noalias !67
  %138 = fadd fast <4 x double> %133, %129
  %139 = fmul fast <4 x double> %138, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %140 = fadd fast <4 x double> %139, %wide.load1357
  %141 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !65, !noalias !67
  %index.next1348 = add i64 %index1347, 4
  %142 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %142, label %middle.block1336, label %vector.body1338, !llvm.loop !77

middle.block1336:                                 ; preds = %vector.body1338
  %cmp.n1350 = icmp eq i64 %120, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1336
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1346, %middle.block1336 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %143 = add nuw nsw i64 %polly.indvar270.us, %112
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %143, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %144 = shl i64 %143, 3
  %145 = add i64 %144, %124
  %scevgep289.us = getelementptr i8, i8* %call, i64 %145
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar270.us, %smin1031
  br i1 %exitcond1032.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1336
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next263.us, 1000
  br i1 %exitcond1033.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.start294:                                   ; preds = %kernel_syr2k.exit
  %malloccall296 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header382

polly.exiting295:                                 ; preds = %polly.loop_exit423
  tail call void @free(i8* %malloccall296)
  tail call void @free(i8* %malloccall298)
  br label %kernel_syr2k.exit90

polly.loop_header382:                             ; preds = %polly.loop_exit390, %polly.start294
  %indvar1277 = phi i64 [ %indvar.next1278, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %146 = add i64 %indvar1277, 1
  %147 = mul nuw nsw i64 %polly.indvar385, 9600
  %scevgep394 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1279 = icmp ult i64 %146, 4
  br i1 %min.iters.check1279, label %polly.loop_header388.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header382
  %n.vec1282 = and i64 %146, -4
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1276 ]
  %148 = shl nuw nsw i64 %index1283, 3
  %149 = getelementptr i8, i8* %scevgep394, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %151 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !79, !noalias !81
  %index.next1284 = add i64 %index1283, 4
  %153 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %153, label %middle.block1274, label %vector.body1276, !llvm.loop !86

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1286 = icmp eq i64 %146, %n.vec1282
  br i1 %cmp.n1286, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1274
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1282, %middle.block1274 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1274
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next386, 1200
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %exitcond1075.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %154
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1074.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 1200
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next402, 1000
  br i1 %exitcond1073.not, label %polly.loop_header414, label %polly.loop_header398

polly.loop_header404:                             ; preds = %polly.loop_header404, %polly.loop_header398
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header398 ], [ %polly.indvar_next408, %polly.loop_header404 ]
  %polly.access.mul.call2411 = mul nuw nsw i64 %polly.indvar407, 1000
  %polly.access.add.call2412 = add nuw nsw i64 %polly.access.mul.call2411, %polly.indvar401
  %polly.access.call2413 = getelementptr double, double* %polly.access.cast.call2716, i64 %polly.access.add.call2412
  %polly.access.call2413.load = load double, double* %polly.access.call2413, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2299 = add nuw nsw i64 %polly.indvar407, %polly.access.mul.Packed_MemRef_call2299
  %polly.access.Packed_MemRef_call2299 = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299
  store double %polly.access.call2413.load, double* %polly.access.Packed_MemRef_call2299, align 8
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next408, 1200
  br i1 %exitcond1072.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header414:                             ; preds = %polly.loop_exit406, %polly.loop_exit423
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit423 ], [ 36, %polly.loop_exit406 ]
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit423 ], [ 0, %polly.loop_exit406 ]
  %155 = mul nsw i64 %polly.indvar417, -128
  %156 = shl nuw nsw i64 %polly.indvar417, 7
  %157 = udiv i64 %indvars.iv1066, 25
  %158 = sub nsw i64 %indvars.iv1064, %157
  %smin1068 = call i64 @llvm.smin.i64(i64 %158, i64 20)
  %159 = add nsw i64 %smin1068, 3
  %smax1069 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = mul nsw i64 %polly.indvar417, -128
  %161 = icmp slt i64 %160, -1072
  %162 = select i1 %161, i64 %160, i64 -1072
  %163 = add nsw i64 %162, 1199
  %164 = shl nsw i64 %polly.indvar417, 7
  br label %polly.loop_header421

polly.loop_exit423:                               ; preds = %polly.loop_exit430
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -128
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 128
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 3
  %indvars.iv.next1067 = add nuw nsw i64 %indvars.iv1066, 11
  %exitcond1071.not = icmp eq i64 %polly.indvar_next418, 10
  br i1 %exitcond1071.not, label %polly.exiting295, label %polly.loop_header414

polly.loop_header421:                             ; preds = %polly.loop_exit430, %polly.loop_header414
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit430 ], [ %indvars.iv1052, %polly.loop_header414 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit430 ], [ %indvars.iv1047, %polly.loop_header414 ]
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_exit430 ], [ 0, %polly.loop_header414 ]
  %165 = mul nuw nsw i64 %polly.indvar424, 50
  %166 = add i64 %155, %165
  %smax1291 = call i64 @llvm.smax.i64(i64 %166, i64 0)
  %167 = mul nsw i64 %polly.indvar424, -50
  %168 = add i64 %156, %167
  %169 = add i64 %smax1291, %168
  %170 = mul nuw nsw i64 %polly.indvar424, 50
  %171 = add nsw i64 %170, %160
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %172, i64 %171, i64 0
  %polly.loop_guard431.not = icmp sgt i64 %173, %163
  br i1 %polly.loop_guard431.not, label %polly.loop_exit430, label %polly.loop_header428.preheader

polly.loop_header428.preheader:                   ; preds = %polly.loop_header421
  %smax1051 = call i64 @llvm.smax.i64(i64 %indvars.iv1049, i64 0)
  %174 = add i64 %smax1051, %indvars.iv1054
  %175 = sub nsw i64 %164, %170
  %176 = add nuw nsw i64 %170, 50
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit466, %polly.loop_header421
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, 50
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -50
  %exitcond1070.not = icmp eq i64 %polly.indvar424, %smax1069
  br i1 %exitcond1070.not, label %polly.loop_exit423, label %polly.loop_header421

polly.loop_header428:                             ; preds = %polly.loop_header428.preheader, %polly.loop_exit466
  %indvar1292 = phi i64 [ 0, %polly.loop_header428.preheader ], [ %indvar.next1293, %polly.loop_exit466 ]
  %indvars.iv1056 = phi i64 [ %174, %polly.loop_header428.preheader ], [ %indvars.iv.next1057, %polly.loop_exit466 ]
  %polly.indvar432 = phi i64 [ %173, %polly.loop_header428.preheader ], [ %polly.indvar_next433, %polly.loop_exit466 ]
  %177 = add i64 %169, %indvar1292
  %smin1294 = call i64 @llvm.smin.i64(i64 %177, i64 49)
  %178 = add nsw i64 %smin1294, 1
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1056, i64 49)
  %179 = add nsw i64 %polly.indvar432, %175
  %polly.loop_guard4451141 = icmp sgt i64 %179, -1
  %180 = add nuw nsw i64 %polly.indvar432, %164
  %.not908 = icmp ult i64 %180, %176
  %polly.access.mul.call1458 = mul nsw i64 %180, 1000
  br i1 %polly.loop_guard4451141, label %polly.loop_header435.us, label %polly.loop_header428.split

polly.loop_header435.us:                          ; preds = %polly.loop_header428, %polly.merge454.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.merge454.us ], [ 0, %polly.loop_header428 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar438.us, 1200
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %181 = add nuw nsw i64 %polly.indvar446.us, %170
  %polly.access.mul.call1450.us = mul nuw nsw i64 %181, 1000
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar438.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1297.us
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar446.us, %smin1061
  br i1 %exitcond1059.not, label %polly.cond453.loopexit.us, label %polly.loop_header442.us

polly.then455.us:                                 ; preds = %polly.cond453.loopexit.us
  %polly.access.add.call1459.us = add nuw nsw i64 %polly.indvar438.us, %polly.access.mul.call1458
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297462.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %179
  %polly.access.Packed_MemRef_call1297463.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297462.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1297463.us, align 8
  br label %polly.merge454.us

polly.merge454.us:                                ; preds = %polly.then455.us, %polly.cond453.loopexit.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next439.us, 1000
  br i1 %exitcond1060.not, label %polly.loop_header464.preheader, label %polly.loop_header435.us

polly.cond453.loopexit.us:                        ; preds = %polly.loop_header442.us
  br i1 %.not908, label %polly.merge454.us, label %polly.then455.us

polly.loop_header428.split:                       ; preds = %polly.loop_header428
  br i1 %.not908, label %polly.loop_exit466, label %polly.loop_header435

polly.loop_exit466:                               ; preds = %polly.loop_exit473.loopexit.us, %polly.loop_header428.split, %polly.loop_header464.preheader
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %polly.loop_cond434.not.not = icmp ult i64 %polly.indvar432, %163
  %indvars.iv.next1057 = add i64 %indvars.iv1056, 1
  %indvar.next1293 = add i64 %indvar1292, 1
  br i1 %polly.loop_cond434.not.not, label %polly.loop_header428, label %polly.loop_exit430

polly.loop_header435:                             ; preds = %polly.loop_header428.split, %polly.loop_header435
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_header435 ], [ 0, %polly.loop_header428.split ]
  %polly.access.add.call1459 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.call1458
  %polly.access.call1460 = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1459
  %polly.access.call1460.load = load double, double* %polly.access.call1460, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297461 = mul nuw nsw i64 %polly.indvar438, 1200
  %polly.access.add.Packed_MemRef_call1297462 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297461, %179
  %polly.access.Packed_MemRef_call1297463 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297462
  store double %polly.access.call1460.load, double* %polly.access.Packed_MemRef_call1297463, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next439, 1000
  br i1 %exitcond1046.not, label %polly.loop_header464.preheader, label %polly.loop_header435

polly.loop_header464.preheader:                   ; preds = %polly.loop_header435, %polly.merge454.us
  %182 = mul i64 %180, 9600
  br i1 %polly.loop_guard4451141, label %polly.loop_header464.us, label %polly.loop_exit466

polly.loop_header464.us:                          ; preds = %polly.loop_header464.preheader, %polly.loop_exit473.loopexit.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_exit473.loopexit.us ], [ 0, %polly.loop_header464.preheader ]
  %polly.access.mul.Packed_MemRef_call1297478.us = mul nuw nsw i64 %polly.indvar467.us, 1200
  %polly.access.add.Packed_MemRef_call2299483.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297478.us, %180
  %polly.access.Packed_MemRef_call2299484.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call2299484.us, align 8
  %polly.access.add.Packed_MemRef_call1297491.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297478.us, %179
  %polly.access.Packed_MemRef_call1297492.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1297492.us, align 8
  %min.iters.check1295 = icmp ult i64 %178, 4
  br i1 %min.iters.check1295, label %polly.loop_header471.us.preheader, label %vector.ph1296

vector.ph1296:                                    ; preds = %polly.loop_header464.us
  %n.vec1298 = and i64 %178, -4
  %broadcast.splatinsert1304 = insertelement <4 x double> poison, double %_p_scalar_485.us, i32 0
  %broadcast.splat1305 = shufflevector <4 x double> %broadcast.splatinsert1304, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1307 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1308 = shufflevector <4 x double> %broadcast.splatinsert1307, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1296
  %index1299 = phi i64 [ 0, %vector.ph1296 ], [ %index.next1300, %vector.body1290 ]
  %183 = add nuw nsw i64 %index1299, %170
  %184 = add nuw nsw i64 %index1299, %polly.access.mul.Packed_MemRef_call1297478.us
  %185 = getelementptr double, double* %Packed_MemRef_call1297, i64 %184
  %186 = bitcast double* %185 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %186, align 8
  %187 = fmul fast <4 x double> %broadcast.splat1305, %wide.load1303
  %188 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1297478.us
  %189 = getelementptr double, double* %Packed_MemRef_call2299, i64 %188
  %190 = bitcast double* %189 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %190, align 8
  %191 = fmul fast <4 x double> %broadcast.splat1308, %wide.load1306
  %192 = shl i64 %183, 3
  %193 = add i64 %192, %182
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %195, align 8, !alias.scope !79, !noalias !81
  %196 = fadd fast <4 x double> %191, %187
  %197 = fmul fast <4 x double> %196, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %198 = fadd fast <4 x double> %197, %wide.load1309
  %199 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %198, <4 x double>* %199, align 8, !alias.scope !79, !noalias !81
  %index.next1300 = add i64 %index1299, 4
  %200 = icmp eq i64 %index.next1300, %n.vec1298
  br i1 %200, label %middle.block1288, label %vector.body1290, !llvm.loop !90

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1302 = icmp eq i64 %178, %n.vec1298
  br i1 %cmp.n1302, label %polly.loop_exit473.loopexit.us, label %polly.loop_header471.us.preheader

polly.loop_header471.us.preheader:                ; preds = %polly.loop_header464.us, %middle.block1288
  %polly.indvar475.us.ph = phi i64 [ 0, %polly.loop_header464.us ], [ %n.vec1298, %middle.block1288 ]
  br label %polly.loop_header471.us

polly.loop_header471.us:                          ; preds = %polly.loop_header471.us.preheader, %polly.loop_header471.us
  %polly.indvar475.us = phi i64 [ %polly.indvar_next476.us, %polly.loop_header471.us ], [ %polly.indvar475.us.ph, %polly.loop_header471.us.preheader ]
  %201 = add nuw nsw i64 %polly.indvar475.us, %170
  %polly.access.add.Packed_MemRef_call1297479.us = add nuw nsw i64 %polly.indvar475.us, %polly.access.mul.Packed_MemRef_call1297478.us
  %polly.access.Packed_MemRef_call1297480.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297479.us
  %_p_scalar_481.us = load double, double* %polly.access.Packed_MemRef_call1297480.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_485.us, %_p_scalar_481.us
  %polly.access.add.Packed_MemRef_call2299487.us = add nuw nsw i64 %201, %polly.access.mul.Packed_MemRef_call1297478.us
  %polly.access.Packed_MemRef_call2299488.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call2299488.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %202 = shl i64 %201, 3
  %203 = add i64 %202, %182
  %scevgep494.us = getelementptr i8, i8* %call, i64 %203
  %scevgep494495.us = bitcast i8* %scevgep494.us to double*
  %_p_scalar_496.us = load double, double* %scevgep494495.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_496.us
  store double %p_add42.i79.us, double* %scevgep494495.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next476.us = add nuw nsw i64 %polly.indvar475.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar475.us, %smin1061
  br i1 %exitcond1062.not, label %polly.loop_exit473.loopexit.us, label %polly.loop_header471.us, !llvm.loop !91

polly.loop_exit473.loopexit.us:                   ; preds = %polly.loop_header471.us, %middle.block1288
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next468.us, 1000
  br i1 %exitcond1063.not, label %polly.loop_exit466, label %polly.loop_header464.us

polly.start499:                                   ; preds = %init_array.exit
  %malloccall501 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall503 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header587

polly.exiting500:                                 ; preds = %polly.loop_exit628
  tail call void @free(i8* %malloccall501)
  tail call void @free(i8* %malloccall503)
  br label %kernel_syr2k.exit

polly.loop_header587:                             ; preds = %polly.loop_exit595, %polly.start499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit595 ], [ 0, %polly.start499 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ 1, %polly.start499 ]
  %204 = add i64 %indvar, 1
  %205 = mul nuw nsw i64 %polly.indvar590, 9600
  %scevgep599 = getelementptr i8, i8* %call, i64 %205
  %min.iters.check1231 = icmp ult i64 %204, 4
  br i1 %min.iters.check1231, label %polly.loop_header593.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header587
  %n.vec1234 = and i64 %204, -4
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1230 ]
  %206 = shl nuw nsw i64 %index1235, 3
  %207 = getelementptr i8, i8* %scevgep599, i64 %206
  %208 = bitcast i8* %207 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %208, align 8, !alias.scope !92, !noalias !94
  %209 = fmul fast <4 x double> %wide.load1239, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %210 = bitcast i8* %207 to <4 x double>*
  store <4 x double> %209, <4 x double>* %210, align 8, !alias.scope !92, !noalias !94
  %index.next1236 = add i64 %index1235, 4
  %211 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %211, label %middle.block1228, label %vector.body1230, !llvm.loop !99

middle.block1228:                                 ; preds = %vector.body1230
  %cmp.n1238 = icmp eq i64 %204, %n.vec1234
  br i1 %cmp.n1238, label %polly.loop_exit595, label %polly.loop_header593.preheader

polly.loop_header593.preheader:                   ; preds = %polly.loop_header587, %middle.block1228
  %polly.indvar596.ph = phi i64 [ 0, %polly.loop_header587 ], [ %n.vec1234, %middle.block1228 ]
  br label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_header593, %middle.block1228
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next591, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1105.not, label %polly.loop_header603.preheader, label %polly.loop_header587

polly.loop_header603.preheader:                   ; preds = %polly.loop_exit595
  %Packed_MemRef_call1502 = bitcast i8* %malloccall501 to double*
  %Packed_MemRef_call2504 = bitcast i8* %malloccall503 to double*
  br label %polly.loop_header603

polly.loop_header593:                             ; preds = %polly.loop_header593.preheader, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ %polly.indvar596.ph, %polly.loop_header593.preheader ]
  %212 = shl nuw nsw i64 %polly.indvar596, 3
  %scevgep600 = getelementptr i8, i8* %scevgep599, i64 %212
  %scevgep600601 = bitcast i8* %scevgep600 to double*
  %_p_scalar_602 = load double, double* %scevgep600601, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_602, 1.200000e+00
  store double %p_mul.i, double* %scevgep600601, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next597, %polly.indvar590
  br i1 %exitcond1104.not, label %polly.loop_exit595, label %polly.loop_header593, !llvm.loop !100

polly.loop_header603:                             ; preds = %polly.loop_header603.preheader, %polly.loop_exit611
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 0, %polly.loop_header603.preheader ]
  %polly.access.mul.Packed_MemRef_call2504 = mul nuw nsw i64 %polly.indvar606, 1200
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next607, 1000
  br i1 %exitcond1103.not, label %polly.loop_header619, label %polly.loop_header603

polly.loop_header609:                             ; preds = %polly.loop_header609, %polly.loop_header603
  %polly.indvar612 = phi i64 [ 0, %polly.loop_header603 ], [ %polly.indvar_next613, %polly.loop_header609 ]
  %polly.access.mul.call2616 = mul nuw nsw i64 %polly.indvar612, 1000
  %polly.access.add.call2617 = add nuw nsw i64 %polly.access.mul.call2616, %polly.indvar606
  %polly.access.call2618 = getelementptr double, double* %polly.access.cast.call2716, i64 %polly.access.add.call2617
  %polly.access.call2618.load = load double, double* %polly.access.call2618, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2504 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call2504
  %polly.access.Packed_MemRef_call2504 = getelementptr double, double* %Packed_MemRef_call2504, i64 %polly.access.add.Packed_MemRef_call2504
  store double %polly.access.call2618.load, double* %polly.access.Packed_MemRef_call2504, align 8
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next613, 1200
  br i1 %exitcond1102.not, label %polly.loop_exit611, label %polly.loop_header609

polly.loop_header619:                             ; preds = %polly.loop_exit611, %polly.loop_exit628
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit628 ], [ 36, %polly.loop_exit611 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit628 ], [ 0, %polly.loop_exit611 ]
  %213 = mul nsw i64 %polly.indvar622, -128
  %214 = shl nuw nsw i64 %polly.indvar622, 7
  %215 = udiv i64 %indvars.iv1096, 25
  %216 = sub nsw i64 %indvars.iv1094, %215
  %smin1098 = call i64 @llvm.smin.i64(i64 %216, i64 20)
  %217 = add nsw i64 %smin1098, 3
  %smax1099 = call i64 @llvm.smax.i64(i64 %217, i64 0)
  %218 = mul nsw i64 %polly.indvar622, -128
  %219 = icmp slt i64 %218, -1072
  %220 = select i1 %219, i64 %218, i64 -1072
  %221 = add nsw i64 %220, 1199
  %222 = shl nsw i64 %polly.indvar622, 7
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit635
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -128
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 128
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 3
  %indvars.iv.next1097 = add nuw nsw i64 %indvars.iv1096, 11
  %exitcond1101.not = icmp eq i64 %polly.indvar_next623, 10
  br i1 %exitcond1101.not, label %polly.exiting500, label %polly.loop_header619

polly.loop_header626:                             ; preds = %polly.loop_exit635, %polly.loop_header619
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit635 ], [ %indvars.iv1082, %polly.loop_header619 ]
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit635 ], [ %indvars.iv1077, %polly.loop_header619 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit635 ], [ 0, %polly.loop_header619 ]
  %223 = mul nuw nsw i64 %polly.indvar629, 50
  %224 = add i64 %213, %223
  %smax1243 = call i64 @llvm.smax.i64(i64 %224, i64 0)
  %225 = mul nsw i64 %polly.indvar629, -50
  %226 = add i64 %214, %225
  %227 = add i64 %smax1243, %226
  %228 = mul nuw nsw i64 %polly.indvar629, 50
  %229 = add nsw i64 %228, %218
  %230 = icmp sgt i64 %229, 0
  %231 = select i1 %230, i64 %229, i64 0
  %polly.loop_guard636.not = icmp sgt i64 %231, %221
  br i1 %polly.loop_guard636.not, label %polly.loop_exit635, label %polly.loop_header633.preheader

polly.loop_header633.preheader:                   ; preds = %polly.loop_header626
  %smax1081 = call i64 @llvm.smax.i64(i64 %indvars.iv1079, i64 0)
  %232 = add i64 %smax1081, %indvars.iv1084
  %233 = sub nsw i64 %222, %228
  %234 = add nuw nsw i64 %228, 50
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit671, %polly.loop_header626
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, 50
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -50
  %exitcond1100.not = icmp eq i64 %polly.indvar629, %smax1099
  br i1 %exitcond1100.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header633:                             ; preds = %polly.loop_header633.preheader, %polly.loop_exit671
  %indvar1244 = phi i64 [ 0, %polly.loop_header633.preheader ], [ %indvar.next1245, %polly.loop_exit671 ]
  %indvars.iv1086 = phi i64 [ %232, %polly.loop_header633.preheader ], [ %indvars.iv.next1087, %polly.loop_exit671 ]
  %polly.indvar637 = phi i64 [ %231, %polly.loop_header633.preheader ], [ %polly.indvar_next638, %polly.loop_exit671 ]
  %235 = add i64 %227, %indvar1244
  %smin1246 = call i64 @llvm.smin.i64(i64 %235, i64 49)
  %236 = add nsw i64 %smin1246, 1
  %smin1091 = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 49)
  %237 = add nsw i64 %polly.indvar637, %233
  %polly.loop_guard6501142 = icmp sgt i64 %237, -1
  %238 = add nuw nsw i64 %polly.indvar637, %222
  %.not909 = icmp ult i64 %238, %234
  %polly.access.mul.call1663 = mul nsw i64 %238, 1000
  br i1 %polly.loop_guard6501142, label %polly.loop_header640.us, label %polly.loop_header633.split

polly.loop_header640.us:                          ; preds = %polly.loop_header633, %polly.merge659.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.merge659.us ], [ 0, %polly.loop_header633 ]
  %polly.access.mul.Packed_MemRef_call1502.us = mul nuw nsw i64 %polly.indvar643.us, 1200
  br label %polly.loop_header647.us

polly.loop_header647.us:                          ; preds = %polly.loop_header640.us, %polly.loop_header647.us
  %polly.indvar651.us = phi i64 [ %polly.indvar_next652.us, %polly.loop_header647.us ], [ 0, %polly.loop_header640.us ]
  %239 = add nuw nsw i64 %polly.indvar651.us, %228
  %polly.access.mul.call1655.us = mul nuw nsw i64 %239, 1000
  %polly.access.add.call1656.us = add nuw nsw i64 %polly.access.mul.call1655.us, %polly.indvar643.us
  %polly.access.call1657.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1656.us
  %polly.access.call1657.load.us = load double, double* %polly.access.call1657.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1502.us = add nuw nsw i64 %polly.indvar651.us, %polly.access.mul.Packed_MemRef_call1502.us
  %polly.access.Packed_MemRef_call1502.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502.us
  store double %polly.access.call1657.load.us, double* %polly.access.Packed_MemRef_call1502.us, align 8
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar651.us, %smin1091
  br i1 %exitcond1089.not, label %polly.cond658.loopexit.us, label %polly.loop_header647.us

polly.then660.us:                                 ; preds = %polly.cond658.loopexit.us
  %polly.access.add.call1664.us = add nuw nsw i64 %polly.indvar643.us, %polly.access.mul.call1663
  %polly.access.call1665.us = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1664.us
  %polly.access.call1665.load.us = load double, double* %polly.access.call1665.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1502667.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1502.us, %237
  %polly.access.Packed_MemRef_call1502668.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502667.us
  store double %polly.access.call1665.load.us, double* %polly.access.Packed_MemRef_call1502668.us, align 8
  br label %polly.merge659.us

polly.merge659.us:                                ; preds = %polly.then660.us, %polly.cond658.loopexit.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next644.us, 1000
  br i1 %exitcond1090.not, label %polly.loop_header669.preheader, label %polly.loop_header640.us

polly.cond658.loopexit.us:                        ; preds = %polly.loop_header647.us
  br i1 %.not909, label %polly.merge659.us, label %polly.then660.us

polly.loop_header633.split:                       ; preds = %polly.loop_header633
  br i1 %.not909, label %polly.loop_exit671, label %polly.loop_header640

polly.loop_exit671:                               ; preds = %polly.loop_exit678.loopexit.us, %polly.loop_header633.split, %polly.loop_header669.preheader
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %polly.loop_cond639.not.not = icmp ult i64 %polly.indvar637, %221
  %indvars.iv.next1087 = add i64 %indvars.iv1086, 1
  %indvar.next1245 = add i64 %indvar1244, 1
  br i1 %polly.loop_cond639.not.not, label %polly.loop_header633, label %polly.loop_exit635

polly.loop_header640:                             ; preds = %polly.loop_header633.split, %polly.loop_header640
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_header640 ], [ 0, %polly.loop_header633.split ]
  %polly.access.add.call1664 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.call1663
  %polly.access.call1665 = getelementptr double, double* %polly.access.cast.call1706, i64 %polly.access.add.call1664
  %polly.access.call1665.load = load double, double* %polly.access.call1665, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1502666 = mul nuw nsw i64 %polly.indvar643, 1200
  %polly.access.add.Packed_MemRef_call1502667 = add nsw i64 %polly.access.mul.Packed_MemRef_call1502666, %237
  %polly.access.Packed_MemRef_call1502668 = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502667
  store double %polly.access.call1665.load, double* %polly.access.Packed_MemRef_call1502668, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next644, 1000
  br i1 %exitcond1076.not, label %polly.loop_header669.preheader, label %polly.loop_header640

polly.loop_header669.preheader:                   ; preds = %polly.loop_header640, %polly.merge659.us
  %240 = mul i64 %238, 9600
  br i1 %polly.loop_guard6501142, label %polly.loop_header669.us, label %polly.loop_exit671

polly.loop_header669.us:                          ; preds = %polly.loop_header669.preheader, %polly.loop_exit678.loopexit.us
  %polly.indvar672.us = phi i64 [ %polly.indvar_next673.us, %polly.loop_exit678.loopexit.us ], [ 0, %polly.loop_header669.preheader ]
  %polly.access.mul.Packed_MemRef_call1502683.us = mul nuw nsw i64 %polly.indvar672.us, 1200
  %polly.access.add.Packed_MemRef_call2504688.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1502683.us, %238
  %polly.access.Packed_MemRef_call2504689.us = getelementptr double, double* %Packed_MemRef_call2504, i64 %polly.access.add.Packed_MemRef_call2504688.us
  %_p_scalar_690.us = load double, double* %polly.access.Packed_MemRef_call2504689.us, align 8
  %polly.access.add.Packed_MemRef_call1502696.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1502683.us, %237
  %polly.access.Packed_MemRef_call1502697.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502696.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1502697.us, align 8
  %min.iters.check1247 = icmp ult i64 %236, 4
  br i1 %min.iters.check1247, label %polly.loop_header676.us.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header669.us
  %n.vec1250 = and i64 %236, -4
  %broadcast.splatinsert1256 = insertelement <4 x double> poison, double %_p_scalar_690.us, i32 0
  %broadcast.splat1257 = shufflevector <4 x double> %broadcast.splatinsert1256, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x double> poison, double %_p_scalar_698.us, i32 0
  %broadcast.splat1260 = shufflevector <4 x double> %broadcast.splatinsert1259, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1242 ]
  %241 = add nuw nsw i64 %index1251, %228
  %242 = add nuw nsw i64 %index1251, %polly.access.mul.Packed_MemRef_call1502683.us
  %243 = getelementptr double, double* %Packed_MemRef_call1502, i64 %242
  %244 = bitcast double* %243 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %244, align 8
  %245 = fmul fast <4 x double> %broadcast.splat1257, %wide.load1255
  %246 = add nuw nsw i64 %241, %polly.access.mul.Packed_MemRef_call1502683.us
  %247 = getelementptr double, double* %Packed_MemRef_call2504, i64 %246
  %248 = bitcast double* %247 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %248, align 8
  %249 = fmul fast <4 x double> %broadcast.splat1260, %wide.load1258
  %250 = shl i64 %241, 3
  %251 = add i64 %250, %240
  %252 = getelementptr i8, i8* %call, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %253, align 8, !alias.scope !92, !noalias !94
  %254 = fadd fast <4 x double> %249, %245
  %255 = fmul fast <4 x double> %254, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %256 = fadd fast <4 x double> %255, %wide.load1261
  %257 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %256, <4 x double>* %257, align 8, !alias.scope !92, !noalias !94
  %index.next1252 = add i64 %index1251, 4
  %258 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %258, label %middle.block1240, label %vector.body1242, !llvm.loop !103

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1254 = icmp eq i64 %236, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit678.loopexit.us, label %polly.loop_header676.us.preheader

polly.loop_header676.us.preheader:                ; preds = %polly.loop_header669.us, %middle.block1240
  %polly.indvar680.us.ph = phi i64 [ 0, %polly.loop_header669.us ], [ %n.vec1250, %middle.block1240 ]
  br label %polly.loop_header676.us

polly.loop_header676.us:                          ; preds = %polly.loop_header676.us.preheader, %polly.loop_header676.us
  %polly.indvar680.us = phi i64 [ %polly.indvar_next681.us, %polly.loop_header676.us ], [ %polly.indvar680.us.ph, %polly.loop_header676.us.preheader ]
  %259 = add nuw nsw i64 %polly.indvar680.us, %228
  %polly.access.add.Packed_MemRef_call1502684.us = add nuw nsw i64 %polly.indvar680.us, %polly.access.mul.Packed_MemRef_call1502683.us
  %polly.access.Packed_MemRef_call1502685.us = getelementptr double, double* %Packed_MemRef_call1502, i64 %polly.access.add.Packed_MemRef_call1502684.us
  %_p_scalar_686.us = load double, double* %polly.access.Packed_MemRef_call1502685.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_690.us, %_p_scalar_686.us
  %polly.access.add.Packed_MemRef_call2504692.us = add nuw nsw i64 %259, %polly.access.mul.Packed_MemRef_call1502683.us
  %polly.access.Packed_MemRef_call2504693.us = getelementptr double, double* %Packed_MemRef_call2504, i64 %polly.access.add.Packed_MemRef_call2504692.us
  %_p_scalar_694.us = load double, double* %polly.access.Packed_MemRef_call2504693.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_698.us, %_p_scalar_694.us
  %260 = shl i64 %259, 3
  %261 = add i64 %260, %240
  %scevgep699.us = getelementptr i8, i8* %call, i64 %261
  %scevgep699700.us = bitcast i8* %scevgep699.us to double*
  %_p_scalar_701.us = load double, double* %scevgep699700.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_701.us
  store double %p_add42.i.us, double* %scevgep699700.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next681.us = add nuw nsw i64 %polly.indvar680.us, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar680.us, %smin1091
  br i1 %exitcond1092.not, label %polly.loop_exit678.loopexit.us, label %polly.loop_header676.us, !llvm.loop !104

polly.loop_exit678.loopexit.us:                   ; preds = %polly.loop_header676.us, %middle.block1240
  %polly.indvar_next673.us = add nuw nsw i64 %polly.indvar672.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next673.us, 1000
  br i1 %exitcond1093.not, label %polly.loop_exit671, label %polly.loop_header669.us

polly.loop_header828:                             ; preds = %entry, %polly.loop_exit836
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit836 ], [ 0, %entry ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %entry ]
  %smin1132 = call i64 @llvm.smin.i64(i64 %indvars.iv1130, i64 -1168)
  %262 = shl nsw i64 %polly.indvar831, 5
  %263 = add nsw i64 %smin1132, 1199
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -32
  %exitcond1135.not = icmp eq i64 %polly.indvar_next832, 38
  br i1 %exitcond1135.not, label %polly.loop_header855, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %264 = mul nsw i64 %polly.indvar837, -32
  %smin = call i64 @llvm.smin.i64(i64 %264, i64 -1168)
  %265 = add nsw i64 %smin, 1200
  %smin1128 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 -1168)
  %266 = shl nsw i64 %polly.indvar837, 5
  %267 = add nsw i64 %smin1128, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -32
  %exitcond1134.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1134.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %polly.indvar843 = phi i64 [ 0, %polly.loop_header834 ], [ %polly.indvar_next844, %polly.loop_exit848 ]
  %268 = add nuw nsw i64 %polly.indvar843, %262
  %269 = trunc i64 %268 to i32
  %270 = mul nuw nsw i64 %268, 9600
  %min.iters.check = icmp eq i64 %265, 0
  br i1 %min.iters.check, label %polly.loop_header846, label %vector.ph1170

vector.ph1170:                                    ; preds = %polly.loop_header840
  %broadcast.splatinsert1177 = insertelement <4 x i64> poison, i64 %266, i32 0
  %broadcast.splat1178 = shufflevector <4 x i64> %broadcast.splatinsert1177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1170
  %index1171 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1170 ], [ %vec.ind.next1176, %vector.body1169 ]
  %271 = add nuw nsw <4 x i64> %vec.ind1175, %broadcast.splat1178
  %272 = trunc <4 x i64> %271 to <4 x i32>
  %273 = mul <4 x i32> %broadcast.splat1180, %272
  %274 = add <4 x i32> %273, <i32 3, i32 3, i32 3, i32 3>
  %275 = urem <4 x i32> %274, <i32 1200, i32 1200, i32 1200, i32 1200>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %278 = extractelement <4 x i64> %271, i32 0
  %279 = shl i64 %278, 3
  %280 = add nuw nsw i64 %279, %270
  %281 = getelementptr i8, i8* %call, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %277, <4 x double>* %282, align 8, !alias.scope !105, !noalias !107
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %283 = icmp eq i64 %index.next1172, %265
  br i1 %283, label %polly.loop_exit848, label %vector.body1169, !llvm.loop !110

polly.loop_exit848:                               ; preds = %vector.body1169, %polly.loop_header846
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar843, %263
  br i1 %exitcond1133.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_header840, %polly.loop_header846
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_header846 ], [ 0, %polly.loop_header840 ]
  %284 = add nuw nsw i64 %polly.indvar849, %266
  %285 = trunc i64 %284 to i32
  %286 = mul i32 %285, %269
  %287 = add i32 %286, 3
  %288 = urem i32 %287, 1200
  %p_conv31.i = sitofp i32 %288 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %289 = shl i64 %284, 3
  %290 = add nuw nsw i64 %289, %270
  %scevgep852 = getelementptr i8, i8* %call, i64 %290
  %scevgep852853 = bitcast i8* %scevgep852 to double*
  store double %p_div33.i, double* %scevgep852853, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar849, %267
  br i1 %exitcond1129.not, label %polly.loop_exit848, label %polly.loop_header846, !llvm.loop !111

polly.loop_header855:                             ; preds = %polly.loop_exit836, %polly.loop_exit863
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit863 ], [ 0, %polly.loop_exit836 ]
  %polly.indvar858 = phi i64 [ %polly.indvar_next859, %polly.loop_exit863 ], [ 0, %polly.loop_exit836 ]
  %smin1122 = call i64 @llvm.smin.i64(i64 %indvars.iv1120, i64 -1168)
  %291 = shl nsw i64 %polly.indvar858, 5
  %292 = add nsw i64 %smin1122, 1199
  br label %polly.loop_header861

polly.loop_exit863:                               ; preds = %polly.loop_exit869
  %polly.indvar_next859 = add nuw nsw i64 %polly.indvar858, 1
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -32
  %exitcond1125.not = icmp eq i64 %polly.indvar_next859, 38
  br i1 %exitcond1125.not, label %polly.loop_header881, label %polly.loop_header855

polly.loop_header861:                             ; preds = %polly.loop_exit869, %polly.loop_header855
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit869 ], [ 0, %polly.loop_header855 ]
  %polly.indvar864 = phi i64 [ %polly.indvar_next865, %polly.loop_exit869 ], [ 0, %polly.loop_header855 ]
  %293 = mul nsw i64 %polly.indvar864, -32
  %smin1184 = call i64 @llvm.smin.i64(i64 %293, i64 -968)
  %294 = add nsw i64 %smin1184, 1000
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -968)
  %295 = shl nsw i64 %polly.indvar864, 5
  %296 = add nsw i64 %smin1118, 999
  br label %polly.loop_header867

polly.loop_exit869:                               ; preds = %polly.loop_exit875
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1124.not = icmp eq i64 %polly.indvar_next865, 32
  br i1 %exitcond1124.not, label %polly.loop_exit863, label %polly.loop_header861

polly.loop_header867:                             ; preds = %polly.loop_exit875, %polly.loop_header861
  %polly.indvar870 = phi i64 [ 0, %polly.loop_header861 ], [ %polly.indvar_next871, %polly.loop_exit875 ]
  %297 = add nuw nsw i64 %polly.indvar870, %291
  %298 = trunc i64 %297 to i32
  %299 = mul nuw nsw i64 %297, 8000
  %min.iters.check1185 = icmp eq i64 %294, 0
  br i1 %min.iters.check1185, label %polly.loop_header873, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header867
  %broadcast.splatinsert1195 = insertelement <4 x i64> poison, i64 %295, i32 0
  %broadcast.splat1196 = shufflevector <4 x i64> %broadcast.splatinsert1195, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1183 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1186 ], [ %vec.ind.next1194, %vector.body1183 ]
  %300 = add nuw nsw <4 x i64> %vec.ind1193, %broadcast.splat1196
  %301 = trunc <4 x i64> %300 to <4 x i32>
  %302 = mul <4 x i32> %broadcast.splat1198, %301
  %303 = add <4 x i32> %302, <i32 2, i32 2, i32 2, i32 2>
  %304 = urem <4 x i32> %303, <i32 1000, i32 1000, i32 1000, i32 1000>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %307 = extractelement <4 x i64> %300, i32 0
  %308 = shl i64 %307, 3
  %309 = add nuw nsw i64 %308, %299
  %310 = getelementptr i8, i8* %call2, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %306, <4 x double>* %311, align 8, !alias.scope !109, !noalias !112
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %312 = icmp eq i64 %index.next1190, %294
  br i1 %312, label %polly.loop_exit875, label %vector.body1183, !llvm.loop !113

polly.loop_exit875:                               ; preds = %vector.body1183, %polly.loop_header873
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar870, %292
  br i1 %exitcond1123.not, label %polly.loop_exit869, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_header867, %polly.loop_header873
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_header873 ], [ 0, %polly.loop_header867 ]
  %313 = add nuw nsw i64 %polly.indvar876, %295
  %314 = trunc i64 %313 to i32
  %315 = mul i32 %314, %298
  %316 = add i32 %315, 2
  %317 = urem i32 %316, 1000
  %p_conv10.i = sitofp i32 %317 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %318 = shl i64 %313, 3
  %319 = add nuw nsw i64 %318, %299
  %scevgep879 = getelementptr i8, i8* %call2, i64 %319
  %scevgep879880 = bitcast i8* %scevgep879 to double*
  store double %p_div12.i, double* %scevgep879880, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar876, %296
  br i1 %exitcond1119.not, label %polly.loop_exit875, label %polly.loop_header873, !llvm.loop !114

polly.loop_header881:                             ; preds = %polly.loop_exit863, %polly.loop_exit889
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit889 ], [ 0, %polly.loop_exit863 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_exit863 ]
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -1168)
  %320 = shl nsw i64 %polly.indvar884, 5
  %321 = add nsw i64 %smin1112, 1199
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1115.not = icmp eq i64 %polly.indvar_next885, 38
  br i1 %exitcond1115.not, label %init_array.exit, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_header881 ]
  %322 = mul nsw i64 %polly.indvar890, -32
  %smin1202 = call i64 @llvm.smin.i64(i64 %322, i64 -968)
  %323 = add nsw i64 %smin1202, 1000
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 -968)
  %324 = shl nsw i64 %polly.indvar890, 5
  %325 = add nsw i64 %smin1108, 999
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1107 = add nsw i64 %indvars.iv1106, -32
  %exitcond1114.not = icmp eq i64 %polly.indvar_next891, 32
  br i1 %exitcond1114.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %polly.indvar896 = phi i64 [ 0, %polly.loop_header887 ], [ %polly.indvar_next897, %polly.loop_exit901 ]
  %326 = add nuw nsw i64 %polly.indvar896, %320
  %327 = trunc i64 %326 to i32
  %328 = mul nuw nsw i64 %326, 8000
  %min.iters.check1203 = icmp eq i64 %323, 0
  br i1 %min.iters.check1203, label %polly.loop_header899, label %vector.ph1204

vector.ph1204:                                    ; preds = %polly.loop_header893
  %broadcast.splatinsert1213 = insertelement <4 x i64> poison, i64 %324, i32 0
  %broadcast.splat1214 = shufflevector <4 x i64> %broadcast.splatinsert1213, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %327, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1201 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1204 ], [ %vec.ind.next1212, %vector.body1201 ]
  %329 = add nuw nsw <4 x i64> %vec.ind1211, %broadcast.splat1214
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat1216, %330
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 1200, i32 1200, i32 1200, i32 1200>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add nuw nsw i64 %337, %328
  %339 = getelementptr i8, i8* %call1, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !108, !noalias !115
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next1208, %323
  br i1 %341, label %polly.loop_exit901, label %vector.body1201, !llvm.loop !116

polly.loop_exit901:                               ; preds = %vector.body1201, %polly.loop_header899
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar896, %321
  br i1 %exitcond1113.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_header893, %polly.loop_header899
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_header899 ], [ 0, %polly.loop_header893 ]
  %342 = add nuw nsw i64 %polly.indvar902, %324
  %343 = trunc i64 %342 to i32
  %344 = mul i32 %343, %327
  %345 = add i32 %344, 1
  %346 = urem i32 %345, 1200
  %p_conv.i = sitofp i32 %346 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %347 = shl i64 %342, 3
  %348 = add nuw nsw i64 %347, %328
  %scevgep906 = getelementptr i8, i8* %call1, i64 %348
  %scevgep906907 = bitcast i8* %scevgep906 to double*
  store double %p_div.i, double* %scevgep906907, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar902, %325
  br i1 %exitcond1109.not, label %polly.loop_exit901, label %polly.loop_header899, !llvm.loop !117
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
!26 = !{!"llvm.loop.tile.size", i32 50}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 128}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !74, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !74, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !74, !13}
