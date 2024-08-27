; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1852.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1852.c"
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
  %call864 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2726 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1150 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1149 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1148 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1147 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1147, %scevgep1150
  %bound1 = icmp ult i8* %scevgep1149, %scevgep1148
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
  br i1 %exitcond18.not.i, label %vector.ph1154, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1154:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1161 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1162 = shufflevector <4 x i64> %broadcast.splatinsert1161, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %vector.ph1154
  %index1155 = phi i64 [ 0, %vector.ph1154 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1154 ], [ %vec.ind.next1160, %vector.body1153 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1159, %broadcast.splat1162
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1155
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1156, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1153, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1153
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1154, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1216 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1216, label %for.body3.i46.preheader1380, label %vector.ph1217

vector.ph1217:                                    ; preds = %for.body3.i46.preheader
  %n.vec1219 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1220
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %46 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %46, label %middle.block1213, label %vector.body1215, !llvm.loop !18

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %indvars.iv21.i, %n.vec1219
  br i1 %cmp.n1223, label %for.inc6.i, label %for.body3.i46.preheader1380

for.body3.i46.preheader1380:                      ; preds = %for.body3.i46.preheader, %middle.block1213
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1219, %middle.block1213 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1380, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1380 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1213, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1269 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1269, label %for.body3.i60.preheader1379, label %vector.ph1270

vector.ph1270:                                    ; preds = %for.body3.i60.preheader
  %n.vec1272 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1270
  %index1273 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1274, %vector.body1268 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1273
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1277 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1277, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1274 = add i64 %index1273, 4
  %57 = icmp eq i64 %index.next1274, %n.vec1272
  br i1 %57, label %middle.block1266, label %vector.body1268, !llvm.loop !56

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1276 = icmp eq i64 %indvars.iv21.i52, %n.vec1272
  br i1 %cmp.n1276, label %for.inc6.i63, label %for.body3.i60.preheader1379

for.body3.i60.preheader1379:                      ; preds = %for.body3.i60.preheader, %middle.block1266
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1272, %middle.block1266 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1379, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1379 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1266, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1325 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1325, label %for.body3.i99.preheader1378, label %vector.ph1326

vector.ph1326:                                    ; preds = %for.body3.i99.preheader
  %n.vec1328 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1324 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1329
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1333, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1330 = add i64 %index1329, 4
  %68 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %68, label %middle.block1322, label %vector.body1324, !llvm.loop !58

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1332 = icmp eq i64 %indvars.iv21.i91, %n.vec1328
  br i1 %cmp.n1332, label %for.inc6.i102, label %for.body3.i99.preheader1378

for.body3.i99.preheader1378:                      ; preds = %for.body3.i99.preheader, %middle.block1322
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1328, %middle.block1322 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1378, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1378 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1322, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1337 = phi i64 [ %indvar.next1338, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1337, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1339 = icmp ult i64 %88, 4
  br i1 %min.iters.check1339, label %polly.loop_header192.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %polly.loop_header
  %n.vec1342 = and i64 %88, -4
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1336 ]
  %90 = shl nuw nsw i64 %index1343, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1347, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1344 = add i64 %index1343, 4
  %95 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %95, label %middle.block1334, label %vector.body1336, !llvm.loop !71

middle.block1334:                                 ; preds = %vector.body1336
  %cmp.n1346 = icmp eq i64 %88, %n.vec1342
  br i1 %cmp.n1346, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1334
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1342, %middle.block1334 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1334
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1338 = add i64 %indvar1337, 1
  br i1 %exitcond1055.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1054.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1054.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1053.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1052.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 5
  %98 = mul nuw nsw i64 %polly.indvar219, 307200
  %99 = or i64 %98, 8
  %100 = shl nuw nsw i64 %polly.indvar219, 5
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 -1168)
  %101 = shl nsw i64 %polly.indvar219, 5
  %102 = add nsw i64 %smin1045, 1199
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next220, 38
  br i1 %exitcond1051.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %103 = mul nuw nsw i64 %polly.indvar225, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next226, 50
  br i1 %exitcond1050.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %104 = mul nsw i64 %polly.indvar231, -32
  %105 = add i64 %97, %104
  %106 = shl nuw nsw i64 %polly.indvar231, 8
  %107 = add nuw i64 %98, %106
  %108 = add nuw i64 %99, %106
  %109 = mul nsw i64 %polly.indvar231, -32
  %110 = add i64 %100, %109
  %111 = shl nsw i64 %polly.indvar231, 5
  %112 = sub nsw i64 %101, %111
  %113 = add nuw nsw i64 %111, 32
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1047
  br i1 %exitcond1049.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit265 ], [ %indvars.iv1034, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %114 = add i64 %105, %polly.indvar237
  %smin1362 = call i64 @llvm.smin.i64(i64 %114, i64 31)
  %115 = add nsw i64 %smin1362, 1
  %116 = mul i64 %polly.indvar237, 9600
  %117 = add i64 %107, %116
  %scevgep1349 = getelementptr i8, i8* %call, i64 %117
  %118 = add i64 %108, %116
  %scevgep1350 = getelementptr i8, i8* %call, i64 %118
  %119 = add i64 %110, %polly.indvar237
  %smin1351 = call i64 @llvm.smin.i64(i64 %119, i64 31)
  %120 = shl nsw i64 %smin1351, 3
  %scevgep1352 = getelementptr i8, i8* %scevgep1350, i64 %120
  %121 = add nsw i64 %120, 8
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 31)
  %122 = add nsw i64 %polly.indvar237, %112
  %polly.loop_guard1142 = icmp sgt i64 %122, -1
  %123 = add nuw nsw i64 %polly.indvar237, %101
  %.not = icmp ult i64 %123, %113
  %polly.access.mul.call1257 = mul nuw nsw i64 %123, 1000
  %124 = add nuw nsw i64 %polly.access.mul.call1257, %103
  br i1 %polly.loop_guard1142, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %125 = add nuw nsw i64 %polly.indvar243.us, %103
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %126 = add nuw nsw i64 %polly.indvar249.us, %111
  %polly.access.mul.call1253.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %125, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar249.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %124, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %122
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond1039.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1716, i64 %124
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %122
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %124, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %122, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %124, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %122, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %124, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %122, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.access.add.call1258.4 = add nuw nsw i64 %124, 4
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.4 = add nsw i64 %122, 4800
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.access.add.call1258.5 = add nuw nsw i64 %124, 5
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.5 = add nsw i64 %122, 6000
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.access.add.call1258.6 = add nuw nsw i64 %124, 6
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.6 = add nsw i64 %122, 7200
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.access.add.call1258.7 = add nuw nsw i64 %124, 7
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.7 = add nsw i64 %122, 8400
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.access.add.call1258.8 = add nuw nsw i64 %124, 8
  %polly.access.call1259.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.8
  %polly.access.call1259.load.8 = load double, double* %polly.access.call1259.8, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.8 = add nsw i64 %122, 9600
  %polly.access.Packed_MemRef_call1262.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.8
  store double %polly.access.call1259.load.8, double* %polly.access.Packed_MemRef_call1262.8, align 8
  %polly.access.add.call1258.9 = add nuw nsw i64 %124, 9
  %polly.access.call1259.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.9
  %polly.access.call1259.load.9 = load double, double* %polly.access.call1259.9, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.9 = add nsw i64 %122, 10800
  %polly.access.Packed_MemRef_call1262.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.9
  store double %polly.access.call1259.load.9, double* %polly.access.Packed_MemRef_call1262.9, align 8
  %polly.access.add.call1258.10 = add nuw nsw i64 %124, 10
  %polly.access.call1259.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.10
  %polly.access.call1259.load.10 = load double, double* %polly.access.call1259.10, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.10 = add nsw i64 %122, 12000
  %polly.access.Packed_MemRef_call1262.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.10
  store double %polly.access.call1259.load.10, double* %polly.access.Packed_MemRef_call1262.10, align 8
  %polly.access.add.call1258.11 = add nuw nsw i64 %124, 11
  %polly.access.call1259.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.11
  %polly.access.call1259.load.11 = load double, double* %polly.access.call1259.11, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.11 = add nsw i64 %122, 13200
  %polly.access.Packed_MemRef_call1262.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.11
  store double %polly.access.call1259.load.11, double* %polly.access.Packed_MemRef_call1262.11, align 8
  %polly.access.add.call1258.12 = add nuw nsw i64 %124, 12
  %polly.access.call1259.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.12
  %polly.access.call1259.load.12 = load double, double* %polly.access.call1259.12, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.12 = add nsw i64 %122, 14400
  %polly.access.Packed_MemRef_call1262.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.12
  store double %polly.access.call1259.load.12, double* %polly.access.Packed_MemRef_call1262.12, align 8
  %polly.access.add.call1258.13 = add nuw nsw i64 %124, 13
  %polly.access.call1259.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.13
  %polly.access.call1259.load.13 = load double, double* %polly.access.call1259.13, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.13 = add nsw i64 %122, 15600
  %polly.access.Packed_MemRef_call1262.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.13
  store double %polly.access.call1259.load.13, double* %polly.access.Packed_MemRef_call1262.13, align 8
  %polly.access.add.call1258.14 = add nuw nsw i64 %124, 14
  %polly.access.call1259.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.14
  %polly.access.call1259.load.14 = load double, double* %polly.access.call1259.14, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.14 = add nsw i64 %122, 16800
  %polly.access.Packed_MemRef_call1262.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.14
  store double %polly.access.call1259.load.14, double* %polly.access.Packed_MemRef_call1262.14, align 8
  %polly.access.add.call1258.15 = add nuw nsw i64 %124, 15
  %polly.access.call1259.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.15
  %polly.access.call1259.load.15 = load double, double* %polly.access.call1259.15, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.15 = add nsw i64 %122, 18000
  %polly.access.Packed_MemRef_call1262.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.15
  store double %polly.access.call1259.load.15, double* %polly.access.Packed_MemRef_call1262.15, align 8
  %polly.access.add.call1258.16 = add nuw nsw i64 %124, 16
  %polly.access.call1259.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.16
  %polly.access.call1259.load.16 = load double, double* %polly.access.call1259.16, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.16 = add nsw i64 %122, 19200
  %polly.access.Packed_MemRef_call1262.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.16
  store double %polly.access.call1259.load.16, double* %polly.access.Packed_MemRef_call1262.16, align 8
  %polly.access.add.call1258.17 = add nuw nsw i64 %124, 17
  %polly.access.call1259.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.17
  %polly.access.call1259.load.17 = load double, double* %polly.access.call1259.17, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.17 = add nsw i64 %122, 20400
  %polly.access.Packed_MemRef_call1262.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.17
  store double %polly.access.call1259.load.17, double* %polly.access.Packed_MemRef_call1262.17, align 8
  %polly.access.add.call1258.18 = add nuw nsw i64 %124, 18
  %polly.access.call1259.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.18
  %polly.access.call1259.load.18 = load double, double* %polly.access.call1259.18, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.18 = add nsw i64 %122, 21600
  %polly.access.Packed_MemRef_call1262.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.18
  store double %polly.access.call1259.load.18, double* %polly.access.Packed_MemRef_call1262.18, align 8
  %polly.access.add.call1258.19 = add nuw nsw i64 %124, 19
  %polly.access.call1259.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.19
  %polly.access.call1259.load.19 = load double, double* %polly.access.call1259.19, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.19 = add nsw i64 %122, 22800
  %polly.access.Packed_MemRef_call1262.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.19
  store double %polly.access.call1259.load.19, double* %polly.access.Packed_MemRef_call1262.19, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar237, %102
  br i1 %exitcond1046.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.merge.us
  %127 = mul nuw nsw i64 %123, 9600
  br i1 %polly.loop_guard1142, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %128 = mul nuw nsw i64 %polly.indvar266.us, 9600
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %129 = add nuw nsw i64 %polly.indvar266.us, %103
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %129, 1200
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %123
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %122
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1363 = icmp ult i64 %115, 4
  br i1 %min.iters.check1363, label %polly.loop_header270.us.preheader, label %vector.memcheck1348

vector.memcheck1348:                              ; preds = %polly.loop_header263.us
  %130 = add i64 %121, %128
  %scevgep1354 = getelementptr i8, i8* %malloccall, i64 %130
  %scevgep1353 = getelementptr i8, i8* %malloccall, i64 %128
  %bound01355 = icmp ult i8* %scevgep1349, %scevgep1354
  %bound11356 = icmp ult i8* %scevgep1353, %scevgep1352
  %found.conflict1357 = and i1 %bound01355, %bound11356
  br i1 %found.conflict1357, label %polly.loop_header270.us.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %vector.memcheck1348
  %n.vec1366 = and i64 %115, -4
  %broadcast.splatinsert1372 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1373 = shufflevector <4 x double> %broadcast.splatinsert1372, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1375 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1376 = shufflevector <4 x double> %broadcast.splatinsert1375, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1361

vector.body1361:                                  ; preds = %vector.body1361, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1361 ]
  %131 = add nuw nsw i64 %index1367, %111
  %132 = add nuw nsw i64 %index1367, %polly.access.mul.Packed_MemRef_call1277.us
  %133 = getelementptr double, double* %Packed_MemRef_call1, i64 %132
  %134 = bitcast double* %133 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !76
  %135 = fmul fast <4 x double> %broadcast.splat1373, %wide.load1371
  %136 = add nuw nsw i64 %131, %polly.access.mul.Packed_MemRef_call2281.us
  %137 = getelementptr double, double* %Packed_MemRef_call2, i64 %136
  %138 = bitcast double* %137 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %138, align 8
  %139 = fmul fast <4 x double> %broadcast.splat1376, %wide.load1374
  %140 = shl i64 %131, 3
  %141 = add nuw nsw i64 %140, %127
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  %wide.load1377 = load <4 x double>, <4 x double>* %143, align 8, !alias.scope !79, !noalias !81
  %144 = fadd fast <4 x double> %139, %135
  %145 = fmul fast <4 x double> %144, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %146 = fadd fast <4 x double> %145, %wide.load1377
  %147 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %146, <4 x double>* %147, align 8, !alias.scope !79, !noalias !81
  %index.next1368 = add i64 %index1367, 4
  %148 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %148, label %middle.block1359, label %vector.body1361, !llvm.loop !82

middle.block1359:                                 ; preds = %vector.body1361
  %cmp.n1370 = icmp eq i64 %115, %n.vec1366
  br i1 %cmp.n1370, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1348, %polly.loop_header263.us, %middle.block1359
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1348 ], [ 0, %polly.loop_header263.us ], [ %n.vec1366, %middle.block1359 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %149 = add nuw nsw i64 %polly.indvar274.us, %111
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %150 = shl i64 %149, 3
  %151 = add nuw nsw i64 %150, %127
  %scevgep293.us = getelementptr i8, i8* %call, i64 %151
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar274.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !83

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1359
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next267.us, 20
  br i1 %exitcond1042.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1281 = phi i64 [ %indvar.next1282, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %152 = add i64 %indvar1281, 1
  %153 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1283 = icmp ult i64 %152, 4
  br i1 %min.iters.check1283, label %polly.loop_header392.preheader, label %vector.ph1284

vector.ph1284:                                    ; preds = %polly.loop_header386
  %n.vec1286 = and i64 %152, -4
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1280 ]
  %154 = shl nuw nsw i64 %index1287, 3
  %155 = getelementptr i8, i8* %scevgep398, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %157 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %index.next1288 = add i64 %index1287, 4
  %159 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %159, label %middle.block1278, label %vector.body1280, !llvm.loop !91

middle.block1278:                                 ; preds = %vector.body1280
  %cmp.n1290 = icmp eq i64 %152, %n.vec1286
  br i1 %cmp.n1290, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1278
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1286, %middle.block1278 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1278
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1282 = add i64 %indvar1281, 1
  br i1 %exitcond1081.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %160
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !84, !noalias !86
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1080.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !92

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1079.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1078.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit426 ], [ 1, %polly.loop_exit410 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %161 = shl nuw nsw i64 %polly.indvar421, 5
  %162 = mul nuw nsw i64 %polly.indvar421, 307200
  %163 = or i64 %162, 8
  %164 = shl nuw nsw i64 %polly.indvar421, 5
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %165 = shl nsw i64 %polly.indvar421, 5
  %166 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 32
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %indvars.iv.next1074 = add nuw nsw i64 %indvars.iv1073, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next422, 38
  br i1 %exitcond1077.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %167 = mul nuw nsw i64 %polly.indvar427, 20
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_exit438
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next428, 50
  br i1 %exitcond1076.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_exit438, %polly.loop_header424
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit438 ], [ %indvars.iv1057, %polly.loop_header424 ]
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit438 ], [ 0, %polly.loop_header424 ]
  %168 = mul nsw i64 %polly.indvar433, -32
  %169 = add i64 %161, %168
  %170 = shl nuw nsw i64 %polly.indvar433, 8
  %171 = add nuw i64 %162, %170
  %172 = add nuw i64 %163, %170
  %173 = mul nsw i64 %polly.indvar433, -32
  %174 = add i64 %164, %173
  %175 = shl nsw i64 %polly.indvar433, 5
  %176 = sub nsw i64 %165, %175
  %177 = add nuw nsw i64 %175, 32
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit473
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1073
  br i1 %exitcond1075.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header436:                             ; preds = %polly.loop_exit473, %polly.loop_header430
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit473 ], [ %indvars.iv1059, %polly.loop_header430 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit473 ], [ 0, %polly.loop_header430 ]
  %178 = add i64 %169, %polly.indvar439
  %smin1306 = call i64 @llvm.smin.i64(i64 %178, i64 31)
  %179 = add nsw i64 %smin1306, 1
  %180 = mul i64 %polly.indvar439, 9600
  %181 = add i64 %171, %180
  %scevgep1293 = getelementptr i8, i8* %call, i64 %181
  %182 = add i64 %172, %180
  %scevgep1294 = getelementptr i8, i8* %call, i64 %182
  %183 = add i64 %174, %polly.indvar439
  %smin1295 = call i64 @llvm.smin.i64(i64 %183, i64 31)
  %184 = shl nsw i64 %smin1295, 3
  %scevgep1296 = getelementptr i8, i8* %scevgep1294, i64 %184
  %185 = add nsw i64 %184, 8
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 31)
  %186 = add nsw i64 %polly.indvar439, %176
  %polly.loop_guard4521143 = icmp sgt i64 %186, -1
  %187 = add nuw nsw i64 %polly.indvar439, %165
  %.not918 = icmp ult i64 %187, %177
  %polly.access.mul.call1465 = mul nuw nsw i64 %187, 1000
  %188 = add nuw nsw i64 %polly.access.mul.call1465, %167
  br i1 %polly.loop_guard4521143, label %polly.loop_header442.us, label %polly.loop_header436.split

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.merge461.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.merge461.us ], [ 0, %polly.loop_header436 ]
  %189 = add nuw nsw i64 %polly.indvar445.us, %167
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar445.us, 1200
  br label %polly.loop_header449.us

polly.loop_header449.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header442.us ]
  %190 = add nuw nsw i64 %polly.indvar453.us, %175
  %polly.access.mul.call1457.us = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %189, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar453.us, %smin1066
  br i1 %exitcond1064.not, label %polly.cond460.loopexit.us, label %polly.loop_header449.us

polly.then462.us:                                 ; preds = %polly.cond460.loopexit.us
  %polly.access.add.call1466.us = add nuw nsw i64 %188, %polly.indvar445.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %186
  %polly.access.Packed_MemRef_call1301470.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1301470.us, align 8
  br label %polly.merge461.us

polly.merge461.us:                                ; preds = %polly.then462.us, %polly.cond460.loopexit.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next446.us, 20
  br i1 %exitcond1065.not, label %polly.loop_header471.preheader, label %polly.loop_header442.us

polly.cond460.loopexit.us:                        ; preds = %polly.loop_header449.us
  br i1 %.not918, label %polly.merge461.us, label %polly.then462.us

polly.loop_header436.split:                       ; preds = %polly.loop_header436
  br i1 %.not918, label %polly.loop_exit473, label %polly.loop_header442.preheader

polly.loop_header442.preheader:                   ; preds = %polly.loop_header436.split
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1716, i64 %188
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !87, !noalias !94
  %polly.access.Packed_MemRef_call1301470 = getelementptr double, double* %Packed_MemRef_call1301, i64 %186
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1301470, align 8
  %polly.access.add.call1466.1 = or i64 %188, 1
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.1 = add nsw i64 %186, 1200
  %polly.access.Packed_MemRef_call1301470.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1301470.1, align 8
  %polly.access.add.call1466.2 = or i64 %188, 2
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.2 = add nsw i64 %186, 2400
  %polly.access.Packed_MemRef_call1301470.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1301470.2, align 8
  %polly.access.add.call1466.3 = or i64 %188, 3
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.3 = add nsw i64 %186, 3600
  %polly.access.Packed_MemRef_call1301470.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1301470.3, align 8
  %polly.access.add.call1466.4 = add nuw nsw i64 %188, 4
  %polly.access.call1467.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.4
  %polly.access.call1467.load.4 = load double, double* %polly.access.call1467.4, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.4 = add nsw i64 %186, 4800
  %polly.access.Packed_MemRef_call1301470.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.4
  store double %polly.access.call1467.load.4, double* %polly.access.Packed_MemRef_call1301470.4, align 8
  %polly.access.add.call1466.5 = add nuw nsw i64 %188, 5
  %polly.access.call1467.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.5
  %polly.access.call1467.load.5 = load double, double* %polly.access.call1467.5, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.5 = add nsw i64 %186, 6000
  %polly.access.Packed_MemRef_call1301470.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.5
  store double %polly.access.call1467.load.5, double* %polly.access.Packed_MemRef_call1301470.5, align 8
  %polly.access.add.call1466.6 = add nuw nsw i64 %188, 6
  %polly.access.call1467.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.6
  %polly.access.call1467.load.6 = load double, double* %polly.access.call1467.6, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.6 = add nsw i64 %186, 7200
  %polly.access.Packed_MemRef_call1301470.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.6
  store double %polly.access.call1467.load.6, double* %polly.access.Packed_MemRef_call1301470.6, align 8
  %polly.access.add.call1466.7 = add nuw nsw i64 %188, 7
  %polly.access.call1467.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.7
  %polly.access.call1467.load.7 = load double, double* %polly.access.call1467.7, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.7 = add nsw i64 %186, 8400
  %polly.access.Packed_MemRef_call1301470.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.7
  store double %polly.access.call1467.load.7, double* %polly.access.Packed_MemRef_call1301470.7, align 8
  %polly.access.add.call1466.8 = add nuw nsw i64 %188, 8
  %polly.access.call1467.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.8
  %polly.access.call1467.load.8 = load double, double* %polly.access.call1467.8, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.8 = add nsw i64 %186, 9600
  %polly.access.Packed_MemRef_call1301470.8 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.8
  store double %polly.access.call1467.load.8, double* %polly.access.Packed_MemRef_call1301470.8, align 8
  %polly.access.add.call1466.9 = add nuw nsw i64 %188, 9
  %polly.access.call1467.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.9
  %polly.access.call1467.load.9 = load double, double* %polly.access.call1467.9, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.9 = add nsw i64 %186, 10800
  %polly.access.Packed_MemRef_call1301470.9 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.9
  store double %polly.access.call1467.load.9, double* %polly.access.Packed_MemRef_call1301470.9, align 8
  %polly.access.add.call1466.10 = add nuw nsw i64 %188, 10
  %polly.access.call1467.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.10
  %polly.access.call1467.load.10 = load double, double* %polly.access.call1467.10, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.10 = add nsw i64 %186, 12000
  %polly.access.Packed_MemRef_call1301470.10 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.10
  store double %polly.access.call1467.load.10, double* %polly.access.Packed_MemRef_call1301470.10, align 8
  %polly.access.add.call1466.11 = add nuw nsw i64 %188, 11
  %polly.access.call1467.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.11
  %polly.access.call1467.load.11 = load double, double* %polly.access.call1467.11, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.11 = add nsw i64 %186, 13200
  %polly.access.Packed_MemRef_call1301470.11 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.11
  store double %polly.access.call1467.load.11, double* %polly.access.Packed_MemRef_call1301470.11, align 8
  %polly.access.add.call1466.12 = add nuw nsw i64 %188, 12
  %polly.access.call1467.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.12
  %polly.access.call1467.load.12 = load double, double* %polly.access.call1467.12, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.12 = add nsw i64 %186, 14400
  %polly.access.Packed_MemRef_call1301470.12 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.12
  store double %polly.access.call1467.load.12, double* %polly.access.Packed_MemRef_call1301470.12, align 8
  %polly.access.add.call1466.13 = add nuw nsw i64 %188, 13
  %polly.access.call1467.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.13
  %polly.access.call1467.load.13 = load double, double* %polly.access.call1467.13, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.13 = add nsw i64 %186, 15600
  %polly.access.Packed_MemRef_call1301470.13 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.13
  store double %polly.access.call1467.load.13, double* %polly.access.Packed_MemRef_call1301470.13, align 8
  %polly.access.add.call1466.14 = add nuw nsw i64 %188, 14
  %polly.access.call1467.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.14
  %polly.access.call1467.load.14 = load double, double* %polly.access.call1467.14, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.14 = add nsw i64 %186, 16800
  %polly.access.Packed_MemRef_call1301470.14 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.14
  store double %polly.access.call1467.load.14, double* %polly.access.Packed_MemRef_call1301470.14, align 8
  %polly.access.add.call1466.15 = add nuw nsw i64 %188, 15
  %polly.access.call1467.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.15
  %polly.access.call1467.load.15 = load double, double* %polly.access.call1467.15, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.15 = add nsw i64 %186, 18000
  %polly.access.Packed_MemRef_call1301470.15 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.15
  store double %polly.access.call1467.load.15, double* %polly.access.Packed_MemRef_call1301470.15, align 8
  %polly.access.add.call1466.16 = add nuw nsw i64 %188, 16
  %polly.access.call1467.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.16
  %polly.access.call1467.load.16 = load double, double* %polly.access.call1467.16, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.16 = add nsw i64 %186, 19200
  %polly.access.Packed_MemRef_call1301470.16 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.16
  store double %polly.access.call1467.load.16, double* %polly.access.Packed_MemRef_call1301470.16, align 8
  %polly.access.add.call1466.17 = add nuw nsw i64 %188, 17
  %polly.access.call1467.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.17
  %polly.access.call1467.load.17 = load double, double* %polly.access.call1467.17, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.17 = add nsw i64 %186, 20400
  %polly.access.Packed_MemRef_call1301470.17 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.17
  store double %polly.access.call1467.load.17, double* %polly.access.Packed_MemRef_call1301470.17, align 8
  %polly.access.add.call1466.18 = add nuw nsw i64 %188, 18
  %polly.access.call1467.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.18
  %polly.access.call1467.load.18 = load double, double* %polly.access.call1467.18, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.18 = add nsw i64 %186, 21600
  %polly.access.Packed_MemRef_call1301470.18 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.18
  store double %polly.access.call1467.load.18, double* %polly.access.Packed_MemRef_call1301470.18, align 8
  %polly.access.add.call1466.19 = add nuw nsw i64 %188, 19
  %polly.access.call1467.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.19
  %polly.access.call1467.load.19 = load double, double* %polly.access.call1467.19, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.19 = add nsw i64 %186, 22800
  %polly.access.Packed_MemRef_call1301470.19 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.19
  store double %polly.access.call1467.load.19, double* %polly.access.Packed_MemRef_call1301470.19, align 8
  br label %polly.loop_exit473

polly.loop_exit473:                               ; preds = %polly.loop_exit480.loopexit.us, %polly.loop_header436.split, %polly.loop_header442.preheader, %polly.loop_header471.preheader
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar439, %166
  br i1 %exitcond1072.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header471.preheader:                   ; preds = %polly.merge461.us
  %191 = mul nuw nsw i64 %187, 9600
  br i1 %polly.loop_guard4521143, label %polly.loop_header471.us, label %polly.loop_exit473

polly.loop_header471.us:                          ; preds = %polly.loop_header471.preheader, %polly.loop_exit480.loopexit.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_exit480.loopexit.us ], [ 0, %polly.loop_header471.preheader ]
  %192 = mul nuw nsw i64 %polly.indvar474.us, 9600
  %polly.access.mul.Packed_MemRef_call1301485.us = mul nuw nsw i64 %polly.indvar474.us, 1200
  %193 = add nuw nsw i64 %polly.indvar474.us, %167
  %polly.access.mul.Packed_MemRef_call2303489.us = mul nuw nsw i64 %193, 1200
  %polly.access.add.Packed_MemRef_call2303490.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us, %187
  %polly.access.Packed_MemRef_call2303491.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2303491.us, align 8
  %polly.access.add.Packed_MemRef_call1301498.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301485.us, %186
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %min.iters.check1307 = icmp ult i64 %179, 4
  br i1 %min.iters.check1307, label %polly.loop_header478.us.preheader, label %vector.memcheck1292

vector.memcheck1292:                              ; preds = %polly.loop_header471.us
  %194 = add i64 %185, %192
  %scevgep1298 = getelementptr i8, i8* %malloccall300, i64 %194
  %scevgep1297 = getelementptr i8, i8* %malloccall300, i64 %192
  %bound01299 = icmp ult i8* %scevgep1293, %scevgep1298
  %bound11300 = icmp ult i8* %scevgep1297, %scevgep1296
  %found.conflict1301 = and i1 %bound01299, %bound11300
  br i1 %found.conflict1301, label %polly.loop_header478.us.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %vector.memcheck1292
  %n.vec1310 = and i64 %179, -4
  %broadcast.splatinsert1316 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1317 = shufflevector <4 x double> %broadcast.splatinsert1316, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1319 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1320 = shufflevector <4 x double> %broadcast.splatinsert1319, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1305 ]
  %195 = add nuw nsw i64 %index1311, %175
  %196 = add nuw nsw i64 %index1311, %polly.access.mul.Packed_MemRef_call1301485.us
  %197 = getelementptr double, double* %Packed_MemRef_call1301, i64 %196
  %198 = bitcast double* %197 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %198, align 8, !alias.scope !95
  %199 = fmul fast <4 x double> %broadcast.splat1317, %wide.load1315
  %200 = add nuw nsw i64 %195, %polly.access.mul.Packed_MemRef_call2303489.us
  %201 = getelementptr double, double* %Packed_MemRef_call2303, i64 %200
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1320, %wide.load1318
  %204 = shl i64 %195, 3
  %205 = add nuw nsw i64 %204, %191
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %207, align 8, !alias.scope !98, !noalias !100
  %208 = fadd fast <4 x double> %203, %199
  %209 = fmul fast <4 x double> %208, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %210 = fadd fast <4 x double> %209, %wide.load1321
  %211 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %210, <4 x double>* %211, align 8, !alias.scope !98, !noalias !100
  %index.next1312 = add i64 %index1311, 4
  %212 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %212, label %middle.block1303, label %vector.body1305, !llvm.loop !101

middle.block1303:                                 ; preds = %vector.body1305
  %cmp.n1314 = icmp eq i64 %179, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us.preheader

polly.loop_header478.us.preheader:                ; preds = %vector.memcheck1292, %polly.loop_header471.us, %middle.block1303
  %polly.indvar482.us.ph = phi i64 [ 0, %vector.memcheck1292 ], [ 0, %polly.loop_header471.us ], [ %n.vec1310, %middle.block1303 ]
  br label %polly.loop_header478.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.us.preheader, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ %polly.indvar482.us.ph, %polly.loop_header478.us.preheader ]
  %213 = add nuw nsw i64 %polly.indvar482.us, %175
  %polly.access.add.Packed_MemRef_call1301486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1301485.us
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.add.Packed_MemRef_call2303494.us = add nuw nsw i64 %213, %polly.access.mul.Packed_MemRef_call2303489.us
  %polly.access.Packed_MemRef_call2303495.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2303495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %214 = shl i64 %213, 3
  %215 = add nuw nsw i64 %214, %191
  %scevgep501.us = getelementptr i8, i8* %call, i64 %215
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar482.us, %smin1066
  br i1 %exitcond1067.not, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us, !llvm.loop !102

polly.loop_exit480.loopexit.us:                   ; preds = %polly.loop_header478.us, %middle.block1303
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next475.us, 20
  br i1 %exitcond1068.not, label %polly.loop_exit473, label %polly.loop_header471.us

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall510 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header594

polly.exiting507:                                 ; preds = %polly.loop_exit634
  tail call void @free(i8* %malloccall508)
  tail call void @free(i8* %malloccall510)
  br label %kernel_syr2k.exit

polly.loop_header594:                             ; preds = %polly.loop_exit602, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit602 ], [ 0, %polly.start506 ]
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 1, %polly.start506 ]
  %216 = add i64 %indvar, 1
  %217 = mul nuw nsw i64 %polly.indvar597, 9600
  %scevgep606 = getelementptr i8, i8* %call, i64 %217
  %min.iters.check1227 = icmp ult i64 %216, 4
  br i1 %min.iters.check1227, label %polly.loop_header600.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %polly.loop_header594
  %n.vec1230 = and i64 %216, -4
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1226 ]
  %218 = shl nuw nsw i64 %index1231, 3
  %219 = getelementptr i8, i8* %scevgep606, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !103, !noalias !105
  %221 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %222 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %221, <4 x double>* %222, align 8, !alias.scope !103, !noalias !105
  %index.next1232 = add i64 %index1231, 4
  %223 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %223, label %middle.block1224, label %vector.body1226, !llvm.loop !110

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %216, %n.vec1230
  br i1 %cmp.n1234, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1224
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1230, %middle.block1224 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1224
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next598, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1107.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %224 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %224
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !103, !noalias !105
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !103, !noalias !105
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1106.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !111

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_header610.preheader ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar613, 1200
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next614, 1000
  br i1 %exitcond1105.not, label %polly.loop_header626, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_header616, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_header616 ]
  %polly.access.mul.call2623 = mul nuw nsw i64 %polly.indvar619, 1000
  %polly.access.add.call2624 = add nuw nsw i64 %polly.access.mul.call2623, %polly.indvar613
  %polly.access.call2625 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2624
  %polly.access.call2625.load = load double, double* %polly.access.call2625, align 8, !alias.scope !107, !noalias !112
  %polly.access.add.Packed_MemRef_call2511 = add nuw nsw i64 %polly.indvar619, %polly.access.mul.Packed_MemRef_call2511
  %polly.access.Packed_MemRef_call2511 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511
  store double %polly.access.call2625.load, double* %polly.access.Packed_MemRef_call2511, align 8
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next620, 1200
  br i1 %exitcond1104.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header626:                             ; preds = %polly.loop_exit618, %polly.loop_exit634
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit634 ], [ 1, %polly.loop_exit618 ]
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %225 = shl nuw nsw i64 %polly.indvar629, 5
  %226 = mul nuw nsw i64 %polly.indvar629, 307200
  %227 = or i64 %226, 8
  %228 = shl nuw nsw i64 %polly.indvar629, 5
  %smin1097 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 -1168)
  %229 = shl nsw i64 %polly.indvar629, 5
  %230 = add nsw i64 %smin1097, 1199
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit640
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 32
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -32
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next630, 38
  br i1 %exitcond1103.not, label %polly.exiting507, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_exit640, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_exit640 ]
  %231 = mul nuw nsw i64 %polly.indvar635, 20
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit646
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next636, 50
  br i1 %exitcond1102.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_exit646, %polly.loop_header632
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %polly.loop_exit646 ], [ %indvars.iv1083, %polly.loop_header632 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit646 ], [ 0, %polly.loop_header632 ]
  %232 = mul nsw i64 %polly.indvar641, -32
  %233 = add i64 %225, %232
  %234 = shl nuw nsw i64 %polly.indvar641, 8
  %235 = add nuw i64 %226, %234
  %236 = add nuw i64 %227, %234
  %237 = mul nsw i64 %polly.indvar641, -32
  %238 = add i64 %228, %237
  %239 = shl nsw i64 %polly.indvar641, 5
  %240 = sub nsw i64 %229, %239
  %241 = add nuw nsw i64 %239, 32
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit681
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, -32
  %exitcond1101.not = icmp eq i64 %polly.indvar_next642, %indvars.iv1099
  br i1 %exitcond1101.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_exit681, %polly.loop_header638
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit681 ], [ %indvars.iv1085, %polly.loop_header638 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit681 ], [ 0, %polly.loop_header638 ]
  %242 = add i64 %233, %polly.indvar647
  %smin1250 = call i64 @llvm.smin.i64(i64 %242, i64 31)
  %243 = add nsw i64 %smin1250, 1
  %244 = mul i64 %polly.indvar647, 9600
  %245 = add i64 %235, %244
  %scevgep1237 = getelementptr i8, i8* %call, i64 %245
  %246 = add i64 %236, %244
  %scevgep1238 = getelementptr i8, i8* %call, i64 %246
  %247 = add i64 %238, %polly.indvar647
  %smin1239 = call i64 @llvm.smin.i64(i64 %247, i64 31)
  %248 = shl nsw i64 %smin1239, 3
  %scevgep1240 = getelementptr i8, i8* %scevgep1238, i64 %248
  %249 = add nsw i64 %248, 8
  %smin1092 = call i64 @llvm.smin.i64(i64 %indvars.iv1087, i64 31)
  %250 = add nsw i64 %polly.indvar647, %240
  %polly.loop_guard6601144 = icmp sgt i64 %250, -1
  %251 = add nuw nsw i64 %polly.indvar647, %229
  %.not919 = icmp ult i64 %251, %241
  %polly.access.mul.call1673 = mul nuw nsw i64 %251, 1000
  %252 = add nuw nsw i64 %polly.access.mul.call1673, %231
  br i1 %polly.loop_guard6601144, label %polly.loop_header650.us, label %polly.loop_header644.split

polly.loop_header650.us:                          ; preds = %polly.loop_header644, %polly.merge669.us
  %polly.indvar653.us = phi i64 [ %polly.indvar_next654.us, %polly.merge669.us ], [ 0, %polly.loop_header644 ]
  %253 = add nuw nsw i64 %polly.indvar653.us, %231
  %polly.access.mul.Packed_MemRef_call1509.us = mul nuw nsw i64 %polly.indvar653.us, 1200
  br label %polly.loop_header657.us

polly.loop_header657.us:                          ; preds = %polly.loop_header650.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header650.us ]
  %254 = add nuw nsw i64 %polly.indvar661.us, %239
  %polly.access.mul.call1665.us = mul nuw nsw i64 %254, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %253, %polly.access.mul.call1665.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar661.us, %smin1092
  br i1 %exitcond1090.not, label %polly.cond668.loopexit.us, label %polly.loop_header657.us

polly.then670.us:                                 ; preds = %polly.cond668.loopexit.us
  %polly.access.add.call1674.us = add nuw nsw i64 %252, %polly.indvar653.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, %250
  %polly.access.Packed_MemRef_call1509678.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1509678.us, align 8
  br label %polly.merge669.us

polly.merge669.us:                                ; preds = %polly.then670.us, %polly.cond668.loopexit.us
  %polly.indvar_next654.us = add nuw nsw i64 %polly.indvar653.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next654.us, 20
  br i1 %exitcond1091.not, label %polly.loop_header679.preheader, label %polly.loop_header650.us

polly.cond668.loopexit.us:                        ; preds = %polly.loop_header657.us
  br i1 %.not919, label %polly.merge669.us, label %polly.then670.us

polly.loop_header644.split:                       ; preds = %polly.loop_header644
  br i1 %.not919, label %polly.loop_exit681, label %polly.loop_header650.preheader

polly.loop_header650.preheader:                   ; preds = %polly.loop_header644.split
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1716, i64 %252
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !106, !noalias !113
  %polly.access.Packed_MemRef_call1509678 = getelementptr double, double* %Packed_MemRef_call1509, i64 %250
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1509678, align 8
  %polly.access.add.call1674.1 = or i64 %252, 1
  %polly.access.call1675.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.1
  %polly.access.call1675.load.1 = load double, double* %polly.access.call1675.1, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.1 = add nsw i64 %250, 1200
  %polly.access.Packed_MemRef_call1509678.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.1
  store double %polly.access.call1675.load.1, double* %polly.access.Packed_MemRef_call1509678.1, align 8
  %polly.access.add.call1674.2 = or i64 %252, 2
  %polly.access.call1675.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.2
  %polly.access.call1675.load.2 = load double, double* %polly.access.call1675.2, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.2 = add nsw i64 %250, 2400
  %polly.access.Packed_MemRef_call1509678.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.2
  store double %polly.access.call1675.load.2, double* %polly.access.Packed_MemRef_call1509678.2, align 8
  %polly.access.add.call1674.3 = or i64 %252, 3
  %polly.access.call1675.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.3
  %polly.access.call1675.load.3 = load double, double* %polly.access.call1675.3, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.3 = add nsw i64 %250, 3600
  %polly.access.Packed_MemRef_call1509678.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.3
  store double %polly.access.call1675.load.3, double* %polly.access.Packed_MemRef_call1509678.3, align 8
  %polly.access.add.call1674.4 = add nuw nsw i64 %252, 4
  %polly.access.call1675.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.4
  %polly.access.call1675.load.4 = load double, double* %polly.access.call1675.4, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.4 = add nsw i64 %250, 4800
  %polly.access.Packed_MemRef_call1509678.4 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.4
  store double %polly.access.call1675.load.4, double* %polly.access.Packed_MemRef_call1509678.4, align 8
  %polly.access.add.call1674.5 = add nuw nsw i64 %252, 5
  %polly.access.call1675.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.5
  %polly.access.call1675.load.5 = load double, double* %polly.access.call1675.5, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.5 = add nsw i64 %250, 6000
  %polly.access.Packed_MemRef_call1509678.5 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.5
  store double %polly.access.call1675.load.5, double* %polly.access.Packed_MemRef_call1509678.5, align 8
  %polly.access.add.call1674.6 = add nuw nsw i64 %252, 6
  %polly.access.call1675.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.6
  %polly.access.call1675.load.6 = load double, double* %polly.access.call1675.6, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.6 = add nsw i64 %250, 7200
  %polly.access.Packed_MemRef_call1509678.6 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.6
  store double %polly.access.call1675.load.6, double* %polly.access.Packed_MemRef_call1509678.6, align 8
  %polly.access.add.call1674.7 = add nuw nsw i64 %252, 7
  %polly.access.call1675.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.7
  %polly.access.call1675.load.7 = load double, double* %polly.access.call1675.7, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.7 = add nsw i64 %250, 8400
  %polly.access.Packed_MemRef_call1509678.7 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.7
  store double %polly.access.call1675.load.7, double* %polly.access.Packed_MemRef_call1509678.7, align 8
  %polly.access.add.call1674.8 = add nuw nsw i64 %252, 8
  %polly.access.call1675.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.8
  %polly.access.call1675.load.8 = load double, double* %polly.access.call1675.8, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.8 = add nsw i64 %250, 9600
  %polly.access.Packed_MemRef_call1509678.8 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.8
  store double %polly.access.call1675.load.8, double* %polly.access.Packed_MemRef_call1509678.8, align 8
  %polly.access.add.call1674.9 = add nuw nsw i64 %252, 9
  %polly.access.call1675.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.9
  %polly.access.call1675.load.9 = load double, double* %polly.access.call1675.9, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.9 = add nsw i64 %250, 10800
  %polly.access.Packed_MemRef_call1509678.9 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.9
  store double %polly.access.call1675.load.9, double* %polly.access.Packed_MemRef_call1509678.9, align 8
  %polly.access.add.call1674.10 = add nuw nsw i64 %252, 10
  %polly.access.call1675.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.10
  %polly.access.call1675.load.10 = load double, double* %polly.access.call1675.10, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.10 = add nsw i64 %250, 12000
  %polly.access.Packed_MemRef_call1509678.10 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.10
  store double %polly.access.call1675.load.10, double* %polly.access.Packed_MemRef_call1509678.10, align 8
  %polly.access.add.call1674.11 = add nuw nsw i64 %252, 11
  %polly.access.call1675.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.11
  %polly.access.call1675.load.11 = load double, double* %polly.access.call1675.11, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.11 = add nsw i64 %250, 13200
  %polly.access.Packed_MemRef_call1509678.11 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.11
  store double %polly.access.call1675.load.11, double* %polly.access.Packed_MemRef_call1509678.11, align 8
  %polly.access.add.call1674.12 = add nuw nsw i64 %252, 12
  %polly.access.call1675.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.12
  %polly.access.call1675.load.12 = load double, double* %polly.access.call1675.12, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.12 = add nsw i64 %250, 14400
  %polly.access.Packed_MemRef_call1509678.12 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.12
  store double %polly.access.call1675.load.12, double* %polly.access.Packed_MemRef_call1509678.12, align 8
  %polly.access.add.call1674.13 = add nuw nsw i64 %252, 13
  %polly.access.call1675.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.13
  %polly.access.call1675.load.13 = load double, double* %polly.access.call1675.13, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.13 = add nsw i64 %250, 15600
  %polly.access.Packed_MemRef_call1509678.13 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.13
  store double %polly.access.call1675.load.13, double* %polly.access.Packed_MemRef_call1509678.13, align 8
  %polly.access.add.call1674.14 = add nuw nsw i64 %252, 14
  %polly.access.call1675.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.14
  %polly.access.call1675.load.14 = load double, double* %polly.access.call1675.14, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.14 = add nsw i64 %250, 16800
  %polly.access.Packed_MemRef_call1509678.14 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.14
  store double %polly.access.call1675.load.14, double* %polly.access.Packed_MemRef_call1509678.14, align 8
  %polly.access.add.call1674.15 = add nuw nsw i64 %252, 15
  %polly.access.call1675.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.15
  %polly.access.call1675.load.15 = load double, double* %polly.access.call1675.15, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.15 = add nsw i64 %250, 18000
  %polly.access.Packed_MemRef_call1509678.15 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.15
  store double %polly.access.call1675.load.15, double* %polly.access.Packed_MemRef_call1509678.15, align 8
  %polly.access.add.call1674.16 = add nuw nsw i64 %252, 16
  %polly.access.call1675.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.16
  %polly.access.call1675.load.16 = load double, double* %polly.access.call1675.16, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.16 = add nsw i64 %250, 19200
  %polly.access.Packed_MemRef_call1509678.16 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.16
  store double %polly.access.call1675.load.16, double* %polly.access.Packed_MemRef_call1509678.16, align 8
  %polly.access.add.call1674.17 = add nuw nsw i64 %252, 17
  %polly.access.call1675.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.17
  %polly.access.call1675.load.17 = load double, double* %polly.access.call1675.17, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.17 = add nsw i64 %250, 20400
  %polly.access.Packed_MemRef_call1509678.17 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.17
  store double %polly.access.call1675.load.17, double* %polly.access.Packed_MemRef_call1509678.17, align 8
  %polly.access.add.call1674.18 = add nuw nsw i64 %252, 18
  %polly.access.call1675.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.18
  %polly.access.call1675.load.18 = load double, double* %polly.access.call1675.18, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.18 = add nsw i64 %250, 21600
  %polly.access.Packed_MemRef_call1509678.18 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.18
  store double %polly.access.call1675.load.18, double* %polly.access.Packed_MemRef_call1509678.18, align 8
  %polly.access.add.call1674.19 = add nuw nsw i64 %252, 19
  %polly.access.call1675.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.19
  %polly.access.call1675.load.19 = load double, double* %polly.access.call1675.19, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.19 = add nsw i64 %250, 22800
  %polly.access.Packed_MemRef_call1509678.19 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.19
  store double %polly.access.call1675.load.19, double* %polly.access.Packed_MemRef_call1509678.19, align 8
  br label %polly.loop_exit681

polly.loop_exit681:                               ; preds = %polly.loop_exit688.loopexit.us, %polly.loop_header644.split, %polly.loop_header650.preheader, %polly.loop_header679.preheader
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar647, %230
  br i1 %exitcond1098.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.merge669.us
  %255 = mul nuw nsw i64 %251, 9600
  br i1 %polly.loop_guard6601144, label %polly.loop_header679.us, label %polly.loop_exit681

polly.loop_header679.us:                          ; preds = %polly.loop_header679.preheader, %polly.loop_exit688.loopexit.us
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.loopexit.us ], [ 0, %polly.loop_header679.preheader ]
  %256 = mul nuw nsw i64 %polly.indvar682.us, 9600
  %polly.access.mul.Packed_MemRef_call1509693.us = mul nuw nsw i64 %polly.indvar682.us, 1200
  %257 = add nuw nsw i64 %polly.indvar682.us, %231
  %polly.access.mul.Packed_MemRef_call2511697.us = mul nuw nsw i64 %257, 1200
  %polly.access.add.Packed_MemRef_call2511698.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us, %251
  %polly.access.Packed_MemRef_call2511699.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2511699.us, align 8
  %polly.access.add.Packed_MemRef_call1509706.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509693.us, %250
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %min.iters.check1251 = icmp ult i64 %243, 4
  br i1 %min.iters.check1251, label %polly.loop_header686.us.preheader, label %vector.memcheck1236

vector.memcheck1236:                              ; preds = %polly.loop_header679.us
  %258 = add i64 %249, %256
  %scevgep1242 = getelementptr i8, i8* %malloccall508, i64 %258
  %scevgep1241 = getelementptr i8, i8* %malloccall508, i64 %256
  %bound01243 = icmp ult i8* %scevgep1237, %scevgep1242
  %bound11244 = icmp ult i8* %scevgep1241, %scevgep1240
  %found.conflict1245 = and i1 %bound01243, %bound11244
  br i1 %found.conflict1245, label %polly.loop_header686.us.preheader, label %vector.ph1252

vector.ph1252:                                    ; preds = %vector.memcheck1236
  %n.vec1254 = and i64 %243, -4
  %broadcast.splatinsert1260 = insertelement <4 x double> poison, double %_p_scalar_700.us, i32 0
  %broadcast.splat1261 = shufflevector <4 x double> %broadcast.splatinsert1260, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1263 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1264 = shufflevector <4 x double> %broadcast.splatinsert1263, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1249 ]
  %259 = add nuw nsw i64 %index1255, %239
  %260 = add nuw nsw i64 %index1255, %polly.access.mul.Packed_MemRef_call1509693.us
  %261 = getelementptr double, double* %Packed_MemRef_call1509, i64 %260
  %262 = bitcast double* %261 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %262, align 8, !alias.scope !114
  %263 = fmul fast <4 x double> %broadcast.splat1261, %wide.load1259
  %264 = add nuw nsw i64 %259, %polly.access.mul.Packed_MemRef_call2511697.us
  %265 = getelementptr double, double* %Packed_MemRef_call2511, i64 %264
  %266 = bitcast double* %265 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %266, align 8
  %267 = fmul fast <4 x double> %broadcast.splat1264, %wide.load1262
  %268 = shl i64 %259, 3
  %269 = add nuw nsw i64 %268, %255
  %270 = getelementptr i8, i8* %call, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %271, align 8, !alias.scope !117, !noalias !119
  %272 = fadd fast <4 x double> %267, %263
  %273 = fmul fast <4 x double> %272, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %274 = fadd fast <4 x double> %273, %wide.load1265
  %275 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %274, <4 x double>* %275, align 8, !alias.scope !117, !noalias !119
  %index.next1256 = add i64 %index1255, 4
  %276 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %276, label %middle.block1247, label %vector.body1249, !llvm.loop !120

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1258 = icmp eq i64 %243, %n.vec1254
  br i1 %cmp.n1258, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us.preheader

polly.loop_header686.us.preheader:                ; preds = %vector.memcheck1236, %polly.loop_header679.us, %middle.block1247
  %polly.indvar690.us.ph = phi i64 [ 0, %vector.memcheck1236 ], [ 0, %polly.loop_header679.us ], [ %n.vec1254, %middle.block1247 ]
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ %polly.indvar690.us.ph, %polly.loop_header686.us.preheader ]
  %277 = add nuw nsw i64 %polly.indvar690.us, %239
  %polly.access.add.Packed_MemRef_call1509694.us = add nuw nsw i64 %polly.indvar690.us, %polly.access.mul.Packed_MemRef_call1509693.us
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %polly.access.add.Packed_MemRef_call2511702.us = add nuw nsw i64 %277, %polly.access.mul.Packed_MemRef_call2511697.us
  %polly.access.Packed_MemRef_call2511703.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call2511703.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %255
  %scevgep709.us = getelementptr i8, i8* %call, i64 %279
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !103, !noalias !105
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !103, !noalias !105
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar690.us, %smin1092
  br i1 %exitcond1093.not, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us, !llvm.loop !121

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_header686.us, %middle.block1247
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next683.us, 20
  br i1 %exitcond1094.not, label %polly.loop_exit681, label %polly.loop_header679.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %280 = shl nsw i64 %polly.indvar841, 5
  %281 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1137.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %282 = mul nsw i64 %polly.indvar847, -32
  %smin = call i64 @llvm.smin.i64(i64 %282, i64 -1168)
  %283 = add nsw i64 %smin, 1200
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %284 = shl nsw i64 %polly.indvar847, 5
  %285 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1136.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1136.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %286 = add nuw nsw i64 %polly.indvar853, %280
  %287 = trunc i64 %286 to i32
  %288 = mul nuw nsw i64 %286, 9600
  %min.iters.check = icmp eq i64 %283, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1166

vector.ph1166:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1173 = insertelement <4 x i64> poison, i64 %284, i32 0
  %broadcast.splat1174 = shufflevector <4 x i64> %broadcast.splatinsert1173, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1166
  %index1167 = phi i64 [ 0, %vector.ph1166 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1166 ], [ %vec.ind.next1172, %vector.body1165 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1171, %broadcast.splat1174
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1176, %290
  %292 = add <4 x i32> %291, <i32 3, i32 3, i32 3, i32 3>
  %293 = urem <4 x i32> %292, <i32 1200, i32 1200, i32 1200, i32 1200>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add nuw nsw i64 %297, %288
  %299 = getelementptr i8, i8* %call, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !122, !noalias !124
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1168, %283
  br i1 %301, label %polly.loop_exit858, label %vector.body1165, !llvm.loop !127

polly.loop_exit858:                               ; preds = %vector.body1165, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar853, %281
  br i1 %exitcond1135.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %302 = add nuw nsw i64 %polly.indvar859, %284
  %303 = trunc i64 %302 to i32
  %304 = mul i32 %303, %287
  %305 = add i32 %304, 3
  %306 = urem i32 %305, 1200
  %p_conv31.i = sitofp i32 %306 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %307 = shl i64 %302, 3
  %308 = add nuw nsw i64 %307, %288
  %scevgep862 = getelementptr i8, i8* %call, i64 %308
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !122, !noalias !124
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar859, %285
  br i1 %exitcond1131.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !128

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -1168)
  %309 = shl nsw i64 %polly.indvar868, 5
  %310 = add nsw i64 %smin1124, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1127.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %311 = mul nsw i64 %polly.indvar874, -32
  %smin1180 = call i64 @llvm.smin.i64(i64 %311, i64 -968)
  %312 = add nsw i64 %smin1180, 1000
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -968)
  %313 = shl nsw i64 %polly.indvar874, 5
  %314 = add nsw i64 %smin1120, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1126.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1126.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %315 = add nuw nsw i64 %polly.indvar880, %309
  %316 = trunc i64 %315 to i32
  %317 = mul nuw nsw i64 %315, 8000
  %min.iters.check1181 = icmp eq i64 %312, 0
  br i1 %min.iters.check1181, label %polly.loop_header883, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1191 = insertelement <4 x i64> poison, i64 %313, i32 0
  %broadcast.splat1192 = shufflevector <4 x i64> %broadcast.splatinsert1191, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1179 ]
  %vec.ind1189 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1182 ], [ %vec.ind.next1190, %vector.body1179 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1189, %broadcast.splat1192
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1194, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 1000, i32 1000, i32 1000, i32 1000>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add nuw nsw i64 %326, %317
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !126, !noalias !129
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1190 = add <4 x i64> %vec.ind1189, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1186, %312
  br i1 %330, label %polly.loop_exit885, label %vector.body1179, !llvm.loop !130

polly.loop_exit885:                               ; preds = %vector.body1179, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar880, %310
  br i1 %exitcond1125.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %331 = add nuw nsw i64 %polly.indvar886, %313
  %332 = trunc i64 %331 to i32
  %333 = mul i32 %332, %316
  %334 = add i32 %333, 2
  %335 = urem i32 %334, 1000
  %p_conv10.i = sitofp i32 %335 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %336 = shl i64 %331, 3
  %337 = add nuw nsw i64 %336, %317
  %scevgep889 = getelementptr i8, i8* %call2, i64 %337
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !126, !noalias !129
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar886, %314
  br i1 %exitcond1121.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !131

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -1168)
  %338 = shl nsw i64 %polly.indvar894, 5
  %339 = add nsw i64 %smin1114, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1117.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %340 = mul nsw i64 %polly.indvar900, -32
  %smin1198 = call i64 @llvm.smin.i64(i64 %340, i64 -968)
  %341 = add nsw i64 %smin1198, 1000
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -968)
  %342 = shl nsw i64 %polly.indvar900, 5
  %343 = add nsw i64 %smin1110, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1116.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %344 = add nuw nsw i64 %polly.indvar906, %338
  %345 = trunc i64 %344 to i32
  %346 = mul nuw nsw i64 %344, 8000
  %min.iters.check1199 = icmp eq i64 %341, 0
  br i1 %min.iters.check1199, label %polly.loop_header909, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1209 = insertelement <4 x i64> poison, i64 %342, i32 0
  %broadcast.splat1210 = shufflevector <4 x i64> %broadcast.splatinsert1209, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1197 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1200 ], [ %vec.ind.next1208, %vector.body1197 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1207, %broadcast.splat1210
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1212, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 1200, i32 1200, i32 1200, i32 1200>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %346
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !125, !noalias !132
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1204, %341
  br i1 %359, label %polly.loop_exit911, label %vector.body1197, !llvm.loop !133

polly.loop_exit911:                               ; preds = %vector.body1197, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar906, %339
  br i1 %exitcond1115.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %360 = add nuw nsw i64 %polly.indvar912, %342
  %361 = trunc i64 %360 to i32
  %362 = mul i32 %361, %345
  %363 = add i32 %362, 1
  %364 = urem i32 %363, 1200
  %p_conv.i = sitofp i32 %364 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %365 = shl i64 %360, 3
  %366 = add nuw nsw i64 %365, %346
  %scevgep916 = getelementptr i8, i8* %call1, i64 %366
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !125, !noalias !132
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar912, %343
  br i1 %exitcond1111.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !134
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
!26 = !{!"llvm.loop.tile.size", i32 32}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !26, !49, !53}
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
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!64, !65, !"polly.alias.scope.MemRef_call", !80}
!80 = distinct !{!80, !78}
!81 = !{!67, !68, !69, !70, !77}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89, !90}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !73, !13}
!93 = !{!84, !87, !89, !90}
!94 = !{!84, !88, !89, !90}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!84, !85, !"polly.alias.scope.MemRef_call", !99}
!99 = distinct !{!99, !97}
!100 = !{!87, !88, !89, !90, !96}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !104, !"polly.alias.scope.MemRef_call"}
!104 = distinct !{!104, !"polly.alias.scope.domain"}
!105 = !{!106, !107, !108, !109}
!106 = distinct !{!106, !104, !"polly.alias.scope.MemRef_call1"}
!107 = distinct !{!107, !104, !"polly.alias.scope.MemRef_call2"}
!108 = distinct !{!108, !104, !"polly.alias.scope.Packed_MemRef_call1"}
!109 = distinct !{!109, !104, !"polly.alias.scope.Packed_MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !73, !13}
!112 = !{!103, !106, !108, !109}
!113 = !{!103, !107, !108, !109}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!103, !104, !"polly.alias.scope.MemRef_call", !118}
!118 = distinct !{!118, !116}
!119 = !{!106, !107, !108, !109, !115}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !123, !"polly.alias.scope.MemRef_call"}
!123 = distinct !{!123, !"polly.alias.scope.domain"}
!124 = !{!125, !126}
!125 = distinct !{!125, !123, !"polly.alias.scope.MemRef_call1"}
!126 = distinct !{!126, !123, !"polly.alias.scope.MemRef_call2"}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !73, !13}
!129 = !{!125, !122}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !73, !13}
!132 = !{!126, !122}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !73, !13}
