; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2338.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2338.c"
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
  %call872 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1724 = bitcast i8* %call1 to double*
  %polly.access.call1733 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2734 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1733, %call2
  %polly.access.call2753 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2753, %call1
  %2 = or i1 %0, %1
  %polly.access.call773 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call773, %call2
  %4 = icmp ule i8* %polly.access.call2753, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call773, %call1
  %8 = icmp ule i8* %polly.access.call1733, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header846, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1152 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1151 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1150 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1149 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1149, %scevgep1152
  %bound1 = icmp ult i8* %scevgep1151, %scevgep1150
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
  br i1 %exitcond18.not.i, label %vector.ph1156, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1156:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1163 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1164 = shufflevector <4 x i64> %broadcast.splatinsert1163, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1156
  %index1157 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1156 ], [ %vec.ind.next1162, %vector.body1155 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1161, %broadcast.splat1164
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1157
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1158, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1155, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1155
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1156, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1218 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1218, label %for.body3.i46.preheader1394, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i46.preheader
  %n.vec1221 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1222
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %46 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %46, label %middle.block1215, label %vector.body1217, !llvm.loop !18

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i, %n.vec1221
  br i1 %cmp.n1225, label %for.inc6.i, label %for.body3.i46.preheader1394

for.body3.i46.preheader1394:                      ; preds = %for.body3.i46.preheader, %middle.block1215
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1221, %middle.block1215 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1394, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1394 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1215, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting512
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1275 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1275, label %for.body3.i60.preheader1393, label %vector.ph1276

vector.ph1276:                                    ; preds = %for.body3.i60.preheader
  %n.vec1278 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1274 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1279
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1283, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1280 = add i64 %index1279, 4
  %57 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %57, label %middle.block1272, label %vector.body1274, !llvm.loop !57

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1282 = icmp eq i64 %indvars.iv21.i52, %n.vec1278
  br i1 %cmp.n1282, label %for.inc6.i63, label %for.body3.i60.preheader1393

for.body3.i60.preheader1393:                      ; preds = %for.body3.i60.preheader, %middle.block1272
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1278, %middle.block1272 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1393, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1393 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1272, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1335 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1335, label %for.body3.i99.preheader1392, label %vector.ph1336

vector.ph1336:                                    ; preds = %for.body3.i99.preheader
  %n.vec1338 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.body1334, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1334 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1339
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1343, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %68 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %68, label %middle.block1332, label %vector.body1334, !llvm.loop !59

middle.block1332:                                 ; preds = %vector.body1334
  %cmp.n1342 = icmp eq i64 %indvars.iv21.i91, %n.vec1338
  br i1 %cmp.n1342, label %for.inc6.i102, label %for.body3.i99.preheader1392

for.body3.i99.preheader1392:                      ; preds = %for.body3.i99.preheader, %middle.block1332
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1338, %middle.block1332 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1392, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1392 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1332, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1347 = phi i64 [ %indvar.next1348, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1347, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1349 = icmp ult i64 %88, 4
  br i1 %min.iters.check1349, label %polly.loop_header192.preheader, label %vector.ph1350

vector.ph1350:                                    ; preds = %polly.loop_header
  %n.vec1352 = and i64 %88, -4
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1346 ]
  %90 = shl nuw nsw i64 %index1353, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1354 = add i64 %index1353, 4
  %95 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %95, label %middle.block1344, label %vector.body1346, !llvm.loop !72

middle.block1344:                                 ; preds = %vector.body1346
  %cmp.n1356 = icmp eq i64 %88, %n.vec1352
  br i1 %cmp.n1356, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1344
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1352, %middle.block1344 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1344
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1348 = add i64 %indvar1347, 1
  br i1 %exitcond1057.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1056.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1056.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1055.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1054.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -96
  %98 = mul nuw nsw i64 %polly.indvar219, 96
  %99 = mul nuw nsw i64 %polly.indvar219, 96
  %100 = mul nsw i64 %polly.indvar219, -96
  %pexp.p_div_q = lshr i64 %polly.indvar219, 1
  %101 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar219
  %.inv = icmp ult i64 %101, 18
  %102 = mul nsw i64 %polly.indvar219, -96
  %103 = icmp slt i64 %102, -1104
  %104 = select i1 %103, i64 %102, i64 -1104
  %105 = add nsw i64 %104, 1199
  %106 = mul nuw nsw i64 %polly.indvar219, 96
  %.op = add nuw i64 %101, 2
  %107 = select i1 %.inv, i64 %.op, i64 19
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 96
  %exitcond1053.not = icmp eq i64 %polly.indvar_next220, 13
  br i1 %exitcond1053.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %108 = mul nuw nsw i64 %polly.indvar225, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next226, 50
  br i1 %exitcond1052.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %109 = shl i64 %polly.indvar231, 6
  %110 = add i64 %97, %109
  %smax1375 = call i64 @llvm.smax.i64(i64 %110, i64 0)
  %111 = mul i64 %polly.indvar231, -64
  %112 = add i64 %98, %111
  %113 = add i64 %smax1375, %112
  %114 = shl i64 %polly.indvar231, 9
  %115 = shl i64 %polly.indvar231, 6
  %116 = add i64 %100, %115
  %smax1359 = call i64 @llvm.smax.i64(i64 %116, i64 0)
  %117 = add nuw i64 %99, %smax1359
  %118 = mul i64 %117, 9600
  %119 = add i64 %114, %118
  %120 = or i64 %114, 8
  %121 = add i64 %120, %118
  %122 = mul i64 %polly.indvar231, -64
  %123 = add i64 %99, %122
  %124 = add i64 %smax1359, %123
  %125 = shl nsw i64 %polly.indvar231, 6
  %126 = add nsw i64 %125, %102
  %127 = icmp sgt i64 %126, 0
  %128 = select i1 %127, i64 %126, i64 0
  %polly.loop_guard.not = icmp sgt i64 %128, %105
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1038, i64 0)
  %129 = add i64 %smax, %indvars.iv1042
  %130 = sub nsw i64 %106, %125
  %131 = add nuw nsw i64 %125, 64
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add i64 %indvars.iv1038, 64
  %indvars.iv.next1043 = add i64 %indvars.iv1042, -64
  %exitcond1051.not = icmp eq i64 %polly.indvar_next232, %107
  br i1 %exitcond1051.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1360 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1361, %polly.loop_exit267 ]
  %indvars.iv1044 = phi i64 [ %129, %polly.loop_header234.preheader ], [ %indvars.iv.next1045, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %128, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %132 = add i64 %113, %indvar1360
  %smin1376 = call i64 @llvm.smin.i64(i64 %132, i64 63)
  %133 = add nsw i64 %smin1376, 1
  %134 = mul i64 %indvar1360, 9600
  %135 = add i64 %119, %134
  %scevgep1362 = getelementptr i8, i8* %call, i64 %135
  %136 = add i64 %121, %134
  %scevgep1363 = getelementptr i8, i8* %call, i64 %136
  %137 = add i64 %124, %indvar1360
  %smin1364 = call i64 @llvm.smin.i64(i64 %137, i64 63)
  %138 = shl i64 %smin1364, 3
  %scevgep1365 = getelementptr i8, i8* %scevgep1363, i64 %138
  %139 = add i64 %138, 8
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 63)
  %140 = add nsw i64 %polly.indvar237, %130
  %polly.loop_guard2501142 = icmp sgt i64 %140, -1
  %141 = add nuw nsw i64 %polly.indvar237, %106
  %.not = icmp ult i64 %141, %131
  %polly.access.mul.call1259 = mul nsw i64 %141, 1000
  %142 = add nuw i64 %polly.access.mul.call1259, %108
  br i1 %polly.loop_guard2501142, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %143 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %144 = add nuw nsw i64 %polly.indvar251.us, %125
  %polly.access.mul.call1255.us = mul nsw i64 %144, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %143, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar251.us, %smin1048
  br i1 %exitcond1046.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add i64 %142, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %140
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond1047.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %142
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %140
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.access.add.call1260.1 = or i64 %142, 1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %140, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = or i64 %142, 2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.2 = add nsw i64 %140, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = or i64 %142, 3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.3 = add nsw i64 %140, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.access.add.call1260.4 = add i64 %142, 4
  %polly.access.call1261.4 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.4
  %polly.access.call1261.load.4 = load double, double* %polly.access.call1261.4, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.4 = add nsw i64 %140, 4800
  %polly.access.Packed_MemRef_call1264.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.4
  store double %polly.access.call1261.load.4, double* %polly.access.Packed_MemRef_call1264.4, align 8
  %polly.access.add.call1260.5 = add i64 %142, 5
  %polly.access.call1261.5 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.5
  %polly.access.call1261.load.5 = load double, double* %polly.access.call1261.5, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.5 = add nsw i64 %140, 6000
  %polly.access.Packed_MemRef_call1264.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.5
  store double %polly.access.call1261.load.5, double* %polly.access.Packed_MemRef_call1264.5, align 8
  %polly.access.add.call1260.6 = add i64 %142, 6
  %polly.access.call1261.6 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.6
  %polly.access.call1261.load.6 = load double, double* %polly.access.call1261.6, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.6 = add nsw i64 %140, 7200
  %polly.access.Packed_MemRef_call1264.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.6
  store double %polly.access.call1261.load.6, double* %polly.access.Packed_MemRef_call1264.6, align 8
  %polly.access.add.call1260.7 = add i64 %142, 7
  %polly.access.call1261.7 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.7
  %polly.access.call1261.load.7 = load double, double* %polly.access.call1261.7, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.7 = add nsw i64 %140, 8400
  %polly.access.Packed_MemRef_call1264.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.7
  store double %polly.access.call1261.load.7, double* %polly.access.Packed_MemRef_call1264.7, align 8
  %polly.access.add.call1260.8 = add i64 %142, 8
  %polly.access.call1261.8 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.8
  %polly.access.call1261.load.8 = load double, double* %polly.access.call1261.8, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.8 = add nsw i64 %140, 9600
  %polly.access.Packed_MemRef_call1264.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.8
  store double %polly.access.call1261.load.8, double* %polly.access.Packed_MemRef_call1264.8, align 8
  %polly.access.add.call1260.9 = add i64 %142, 9
  %polly.access.call1261.9 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.9
  %polly.access.call1261.load.9 = load double, double* %polly.access.call1261.9, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.9 = add nsw i64 %140, 10800
  %polly.access.Packed_MemRef_call1264.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.9
  store double %polly.access.call1261.load.9, double* %polly.access.Packed_MemRef_call1264.9, align 8
  %polly.access.add.call1260.10 = add i64 %142, 10
  %polly.access.call1261.10 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.10
  %polly.access.call1261.load.10 = load double, double* %polly.access.call1261.10, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.10 = add nsw i64 %140, 12000
  %polly.access.Packed_MemRef_call1264.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.10
  store double %polly.access.call1261.load.10, double* %polly.access.Packed_MemRef_call1264.10, align 8
  %polly.access.add.call1260.11 = add i64 %142, 11
  %polly.access.call1261.11 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.11
  %polly.access.call1261.load.11 = load double, double* %polly.access.call1261.11, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.11 = add nsw i64 %140, 13200
  %polly.access.Packed_MemRef_call1264.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.11
  store double %polly.access.call1261.load.11, double* %polly.access.Packed_MemRef_call1264.11, align 8
  %polly.access.add.call1260.12 = add i64 %142, 12
  %polly.access.call1261.12 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.12
  %polly.access.call1261.load.12 = load double, double* %polly.access.call1261.12, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.12 = add nsw i64 %140, 14400
  %polly.access.Packed_MemRef_call1264.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.12
  store double %polly.access.call1261.load.12, double* %polly.access.Packed_MemRef_call1264.12, align 8
  %polly.access.add.call1260.13 = add i64 %142, 13
  %polly.access.call1261.13 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.13
  %polly.access.call1261.load.13 = load double, double* %polly.access.call1261.13, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.13 = add nsw i64 %140, 15600
  %polly.access.Packed_MemRef_call1264.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.13
  store double %polly.access.call1261.load.13, double* %polly.access.Packed_MemRef_call1264.13, align 8
  %polly.access.add.call1260.14 = add i64 %142, 14
  %polly.access.call1261.14 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.14
  %polly.access.call1261.load.14 = load double, double* %polly.access.call1261.14, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.14 = add nsw i64 %140, 16800
  %polly.access.Packed_MemRef_call1264.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.14
  store double %polly.access.call1261.load.14, double* %polly.access.Packed_MemRef_call1264.14, align 8
  %polly.access.add.call1260.15 = add i64 %142, 15
  %polly.access.call1261.15 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.15
  %polly.access.call1261.load.15 = load double, double* %polly.access.call1261.15, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.15 = add nsw i64 %140, 18000
  %polly.access.Packed_MemRef_call1264.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.15
  store double %polly.access.call1261.load.15, double* %polly.access.Packed_MemRef_call1264.15, align 8
  %polly.access.add.call1260.16 = add i64 %142, 16
  %polly.access.call1261.16 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.16
  %polly.access.call1261.load.16 = load double, double* %polly.access.call1261.16, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.16 = add nsw i64 %140, 19200
  %polly.access.Packed_MemRef_call1264.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.16
  store double %polly.access.call1261.load.16, double* %polly.access.Packed_MemRef_call1264.16, align 8
  %polly.access.add.call1260.17 = add i64 %142, 17
  %polly.access.call1261.17 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.17
  %polly.access.call1261.load.17 = load double, double* %polly.access.call1261.17, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.17 = add nsw i64 %140, 20400
  %polly.access.Packed_MemRef_call1264.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.17
  store double %polly.access.call1261.load.17, double* %polly.access.Packed_MemRef_call1264.17, align 8
  %polly.access.add.call1260.18 = add i64 %142, 18
  %polly.access.call1261.18 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.18
  %polly.access.call1261.load.18 = load double, double* %polly.access.call1261.18, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.18 = add nsw i64 %140, 21600
  %polly.access.Packed_MemRef_call1264.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.18
  store double %polly.access.call1261.load.18, double* %polly.access.Packed_MemRef_call1264.18, align 8
  %polly.access.add.call1260.19 = add i64 %142, 19
  %polly.access.call1261.19 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.19
  %polly.access.call1261.load.19 = load double, double* %polly.access.call1261.19, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.19 = add nsw i64 %140, 22800
  %polly.access.Packed_MemRef_call1264.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.19
  store double %polly.access.call1261.load.19, double* %polly.access.Packed_MemRef_call1264.19, align 8
  br label %polly.loop_exit267

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %105
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %indvar.next1361 = add i64 %indvar1360, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header265.preheader:                   ; preds = %polly.merge.us
  %145 = mul i64 %141, 9600
  br i1 %polly.loop_guard2501142, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %146 = mul nuw nsw i64 %polly.indvar268.us, 9600
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  %147 = add nuw nsw i64 %polly.indvar268.us, %108
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %147, 1200
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %141
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %140
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1377 = icmp ult i64 %133, 4
  br i1 %min.iters.check1377, label %polly.loop_header272.us.preheader, label %vector.memcheck1358

vector.memcheck1358:                              ; preds = %polly.loop_header265.us
  %148 = add i64 %139, %146
  %scevgep1367 = getelementptr i8, i8* %malloccall, i64 %148
  %scevgep1366 = getelementptr i8, i8* %malloccall, i64 %146
  %bound01368 = icmp ult i8* %scevgep1362, %scevgep1367
  %bound11369 = icmp ult i8* %scevgep1366, %scevgep1365
  %found.conflict1370 = and i1 %bound01368, %bound11369
  br i1 %found.conflict1370, label %polly.loop_header272.us.preheader, label %vector.ph1378

vector.ph1378:                                    ; preds = %vector.memcheck1358
  %n.vec1380 = and i64 %133, -4
  %broadcast.splatinsert1386 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1387 = shufflevector <4 x double> %broadcast.splatinsert1386, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1389 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1390 = shufflevector <4 x double> %broadcast.splatinsert1389, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1374 ]
  %149 = add nuw nsw i64 %index1381, %125
  %150 = add nuw nsw i64 %index1381, %polly.access.mul.Packed_MemRef_call1279.us
  %151 = getelementptr double, double* %Packed_MemRef_call1, i64 %150
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !77
  %153 = fmul fast <4 x double> %broadcast.splat1387, %wide.load1385
  %154 = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2283.us
  %155 = getelementptr double, double* %Packed_MemRef_call2, i64 %154
  %156 = bitcast double* %155 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %156, align 8
  %157 = fmul fast <4 x double> %broadcast.splat1390, %wide.load1388
  %158 = shl i64 %149, 3
  %159 = add i64 %158, %145
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  %wide.load1391 = load <4 x double>, <4 x double>* %161, align 8, !alias.scope !80, !noalias !82
  %162 = fadd fast <4 x double> %157, %153
  %163 = fmul fast <4 x double> %162, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %164 = fadd fast <4 x double> %163, %wide.load1391
  %165 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !80, !noalias !82
  %index.next1382 = add i64 %index1381, 4
  %166 = icmp eq i64 %index.next1382, %n.vec1380
  br i1 %166, label %middle.block1372, label %vector.body1374, !llvm.loop !83

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1384 = icmp eq i64 %133, %n.vec1380
  br i1 %cmp.n1384, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %vector.memcheck1358, %polly.loop_header265.us, %middle.block1372
  %polly.indvar276.us.ph = phi i64 [ 0, %vector.memcheck1358 ], [ 0, %polly.loop_header265.us ], [ %n.vec1380, %middle.block1372 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %167 = add nuw nsw i64 %polly.indvar276.us, %125
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %167, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %168 = shl i64 %167, 3
  %169 = add i64 %168, %145
  %scevgep295.us = getelementptr i8, i8* %call, i64 %169
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar276.us, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !84

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1372
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next269.us, 20
  br i1 %exitcond1050.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1287 = phi i64 [ %indvar.next1288, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %170 = add i64 %indvar1287, 1
  %171 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1289 = icmp ult i64 %170, 4
  br i1 %min.iters.check1289, label %polly.loop_header394.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %polly.loop_header388
  %n.vec1292 = and i64 %170, -4
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1286 ]
  %172 = shl nuw nsw i64 %index1293, 3
  %173 = getelementptr i8, i8* %scevgep400, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !85, !noalias !87
  %175 = fmul fast <4 x double> %wide.load1297, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !85, !noalias !87
  %index.next1294 = add i64 %index1293, 4
  %177 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %177, label %middle.block1284, label %vector.body1286, !llvm.loop !92

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1296 = icmp eq i64 %170, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1284
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1292, %middle.block1284 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1284
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1288 = add i64 %indvar1287, 1
  br i1 %exitcond1082.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %178
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1081.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !93

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
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1079.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %179 = mul nsw i64 %polly.indvar423, -96
  %180 = mul nuw nsw i64 %polly.indvar423, 96
  %181 = mul nuw nsw i64 %polly.indvar423, 96
  %182 = mul nsw i64 %polly.indvar423, -96
  %pexp.p_div_q432 = lshr i64 %polly.indvar423, 1
  %183 = add nuw nsw i64 %pexp.p_div_q432, %polly.indvar423
  %.inv926 = icmp ult i64 %183, 18
  %184 = mul nsw i64 %polly.indvar423, -96
  %185 = icmp slt i64 %184, -1104
  %186 = select i1 %185, i64 %184, i64 -1104
  %187 = add nsw i64 %186, 1199
  %188 = mul nuw nsw i64 %polly.indvar423, 96
  %.op1143 = add nuw i64 %183, 2
  %189 = select i1 %.inv926, i64 %.op1143, i64 19
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -96
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 96
  %exitcond1078.not = icmp eq i64 %polly.indvar_next424, 13
  br i1 %exitcond1078.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit435 ]
  %190 = mul nuw nsw i64 %polly.indvar429, 20
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next430, 50
  br i1 %exitcond1077.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit442 ], [ %indvars.iv1064, %polly.loop_header426 ]
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit442 ], [ %indvars.iv1059, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %191 = shl i64 %polly.indvar436, 6
  %192 = add i64 %179, %191
  %smax1315 = call i64 @llvm.smax.i64(i64 %192, i64 0)
  %193 = mul i64 %polly.indvar436, -64
  %194 = add i64 %180, %193
  %195 = add i64 %smax1315, %194
  %196 = shl i64 %polly.indvar436, 9
  %197 = shl i64 %polly.indvar436, 6
  %198 = add i64 %182, %197
  %smax1299 = call i64 @llvm.smax.i64(i64 %198, i64 0)
  %199 = add nuw i64 %181, %smax1299
  %200 = mul i64 %199, 9600
  %201 = add i64 %196, %200
  %202 = or i64 %196, 8
  %203 = add i64 %202, %200
  %204 = mul i64 %polly.indvar436, -64
  %205 = add i64 %181, %204
  %206 = add i64 %smax1299, %205
  %207 = shl nsw i64 %polly.indvar436, 6
  %208 = add nsw i64 %207, %184
  %209 = icmp sgt i64 %208, 0
  %210 = select i1 %209, i64 %208, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %210, %187
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1063 = call i64 @llvm.smax.i64(i64 %indvars.iv1061, i64 0)
  %211 = add i64 %smax1063, %indvars.iv1066
  %212 = sub nsw i64 %188, %207
  %213 = add nuw nsw i64 %207, 64
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw i64 %polly.indvar436, 1
  %indvars.iv.next1062 = add i64 %indvars.iv1061, 64
  %indvars.iv.next1067 = add i64 %indvars.iv1066, -64
  %exitcond1076.not = icmp eq i64 %polly.indvar_next437, %189
  br i1 %exitcond1076.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1300 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1301, %polly.loop_exit478 ]
  %indvars.iv1068 = phi i64 [ %211, %polly.loop_header440.preheader ], [ %indvars.iv.next1069, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %210, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %214 = add i64 %195, %indvar1300
  %smin1316 = call i64 @llvm.smin.i64(i64 %214, i64 63)
  %215 = add nsw i64 %smin1316, 1
  %216 = mul i64 %indvar1300, 9600
  %217 = add i64 %201, %216
  %scevgep1302 = getelementptr i8, i8* %call, i64 %217
  %218 = add i64 %203, %216
  %scevgep1303 = getelementptr i8, i8* %call, i64 %218
  %219 = add i64 %206, %indvar1300
  %smin1304 = call i64 @llvm.smin.i64(i64 %219, i64 63)
  %220 = shl i64 %smin1304, 3
  %scevgep1305 = getelementptr i8, i8* %scevgep1303, i64 %220
  %221 = add i64 %220, 8
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 63)
  %222 = add nsw i64 %polly.indvar444, %212
  %polly.loop_guard4571144 = icmp sgt i64 %222, -1
  %223 = add nuw nsw i64 %polly.indvar444, %188
  %.not927 = icmp ult i64 %223, %213
  %polly.access.mul.call1470 = mul nsw i64 %223, 1000
  %224 = add nuw i64 %polly.access.mul.call1470, %190
  br i1 %polly.loop_guard4571144, label %polly.loop_header447.us, label %polly.loop_header440.split

polly.loop_header447.us:                          ; preds = %polly.loop_header440, %polly.merge466.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.merge466.us ], [ 0, %polly.loop_header440 ]
  %225 = add nuw nsw i64 %polly.indvar450.us, %190
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %226 = add nuw nsw i64 %polly.indvar458.us, %207
  %polly.access.mul.call1462.us = mul nsw i64 %226, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %225, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar458.us, %smin1073
  br i1 %exitcond1071.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.add.call1471.us = add i64 %224, %polly.indvar450.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %222
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next451.us, 20
  br i1 %exitcond1072.not, label %polly.loop_header476.preheader, label %polly.loop_header447.us

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not927, label %polly.merge466.us, label %polly.then467.us

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not927, label %polly.loop_exit478, label %polly.loop_header447.preheader

polly.loop_header447.preheader:                   ; preds = %polly.loop_header440.split
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %224
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %222
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.access.add.call1471.1 = or i64 %224, 1
  %polly.access.call1472.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.1
  %polly.access.call1472.load.1 = load double, double* %polly.access.call1472.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.1 = add nsw i64 %222, 1200
  %polly.access.Packed_MemRef_call1303475.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.1
  store double %polly.access.call1472.load.1, double* %polly.access.Packed_MemRef_call1303475.1, align 8
  %polly.access.add.call1471.2 = or i64 %224, 2
  %polly.access.call1472.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.2
  %polly.access.call1472.load.2 = load double, double* %polly.access.call1472.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.2 = add nsw i64 %222, 2400
  %polly.access.Packed_MemRef_call1303475.2 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.2
  store double %polly.access.call1472.load.2, double* %polly.access.Packed_MemRef_call1303475.2, align 8
  %polly.access.add.call1471.3 = or i64 %224, 3
  %polly.access.call1472.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.3
  %polly.access.call1472.load.3 = load double, double* %polly.access.call1472.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.3 = add nsw i64 %222, 3600
  %polly.access.Packed_MemRef_call1303475.3 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.3
  store double %polly.access.call1472.load.3, double* %polly.access.Packed_MemRef_call1303475.3, align 8
  %polly.access.add.call1471.4 = add i64 %224, 4
  %polly.access.call1472.4 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.4
  %polly.access.call1472.load.4 = load double, double* %polly.access.call1472.4, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.4 = add nsw i64 %222, 4800
  %polly.access.Packed_MemRef_call1303475.4 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.4
  store double %polly.access.call1472.load.4, double* %polly.access.Packed_MemRef_call1303475.4, align 8
  %polly.access.add.call1471.5 = add i64 %224, 5
  %polly.access.call1472.5 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.5
  %polly.access.call1472.load.5 = load double, double* %polly.access.call1472.5, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.5 = add nsw i64 %222, 6000
  %polly.access.Packed_MemRef_call1303475.5 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.5
  store double %polly.access.call1472.load.5, double* %polly.access.Packed_MemRef_call1303475.5, align 8
  %polly.access.add.call1471.6 = add i64 %224, 6
  %polly.access.call1472.6 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.6
  %polly.access.call1472.load.6 = load double, double* %polly.access.call1472.6, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.6 = add nsw i64 %222, 7200
  %polly.access.Packed_MemRef_call1303475.6 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.6
  store double %polly.access.call1472.load.6, double* %polly.access.Packed_MemRef_call1303475.6, align 8
  %polly.access.add.call1471.7 = add i64 %224, 7
  %polly.access.call1472.7 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.7
  %polly.access.call1472.load.7 = load double, double* %polly.access.call1472.7, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.7 = add nsw i64 %222, 8400
  %polly.access.Packed_MemRef_call1303475.7 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.7
  store double %polly.access.call1472.load.7, double* %polly.access.Packed_MemRef_call1303475.7, align 8
  %polly.access.add.call1471.8 = add i64 %224, 8
  %polly.access.call1472.8 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.8
  %polly.access.call1472.load.8 = load double, double* %polly.access.call1472.8, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.8 = add nsw i64 %222, 9600
  %polly.access.Packed_MemRef_call1303475.8 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.8
  store double %polly.access.call1472.load.8, double* %polly.access.Packed_MemRef_call1303475.8, align 8
  %polly.access.add.call1471.9 = add i64 %224, 9
  %polly.access.call1472.9 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.9
  %polly.access.call1472.load.9 = load double, double* %polly.access.call1472.9, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.9 = add nsw i64 %222, 10800
  %polly.access.Packed_MemRef_call1303475.9 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.9
  store double %polly.access.call1472.load.9, double* %polly.access.Packed_MemRef_call1303475.9, align 8
  %polly.access.add.call1471.10 = add i64 %224, 10
  %polly.access.call1472.10 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.10
  %polly.access.call1472.load.10 = load double, double* %polly.access.call1472.10, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.10 = add nsw i64 %222, 12000
  %polly.access.Packed_MemRef_call1303475.10 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.10
  store double %polly.access.call1472.load.10, double* %polly.access.Packed_MemRef_call1303475.10, align 8
  %polly.access.add.call1471.11 = add i64 %224, 11
  %polly.access.call1472.11 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.11
  %polly.access.call1472.load.11 = load double, double* %polly.access.call1472.11, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.11 = add nsw i64 %222, 13200
  %polly.access.Packed_MemRef_call1303475.11 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.11
  store double %polly.access.call1472.load.11, double* %polly.access.Packed_MemRef_call1303475.11, align 8
  %polly.access.add.call1471.12 = add i64 %224, 12
  %polly.access.call1472.12 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.12
  %polly.access.call1472.load.12 = load double, double* %polly.access.call1472.12, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.12 = add nsw i64 %222, 14400
  %polly.access.Packed_MemRef_call1303475.12 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.12
  store double %polly.access.call1472.load.12, double* %polly.access.Packed_MemRef_call1303475.12, align 8
  %polly.access.add.call1471.13 = add i64 %224, 13
  %polly.access.call1472.13 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.13
  %polly.access.call1472.load.13 = load double, double* %polly.access.call1472.13, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.13 = add nsw i64 %222, 15600
  %polly.access.Packed_MemRef_call1303475.13 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.13
  store double %polly.access.call1472.load.13, double* %polly.access.Packed_MemRef_call1303475.13, align 8
  %polly.access.add.call1471.14 = add i64 %224, 14
  %polly.access.call1472.14 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.14
  %polly.access.call1472.load.14 = load double, double* %polly.access.call1472.14, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.14 = add nsw i64 %222, 16800
  %polly.access.Packed_MemRef_call1303475.14 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.14
  store double %polly.access.call1472.load.14, double* %polly.access.Packed_MemRef_call1303475.14, align 8
  %polly.access.add.call1471.15 = add i64 %224, 15
  %polly.access.call1472.15 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.15
  %polly.access.call1472.load.15 = load double, double* %polly.access.call1472.15, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.15 = add nsw i64 %222, 18000
  %polly.access.Packed_MemRef_call1303475.15 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.15
  store double %polly.access.call1472.load.15, double* %polly.access.Packed_MemRef_call1303475.15, align 8
  %polly.access.add.call1471.16 = add i64 %224, 16
  %polly.access.call1472.16 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.16
  %polly.access.call1472.load.16 = load double, double* %polly.access.call1472.16, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.16 = add nsw i64 %222, 19200
  %polly.access.Packed_MemRef_call1303475.16 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.16
  store double %polly.access.call1472.load.16, double* %polly.access.Packed_MemRef_call1303475.16, align 8
  %polly.access.add.call1471.17 = add i64 %224, 17
  %polly.access.call1472.17 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.17
  %polly.access.call1472.load.17 = load double, double* %polly.access.call1472.17, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.17 = add nsw i64 %222, 20400
  %polly.access.Packed_MemRef_call1303475.17 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.17
  store double %polly.access.call1472.load.17, double* %polly.access.Packed_MemRef_call1303475.17, align 8
  %polly.access.add.call1471.18 = add i64 %224, 18
  %polly.access.call1472.18 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.18
  %polly.access.call1472.load.18 = load double, double* %polly.access.call1472.18, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.18 = add nsw i64 %222, 21600
  %polly.access.Packed_MemRef_call1303475.18 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.18
  store double %polly.access.call1472.load.18, double* %polly.access.Packed_MemRef_call1303475.18, align 8
  %polly.access.add.call1471.19 = add i64 %224, 19
  %polly.access.call1472.19 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.19
  %polly.access.call1472.load.19 = load double, double* %polly.access.call1472.19, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1303474.19 = add nsw i64 %222, 22800
  %polly.access.Packed_MemRef_call1303475.19 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.19
  store double %polly.access.call1472.load.19, double* %polly.access.Packed_MemRef_call1303475.19, align 8
  br label %polly.loop_exit478

polly.loop_exit478:                               ; preds = %polly.loop_exit485.loopexit.us, %polly.loop_header440.split, %polly.loop_header447.preheader, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %187
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header476.preheader:                   ; preds = %polly.merge466.us
  %227 = mul i64 %223, 9600
  br i1 %polly.loop_guard4571144, label %polly.loop_header476.us, label %polly.loop_exit478

polly.loop_header476.us:                          ; preds = %polly.loop_header476.preheader, %polly.loop_exit485.loopexit.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_exit485.loopexit.us ], [ 0, %polly.loop_header476.preheader ]
  %228 = mul nuw nsw i64 %polly.indvar479.us, 9600
  %polly.access.mul.Packed_MemRef_call1303490.us = mul nuw nsw i64 %polly.indvar479.us, 1200
  %229 = add nuw nsw i64 %polly.indvar479.us, %190
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nuw nsw i64 %229, 1200
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %223
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.add.Packed_MemRef_call1303503.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303490.us, %222
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1317 = icmp ult i64 %215, 4
  br i1 %min.iters.check1317, label %polly.loop_header483.us.preheader, label %vector.memcheck1298

vector.memcheck1298:                              ; preds = %polly.loop_header476.us
  %230 = add i64 %221, %228
  %scevgep1307 = getelementptr i8, i8* %malloccall302, i64 %230
  %scevgep1306 = getelementptr i8, i8* %malloccall302, i64 %228
  %bound01308 = icmp ult i8* %scevgep1302, %scevgep1307
  %bound11309 = icmp ult i8* %scevgep1306, %scevgep1305
  %found.conflict1310 = and i1 %bound01308, %bound11309
  br i1 %found.conflict1310, label %polly.loop_header483.us.preheader, label %vector.ph1318

vector.ph1318:                                    ; preds = %vector.memcheck1298
  %n.vec1320 = and i64 %215, -4
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1329 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1330 = shufflevector <4 x double> %broadcast.splatinsert1329, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1318
  %index1321 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1322, %vector.body1314 ]
  %231 = add nuw nsw i64 %index1321, %207
  %232 = add nuw nsw i64 %index1321, %polly.access.mul.Packed_MemRef_call1303490.us
  %233 = getelementptr double, double* %Packed_MemRef_call1303, i64 %232
  %234 = bitcast double* %233 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !96
  %235 = fmul fast <4 x double> %broadcast.splat1327, %wide.load1325
  %236 = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call2305494.us
  %237 = getelementptr double, double* %Packed_MemRef_call2305, i64 %236
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1330, %wide.load1328
  %240 = shl i64 %231, 3
  %241 = add i64 %240, %227
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %243, align 8, !alias.scope !99, !noalias !101
  %244 = fadd fast <4 x double> %239, %235
  %245 = fmul fast <4 x double> %244, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %246 = fadd fast <4 x double> %245, %wide.load1331
  %247 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %246, <4 x double>* %247, align 8, !alias.scope !99, !noalias !101
  %index.next1322 = add i64 %index1321, 4
  %248 = icmp eq i64 %index.next1322, %n.vec1320
  br i1 %248, label %middle.block1312, label %vector.body1314, !llvm.loop !102

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1324 = icmp eq i64 %215, %n.vec1320
  br i1 %cmp.n1324, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %vector.memcheck1298, %polly.loop_header476.us, %middle.block1312
  %polly.indvar487.us.ph = phi i64 [ 0, %vector.memcheck1298 ], [ 0, %polly.loop_header476.us ], [ %n.vec1320, %middle.block1312 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %249 = add nuw nsw i64 %polly.indvar487.us, %207
  %polly.access.add.Packed_MemRef_call1303491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %249, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %250 = shl i64 %249, 3
  %251 = add i64 %250, %227
  %scevgep506.us = getelementptr i8, i8* %call, i64 %251
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar487.us, %smin1073
  br i1 %exitcond1074.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !103

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1312
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next480.us, 20
  br i1 %exitcond1075.not, label %polly.loop_exit478, label %polly.loop_header476.us

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %252 = add i64 %indvar, 1
  %253 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %253
  %min.iters.check1229 = icmp ult i64 %252, 4
  br i1 %min.iters.check1229, label %polly.loop_header605.preheader, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header599
  %n.vec1232 = and i64 %252, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1228 ]
  %254 = shl nuw nsw i64 %index1233, 3
  %255 = getelementptr i8, i8* %scevgep611, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1237 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !104, !noalias !106
  %257 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %258 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !104, !noalias !106
  %index.next1234 = add i64 %index1233, 4
  %259 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %259, label %middle.block1226, label %vector.body1228, !llvm.loop !111

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %252, %n.vec1232
  br i1 %cmp.n1236, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1226
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1232, %middle.block1226 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1226
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1107.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %260 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %260
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !104, !noalias !106
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1106.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !112

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1105.not, label %polly.loop_header631, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_header621, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_header621 ]
  %polly.access.mul.call2628 = mul nuw nsw i64 %polly.indvar624, 1000
  %polly.access.add.call2629 = add nuw nsw i64 %polly.access.mul.call2628, %polly.indvar618
  %polly.access.call2630 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2629
  %polly.access.call2630.load = load double, double* %polly.access.call2630, align 8, !alias.scope !108, !noalias !113
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar624, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2630.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1104.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_exit623, %polly.loop_exit639
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %261 = mul nsw i64 %polly.indvar634, -96
  %262 = mul nuw nsw i64 %polly.indvar634, 96
  %263 = mul nuw nsw i64 %polly.indvar634, 96
  %264 = mul nsw i64 %polly.indvar634, -96
  %pexp.p_div_q643 = lshr i64 %polly.indvar634, 1
  %265 = add nuw nsw i64 %pexp.p_div_q643, %polly.indvar634
  %.inv928 = icmp ult i64 %265, 18
  %266 = mul nsw i64 %polly.indvar634, -96
  %267 = icmp slt i64 %266, -1104
  %268 = select i1 %267, i64 %266, i64 -1104
  %269 = add nsw i64 %268, 1199
  %270 = mul nuw nsw i64 %polly.indvar634, 96
  %.op1145 = add nuw i64 %265, 2
  %271 = select i1 %.inv928, i64 %.op1145, i64 19
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -96
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 96
  %exitcond1103.not = icmp eq i64 %polly.indvar_next635, 13
  br i1 %exitcond1103.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %polly.indvar640 = phi i64 [ 0, %polly.loop_header631 ], [ %polly.indvar_next641, %polly.loop_exit646 ]
  %272 = mul nuw nsw i64 %polly.indvar640, 20
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next641, 50
  br i1 %exitcond1102.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit653 ], [ %indvars.iv1089, %polly.loop_header637 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit653 ], [ %indvars.iv1084, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %273 = shl i64 %polly.indvar647, 6
  %274 = add i64 %261, %273
  %smax1255 = call i64 @llvm.smax.i64(i64 %274, i64 0)
  %275 = mul i64 %polly.indvar647, -64
  %276 = add i64 %262, %275
  %277 = add i64 %smax1255, %276
  %278 = shl i64 %polly.indvar647, 9
  %279 = shl i64 %polly.indvar647, 6
  %280 = add i64 %264, %279
  %smax1239 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = add nuw i64 %263, %smax1239
  %282 = mul i64 %281, 9600
  %283 = add i64 %278, %282
  %284 = or i64 %278, 8
  %285 = add i64 %284, %282
  %286 = mul i64 %polly.indvar647, -64
  %287 = add i64 %263, %286
  %288 = add i64 %smax1239, %287
  %289 = shl nsw i64 %polly.indvar647, 6
  %290 = add nsw i64 %289, %266
  %291 = icmp sgt i64 %290, 0
  %292 = select i1 %291, i64 %290, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %292, %269
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1088 = call i64 @llvm.smax.i64(i64 %indvars.iv1086, i64 0)
  %293 = add i64 %smax1088, %indvars.iv1091
  %294 = sub nsw i64 %270, %289
  %295 = add nuw nsw i64 %289, 64
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw i64 %polly.indvar647, 1
  %indvars.iv.next1087 = add i64 %indvars.iv1086, 64
  %indvars.iv.next1092 = add i64 %indvars.iv1091, -64
  %exitcond1101.not = icmp eq i64 %polly.indvar_next648, %271
  br i1 %exitcond1101.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1240 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1241, %polly.loop_exit689 ]
  %indvars.iv1093 = phi i64 [ %293, %polly.loop_header651.preheader ], [ %indvars.iv.next1094, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %292, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %296 = add i64 %277, %indvar1240
  %smin1256 = call i64 @llvm.smin.i64(i64 %296, i64 63)
  %297 = add nsw i64 %smin1256, 1
  %298 = mul i64 %indvar1240, 9600
  %299 = add i64 %283, %298
  %scevgep1242 = getelementptr i8, i8* %call, i64 %299
  %300 = add i64 %285, %298
  %scevgep1243 = getelementptr i8, i8* %call, i64 %300
  %301 = add i64 %288, %indvar1240
  %smin1244 = call i64 @llvm.smin.i64(i64 %301, i64 63)
  %302 = shl i64 %smin1244, 3
  %scevgep1245 = getelementptr i8, i8* %scevgep1243, i64 %302
  %303 = add i64 %302, 8
  %smin1098 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 63)
  %304 = add nsw i64 %polly.indvar655, %294
  %polly.loop_guard6681146 = icmp sgt i64 %304, -1
  %305 = add nuw nsw i64 %polly.indvar655, %270
  %.not929 = icmp ult i64 %305, %295
  %polly.access.mul.call1681 = mul nsw i64 %305, 1000
  %306 = add nuw i64 %polly.access.mul.call1681, %272
  br i1 %polly.loop_guard6681146, label %polly.loop_header658.us, label %polly.loop_header651.split

polly.loop_header658.us:                          ; preds = %polly.loop_header651, %polly.merge677.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.merge677.us ], [ 0, %polly.loop_header651 ]
  %307 = add nuw nsw i64 %polly.indvar661.us, %272
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar661.us, 1200
  br label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header658.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header658.us ]
  %308 = add nuw nsw i64 %polly.indvar669.us, %289
  %polly.access.mul.call1673.us = mul nsw i64 %308, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %307, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar669.us, %smin1098
  br i1 %exitcond1096.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.add.call1682.us = add i64 %306, %polly.indvar661.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514.us, %304
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.merge677.us

polly.merge677.us:                                ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next662.us, 20
  br i1 %exitcond1097.not, label %polly.loop_header687.preheader, label %polly.loop_header658.us

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not929, label %polly.merge677.us, label %polly.then678.us

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not929, label %polly.loop_exit689, label %polly.loop_header658.preheader

polly.loop_header658.preheader:                   ; preds = %polly.loop_header651.split
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %306
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !107, !noalias !114
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %304
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.access.add.call1682.1 = or i64 %306, 1
  %polly.access.call1683.1 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.1
  %polly.access.call1683.load.1 = load double, double* %polly.access.call1683.1, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.1 = add nsw i64 %304, 1200
  %polly.access.Packed_MemRef_call1514686.1 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.1
  store double %polly.access.call1683.load.1, double* %polly.access.Packed_MemRef_call1514686.1, align 8
  %polly.access.add.call1682.2 = or i64 %306, 2
  %polly.access.call1683.2 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.2
  %polly.access.call1683.load.2 = load double, double* %polly.access.call1683.2, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.2 = add nsw i64 %304, 2400
  %polly.access.Packed_MemRef_call1514686.2 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.2
  store double %polly.access.call1683.load.2, double* %polly.access.Packed_MemRef_call1514686.2, align 8
  %polly.access.add.call1682.3 = or i64 %306, 3
  %polly.access.call1683.3 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.3
  %polly.access.call1683.load.3 = load double, double* %polly.access.call1683.3, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.3 = add nsw i64 %304, 3600
  %polly.access.Packed_MemRef_call1514686.3 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.3
  store double %polly.access.call1683.load.3, double* %polly.access.Packed_MemRef_call1514686.3, align 8
  %polly.access.add.call1682.4 = add i64 %306, 4
  %polly.access.call1683.4 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.4
  %polly.access.call1683.load.4 = load double, double* %polly.access.call1683.4, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.4 = add nsw i64 %304, 4800
  %polly.access.Packed_MemRef_call1514686.4 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.4
  store double %polly.access.call1683.load.4, double* %polly.access.Packed_MemRef_call1514686.4, align 8
  %polly.access.add.call1682.5 = add i64 %306, 5
  %polly.access.call1683.5 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.5
  %polly.access.call1683.load.5 = load double, double* %polly.access.call1683.5, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.5 = add nsw i64 %304, 6000
  %polly.access.Packed_MemRef_call1514686.5 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.5
  store double %polly.access.call1683.load.5, double* %polly.access.Packed_MemRef_call1514686.5, align 8
  %polly.access.add.call1682.6 = add i64 %306, 6
  %polly.access.call1683.6 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.6
  %polly.access.call1683.load.6 = load double, double* %polly.access.call1683.6, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.6 = add nsw i64 %304, 7200
  %polly.access.Packed_MemRef_call1514686.6 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.6
  store double %polly.access.call1683.load.6, double* %polly.access.Packed_MemRef_call1514686.6, align 8
  %polly.access.add.call1682.7 = add i64 %306, 7
  %polly.access.call1683.7 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.7
  %polly.access.call1683.load.7 = load double, double* %polly.access.call1683.7, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.7 = add nsw i64 %304, 8400
  %polly.access.Packed_MemRef_call1514686.7 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.7
  store double %polly.access.call1683.load.7, double* %polly.access.Packed_MemRef_call1514686.7, align 8
  %polly.access.add.call1682.8 = add i64 %306, 8
  %polly.access.call1683.8 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.8
  %polly.access.call1683.load.8 = load double, double* %polly.access.call1683.8, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.8 = add nsw i64 %304, 9600
  %polly.access.Packed_MemRef_call1514686.8 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.8
  store double %polly.access.call1683.load.8, double* %polly.access.Packed_MemRef_call1514686.8, align 8
  %polly.access.add.call1682.9 = add i64 %306, 9
  %polly.access.call1683.9 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.9
  %polly.access.call1683.load.9 = load double, double* %polly.access.call1683.9, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.9 = add nsw i64 %304, 10800
  %polly.access.Packed_MemRef_call1514686.9 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.9
  store double %polly.access.call1683.load.9, double* %polly.access.Packed_MemRef_call1514686.9, align 8
  %polly.access.add.call1682.10 = add i64 %306, 10
  %polly.access.call1683.10 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.10
  %polly.access.call1683.load.10 = load double, double* %polly.access.call1683.10, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.10 = add nsw i64 %304, 12000
  %polly.access.Packed_MemRef_call1514686.10 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.10
  store double %polly.access.call1683.load.10, double* %polly.access.Packed_MemRef_call1514686.10, align 8
  %polly.access.add.call1682.11 = add i64 %306, 11
  %polly.access.call1683.11 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.11
  %polly.access.call1683.load.11 = load double, double* %polly.access.call1683.11, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.11 = add nsw i64 %304, 13200
  %polly.access.Packed_MemRef_call1514686.11 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.11
  store double %polly.access.call1683.load.11, double* %polly.access.Packed_MemRef_call1514686.11, align 8
  %polly.access.add.call1682.12 = add i64 %306, 12
  %polly.access.call1683.12 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.12
  %polly.access.call1683.load.12 = load double, double* %polly.access.call1683.12, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.12 = add nsw i64 %304, 14400
  %polly.access.Packed_MemRef_call1514686.12 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.12
  store double %polly.access.call1683.load.12, double* %polly.access.Packed_MemRef_call1514686.12, align 8
  %polly.access.add.call1682.13 = add i64 %306, 13
  %polly.access.call1683.13 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.13
  %polly.access.call1683.load.13 = load double, double* %polly.access.call1683.13, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.13 = add nsw i64 %304, 15600
  %polly.access.Packed_MemRef_call1514686.13 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.13
  store double %polly.access.call1683.load.13, double* %polly.access.Packed_MemRef_call1514686.13, align 8
  %polly.access.add.call1682.14 = add i64 %306, 14
  %polly.access.call1683.14 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.14
  %polly.access.call1683.load.14 = load double, double* %polly.access.call1683.14, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.14 = add nsw i64 %304, 16800
  %polly.access.Packed_MemRef_call1514686.14 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.14
  store double %polly.access.call1683.load.14, double* %polly.access.Packed_MemRef_call1514686.14, align 8
  %polly.access.add.call1682.15 = add i64 %306, 15
  %polly.access.call1683.15 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.15
  %polly.access.call1683.load.15 = load double, double* %polly.access.call1683.15, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.15 = add nsw i64 %304, 18000
  %polly.access.Packed_MemRef_call1514686.15 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.15
  store double %polly.access.call1683.load.15, double* %polly.access.Packed_MemRef_call1514686.15, align 8
  %polly.access.add.call1682.16 = add i64 %306, 16
  %polly.access.call1683.16 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.16
  %polly.access.call1683.load.16 = load double, double* %polly.access.call1683.16, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.16 = add nsw i64 %304, 19200
  %polly.access.Packed_MemRef_call1514686.16 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.16
  store double %polly.access.call1683.load.16, double* %polly.access.Packed_MemRef_call1514686.16, align 8
  %polly.access.add.call1682.17 = add i64 %306, 17
  %polly.access.call1683.17 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.17
  %polly.access.call1683.load.17 = load double, double* %polly.access.call1683.17, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.17 = add nsw i64 %304, 20400
  %polly.access.Packed_MemRef_call1514686.17 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.17
  store double %polly.access.call1683.load.17, double* %polly.access.Packed_MemRef_call1514686.17, align 8
  %polly.access.add.call1682.18 = add i64 %306, 18
  %polly.access.call1683.18 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.18
  %polly.access.call1683.load.18 = load double, double* %polly.access.call1683.18, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.18 = add nsw i64 %304, 21600
  %polly.access.Packed_MemRef_call1514686.18 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.18
  store double %polly.access.call1683.load.18, double* %polly.access.Packed_MemRef_call1514686.18, align 8
  %polly.access.add.call1682.19 = add i64 %306, 19
  %polly.access.call1683.19 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.19
  %polly.access.call1683.load.19 = load double, double* %polly.access.call1683.19, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1514685.19 = add nsw i64 %304, 22800
  %polly.access.Packed_MemRef_call1514686.19 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.19
  store double %polly.access.call1683.load.19, double* %polly.access.Packed_MemRef_call1514686.19, align 8
  br label %polly.loop_exit689

polly.loop_exit689:                               ; preds = %polly.loop_exit696.loopexit.us, %polly.loop_header651.split, %polly.loop_header658.preheader, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %269
  %indvars.iv.next1094 = add i64 %indvars.iv1093, 1
  %indvar.next1241 = add i64 %indvar1240, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header687.preheader:                   ; preds = %polly.merge677.us
  %309 = mul i64 %305, 9600
  br i1 %polly.loop_guard6681146, label %polly.loop_header687.us, label %polly.loop_exit689

polly.loop_header687.us:                          ; preds = %polly.loop_header687.preheader, %polly.loop_exit696.loopexit.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_exit696.loopexit.us ], [ 0, %polly.loop_header687.preheader ]
  %310 = mul nuw nsw i64 %polly.indvar690.us, 9600
  %polly.access.mul.Packed_MemRef_call1514701.us = mul nuw nsw i64 %polly.indvar690.us, 1200
  %311 = add nuw nsw i64 %polly.indvar690.us, %272
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nuw nsw i64 %311, 1200
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %305
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.add.Packed_MemRef_call1514714.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514701.us, %304
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1257 = icmp ult i64 %297, 4
  br i1 %min.iters.check1257, label %polly.loop_header694.us.preheader, label %vector.memcheck1238

vector.memcheck1238:                              ; preds = %polly.loop_header687.us
  %312 = add i64 %303, %310
  %scevgep1247 = getelementptr i8, i8* %malloccall513, i64 %312
  %scevgep1246 = getelementptr i8, i8* %malloccall513, i64 %310
  %bound01248 = icmp ult i8* %scevgep1242, %scevgep1247
  %bound11249 = icmp ult i8* %scevgep1246, %scevgep1245
  %found.conflict1250 = and i1 %bound01248, %bound11249
  br i1 %found.conflict1250, label %polly.loop_header694.us.preheader, label %vector.ph1258

vector.ph1258:                                    ; preds = %vector.memcheck1238
  %n.vec1260 = and i64 %297, -4
  %broadcast.splatinsert1266 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1267 = shufflevector <4 x double> %broadcast.splatinsert1266, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1269 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1270 = shufflevector <4 x double> %broadcast.splatinsert1269, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1254 ]
  %313 = add nuw nsw i64 %index1261, %289
  %314 = add nuw nsw i64 %index1261, %polly.access.mul.Packed_MemRef_call1514701.us
  %315 = getelementptr double, double* %Packed_MemRef_call1514, i64 %314
  %316 = bitcast double* %315 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %316, align 8, !alias.scope !115
  %317 = fmul fast <4 x double> %broadcast.splat1267, %wide.load1265
  %318 = add nuw nsw i64 %313, %polly.access.mul.Packed_MemRef_call2516705.us
  %319 = getelementptr double, double* %Packed_MemRef_call2516, i64 %318
  %320 = bitcast double* %319 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %320, align 8
  %321 = fmul fast <4 x double> %broadcast.splat1270, %wide.load1268
  %322 = shl i64 %313, 3
  %323 = add i64 %322, %309
  %324 = getelementptr i8, i8* %call, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %325, align 8, !alias.scope !118, !noalias !120
  %326 = fadd fast <4 x double> %321, %317
  %327 = fmul fast <4 x double> %326, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %328 = fadd fast <4 x double> %327, %wide.load1271
  %329 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %328, <4 x double>* %329, align 8, !alias.scope !118, !noalias !120
  %index.next1262 = add i64 %index1261, 4
  %330 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %330, label %middle.block1252, label %vector.body1254, !llvm.loop !121

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1264 = icmp eq i64 %297, %n.vec1260
  br i1 %cmp.n1264, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %vector.memcheck1238, %polly.loop_header687.us, %middle.block1252
  %polly.indvar698.us.ph = phi i64 [ 0, %vector.memcheck1238 ], [ 0, %polly.loop_header687.us ], [ %n.vec1260, %middle.block1252 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %331 = add nuw nsw i64 %polly.indvar698.us, %289
  %polly.access.add.Packed_MemRef_call1514702.us = add nuw nsw i64 %polly.indvar698.us, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %331, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %309
  %scevgep717.us = getelementptr i8, i8* %call, i64 %333
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !104, !noalias !106
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar698.us, %smin1098
  br i1 %exitcond1099.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !122

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1252
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next691.us, 20
  br i1 %exitcond1100.not, label %polly.loop_exit689, label %polly.loop_header687.us

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 -1168)
  %334 = shl nsw i64 %polly.indvar849, 5
  %335 = add nsw i64 %smin1134, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1133 = add nsw i64 %indvars.iv1132, -32
  %exitcond1137.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1137.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %336 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %336, i64 -1168)
  %337 = add nsw i64 %smin, 1200
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %338 = shl nsw i64 %polly.indvar855, 5
  %339 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1136.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1136.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %340 = add nuw nsw i64 %polly.indvar861, %334
  %341 = trunc i64 %340 to i32
  %342 = mul nuw nsw i64 %340, 9600
  %min.iters.check = icmp eq i64 %337, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1168

vector.ph1168:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1175 = insertelement <4 x i64> poison, i64 %338, i32 0
  %broadcast.splat1176 = shufflevector <4 x i64> %broadcast.splatinsert1175, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1168
  %index1169 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1173 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1168 ], [ %vec.ind.next1174, %vector.body1167 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1173, %broadcast.splat1176
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1178, %344
  %346 = add <4 x i32> %345, <i32 3, i32 3, i32 3, i32 3>
  %347 = urem <4 x i32> %346, <i32 1200, i32 1200, i32 1200, i32 1200>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add nuw nsw i64 %351, %342
  %353 = getelementptr i8, i8* %call, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !123, !noalias !125
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1174 = add <4 x i64> %vec.ind1173, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1170, %337
  br i1 %355, label %polly.loop_exit866, label %vector.body1167, !llvm.loop !128

polly.loop_exit866:                               ; preds = %vector.body1167, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar861, %335
  br i1 %exitcond1135.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %356 = add nuw nsw i64 %polly.indvar867, %338
  %357 = trunc i64 %356 to i32
  %358 = mul i32 %357, %341
  %359 = add i32 %358, 3
  %360 = urem i32 %359, 1200
  %p_conv31.i = sitofp i32 %360 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %361 = shl i64 %356, 3
  %362 = add nuw nsw i64 %361, %342
  %scevgep870 = getelementptr i8, i8* %call, i64 %362
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !123, !noalias !125
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar867, %339
  br i1 %exitcond1131.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !129

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 -1168)
  %363 = shl nsw i64 %polly.indvar876, 5
  %364 = add nsw i64 %smin1124, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1127.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %365 = mul nsw i64 %polly.indvar882, -32
  %smin1182 = call i64 @llvm.smin.i64(i64 %365, i64 -968)
  %366 = add nsw i64 %smin1182, 1000
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -968)
  %367 = shl nsw i64 %polly.indvar882, 5
  %368 = add nsw i64 %smin1120, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1126.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1126.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %369 = add nuw nsw i64 %polly.indvar888, %363
  %370 = trunc i64 %369 to i32
  %371 = mul nuw nsw i64 %369, 8000
  %min.iters.check1183 = icmp eq i64 %366, 0
  br i1 %min.iters.check1183, label %polly.loop_header891, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1193 = insertelement <4 x i64> poison, i64 %367, i32 0
  %broadcast.splat1194 = shufflevector <4 x i64> %broadcast.splatinsert1193, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1181 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1184 ], [ %vec.ind.next1192, %vector.body1181 ]
  %372 = add nuw nsw <4 x i64> %vec.ind1191, %broadcast.splat1194
  %373 = trunc <4 x i64> %372 to <4 x i32>
  %374 = mul <4 x i32> %broadcast.splat1196, %373
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 1000, i32 1000, i32 1000, i32 1000>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %379 = extractelement <4 x i64> %372, i32 0
  %380 = shl i64 %379, 3
  %381 = add nuw nsw i64 %380, %371
  %382 = getelementptr i8, i8* %call2, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %378, <4 x double>* %383, align 8, !alias.scope !127, !noalias !130
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %384 = icmp eq i64 %index.next1188, %366
  br i1 %384, label %polly.loop_exit893, label %vector.body1181, !llvm.loop !131

polly.loop_exit893:                               ; preds = %vector.body1181, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar888, %364
  br i1 %exitcond1125.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %385 = add nuw nsw i64 %polly.indvar894, %367
  %386 = trunc i64 %385 to i32
  %387 = mul i32 %386, %370
  %388 = add i32 %387, 2
  %389 = urem i32 %388, 1000
  %p_conv10.i = sitofp i32 %389 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %390 = shl i64 %385, 3
  %391 = add nuw nsw i64 %390, %371
  %scevgep897 = getelementptr i8, i8* %call2, i64 %391
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !127, !noalias !130
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar894, %368
  br i1 %exitcond1121.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !132

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 -1168)
  %392 = shl nsw i64 %polly.indvar902, 5
  %393 = add nsw i64 %smin1114, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1117.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %394 = mul nsw i64 %polly.indvar908, -32
  %smin1200 = call i64 @llvm.smin.i64(i64 %394, i64 -968)
  %395 = add nsw i64 %smin1200, 1000
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -968)
  %396 = shl nsw i64 %polly.indvar908, 5
  %397 = add nsw i64 %smin1110, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1116.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1116.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %398 = add nuw nsw i64 %polly.indvar914, %392
  %399 = trunc i64 %398 to i32
  %400 = mul nuw nsw i64 %398, 8000
  %min.iters.check1201 = icmp eq i64 %395, 0
  br i1 %min.iters.check1201, label %polly.loop_header917, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1211 = insertelement <4 x i64> poison, i64 %396, i32 0
  %broadcast.splat1212 = shufflevector <4 x i64> %broadcast.splatinsert1211, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1199 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1202 ], [ %vec.ind.next1210, %vector.body1199 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1209, %broadcast.splat1212
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1214, %402
  %404 = add <4 x i32> %403, <i32 1, i32 1, i32 1, i32 1>
  %405 = urem <4 x i32> %404, <i32 1200, i32 1200, i32 1200, i32 1200>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %400
  %411 = getelementptr i8, i8* %call1, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !126, !noalias !133
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1206, %395
  br i1 %413, label %polly.loop_exit919, label %vector.body1199, !llvm.loop !134

polly.loop_exit919:                               ; preds = %vector.body1199, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar914, %393
  br i1 %exitcond1115.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %414 = add nuw nsw i64 %polly.indvar920, %396
  %415 = trunc i64 %414 to i32
  %416 = mul i32 %415, %399
  %417 = add i32 %416, 1
  %418 = urem i32 %417, 1200
  %p_conv.i = sitofp i32 %418 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %419 = shl i64 %414, 3
  %420 = add nuw nsw i64 %419, %400
  %scevgep924 = getelementptr i8, i8* %call1, i64 %420
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !126, !noalias !133
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar920, %397
  br i1 %exitcond1111.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !135
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
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 96}
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
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!65, !66, !"polly.alias.scope.MemRef_call", !81}
!81 = distinct !{!81, !79}
!82 = !{!68, !69, !70, !71, !78}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !74, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!85, !86, !"polly.alias.scope.MemRef_call", !100}
!100 = distinct !{!100, !98}
!101 = !{!88, !89, !90, !91, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108, !109, !110}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !105, !"polly.alias.scope.Packed_MemRef_call1"}
!110 = distinct !{!110, !105, !"polly.alias.scope.Packed_MemRef_call2"}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !74, !13}
!113 = !{!104, !107, !109, !110}
!114 = !{!104, !108, !109, !110}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!104, !105, !"polly.alias.scope.MemRef_call", !119}
!119 = distinct !{!119, !117}
!120 = !{!107, !108, !109, !110, !116}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !124, !"polly.alias.scope.MemRef_call"}
!124 = distinct !{!124, !"polly.alias.scope.domain"}
!125 = !{!126, !127}
!126 = distinct !{!126, !124, !"polly.alias.scope.MemRef_call1"}
!127 = distinct !{!127, !124, !"polly.alias.scope.MemRef_call2"}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !74, !13}
!130 = !{!126, !123}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !74, !13}
!133 = !{!127, !123}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !74, !13}
