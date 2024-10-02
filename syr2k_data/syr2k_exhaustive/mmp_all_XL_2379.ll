; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2379.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2379.c"
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
  %scevgep1184 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1183 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1182 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1181 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1181, %scevgep1184
  %bound1 = icmp ult i8* %scevgep1183, %scevgep1182
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
  br i1 %exitcond18.not.i, label %vector.ph1188, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1188:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1195 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1196 = shufflevector <4 x i64> %broadcast.splatinsert1195, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1188
  %index1189 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1188 ], [ %vec.ind.next1194, %vector.body1187 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1193, %broadcast.splat1196
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv7.i, i64 %index1189
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1190, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1187, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1187
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1188, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit907
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1250 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1250, label %for.body3.i46.preheader1393, label %vector.ph1251

vector.ph1251:                                    ; preds = %for.body3.i46.preheader
  %n.vec1253 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1249 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %index1254
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1255 = add i64 %index1254, 4
  %46 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %46, label %middle.block1247, label %vector.body1249, !llvm.loop !18

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1257 = icmp eq i64 %indvars.iv21.i, %n.vec1253
  br i1 %cmp.n1257, label %for.inc6.i, label %for.body3.i46.preheader1393

for.body3.i46.preheader1393:                      ; preds = %for.body3.i46.preheader, %middle.block1247
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1253, %middle.block1247 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1393, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1393 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1247, %for.cond1.preheader.i45
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
  %min.iters.check1295 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1295, label %for.body3.i60.preheader1391, label %vector.ph1296

vector.ph1296:                                    ; preds = %for.body3.i60.preheader
  %n.vec1298 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1296
  %index1299 = phi i64 [ 0, %vector.ph1296 ], [ %index.next1300, %vector.body1294 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %index1299
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1303, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1300 = add i64 %index1299, 4
  %57 = icmp eq i64 %index.next1300, %n.vec1298
  br i1 %57, label %middle.block1292, label %vector.body1294, !llvm.loop !57

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1302 = icmp eq i64 %indvars.iv21.i52, %n.vec1298
  br i1 %cmp.n1302, label %for.inc6.i63, label %for.body3.i60.preheader1391

for.body3.i60.preheader1391:                      ; preds = %for.body3.i60.preheader, %middle.block1292
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1298, %middle.block1292 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1391, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1391 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1292, %for.cond1.preheader.i54
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
  %min.iters.check1343 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1343, label %for.body3.i99.preheader1389, label %vector.ph1344

vector.ph1344:                                    ; preds = %for.body3.i99.preheader
  %n.vec1346 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1342 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %index1347
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1348 = add i64 %index1347, 4
  %68 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %68, label %middle.block1340, label %vector.body1342, !llvm.loop !59

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1350 = icmp eq i64 %indvars.iv21.i91, %n.vec1346
  br i1 %cmp.n1350, label %for.inc6.i102, label %for.body3.i99.preheader1389

for.body3.i99.preheader1389:                      ; preds = %for.body3.i99.preheader, %middle.block1340
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1346, %middle.block1340 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1389, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1389 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call872, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1340, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1355 = phi i64 [ %indvar.next1356, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1355, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1357 = icmp ult i64 %88, 4
  br i1 %min.iters.check1357, label %polly.loop_header192.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %polly.loop_header
  %n.vec1360 = and i64 %88, -4
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1354 ]
  %90 = shl nuw nsw i64 %index1361, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1362 = add i64 %index1361, 4
  %95 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %95, label %middle.block1352, label %vector.body1354, !llvm.loop !72

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1364 = icmp eq i64 %88, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1352
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1360, %middle.block1352 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1352
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %exitcond1065.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1064.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1064.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1063.not, label %polly.loop_header216, label %polly.loop_header200

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
  %exitcond1062.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1062.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit224 ], [ 6, %polly.loop_exit208 ]
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -96
  %98 = mul nuw nsw i64 %polly.indvar219, 96
  %99 = udiv i64 %indvars.iv1056, 5
  %100 = sub nsw i64 %indvars.iv1054, %99
  %smin1058 = call i64 @llvm.smin.i64(i64 %100, i64 54)
  %101 = mul nsw i64 %polly.indvar219, -96
  %102 = icmp slt i64 %101, -1104
  %103 = select i1 %102, i64 %101, i64 -1104
  %104 = add nsw i64 %103, 1199
  %105 = mul nuw nsw i64 %polly.indvar219, 96
  %106 = add nsw i64 %smin1058, 5
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -96
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 96
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 5
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next220, 13
  br i1 %exitcond1061.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -920)
  %107 = add nsw i64 %smin1052, 1000
  %108 = mul nuw nsw i64 %polly.indvar225, 80
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %exitcond1060.not = icmp eq i64 %polly.indvar_next226, 13
  br i1 %exitcond1060.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit236 ], [ %indvars.iv1040, %polly.loop_header222 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit236 ], [ %indvars.iv1036, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %109 = mul nuw nsw i64 %polly.indvar231, 20
  %110 = add i64 %97, %109
  %smax1369 = call i64 @llvm.smax.i64(i64 %110, i64 0)
  %111 = mul nsw i64 %polly.indvar231, -20
  %112 = add i64 %98, %111
  %113 = add i64 %smax1369, %112
  %114 = mul nuw nsw i64 %polly.indvar231, 20
  %115 = add nsw i64 %114, %101
  %116 = icmp sgt i64 %115, 0
  %117 = select i1 %116, i64 %115, i64 0
  %polly.loop_guard.not = icmp sgt i64 %117, %104
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1038, i64 0)
  %118 = add i64 %smax, %indvars.iv1042
  %119 = sub nsw i64 %105, %114
  %120 = add nuw nsw i64 %114, 20
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 20
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -20
  %exitcond1059.not = icmp eq i64 %polly.indvar231, %106
  br i1 %exitcond1059.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1370 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1371, %polly.loop_exit267 ]
  %indvars.iv1044 = phi i64 [ %118, %polly.loop_header234.preheader ], [ %indvars.iv.next1045, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %117, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %121 = add i64 %113, %indvar1370
  %smin1372 = call i64 @llvm.smin.i64(i64 %121, i64 19)
  %122 = add nsw i64 %smin1372, 1
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 19)
  %123 = add nsw i64 %polly.indvar237, %119
  %polly.loop_guard2501170 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar237, %105
  %.not = icmp ult i64 %124, %120
  %polly.access.mul.call1259 = mul nsw i64 %124, 1000
  %125 = add nuw i64 %polly.access.mul.call1259, %108
  br i1 %polly.loop_guard2501170, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %126 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %127 = add nuw nsw i64 %polly.indvar251.us, %114
  %polly.access.mul.call1255.us = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %126, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar251.us, %smin1050
  br i1 %exitcond1047.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %125, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %123
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next244.us, %107
  br i1 %exitcond1049.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %104
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %indvar.next1371 = add i64 %indvar1370, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %125, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 1200
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %123
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, %107
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %128 = mul i64 %124, 9600
  br i1 %polly.loop_guard2501170, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  %129 = add nuw nsw i64 %polly.indvar268.us, %108
  %polly.access.mul.Packed_MemRef_call2283.us = mul nuw nsw i64 %129, 1200
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us, %124
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %123
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1373 = icmp ult i64 %122, 4
  br i1 %min.iters.check1373, label %polly.loop_header272.us.preheader, label %vector.ph1374

vector.ph1374:                                    ; preds = %polly.loop_header265.us
  %n.vec1376 = and i64 %122, -4
  %broadcast.splatinsert1382 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1383 = shufflevector <4 x double> %broadcast.splatinsert1382, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1385 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1386 = shufflevector <4 x double> %broadcast.splatinsert1385, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1374
  %index1377 = phi i64 [ 0, %vector.ph1374 ], [ %index.next1378, %vector.body1368 ]
  %130 = add nuw nsw i64 %index1377, %114
  %131 = add nuw nsw i64 %index1377, %polly.access.mul.Packed_MemRef_call1279.us
  %132 = getelementptr double, double* %Packed_MemRef_call1, i64 %131
  %133 = bitcast double* %132 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %133, align 8
  %134 = fmul fast <4 x double> %broadcast.splat1383, %wide.load1381
  %135 = add nuw nsw i64 %130, %polly.access.mul.Packed_MemRef_call2283.us
  %136 = getelementptr double, double* %Packed_MemRef_call2, i64 %135
  %137 = bitcast double* %136 to <4 x double>*
  %wide.load1384 = load <4 x double>, <4 x double>* %137, align 8
  %138 = fmul fast <4 x double> %broadcast.splat1386, %wide.load1384
  %139 = shl i64 %130, 3
  %140 = add i64 %139, %128
  %141 = getelementptr i8, i8* %call, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !65, !noalias !67
  %143 = fadd fast <4 x double> %138, %134
  %144 = fmul fast <4 x double> %143, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %145 = fadd fast <4 x double> %144, %wide.load1387
  %146 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !65, !noalias !67
  %index.next1378 = add i64 %index1377, 4
  %147 = icmp eq i64 %index.next1378, %n.vec1376
  br i1 %147, label %middle.block1366, label %vector.body1368, !llvm.loop !77

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1380 = icmp eq i64 %122, %n.vec1376
  br i1 %cmp.n1380, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1366
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1376, %middle.block1366 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %148 = add nuw nsw i64 %polly.indvar276.us, %114
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call2283.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %149 = shl i64 %148, 3
  %150 = add i64 %149, %128
  %scevgep295.us = getelementptr i8, i8* %call, i64 %150
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar276.us, %smin1050
  br i1 %exitcond1051.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !78

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1366
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next269.us, %107
  br i1 %exitcond1053.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit428
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1307 = phi i64 [ %indvar.next1308, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %151 = add i64 %indvar1307, 1
  %152 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %152
  %min.iters.check1309 = icmp ult i64 %151, 4
  br i1 %min.iters.check1309, label %polly.loop_header394.preheader, label %vector.ph1310

vector.ph1310:                                    ; preds = %polly.loop_header388
  %n.vec1312 = and i64 %151, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1310
  %index1313 = phi i64 [ 0, %vector.ph1310 ], [ %index.next1314, %vector.body1306 ]
  %153 = shl nuw nsw i64 %index1313, 3
  %154 = getelementptr i8, i8* %scevgep400, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1317 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !79, !noalias !81
  %156 = fmul fast <4 x double> %wide.load1317, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %157 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !79, !noalias !81
  %index.next1314 = add i64 %index1313, 4
  %158 = icmp eq i64 %index.next1314, %n.vec1312
  br i1 %158, label %middle.block1304, label %vector.body1306, !llvm.loop !86

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1316 = icmp eq i64 %151, %n.vec1312
  br i1 %cmp.n1316, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1304
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1312, %middle.block1304 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1304
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1308 = add i64 %indvar1307, 1
  br i1 %exitcond1100.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %159 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %159
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1099.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !87

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 1200
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond1098.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 1000
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next414, 1200
  br i1 %exitcond1097.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit428
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit428 ], [ 6, %polly.loop_exit412 ]
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit428 ], [ 0, %polly.loop_exit412 ]
  %160 = mul nsw i64 %polly.indvar423, -96
  %161 = mul nuw nsw i64 %polly.indvar423, 96
  %162 = udiv i64 %indvars.iv1091, 5
  %163 = sub nsw i64 %indvars.iv1089, %162
  %smin1093 = call i64 @llvm.smin.i64(i64 %163, i64 54)
  %164 = mul nsw i64 %polly.indvar423, -96
  %165 = icmp slt i64 %164, -1104
  %166 = select i1 %165, i64 %164, i64 -1104
  %167 = add nsw i64 %166, 1199
  %168 = mul nuw nsw i64 %polly.indvar423, 96
  %169 = add nsw i64 %smin1093, 5
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit435
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, -96
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 96
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 5
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next424, 13
  br i1 %exitcond1096.not, label %polly.exiting301, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit435, %polly.loop_header420
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit435 ], [ 0, %polly.loop_header420 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit435 ], [ 0, %polly.loop_header420 ]
  %smin1087 = call i64 @llvm.smin.i64(i64 %indvars.iv1066, i64 -920)
  %170 = add nsw i64 %smin1087, 1000
  %171 = mul nuw nsw i64 %polly.indvar429, 80
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_exit442
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, -80
  %exitcond1095.not = icmp eq i64 %polly.indvar_next430, 13
  br i1 %exitcond1095.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header433:                             ; preds = %polly.loop_exit442, %polly.loop_header426
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit442 ], [ %indvars.iv1075, %polly.loop_header426 ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit442 ], [ %indvars.iv1070, %polly.loop_header426 ]
  %polly.indvar436 = phi i64 [ %polly.indvar_next437, %polly.loop_exit442 ], [ 0, %polly.loop_header426 ]
  %172 = mul nuw nsw i64 %polly.indvar436, 20
  %173 = add i64 %160, %172
  %smax1321 = call i64 @llvm.smax.i64(i64 %173, i64 0)
  %174 = mul nsw i64 %polly.indvar436, -20
  %175 = add i64 %161, %174
  %176 = add i64 %smax1321, %175
  %177 = mul nuw nsw i64 %polly.indvar436, 20
  %178 = add nsw i64 %177, %164
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard443.not = icmp sgt i64 %180, %167
  br i1 %polly.loop_guard443.not, label %polly.loop_exit442, label %polly.loop_header440.preheader

polly.loop_header440.preheader:                   ; preds = %polly.loop_header433
  %smax1074 = call i64 @llvm.smax.i64(i64 %indvars.iv1072, i64 0)
  %181 = add i64 %smax1074, %indvars.iv1077
  %182 = sub nsw i64 %168, %177
  %183 = add nuw nsw i64 %177, 20
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_exit478, %polly.loop_header433
  %polly.indvar_next437 = add nuw nsw i64 %polly.indvar436, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, 20
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -20
  %exitcond1094.not = icmp eq i64 %polly.indvar436, %169
  br i1 %exitcond1094.not, label %polly.loop_exit435, label %polly.loop_header433

polly.loop_header440:                             ; preds = %polly.loop_header440.preheader, %polly.loop_exit478
  %indvar1322 = phi i64 [ 0, %polly.loop_header440.preheader ], [ %indvar.next1323, %polly.loop_exit478 ]
  %indvars.iv1079 = phi i64 [ %181, %polly.loop_header440.preheader ], [ %indvars.iv.next1080, %polly.loop_exit478 ]
  %polly.indvar444 = phi i64 [ %180, %polly.loop_header440.preheader ], [ %polly.indvar_next445, %polly.loop_exit478 ]
  %184 = add i64 %176, %indvar1322
  %smin1324 = call i64 @llvm.smin.i64(i64 %184, i64 19)
  %185 = add nsw i64 %smin1324, 1
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 19)
  %186 = add nsw i64 %polly.indvar444, %182
  %polly.loop_guard4571171 = icmp sgt i64 %186, -1
  %187 = add nuw nsw i64 %polly.indvar444, %168
  %.not926 = icmp ult i64 %187, %183
  %polly.access.mul.call1470 = mul nsw i64 %187, 1000
  %188 = add nuw i64 %polly.access.mul.call1470, %171
  br i1 %polly.loop_guard4571171, label %polly.loop_header447.us, label %polly.loop_header440.split

polly.loop_header447.us:                          ; preds = %polly.loop_header440, %polly.merge466.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.merge466.us ], [ 0, %polly.loop_header440 ]
  %189 = add nuw nsw i64 %polly.indvar450.us, %171
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %190 = add nuw nsw i64 %polly.indvar458.us, %177
  %polly.access.mul.call1462.us = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %189, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar458.us, %smin1085
  br i1 %exitcond1082.not, label %polly.cond465.loopexit.us, label %polly.loop_header454.us

polly.then467.us:                                 ; preds = %polly.cond465.loopexit.us
  %polly.access.add.call1471.us = add nuw nsw i64 %188, %polly.indvar450.us
  %polly.access.call1472.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471.us
  %polly.access.call1472.load.us = load double, double* %polly.access.call1472.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1303474.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %186
  %polly.access.Packed_MemRef_call1303475.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474.us
  store double %polly.access.call1472.load.us, double* %polly.access.Packed_MemRef_call1303475.us, align 8
  br label %polly.merge466.us

polly.merge466.us:                                ; preds = %polly.then467.us, %polly.cond465.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next451.us, %170
  br i1 %exitcond1084.not, label %polly.loop_header476.preheader, label %polly.loop_header447.us

polly.cond465.loopexit.us:                        ; preds = %polly.loop_header454.us
  br i1 %.not926, label %polly.merge466.us, label %polly.then467.us

polly.loop_header440.split:                       ; preds = %polly.loop_header440
  br i1 %.not926, label %polly.loop_exit478, label %polly.loop_header447

polly.loop_exit478:                               ; preds = %polly.loop_exit485.loopexit.us, %polly.loop_header440.split, %polly.loop_header476.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446.not.not = icmp ult i64 %polly.indvar444, %167
  %indvars.iv.next1080 = add i64 %indvars.iv1079, 1
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %polly.loop_cond446.not.not, label %polly.loop_header440, label %polly.loop_exit442

polly.loop_header447:                             ; preds = %polly.loop_header440.split, %polly.loop_header447
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_header447 ], [ 0, %polly.loop_header440.split ]
  %polly.access.add.call1471 = add nuw nsw i64 %188, %polly.indvar450
  %polly.access.call1472 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1471
  %polly.access.call1472.load = load double, double* %polly.access.call1472, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1303473 = mul nuw nsw i64 %polly.indvar450, 1200
  %polly.access.add.Packed_MemRef_call1303474 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303473, %186
  %polly.access.Packed_MemRef_call1303475 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303474
  store double %polly.access.call1472.load, double* %polly.access.Packed_MemRef_call1303475, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next451, %170
  br i1 %exitcond1069.not, label %polly.loop_header476.preheader, label %polly.loop_header447

polly.loop_header476.preheader:                   ; preds = %polly.loop_header447, %polly.merge466.us
  %191 = mul i64 %187, 9600
  br i1 %polly.loop_guard4571171, label %polly.loop_header476.us, label %polly.loop_exit478

polly.loop_header476.us:                          ; preds = %polly.loop_header476.preheader, %polly.loop_exit485.loopexit.us
  %polly.indvar479.us = phi i64 [ %polly.indvar_next480.us, %polly.loop_exit485.loopexit.us ], [ 0, %polly.loop_header476.preheader ]
  %polly.access.mul.Packed_MemRef_call1303490.us = mul nuw nsw i64 %polly.indvar479.us, 1200
  %192 = add nuw nsw i64 %polly.indvar479.us, %171
  %polly.access.mul.Packed_MemRef_call2305494.us = mul nuw nsw i64 %192, 1200
  %polly.access.add.Packed_MemRef_call2305495.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305494.us, %187
  %polly.access.Packed_MemRef_call2305496.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2305496.us, align 8
  %polly.access.add.Packed_MemRef_call1303503.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303490.us, %186
  %polly.access.Packed_MemRef_call1303504.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1303504.us, align 8
  %min.iters.check1325 = icmp ult i64 %185, 4
  br i1 %min.iters.check1325, label %polly.loop_header483.us.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header476.us
  %n.vec1328 = and i64 %185, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1320

vector.body1320:                                  ; preds = %vector.body1320, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1320 ]
  %193 = add nuw nsw i64 %index1329, %177
  %194 = add nuw nsw i64 %index1329, %polly.access.mul.Packed_MemRef_call1303490.us
  %195 = getelementptr double, double* %Packed_MemRef_call1303, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %196, align 8
  %197 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %198 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2305494.us
  %199 = getelementptr double, double* %Packed_MemRef_call2305, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %200, align 8
  %201 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %202 = shl i64 %193, 3
  %203 = add i64 %202, %191
  %204 = getelementptr i8, i8* %call, i64 %203
  %205 = bitcast i8* %204 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %205, align 8, !alias.scope !79, !noalias !81
  %206 = fadd fast <4 x double> %201, %197
  %207 = fmul fast <4 x double> %206, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %208 = fadd fast <4 x double> %207, %wide.load1339
  %209 = bitcast i8* %204 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !79, !noalias !81
  %index.next1330 = add i64 %index1329, 4
  %210 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %210, label %middle.block1318, label %vector.body1320, !llvm.loop !90

middle.block1318:                                 ; preds = %vector.body1320
  %cmp.n1332 = icmp eq i64 %185, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %polly.loop_header476.us, %middle.block1318
  %polly.indvar487.us.ph = phi i64 [ 0, %polly.loop_header476.us ], [ %n.vec1328, %middle.block1318 ]
  br label %polly.loop_header483.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar487.us, %177
  %polly.access.add.Packed_MemRef_call1303491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1303490.us
  %polly.access.Packed_MemRef_call1303492.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1303492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.add.Packed_MemRef_call2305499.us = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2305494.us
  %polly.access.Packed_MemRef_call2305500.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2305500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %212 = shl i64 %211, 3
  %213 = add i64 %212, %191
  %scevgep506.us = getelementptr i8, i8* %call, i64 %213
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar487.us, %smin1085
  br i1 %exitcond1086.not, label %polly.loop_exit485.loopexit.us, label %polly.loop_header483.us, !llvm.loop !91

polly.loop_exit485.loopexit.us:                   ; preds = %polly.loop_header483.us, %middle.block1318
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next480.us, %170
  br i1 %exitcond1088.not, label %polly.loop_exit478, label %polly.loop_header476.us

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %214 = add i64 %indvar, 1
  %215 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %215
  %min.iters.check1261 = icmp ult i64 %214, 4
  br i1 %min.iters.check1261, label %polly.loop_header605.preheader, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header599
  %n.vec1264 = and i64 %214, -4
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1260 ]
  %216 = shl nuw nsw i64 %index1265, 3
  %217 = getelementptr i8, i8* %scevgep611, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  %wide.load1269 = load <4 x double>, <4 x double>* %218, align 8, !alias.scope !92, !noalias !94
  %219 = fmul fast <4 x double> %wide.load1269, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %220 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %219, <4 x double>* %220, align 8, !alias.scope !92, !noalias !94
  %index.next1266 = add i64 %index1265, 4
  %221 = icmp eq i64 %index.next1266, %n.vec1264
  br i1 %221, label %middle.block1258, label %vector.body1260, !llvm.loop !99

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1268 = icmp eq i64 %214, %n.vec1264
  br i1 %cmp.n1268, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1258
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1264, %middle.block1258 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1258
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1135.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %222 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %222
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1134.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !100

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar618, 1200
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next619, 1000
  br i1 %exitcond1133.not, label %polly.loop_header631, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_header621, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_header621 ]
  %polly.access.mul.call2628 = mul nuw nsw i64 %polly.indvar624, 1000
  %polly.access.add.call2629 = add nuw nsw i64 %polly.access.mul.call2628, %polly.indvar618
  %polly.access.call2630 = getelementptr double, double* %polly.access.cast.call2734, i64 %polly.access.add.call2629
  %polly.access.call2630.load = load double, double* %polly.access.call2630, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar624, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2630.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next625, 1200
  br i1 %exitcond1132.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_exit623, %polly.loop_exit639
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit639 ], [ 6, %polly.loop_exit623 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit639 ], [ 0, %polly.loop_exit623 ]
  %223 = mul nsw i64 %polly.indvar634, -96
  %224 = mul nuw nsw i64 %polly.indvar634, 96
  %225 = udiv i64 %indvars.iv1126, 5
  %226 = sub nsw i64 %indvars.iv1124, %225
  %smin1128 = call i64 @llvm.smin.i64(i64 %226, i64 54)
  %227 = mul nsw i64 %polly.indvar634, -96
  %228 = icmp slt i64 %227, -1104
  %229 = select i1 %228, i64 %227, i64 -1104
  %230 = add nsw i64 %229, 1199
  %231 = mul nuw nsw i64 %polly.indvar634, 96
  %232 = add nsw i64 %smin1128, 5
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit646
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -96
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 96
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 5
  %indvars.iv.next1127 = add nuw nsw i64 %indvars.iv1126, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next635, 13
  br i1 %exitcond1131.not, label %polly.exiting512, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit646, %polly.loop_header631
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit646 ], [ 0, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit646 ], [ 0, %polly.loop_header631 ]
  %smin1122 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 -920)
  %233 = add nsw i64 %smin1122, 1000
  %234 = mul nuw nsw i64 %polly.indvar640, 80
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit653
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -80
  %exitcond1130.not = icmp eq i64 %polly.indvar_next641, 13
  br i1 %exitcond1130.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header644:                             ; preds = %polly.loop_exit653, %polly.loop_header637
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit653 ], [ %indvars.iv1110, %polly.loop_header637 ]
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit653 ], [ %indvars.iv1105, %polly.loop_header637 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header637 ]
  %235 = mul nuw nsw i64 %polly.indvar647, 20
  %236 = add i64 %223, %235
  %smax1273 = call i64 @llvm.smax.i64(i64 %236, i64 0)
  %237 = mul nsw i64 %polly.indvar647, -20
  %238 = add i64 %224, %237
  %239 = add i64 %smax1273, %238
  %240 = mul nuw nsw i64 %polly.indvar647, 20
  %241 = add nsw i64 %240, %227
  %242 = icmp sgt i64 %241, 0
  %243 = select i1 %242, i64 %241, i64 0
  %polly.loop_guard654.not = icmp sgt i64 %243, %230
  br i1 %polly.loop_guard654.not, label %polly.loop_exit653, label %polly.loop_header651.preheader

polly.loop_header651.preheader:                   ; preds = %polly.loop_header644
  %smax1109 = call i64 @llvm.smax.i64(i64 %indvars.iv1107, i64 0)
  %244 = add i64 %smax1109, %indvars.iv1112
  %245 = sub nsw i64 %231, %240
  %246 = add nuw nsw i64 %240, 20
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit689, %polly.loop_header644
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1108 = add nsw i64 %indvars.iv1107, 20
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -20
  %exitcond1129.not = icmp eq i64 %polly.indvar647, %232
  br i1 %exitcond1129.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header651.preheader, %polly.loop_exit689
  %indvar1274 = phi i64 [ 0, %polly.loop_header651.preheader ], [ %indvar.next1275, %polly.loop_exit689 ]
  %indvars.iv1114 = phi i64 [ %244, %polly.loop_header651.preheader ], [ %indvars.iv.next1115, %polly.loop_exit689 ]
  %polly.indvar655 = phi i64 [ %243, %polly.loop_header651.preheader ], [ %polly.indvar_next656, %polly.loop_exit689 ]
  %247 = add i64 %239, %indvar1274
  %smin1276 = call i64 @llvm.smin.i64(i64 %247, i64 19)
  %248 = add nsw i64 %smin1276, 1
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 19)
  %249 = add nsw i64 %polly.indvar655, %245
  %polly.loop_guard6681172 = icmp sgt i64 %249, -1
  %250 = add nuw nsw i64 %polly.indvar655, %231
  %.not927 = icmp ult i64 %250, %246
  %polly.access.mul.call1681 = mul nsw i64 %250, 1000
  %251 = add nuw i64 %polly.access.mul.call1681, %234
  br i1 %polly.loop_guard6681172, label %polly.loop_header658.us, label %polly.loop_header651.split

polly.loop_header658.us:                          ; preds = %polly.loop_header651, %polly.merge677.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.merge677.us ], [ 0, %polly.loop_header651 ]
  %252 = add nuw nsw i64 %polly.indvar661.us, %234
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar661.us, 1200
  br label %polly.loop_header665.us

polly.loop_header665.us:                          ; preds = %polly.loop_header658.us, %polly.loop_header665.us
  %polly.indvar669.us = phi i64 [ %polly.indvar_next670.us, %polly.loop_header665.us ], [ 0, %polly.loop_header658.us ]
  %253 = add nuw nsw i64 %polly.indvar669.us, %240
  %polly.access.mul.call1673.us = mul nuw nsw i64 %253, 1000
  %polly.access.add.call1674.us = add nuw nsw i64 %252, %polly.access.mul.call1673.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar669.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next670.us = add nuw nsw i64 %polly.indvar669.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar669.us, %smin1120
  br i1 %exitcond1117.not, label %polly.cond676.loopexit.us, label %polly.loop_header665.us

polly.then678.us:                                 ; preds = %polly.cond676.loopexit.us
  %polly.access.add.call1682.us = add nuw nsw i64 %251, %polly.indvar661.us
  %polly.access.call1683.us = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682.us
  %polly.access.call1683.load.us = load double, double* %polly.access.call1683.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1514685.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514.us, %249
  %polly.access.Packed_MemRef_call1514686.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685.us
  store double %polly.access.call1683.load.us, double* %polly.access.Packed_MemRef_call1514686.us, align 8
  br label %polly.merge677.us

polly.merge677.us:                                ; preds = %polly.then678.us, %polly.cond676.loopexit.us
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next662.us, %233
  br i1 %exitcond1119.not, label %polly.loop_header687.preheader, label %polly.loop_header658.us

polly.cond676.loopexit.us:                        ; preds = %polly.loop_header665.us
  br i1 %.not927, label %polly.merge677.us, label %polly.then678.us

polly.loop_header651.split:                       ; preds = %polly.loop_header651
  br i1 %.not927, label %polly.loop_exit689, label %polly.loop_header658

polly.loop_exit689:                               ; preds = %polly.loop_exit696.loopexit.us, %polly.loop_header651.split, %polly.loop_header687.preheader
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp ult i64 %polly.indvar655, %230
  %indvars.iv.next1115 = add i64 %indvars.iv1114, 1
  %indvar.next1275 = add i64 %indvar1274, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header658:                             ; preds = %polly.loop_header651.split, %polly.loop_header658
  %polly.indvar661 = phi i64 [ %polly.indvar_next662, %polly.loop_header658 ], [ 0, %polly.loop_header651.split ]
  %polly.access.add.call1682 = add nuw nsw i64 %251, %polly.indvar661
  %polly.access.call1683 = getelementptr double, double* %polly.access.cast.call1724, i64 %polly.access.add.call1682
  %polly.access.call1683.load = load double, double* %polly.access.call1683, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1514684 = mul nuw nsw i64 %polly.indvar661, 1200
  %polly.access.add.Packed_MemRef_call1514685 = add nsw i64 %polly.access.mul.Packed_MemRef_call1514684, %249
  %polly.access.Packed_MemRef_call1514686 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514685
  store double %polly.access.call1683.load, double* %polly.access.Packed_MemRef_call1514686, align 8
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next662, %233
  br i1 %exitcond1104.not, label %polly.loop_header687.preheader, label %polly.loop_header658

polly.loop_header687.preheader:                   ; preds = %polly.loop_header658, %polly.merge677.us
  %254 = mul i64 %250, 9600
  br i1 %polly.loop_guard6681172, label %polly.loop_header687.us, label %polly.loop_exit689

polly.loop_header687.us:                          ; preds = %polly.loop_header687.preheader, %polly.loop_exit696.loopexit.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_exit696.loopexit.us ], [ 0, %polly.loop_header687.preheader ]
  %polly.access.mul.Packed_MemRef_call1514701.us = mul nuw nsw i64 %polly.indvar690.us, 1200
  %255 = add nuw nsw i64 %polly.indvar690.us, %234
  %polly.access.mul.Packed_MemRef_call2516705.us = mul nuw nsw i64 %255, 1200
  %polly.access.add.Packed_MemRef_call2516706.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2516705.us, %250
  %polly.access.Packed_MemRef_call2516707.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call2516707.us, align 8
  %polly.access.add.Packed_MemRef_call1514714.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1514701.us, %249
  %polly.access.Packed_MemRef_call1514715.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1514715.us, align 8
  %min.iters.check1277 = icmp ult i64 %248, 4
  br i1 %min.iters.check1277, label %polly.loop_header694.us.preheader, label %vector.ph1278

vector.ph1278:                                    ; preds = %polly.loop_header687.us
  %n.vec1280 = and i64 %248, -4
  %broadcast.splatinsert1286 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1287 = shufflevector <4 x double> %broadcast.splatinsert1286, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1289 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1290 = shufflevector <4 x double> %broadcast.splatinsert1289, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1278
  %index1281 = phi i64 [ 0, %vector.ph1278 ], [ %index.next1282, %vector.body1272 ]
  %256 = add nuw nsw i64 %index1281, %240
  %257 = add nuw nsw i64 %index1281, %polly.access.mul.Packed_MemRef_call1514701.us
  %258 = getelementptr double, double* %Packed_MemRef_call1514, i64 %257
  %259 = bitcast double* %258 to <4 x double>*
  %wide.load1285 = load <4 x double>, <4 x double>* %259, align 8
  %260 = fmul fast <4 x double> %broadcast.splat1287, %wide.load1285
  %261 = add nuw nsw i64 %256, %polly.access.mul.Packed_MemRef_call2516705.us
  %262 = getelementptr double, double* %Packed_MemRef_call2516, i64 %261
  %263 = bitcast double* %262 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %263, align 8
  %264 = fmul fast <4 x double> %broadcast.splat1290, %wide.load1288
  %265 = shl i64 %256, 3
  %266 = add i64 %265, %254
  %267 = getelementptr i8, i8* %call, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %268, align 8, !alias.scope !92, !noalias !94
  %269 = fadd fast <4 x double> %264, %260
  %270 = fmul fast <4 x double> %269, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %271 = fadd fast <4 x double> %270, %wide.load1291
  %272 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %271, <4 x double>* %272, align 8, !alias.scope !92, !noalias !94
  %index.next1282 = add i64 %index1281, 4
  %273 = icmp eq i64 %index.next1282, %n.vec1280
  br i1 %273, label %middle.block1270, label %vector.body1272, !llvm.loop !103

middle.block1270:                                 ; preds = %vector.body1272
  %cmp.n1284 = icmp eq i64 %248, %n.vec1280
  br i1 %cmp.n1284, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us.preheader

polly.loop_header694.us.preheader:                ; preds = %polly.loop_header687.us, %middle.block1270
  %polly.indvar698.us.ph = phi i64 [ 0, %polly.loop_header687.us ], [ %n.vec1280, %middle.block1270 ]
  br label %polly.loop_header694.us

polly.loop_header694.us:                          ; preds = %polly.loop_header694.us.preheader, %polly.loop_header694.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_header694.us ], [ %polly.indvar698.us.ph, %polly.loop_header694.us.preheader ]
  %274 = add nuw nsw i64 %polly.indvar698.us, %240
  %polly.access.add.Packed_MemRef_call1514702.us = add nuw nsw i64 %polly.indvar698.us, %polly.access.mul.Packed_MemRef_call1514701.us
  %polly.access.Packed_MemRef_call1514703.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call1514703.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %polly.access.add.Packed_MemRef_call2516710.us = add nuw nsw i64 %274, %polly.access.mul.Packed_MemRef_call2516705.us
  %polly.access.Packed_MemRef_call2516711.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516710.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call2516711.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %275 = shl i64 %274, 3
  %276 = add i64 %275, %254
  %scevgep717.us = getelementptr i8, i8* %call, i64 %276
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_719.us
  store double %p_add42.i.us, double* %scevgep717718.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar698.us, %smin1120
  br i1 %exitcond1121.not, label %polly.loop_exit696.loopexit.us, label %polly.loop_header694.us, !llvm.loop !104

polly.loop_exit696.loopexit.us:                   ; preds = %polly.loop_header694.us, %middle.block1270
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next691.us, %233
  br i1 %exitcond1123.not, label %polly.loop_exit689, label %polly.loop_header687.us

polly.loop_header846:                             ; preds = %entry, %polly.loop_exit854
  %indvars.iv1160 = phi i64 [ %indvars.iv.next1161, %polly.loop_exit854 ], [ 0, %entry ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %entry ]
  %smin1162 = call i64 @llvm.smin.i64(i64 %indvars.iv1160, i64 -1168)
  %277 = shl nsw i64 %polly.indvar849, 5
  %278 = add nsw i64 %smin1162, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1161 = add nsw i64 %indvars.iv1160, -32
  %exitcond1165.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1165.not, label %polly.loop_header873, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %279 = mul nsw i64 %polly.indvar855, -32
  %smin = call i64 @llvm.smin.i64(i64 %279, i64 -1168)
  %280 = add nsw i64 %smin, 1200
  %smin1158 = call i64 @llvm.smin.i64(i64 %indvars.iv1156, i64 -1168)
  %281 = shl nsw i64 %polly.indvar855, 5
  %282 = add nsw i64 %smin1158, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1157 = add nsw i64 %indvars.iv1156, -32
  %exitcond1164.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1164.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %283 = add nuw nsw i64 %polly.indvar861, %277
  %284 = trunc i64 %283 to i32
  %285 = mul nuw nsw i64 %283, 9600
  %min.iters.check = icmp eq i64 %280, 0
  br i1 %min.iters.check, label %polly.loop_header864, label %vector.ph1200

vector.ph1200:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %281, i32 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1200
  %index1201 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1200 ], [ %vec.ind.next1206, %vector.body1199 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1205, %broadcast.splat1208
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1210, %287
  %289 = add <4 x i32> %288, <i32 3, i32 3, i32 3, i32 3>
  %290 = urem <4 x i32> %289, <i32 1200, i32 1200, i32 1200, i32 1200>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add nuw nsw i64 %294, %285
  %296 = getelementptr i8, i8* %call, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !105, !noalias !107
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1202, %280
  br i1 %298, label %polly.loop_exit866, label %vector.body1199, !llvm.loop !110

polly.loop_exit866:                               ; preds = %vector.body1199, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar861, %278
  br i1 %exitcond1163.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %299 = add nuw nsw i64 %polly.indvar867, %281
  %300 = trunc i64 %299 to i32
  %301 = mul i32 %300, %284
  %302 = add i32 %301, 3
  %303 = urem i32 %302, 1200
  %p_conv31.i = sitofp i32 %303 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %304 = shl i64 %299, 3
  %305 = add nuw nsw i64 %304, %285
  %scevgep870 = getelementptr i8, i8* %call, i64 %305
  %scevgep870871 = bitcast i8* %scevgep870 to double*
  store double %p_div33.i, double* %scevgep870871, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar867, %282
  br i1 %exitcond1159.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !111

polly.loop_header873:                             ; preds = %polly.loop_exit854, %polly.loop_exit881
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_exit854 ]
  %smin1152 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 -1168)
  %306 = shl nsw i64 %polly.indvar876, 5
  %307 = add nsw i64 %smin1152, 1199
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -32
  %exitcond1155.not = icmp eq i64 %polly.indvar_next877, 38
  br i1 %exitcond1155.not, label %polly.loop_header899, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_header873 ]
  %308 = mul nsw i64 %polly.indvar882, -32
  %smin1214 = call i64 @llvm.smin.i64(i64 %308, i64 -968)
  %309 = add nsw i64 %smin1214, 1000
  %smin1148 = call i64 @llvm.smin.i64(i64 %indvars.iv1146, i64 -968)
  %310 = shl nsw i64 %polly.indvar882, 5
  %311 = add nsw i64 %smin1148, 999
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1147 = add nsw i64 %indvars.iv1146, -32
  %exitcond1154.not = icmp eq i64 %polly.indvar_next883, 32
  br i1 %exitcond1154.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %polly.indvar888 = phi i64 [ 0, %polly.loop_header879 ], [ %polly.indvar_next889, %polly.loop_exit893 ]
  %312 = add nuw nsw i64 %polly.indvar888, %306
  %313 = trunc i64 %312 to i32
  %314 = mul nuw nsw i64 %312, 8000
  %min.iters.check1215 = icmp eq i64 %309, 0
  br i1 %min.iters.check1215, label %polly.loop_header891, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header885
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %310, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1213 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1216 ], [ %vec.ind.next1224, %vector.body1213 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1228, %316
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 1000, i32 1000, i32 1000, i32 1000>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %314
  %325 = getelementptr i8, i8* %call2, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !109, !noalias !112
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1220, %309
  br i1 %327, label %polly.loop_exit893, label %vector.body1213, !llvm.loop !113

polly.loop_exit893:                               ; preds = %vector.body1213, %polly.loop_header891
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar888, %307
  br i1 %exitcond1153.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_header885, %polly.loop_header891
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_header891 ], [ 0, %polly.loop_header885 ]
  %328 = add nuw nsw i64 %polly.indvar894, %310
  %329 = trunc i64 %328 to i32
  %330 = mul i32 %329, %313
  %331 = add i32 %330, 2
  %332 = urem i32 %331, 1000
  %p_conv10.i = sitofp i32 %332 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %333 = shl i64 %328, 3
  %334 = add nuw nsw i64 %333, %314
  %scevgep897 = getelementptr i8, i8* %call2, i64 %334
  %scevgep897898 = bitcast i8* %scevgep897 to double*
  store double %p_div12.i, double* %scevgep897898, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar894, %311
  br i1 %exitcond1149.not, label %polly.loop_exit893, label %polly.loop_header891, !llvm.loop !114

polly.loop_header899:                             ; preds = %polly.loop_exit881, %polly.loop_exit907
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_exit881 ]
  %smin1142 = call i64 @llvm.smin.i64(i64 %indvars.iv1140, i64 -1168)
  %335 = shl nsw i64 %polly.indvar902, 5
  %336 = add nsw i64 %smin1142, 1199
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next903, 38
  br i1 %exitcond1145.not, label %init_array.exit, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_header899 ]
  %337 = mul nsw i64 %polly.indvar908, -32
  %smin1232 = call i64 @llvm.smin.i64(i64 %337, i64 -968)
  %338 = add nsw i64 %smin1232, 1000
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 -968)
  %339 = shl nsw i64 %polly.indvar908, 5
  %340 = add nsw i64 %smin1138, 999
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -32
  %exitcond1144.not = icmp eq i64 %polly.indvar_next909, 32
  br i1 %exitcond1144.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %polly.indvar914 = phi i64 [ 0, %polly.loop_header905 ], [ %polly.indvar_next915, %polly.loop_exit919 ]
  %341 = add nuw nsw i64 %polly.indvar914, %335
  %342 = trunc i64 %341 to i32
  %343 = mul nuw nsw i64 %341, 8000
  %min.iters.check1233 = icmp eq i64 %338, 0
  br i1 %min.iters.check1233, label %polly.loop_header917, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header911
  %broadcast.splatinsert1243 = insertelement <4 x i64> poison, i64 %339, i32 0
  %broadcast.splat1244 = shufflevector <4 x i64> %broadcast.splatinsert1243, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1245 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1246 = shufflevector <4 x i32> %broadcast.splatinsert1245, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1231 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1242, %vector.body1231 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1241, %broadcast.splat1244
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1246, %345
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 1200, i32 1200, i32 1200, i32 1200>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add nuw nsw i64 %352, %343
  %354 = getelementptr i8, i8* %call1, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !108, !noalias !115
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1238, %338
  br i1 %356, label %polly.loop_exit919, label %vector.body1231, !llvm.loop !116

polly.loop_exit919:                               ; preds = %vector.body1231, %polly.loop_header917
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar914, %336
  br i1 %exitcond1143.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_header911, %polly.loop_header917
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_header917 ], [ 0, %polly.loop_header911 ]
  %357 = add nuw nsw i64 %polly.indvar920, %339
  %358 = trunc i64 %357 to i32
  %359 = mul i32 %358, %342
  %360 = add i32 %359, 1
  %361 = urem i32 %360, 1200
  %p_conv.i = sitofp i32 %361 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %362 = shl i64 %357, 3
  %363 = add nuw nsw i64 %362, %343
  %scevgep924 = getelementptr i8, i8* %call1, i64 %363
  %scevgep924925 = bitcast i8* %scevgep924 to double*
  store double %p_div.i, double* %scevgep924925, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar920, %340
  br i1 %exitcond1139.not, label %polly.loop_exit919, label %polly.loop_header917, !llvm.loop !117
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 20}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 80}
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
