; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1507.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1507.c"
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
  %call870 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header844, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1158 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1157 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1156 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1155 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1155, %scevgep1158
  %bound1 = icmp ult i8* %scevgep1157, %scevgep1156
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
  br i1 %exitcond18.not.i, label %vector.ph1162, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1162:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1169 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1170 = shufflevector <4 x i64> %broadcast.splatinsert1169, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %vector.ph1162
  %index1163 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1162 ], [ %vec.ind.next1168, %vector.body1161 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1167, %broadcast.splat1170
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1163
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1164, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1161, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1161
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1162, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1224 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1224, label %for.body3.i46.preheader1367, label %vector.ph1225

vector.ph1225:                                    ; preds = %for.body3.i46.preheader
  %n.vec1227 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1223 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1228
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1229 = add i64 %index1228, 4
  %46 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %46, label %middle.block1221, label %vector.body1223, !llvm.loop !18

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %indvars.iv21.i, %n.vec1227
  br i1 %cmp.n1231, label %for.inc6.i, label %for.body3.i46.preheader1367

for.body3.i46.preheader1367:                      ; preds = %for.body3.i46.preheader, %middle.block1221
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1227, %middle.block1221 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1367, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1367 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1221, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1269 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1269, label %for.body3.i60.preheader1365, label %vector.ph1270

vector.ph1270:                                    ; preds = %for.body3.i60.preheader
  %n.vec1272 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1270
  %index1273 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1274, %vector.body1268 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1273
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1277 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1277, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1274 = add i64 %index1273, 4
  %57 = icmp eq i64 %index.next1274, %n.vec1272
  br i1 %57, label %middle.block1266, label %vector.body1268, !llvm.loop !57

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1276 = icmp eq i64 %indvars.iv21.i52, %n.vec1272
  br i1 %cmp.n1276, label %for.inc6.i63, label %for.body3.i60.preheader1365

for.body3.i60.preheader1365:                      ; preds = %for.body3.i60.preheader, %middle.block1266
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1272, %middle.block1266 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1365, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1365 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1317 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1317, label %for.body3.i99.preheader1363, label %vector.ph1318

vector.ph1318:                                    ; preds = %for.body3.i99.preheader
  %n.vec1320 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1318
  %index1321 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1322, %vector.body1316 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1321
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1325, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1322 = add i64 %index1321, 4
  %68 = icmp eq i64 %index.next1322, %n.vec1320
  br i1 %68, label %middle.block1314, label %vector.body1316, !llvm.loop !59

middle.block1314:                                 ; preds = %vector.body1316
  %cmp.n1324 = icmp eq i64 %indvars.iv21.i91, %n.vec1320
  br i1 %cmp.n1324, label %for.inc6.i102, label %for.body3.i99.preheader1363

for.body3.i99.preheader1363:                      ; preds = %for.body3.i99.preheader, %middle.block1314
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1320, %middle.block1314 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1363, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1363 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1314, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1329 = phi i64 [ %indvar.next1330, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1329, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1331 = icmp ult i64 %88, 4
  br i1 %min.iters.check1331, label %polly.loop_header192.preheader, label %vector.ph1332

vector.ph1332:                                    ; preds = %polly.loop_header
  %n.vec1334 = and i64 %88, -4
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1328 ]
  %90 = shl nuw nsw i64 %index1335, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1339, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1336 = add i64 %index1335, 4
  %95 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %95, label %middle.block1326, label %vector.body1328, !llvm.loop !72

middle.block1326:                                 ; preds = %vector.body1328
  %cmp.n1338 = icmp eq i64 %88, %n.vec1334
  br i1 %cmp.n1338, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1326
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1334, %middle.block1326 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1326
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1330 = add i64 %indvar1329, 1
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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1054.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

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
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1052.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit224 ], [ 2, %polly.loop_exit208 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -8
  %98 = shl nuw nsw i64 %polly.indvar219, 3
  %99 = mul nsw i64 %polly.indvar219, -8
  %100 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 8
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 2
  %exitcond1051.not = icmp eq i64 %polly.indvar_next220, 150
  br i1 %exitcond1051.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %101 = mul nuw nsw i64 %polly.indvar225, 50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next226, 20
  br i1 %exitcond1050.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv1036, %polly.loop_header222 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %102 = shl nuw nsw i64 %polly.indvar231, 2
  %103 = add i64 %97, %102
  %smax1343 = call i64 @llvm.smax.i64(i64 %103, i64 0)
  %104 = mul nsw i64 %polly.indvar231, -4
  %105 = add i64 %98, %104
  %106 = add i64 %smax1343, %105
  %107 = shl nsw i64 %polly.indvar231, 2
  %108 = add nsw i64 %107, %99
  %109 = icmp sgt i64 %108, 0
  %110 = select i1 %109, i64 %108, i64 0
  %polly.loop_guard = icmp slt i64 %110, 8
  br i1 %polly.loop_guard, label %polly.loop_header234.preheader, label %polly.loop_exit236

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1034, i64 0)
  %111 = add i64 %smax, %indvars.iv1038
  %112 = sub nsw i64 %100, %107
  %113 = add nuw nsw i64 %107, 4
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, 4
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -4
  %exitcond1049.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1047
  br i1 %exitcond1049.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1344 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1345, %polly.loop_exit267 ]
  %indvars.iv1040 = phi i64 [ %111, %polly.loop_header234.preheader ], [ %indvars.iv.next1041, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %110, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %114 = add i64 %106, %indvar1344
  %smin1346 = call i64 @llvm.smin.i64(i64 %114, i64 3)
  %115 = add nsw i64 %smin1346, 1
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 3)
  %116 = add nsw i64 %polly.indvar237, %112
  %polly.loop_guard2501144 = icmp sgt i64 %116, -1
  %117 = add nuw nsw i64 %polly.indvar237, %100
  %.not = icmp ult i64 %117, %113
  %polly.access.mul.call1259 = mul nsw i64 %117, 1000
  %118 = add nuw i64 %polly.access.mul.call1259, %101
  br i1 %polly.loop_guard2501144, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %119 = add nuw nsw i64 %polly.indvar243.us, %101
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %120 = add nuw nsw i64 %polly.indvar251.us, %107
  %polly.access.mul.call1255.us = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %119, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar251.us, %smin1044
  br i1 %exitcond1042.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %118, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %116
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1043.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239 = icmp ult i64 %polly.indvar237, 7
  %indvars.iv.next1041 = add i64 %indvars.iv1040, 1
  %indvar.next1345 = add i64 %indvar1344, 1
  br i1 %polly.loop_cond239, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %118, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %116
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, 50
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %121 = mul i64 %117, 9600
  br i1 %polly.loop_guard2501144, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  %122 = add nuw nsw i64 %polly.indvar268.us, %101
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %122, 1200
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %117
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %116
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1347 = icmp ult i64 %115, 4
  br i1 %min.iters.check1347, label %polly.loop_header272.us.preheader, label %vector.ph1348

vector.ph1348:                                    ; preds = %polly.loop_header265.us
  %n.vec1350 = and i64 %115, -4
  %broadcast.splatinsert1356 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1357 = shufflevector <4 x double> %broadcast.splatinsert1356, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1359 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1360 = shufflevector <4 x double> %broadcast.splatinsert1359, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1352, %vector.body1342 ]
  %123 = add nuw nsw i64 %index1351, %107
  %124 = add nuw nsw i64 %index1351, %polly.access.mul.Packed_MemRef_call1279.us
  %125 = getelementptr double, double* %Packed_MemRef_call1, i64 %124
  %126 = bitcast double* %125 to <4 x double>*
  %wide.load1355 = load <4 x double>, <4 x double>* %126, align 8
  %127 = fmul fast <4 x double> %broadcast.splat1357, %wide.load1355
  %128 = add nuw nsw i64 %123, %polly.access.mul.Packed_MemRef_call2283.us
  %129 = getelementptr double, double* %Packed_MemRef_call2, i64 %128
  %130 = bitcast double* %129 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %130, align 8
  %131 = fmul fast <4 x double> %broadcast.splat1360, %wide.load1358
  %132 = shl i64 %123, 3
  %133 = add i64 %132, %121
  %134 = getelementptr i8, i8* %call, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !65, !noalias !67
  %136 = fadd fast <4 x double> %131, %127
  %137 = fmul fast <4 x double> %136, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %138 = fadd fast <4 x double> %137, %wide.load1361
  %139 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %138, <4 x double>* %139, align 8, !alias.scope !65, !noalias !67
  %index.next1352 = add i64 %index1351, 4
  %140 = icmp eq i64 %index.next1352, %n.vec1350
  br i1 %140, label %middle.block1340, label %vector.body1342, !llvm.loop !77

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1354 = icmp eq i64 %115, %n.vec1350
  br i1 %cmp.n1354, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1340
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1350, %middle.block1340 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %141 = add nuw nsw i64 %polly.indvar276.us, %107
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %142 = shl i64 %141, 3
  %143 = add i64 %142, %121
  %scevgep295.us = getelementptr i8, i8* %call, i64 %143
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar276.us, %smin1044
  br i1 %exitcond1045.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !78

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1340
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next269.us, 50
  br i1 %exitcond1046.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1281 = phi i64 [ %indvar.next1282, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %144 = add i64 %indvar1281, 1
  %145 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1283 = icmp ult i64 %144, 4
  br i1 %min.iters.check1283, label %polly.loop_header394.preheader, label %vector.ph1284

vector.ph1284:                                    ; preds = %polly.loop_header388
  %n.vec1286 = and i64 %144, -4
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1280 ]
  %146 = shl nuw nsw i64 %index1287, 3
  %147 = getelementptr i8, i8* %scevgep400, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !79, !noalias !81
  %149 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !79, !noalias !81
  %index.next1288 = add i64 %index1287, 4
  %151 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %151, label %middle.block1278, label %vector.body1280, !llvm.loop !86

middle.block1278:                                 ; preds = %vector.body1280
  %cmp.n1290 = icmp eq i64 %144, %n.vec1286
  br i1 %cmp.n1290, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1278
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1286, %middle.block1278 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1278
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1282 = add i64 %indvar1281, 1
  br i1 %exitcond1082.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %152
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1081.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !87

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1080.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1079.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit428 ], [ 2, %polly.loop_exit412 ]
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %153 = mul nsw i64 %polly.indvar423, -8
  %154 = shl nuw nsw i64 %polly.indvar423, 3
  %155 = mul nsw i64 %polly.indvar423, -8
  %156 = shl nsw i64 %polly.indvar423, 3
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -8
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 8
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 2
  %exitcond1078.not = icmp eq i64 %polly.indvar_next424, 150
  br i1 %exitcond1078.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %157 = mul nuw nsw i64 %polly.indvar429, 50
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_exit441
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next430, 20
  br i1 %exitcond1077.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_exit441, %polly.loop_header426
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit441 ], [ %indvars.iv1062, %polly.loop_header426 ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit441 ], [ %indvars.iv1057, %polly.loop_header426 ]
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit441 ], [ 0, %polly.loop_header426 ]
  %158 = shl nuw nsw i64 %polly.indvar435, 2
  %159 = add i64 %153, %158
  %smax1295 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = mul nsw i64 %polly.indvar435, -4
  %161 = add i64 %154, %160
  %162 = add i64 %smax1295, %161
  %163 = shl nsw i64 %polly.indvar435, 2
  %164 = add nsw i64 %163, %155
  %165 = icmp sgt i64 %164, 0
  %166 = select i1 %165, i64 %164, i64 0
  %polly.loop_guard442 = icmp slt i64 %166, 8
  br i1 %polly.loop_guard442, label %polly.loop_header439.preheader, label %polly.loop_exit441

polly.loop_header439.preheader:                   ; preds = %polly.loop_header432
  %smax1061 = call i64 @llvm.smax.i64(i64 %indvars.iv1059, i64 0)
  %167 = add i64 %smax1061, %indvars.iv1064
  %168 = sub nsw i64 %156, %163
  %169 = add nuw nsw i64 %163, 4
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit477, %polly.loop_header432
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, 4
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -4
  %exitcond1076.not = icmp eq i64 %polly.indvar_next436, %indvars.iv1074
  br i1 %exitcond1076.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header439:                             ; preds = %polly.loop_header439.preheader, %polly.loop_exit477
  %indvar1296 = phi i64 [ 0, %polly.loop_header439.preheader ], [ %indvar.next1297, %polly.loop_exit477 ]
  %indvars.iv1066 = phi i64 [ %167, %polly.loop_header439.preheader ], [ %indvars.iv.next1067, %polly.loop_exit477 ]
  %polly.indvar443 = phi i64 [ %166, %polly.loop_header439.preheader ], [ %polly.indvar_next444, %polly.loop_exit477 ]
  %170 = add i64 %162, %indvar1296
  %smin1298 = call i64 @llvm.smin.i64(i64 %170, i64 3)
  %171 = add nsw i64 %smin1298, 1
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1066, i64 3)
  %172 = add nsw i64 %polly.indvar443, %168
  %polly.loop_guard4561145 = icmp sgt i64 %172, -1
  %173 = add nuw nsw i64 %polly.indvar443, %156
  %.not924 = icmp ult i64 %173, %169
  %polly.access.mul.call1469 = mul nsw i64 %173, 1000
  %174 = add nuw i64 %polly.access.mul.call1469, %157
  br i1 %polly.loop_guard4561145, label %polly.loop_header446.us, label %polly.loop_header439.split

polly.loop_header446.us:                          ; preds = %polly.loop_header439, %polly.merge465.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.merge465.us ], [ 0, %polly.loop_header439 ]
  %175 = add nuw nsw i64 %polly.indvar449.us, %157
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar449.us, 1200
  br label %polly.loop_header453.us

polly.loop_header453.us:                          ; preds = %polly.loop_header446.us, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header446.us ]
  %176 = add nuw nsw i64 %polly.indvar457.us, %163
  %polly.access.mul.call1461.us = mul nuw nsw i64 %176, 1000
  %polly.access.add.call1462.us = add nuw nsw i64 %175, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar457.us, %smin1071
  br i1 %exitcond1069.not, label %polly.cond464.loopexit.us, label %polly.loop_header453.us

polly.then466.us:                                 ; preds = %polly.cond464.loopexit.us
  %polly.access.add.call1470.us = add nuw nsw i64 %174, %polly.indvar449.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303473.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %172
  %polly.access.Packed_MemRef_call1303474.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1303474.us, align 8
  br label %polly.merge465.us

polly.merge465.us:                                ; preds = %polly.then466.us, %polly.cond464.loopexit.us
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next450.us, 50
  br i1 %exitcond1070.not, label %polly.loop_header475.preheader, label %polly.loop_header446.us

polly.cond464.loopexit.us:                        ; preds = %polly.loop_header453.us
  br i1 %.not924, label %polly.merge465.us, label %polly.then466.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %.not924, label %polly.loop_exit477, label %polly.loop_header446

polly.loop_exit477:                               ; preds = %polly.loop_exit484.loopexit.us, %polly.loop_header439.split, %polly.loop_header475.preheader
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %polly.loop_cond445 = icmp ult i64 %polly.indvar443, 7
  %indvars.iv.next1067 = add i64 %indvars.iv1066, 1
  %indvar.next1297 = add i64 %indvar1296, 1
  br i1 %polly.loop_cond445, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header446:                             ; preds = %polly.loop_header439.split, %polly.loop_header446
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header446 ], [ 0, %polly.loop_header439.split ]
  %polly.access.add.call1470 = add nuw nsw i64 %174, %polly.indvar449
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1303472 = mul nuw nsw i64 %polly.indvar449, 1200
  %polly.access.add.Packed_MemRef_call1303473 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303472, %172
  %polly.access.Packed_MemRef_call1303474 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1303474, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next450, 50
  br i1 %exitcond1056.not, label %polly.loop_header475.preheader, label %polly.loop_header446

polly.loop_header475.preheader:                   ; preds = %polly.loop_header446, %polly.merge465.us
  %177 = mul i64 %173, 9600
  br i1 %polly.loop_guard4561145, label %polly.loop_header475.us, label %polly.loop_exit477

polly.loop_header475.us:                          ; preds = %polly.loop_header475.preheader, %polly.loop_exit484.loopexit.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_exit484.loopexit.us ], [ 0, %polly.loop_header475.preheader ]
  %polly.access.mul.Packed_MemRef_call1303489.us = mul nuw nsw i64 %polly.indvar478.us, 1200
  %178 = add nuw nsw i64 %polly.indvar478.us, %157
  %polly.access.mul.Packed_MemRef_call2305493.us = mul nuw nsw i64 %178, 1200
  %polly.access.add.Packed_MemRef_call2305494.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us, %173
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %polly.access.add.Packed_MemRef_call1303502.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us, %172
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %min.iters.check1299 = icmp ult i64 %171, 4
  br i1 %min.iters.check1299, label %polly.loop_header482.us.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %polly.loop_header475.us
  %n.vec1302 = and i64 %171, -4
  %broadcast.splatinsert1308 = insertelement <4 x double> poison, double %_p_scalar_496.us, i32 0
  %broadcast.splat1309 = shufflevector <4 x double> %broadcast.splatinsert1308, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1311 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1312 = shufflevector <4 x double> %broadcast.splatinsert1311, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1294 ]
  %179 = add nuw nsw i64 %index1303, %163
  %180 = add nuw nsw i64 %index1303, %polly.access.mul.Packed_MemRef_call1303489.us
  %181 = getelementptr double, double* %Packed_MemRef_call1303, i64 %180
  %182 = bitcast double* %181 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %182, align 8
  %183 = fmul fast <4 x double> %broadcast.splat1309, %wide.load1307
  %184 = add nuw nsw i64 %179, %polly.access.mul.Packed_MemRef_call2305493.us
  %185 = getelementptr double, double* %Packed_MemRef_call2305, i64 %184
  %186 = bitcast double* %185 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %186, align 8
  %187 = fmul fast <4 x double> %broadcast.splat1312, %wide.load1310
  %188 = shl i64 %179, 3
  %189 = add i64 %188, %177
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %191, align 8, !alias.scope !79, !noalias !81
  %192 = fadd fast <4 x double> %187, %183
  %193 = fmul fast <4 x double> %192, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %194 = fadd fast <4 x double> %193, %wide.load1313
  %195 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %194, <4 x double>* %195, align 8, !alias.scope !79, !noalias !81
  %index.next1304 = add i64 %index1303, 4
  %196 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %196, label %middle.block1292, label %vector.body1294, !llvm.loop !90

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1306 = icmp eq i64 %171, %n.vec1302
  br i1 %cmp.n1306, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us.preheader

polly.loop_header482.us.preheader:                ; preds = %polly.loop_header475.us, %middle.block1292
  %polly.indvar486.us.ph = phi i64 [ 0, %polly.loop_header475.us ], [ %n.vec1302, %middle.block1292 ]
  br label %polly.loop_header482.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.us.preheader, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %polly.indvar486.us.ph, %polly.loop_header482.us.preheader ]
  %197 = add nuw nsw i64 %polly.indvar486.us, %163
  %polly.access.add.Packed_MemRef_call1303490.us = add nuw nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1303489.us
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %polly.access.add.Packed_MemRef_call2305498.us = add nuw nsw i64 %197, %polly.access.mul.Packed_MemRef_call2305493.us
  %polly.access.Packed_MemRef_call2305499.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call2305499.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %198 = shl i64 %197, 3
  %199 = add i64 %198, %177
  %scevgep505.us = getelementptr i8, i8* %call, i64 %199
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar486.us, %smin1071
  br i1 %exitcond1072.not, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us, !llvm.loop !91

polly.loop_exit484.loopexit.us:                   ; preds = %polly.loop_header482.us, %middle.block1292
  %polly.indvar_next479.us = add nuw nsw i64 %polly.indvar478.us, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next479.us, 50
  br i1 %exitcond1073.not, label %polly.loop_exit477, label %polly.loop_header475.us

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall514 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit638
  tail call void @free(i8* %malloccall512)
  tail call void @free(i8* %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %200 = add i64 %indvar, 1
  %201 = mul nuw nsw i64 %polly.indvar601, 9600
  %scevgep610 = getelementptr i8, i8* %call, i64 %201
  %min.iters.check1235 = icmp ult i64 %200, 4
  br i1 %min.iters.check1235, label %polly.loop_header604.preheader, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header598
  %n.vec1238 = and i64 %200, -4
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1234 ]
  %202 = shl nuw nsw i64 %index1239, 3
  %203 = getelementptr i8, i8* %scevgep610, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %204, align 8, !alias.scope !92, !noalias !94
  %205 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %206 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %205, <4 x double>* %206, align 8, !alias.scope !92, !noalias !94
  %index.next1240 = add i64 %index1239, 4
  %207 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %207, label %middle.block1232, label %vector.body1234, !llvm.loop !99

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1242 = icmp eq i64 %200, %n.vec1238
  br i1 %cmp.n1242, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1232
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1238, %middle.block1232 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1232
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next602, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1109.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %208 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %208
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1108.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !100

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar617, 1200
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next618, 1000
  br i1 %exitcond1107.not, label %polly.loop_header630, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_header620, %polly.loop_header614
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header614 ], [ %polly.indvar_next624, %polly.loop_header620 ]
  %polly.access.mul.call2627 = mul nuw nsw i64 %polly.indvar623, 1000
  %polly.access.add.call2628 = add nuw nsw i64 %polly.access.mul.call2627, %polly.indvar617
  %polly.access.call2629 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2628
  %polly.access.call2629.load = load double, double* %polly.access.call2629, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar623, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2629.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next624, 1200
  br i1 %exitcond1106.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header630:                             ; preds = %polly.loop_exit622, %polly.loop_exit638
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit638 ], [ 2, %polly.loop_exit622 ]
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit638 ], [ 0, %polly.loop_exit622 ]
  %209 = mul nsw i64 %polly.indvar633, -8
  %210 = shl nuw nsw i64 %polly.indvar633, 3
  %211 = mul nsw i64 %polly.indvar633, -8
  %212 = shl nsw i64 %polly.indvar633, 3
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_exit644
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -8
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 8
  %indvars.iv.next1102 = add nuw nsw i64 %indvars.iv1101, 2
  %exitcond1105.not = icmp eq i64 %polly.indvar_next634, 150
  br i1 %exitcond1105.not, label %polly.exiting511, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_exit644, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_exit644 ]
  %213 = mul nuw nsw i64 %polly.indvar639, 50
  br label %polly.loop_header642

polly.loop_exit644:                               ; preds = %polly.loop_exit651
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next640, 20
  br i1 %exitcond1104.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header642:                             ; preds = %polly.loop_exit651, %polly.loop_header636
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit651 ], [ %indvars.iv1089, %polly.loop_header636 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit651 ], [ %indvars.iv1084, %polly.loop_header636 ]
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_exit651 ], [ 0, %polly.loop_header636 ]
  %214 = shl nuw nsw i64 %polly.indvar645, 2
  %215 = add i64 %209, %214
  %smax1247 = call i64 @llvm.smax.i64(i64 %215, i64 0)
  %216 = mul nsw i64 %polly.indvar645, -4
  %217 = add i64 %210, %216
  %218 = add i64 %smax1247, %217
  %219 = shl nsw i64 %polly.indvar645, 2
  %220 = add nsw i64 %219, %211
  %221 = icmp sgt i64 %220, 0
  %222 = select i1 %221, i64 %220, i64 0
  %polly.loop_guard652 = icmp slt i64 %222, 8
  br i1 %polly.loop_guard652, label %polly.loop_header649.preheader, label %polly.loop_exit651

polly.loop_header649.preheader:                   ; preds = %polly.loop_header642
  %smax1088 = call i64 @llvm.smax.i64(i64 %indvars.iv1086, i64 0)
  %223 = add i64 %smax1088, %indvars.iv1091
  %224 = sub nsw i64 %212, %219
  %225 = add nuw nsw i64 %219, 4
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit687, %polly.loop_header642
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, 4
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -4
  %exitcond1103.not = icmp eq i64 %polly.indvar_next646, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit687
  %indvar1248 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvar.next1249, %polly.loop_exit687 ]
  %indvars.iv1093 = phi i64 [ %223, %polly.loop_header649.preheader ], [ %indvars.iv.next1094, %polly.loop_exit687 ]
  %polly.indvar653 = phi i64 [ %222, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit687 ]
  %226 = add i64 %218, %indvar1248
  %smin1250 = call i64 @llvm.smin.i64(i64 %226, i64 3)
  %227 = add nsw i64 %smin1250, 1
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 3)
  %228 = add nsw i64 %polly.indvar653, %224
  %polly.loop_guard6661146 = icmp sgt i64 %228, -1
  %229 = add nuw nsw i64 %polly.indvar653, %212
  %.not925 = icmp ult i64 %229, %225
  %polly.access.mul.call1679 = mul nsw i64 %229, 1000
  %230 = add nuw i64 %polly.access.mul.call1679, %213
  br i1 %polly.loop_guard6661146, label %polly.loop_header656.us, label %polly.loop_header649.split

polly.loop_header656.us:                          ; preds = %polly.loop_header649, %polly.merge675.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.merge675.us ], [ 0, %polly.loop_header649 ]
  %231 = add nuw nsw i64 %polly.indvar659.us, %213
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar659.us, 1200
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %232 = add nuw nsw i64 %polly.indvar667.us, %219
  %polly.access.mul.call1671.us = mul nuw nsw i64 %232, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %231, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1513.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1513.us
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar667.us, %smin1098
  br i1 %exitcond1096.not, label %polly.cond674.loopexit.us, label %polly.loop_header663.us

polly.then676.us:                                 ; preds = %polly.cond674.loopexit.us
  %polly.access.add.call1680.us = add nuw nsw i64 %230, %polly.indvar659.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1513683.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, %228
  %polly.access.Packed_MemRef_call1513684.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1513684.us, align 8
  br label %polly.merge675.us

polly.merge675.us:                                ; preds = %polly.then676.us, %polly.cond674.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next660.us, 50
  br i1 %exitcond1097.not, label %polly.loop_header685.preheader, label %polly.loop_header656.us

polly.cond674.loopexit.us:                        ; preds = %polly.loop_header663.us
  br i1 %.not925, label %polly.merge675.us, label %polly.then676.us

polly.loop_header649.split:                       ; preds = %polly.loop_header649
  br i1 %.not925, label %polly.loop_exit687, label %polly.loop_header656

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header649.split, %polly.loop_header685.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655 = icmp ult i64 %polly.indvar653, 7
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 1
  %indvar.next1249 = add i64 %indvar1248, 1
  br i1 %polly.loop_cond655, label %polly.loop_header649, label %polly.loop_exit651

polly.loop_header656:                             ; preds = %polly.loop_header649.split, %polly.loop_header656
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header656 ], [ 0, %polly.loop_header649.split ]
  %polly.access.add.call1680 = add nuw nsw i64 %230, %polly.indvar659
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1513682 = mul nuw nsw i64 %polly.indvar659, 1200
  %polly.access.add.Packed_MemRef_call1513683 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513682, %228
  %polly.access.Packed_MemRef_call1513684 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1513684, align 8
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next660, 50
  br i1 %exitcond1083.not, label %polly.loop_header685.preheader, label %polly.loop_header656

polly.loop_header685.preheader:                   ; preds = %polly.loop_header656, %polly.merge675.us
  %233 = mul i64 %229, 9600
  br i1 %polly.loop_guard6661146, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1513699.us = mul nuw nsw i64 %polly.indvar688.us, 1200
  %234 = add nuw nsw i64 %polly.indvar688.us, %213
  %polly.access.mul.Packed_MemRef_call2515703.us = mul nuw nsw i64 %234, 1200
  %polly.access.add.Packed_MemRef_call2515704.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us, %229
  %polly.access.Packed_MemRef_call2515705.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2515705.us, align 8
  %polly.access.add.Packed_MemRef_call1513712.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %228
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %min.iters.check1251 = icmp ult i64 %227, 4
  br i1 %min.iters.check1251, label %polly.loop_header692.us.preheader, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header685.us
  %n.vec1254 = and i64 %227, -4
  %broadcast.splatinsert1260 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1261 = shufflevector <4 x double> %broadcast.splatinsert1260, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1263 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1264 = shufflevector <4 x double> %broadcast.splatinsert1263, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1246 ]
  %235 = add nuw nsw i64 %index1255, %219
  %236 = add nuw nsw i64 %index1255, %polly.access.mul.Packed_MemRef_call1513699.us
  %237 = getelementptr double, double* %Packed_MemRef_call1513, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1261, %wide.load1259
  %240 = add nuw nsw i64 %235, %polly.access.mul.Packed_MemRef_call2515703.us
  %241 = getelementptr double, double* %Packed_MemRef_call2515, i64 %240
  %242 = bitcast double* %241 to <4 x double>*
  %wide.load1262 = load <4 x double>, <4 x double>* %242, align 8
  %243 = fmul fast <4 x double> %broadcast.splat1264, %wide.load1262
  %244 = shl i64 %235, 3
  %245 = add i64 %244, %233
  %246 = getelementptr i8, i8* %call, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %247, align 8, !alias.scope !92, !noalias !94
  %248 = fadd fast <4 x double> %243, %239
  %249 = fmul fast <4 x double> %248, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %250 = fadd fast <4 x double> %249, %wide.load1265
  %251 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %250, <4 x double>* %251, align 8, !alias.scope !92, !noalias !94
  %index.next1256 = add i64 %index1255, 4
  %252 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %252, label %middle.block1244, label %vector.body1246, !llvm.loop !103

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1258 = icmp eq i64 %227, %n.vec1254
  br i1 %cmp.n1258, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %polly.loop_header685.us, %middle.block1244
  %polly.indvar696.us.ph = phi i64 [ 0, %polly.loop_header685.us ], [ %n.vec1254, %middle.block1244 ]
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %253 = add nuw nsw i64 %polly.indvar696.us, %219
  %polly.access.add.Packed_MemRef_call1513700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.add.Packed_MemRef_call2515708.us = add nuw nsw i64 %253, %polly.access.mul.Packed_MemRef_call2515703.us
  %polly.access.Packed_MemRef_call2515709.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2515709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %254 = shl i64 %253, 3
  %255 = add i64 %254, %233
  %scevgep715.us = getelementptr i8, i8* %call, i64 %255
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar696.us, %smin1098
  br i1 %exitcond1099.not, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us, !llvm.loop !104

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_header692.us, %middle.block1244
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next689.us, 50
  br i1 %exitcond1100.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -1168)
  %256 = shl nsw i64 %polly.indvar847, 5
  %257 = add nsw i64 %smin1136, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1139.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1139.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %258 = mul nsw i64 %polly.indvar853, -32
  %smin = call i64 @llvm.smin.i64(i64 %258, i64 -1168)
  %259 = add nsw i64 %smin, 1200
  %smin1132 = call i64 @llvm.smin.i64(i64 %indvars.iv1130, i64 -1168)
  %260 = shl nsw i64 %polly.indvar853, 5
  %261 = add nsw i64 %smin1132, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -32
  %exitcond1138.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1138.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %262 = add nuw nsw i64 %polly.indvar859, %256
  %263 = trunc i64 %262 to i32
  %264 = mul nuw nsw i64 %262, 9600
  %min.iters.check = icmp eq i64 %259, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1174

vector.ph1174:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %260, i32 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1174
  %index1175 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1179 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1174 ], [ %vec.ind.next1180, %vector.body1173 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1179, %broadcast.splat1182
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1184, %266
  %268 = add <4 x i32> %267, <i32 3, i32 3, i32 3, i32 3>
  %269 = urem <4 x i32> %268, <i32 1200, i32 1200, i32 1200, i32 1200>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add nuw nsw i64 %273, %264
  %275 = getelementptr i8, i8* %call, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !105, !noalias !107
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1180 = add <4 x i64> %vec.ind1179, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1176, %259
  br i1 %277, label %polly.loop_exit864, label %vector.body1173, !llvm.loop !110

polly.loop_exit864:                               ; preds = %vector.body1173, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar859, %257
  br i1 %exitcond1137.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %278 = add nuw nsw i64 %polly.indvar865, %260
  %279 = trunc i64 %278 to i32
  %280 = mul i32 %279, %263
  %281 = add i32 %280, 3
  %282 = urem i32 %281, 1200
  %p_conv31.i = sitofp i32 %282 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %283 = shl i64 %278, 3
  %284 = add nuw nsw i64 %283, %264
  %scevgep868 = getelementptr i8, i8* %call, i64 %284
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar865, %261
  br i1 %exitcond1133.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !111

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -1168)
  %285 = shl nsw i64 %polly.indvar874, 5
  %286 = add nsw i64 %smin1126, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1129.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1129.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %287 = mul nsw i64 %polly.indvar880, -32
  %smin1188 = call i64 @llvm.smin.i64(i64 %287, i64 -968)
  %288 = add nsw i64 %smin1188, 1000
  %smin1122 = call i64 @llvm.smin.i64(i64 %indvars.iv1120, i64 -968)
  %289 = shl nsw i64 %polly.indvar880, 5
  %290 = add nsw i64 %smin1122, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1128.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %291 = add nuw nsw i64 %polly.indvar886, %285
  %292 = trunc i64 %291 to i32
  %293 = mul nuw nsw i64 %291, 8000
  %min.iters.check1189 = icmp eq i64 %288, 0
  br i1 %min.iters.check1189, label %polly.loop_header889, label %vector.ph1190

vector.ph1190:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1199 = insertelement <4 x i64> poison, i64 %289, i32 0
  %broadcast.splat1200 = shufflevector <4 x i64> %broadcast.splatinsert1199, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1190
  %index1193 = phi i64 [ 0, %vector.ph1190 ], [ %index.next1194, %vector.body1187 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1190 ], [ %vec.ind.next1198, %vector.body1187 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1197, %broadcast.splat1200
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1202, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 1000, i32 1000, i32 1000, i32 1000>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add nuw nsw i64 %302, %293
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !109, !noalias !112
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1194, %288
  br i1 %306, label %polly.loop_exit891, label %vector.body1187, !llvm.loop !113

polly.loop_exit891:                               ; preds = %vector.body1187, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar886, %286
  br i1 %exitcond1127.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %307 = add nuw nsw i64 %polly.indvar892, %289
  %308 = trunc i64 %307 to i32
  %309 = mul i32 %308, %292
  %310 = add i32 %309, 2
  %311 = urem i32 %310, 1000
  %p_conv10.i = sitofp i32 %311 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %312 = shl i64 %307, 3
  %313 = add nuw nsw i64 %312, %293
  %scevgep895 = getelementptr i8, i8* %call2, i64 %313
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar892, %290
  br i1 %exitcond1123.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !114

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -1168)
  %314 = shl nsw i64 %polly.indvar900, 5
  %315 = add nsw i64 %smin1116, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1119.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1119.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %316 = mul nsw i64 %polly.indvar906, -32
  %smin1206 = call i64 @llvm.smin.i64(i64 %316, i64 -968)
  %317 = add nsw i64 %smin1206, 1000
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -968)
  %318 = shl nsw i64 %polly.indvar906, 5
  %319 = add nsw i64 %smin1112, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1118.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %320 = add nuw nsw i64 %polly.indvar912, %314
  %321 = trunc i64 %320 to i32
  %322 = mul nuw nsw i64 %320, 8000
  %min.iters.check1207 = icmp eq i64 %317, 0
  br i1 %min.iters.check1207, label %polly.loop_header915, label %vector.ph1208

vector.ph1208:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1217 = insertelement <4 x i64> poison, i64 %318, i32 0
  %broadcast.splat1218 = shufflevector <4 x i64> %broadcast.splatinsert1217, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1205 ]
  %vec.ind1215 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1208 ], [ %vec.ind.next1216, %vector.body1205 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1215, %broadcast.splat1218
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1220, %324
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 1200, i32 1200, i32 1200, i32 1200>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %322
  %333 = getelementptr i8, i8* %call1, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !108, !noalias !115
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1216 = add <4 x i64> %vec.ind1215, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1212, %317
  br i1 %335, label %polly.loop_exit917, label %vector.body1205, !llvm.loop !116

polly.loop_exit917:                               ; preds = %vector.body1205, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar912, %315
  br i1 %exitcond1117.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %336 = add nuw nsw i64 %polly.indvar918, %318
  %337 = trunc i64 %336 to i32
  %338 = mul i32 %337, %321
  %339 = add i32 %338, 1
  %340 = urem i32 %339, 1200
  %p_conv.i = sitofp i32 %340 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %341 = shl i64 %336, 3
  %342 = add nuw nsw i64 %341, %322
  %scevgep922 = getelementptr i8, i8* %call1, i64 %342
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar918, %319
  br i1 %exitcond1113.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !117
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
!26 = !{!"llvm.loop.tile.size", i32 4}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
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
!49 = !{!"llvm.loop.tile.size", i32 8}
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
