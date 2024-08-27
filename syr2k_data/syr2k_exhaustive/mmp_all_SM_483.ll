; ModuleID = 'syr2k_exhaustive/mmp_all_SM_483.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_483.c"
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
  %scevgep1179 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1178 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1177 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1176 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1176, %scevgep1179
  %bound1 = icmp ult i8* %scevgep1178, %scevgep1177
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
  br i1 %exitcond18.not.i, label %vector.ph1183, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1183:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1190 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1191 = shufflevector <4 x i64> %broadcast.splatinsert1190, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1183
  %index1184 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1185, %vector.body1182 ]
  %vec.ind1188 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1183 ], [ %vec.ind.next1189, %vector.body1182 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1188, %broadcast.splat1191
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv7.i, i64 %index1184
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1185 = add i64 %index1184, 4
  %vec.ind.next1189 = add <4 x i64> %vec.ind1188, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1185, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1182, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1182
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1183, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit905
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start511, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1246 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1246, label %for.body3.i46.preheader1395, label %vector.ph1247

vector.ph1247:                                    ; preds = %for.body3.i46.preheader
  %n.vec1249 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1247
  %index1250 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1251, %vector.body1245 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %index1250
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1251 = add i64 %index1250, 4
  %46 = icmp eq i64 %index.next1251, %n.vec1249
  br i1 %46, label %middle.block1243, label %vector.body1245, !llvm.loop !18

middle.block1243:                                 ; preds = %vector.body1245
  %cmp.n1253 = icmp eq i64 %indvars.iv21.i, %n.vec1249
  br i1 %cmp.n1253, label %for.inc6.i, label %for.body3.i46.preheader1395

for.body3.i46.preheader1395:                      ; preds = %for.body3.i46.preheader, %middle.block1243
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1249, %middle.block1243 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1395, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1395 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1243, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting512
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1293 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1293, label %for.body3.i60.preheader1393, label %vector.ph1294

vector.ph1294:                                    ; preds = %for.body3.i60.preheader
  %n.vec1296 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1294
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1298, %vector.body1292 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1297
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1301, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1298 = add i64 %index1297, 4
  %57 = icmp eq i64 %index.next1298, %n.vec1296
  br i1 %57, label %middle.block1290, label %vector.body1292, !llvm.loop !64

middle.block1290:                                 ; preds = %vector.body1292
  %cmp.n1300 = icmp eq i64 %indvars.iv21.i52, %n.vec1296
  br i1 %cmp.n1300, label %for.inc6.i63, label %for.body3.i60.preheader1393

for.body3.i60.preheader1393:                      ; preds = %for.body3.i60.preheader, %middle.block1290
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1296, %middle.block1290 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1393, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1393 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1290, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

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
  %min.iters.check1343 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1343, label %for.body3.i99.preheader1391, label %vector.ph1344

vector.ph1344:                                    ; preds = %for.body3.i99.preheader
  %n.vec1346 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1342 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1347
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1348 = add i64 %index1347, 4
  %68 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %68, label %middle.block1340, label %vector.body1342, !llvm.loop !66

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1350 = icmp eq i64 %indvars.iv21.i91, %n.vec1346
  br i1 %cmp.n1350, label %for.inc6.i102, label %for.body3.i99.preheader1391

for.body3.i99.preheader1391:                      ; preds = %for.body3.i99.preheader, %middle.block1340
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1346, %middle.block1340 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1391, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1391 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %wide.load1365 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1362 = add i64 %index1361, 4
  %95 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %95, label %middle.block1352, label %vector.body1354, !llvm.loop !79

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1364 = icmp eq i64 %88, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1352
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1360, %middle.block1352 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1352
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %exitcond1078.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1077.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1068 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1069, %polly.loop_exit224 ]
  %indvars.iv1064 = phi i64 [ 4, %polly.loop_header200.preheader ], [ %indvars.iv.next1065, %polly.loop_exit224 ]
  %indvars.iv1062 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1063, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = mul nsw i64 %polly.indvar203, -4
  %98 = add nuw i64 %polly.indvar203, 4
  %99 = udiv i64 %98, 5
  %100 = mul nuw nsw i64 %99, 20
  %101 = add i64 %97, %100
  %102 = shl nuw nsw i64 %polly.indvar203, 2
  %103 = sub nsw i64 %102, %100
  %104 = udiv i64 %indvars.iv1064, 5
  %105 = mul nuw nsw i64 %104, 20
  %106 = add i64 %indvars.iv1062, %105
  %107 = sub nsw i64 %indvars.iv1068, %105
  %108 = shl nsw i64 %polly.indvar203, 8
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %109 = mul nsw i64 %polly.indvar203, -256
  %110 = mul nuw nsw i64 %polly.indvar203, 13
  %111 = add nuw nsw i64 %polly.indvar203, 4
  %pexp.p_div_q = udiv i64 %111, 5
  %112 = sub nsw i64 %110, %pexp.p_div_q
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit261
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -4
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 1
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 4
  %exitcond1076.not = icmp eq i64 %polly.indvar_next204, 5
  br i1 %exitcond1076.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond1058.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %113 = add nuw nsw i64 %polly.indvar215, %108
  %polly.access.mul.call2219 = mul nuw nsw i64 %113, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit261, %polly.loop_exit208
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit261 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit261 ], [ %107, %polly.loop_exit208 ]
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit261 ], [ %106, %polly.loop_exit208 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit261 ], [ %112, %polly.loop_exit208 ]
  %114 = mul nsw i64 %indvar1369, -20
  %115 = add i64 %101, %114
  %smax1371 = call i64 @llvm.smax.i64(i64 %115, i64 0)
  %116 = mul nuw nsw i64 %indvar1369, 20
  %117 = add i64 %103, %116
  %118 = add i64 %smax1371, %117
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1066, i64 0)
  %119 = add i64 %smax, %indvars.iv1070
  %120 = mul nsw i64 %polly.indvar225, 20
  %121 = add nsw i64 %120, %109
  %122 = add nsw i64 %121, -1
  %.inv = icmp sgt i64 %121, 255
  %123 = select i1 %.inv, i64 255, i64 %122
  %polly.loop_guard = icmp sgt i64 %123, -1
  %124 = icmp sgt i64 %121, 0
  %125 = select i1 %124, i64 %121, i64 0
  %126 = add nsw i64 %121, 19
  %polly.loop_guard248.not = icmp sgt i64 %125, %126
  br i1 %polly.loop_guard, label %polly.loop_header228.us, label %polly.loop_header222.split

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit247.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit247.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %127 = add nuw nsw i64 %polly.indvar237.us, %108
  %polly.access.mul.call1241.us = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw i64 %polly.indvar237.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar237.us, %123
  br i1 %exitcond1060.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_header245.us:                          ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_header245.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header245.us ], [ %125, %polly.loop_exit236.loopexit.us ]
  %128 = add nuw nsw i64 %polly.indvar249.us, %108
  %polly.access.mul.call1253.us = mul nsw i64 %128, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.access.mul.call1253.us, %polly.indvar231.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %polly.loop_cond251.not.not.us = icmp slt i64 %polly.indvar249.us, %126
  br i1 %polly.loop_cond251.not.not.us, label %polly.loop_header245.us, label %polly.loop_exit247.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us, %polly.loop_exit236.loopexit.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond1061.not, label %polly.loop_header259.preheader, label %polly.loop_header228.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  br i1 %polly.loop_guard248.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_header222.split:                       ; preds = %polly.loop_header222
  br i1 %polly.loop_guard248.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header259.preheader
  %polly.indvar_next226 = add nsw i64 %polly.indvar225, 1
  %polly.loop_cond227 = icmp slt i64 %polly.indvar225, 59
  %indvars.iv.next1067 = add i64 %indvars.iv1066, -20
  %indvars.iv.next1071 = add i64 %indvars.iv1070, 20
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222.split, %polly.loop_exit247
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit247 ], [ 0, %polly.loop_header222.split ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond1059.not, label %polly.loop_header259.preheader, label %polly.loop_header228

polly.loop_header259.preheader:                   ; preds = %polly.loop_exit247, %polly.loop_exit247.us, %polly.loop_header222.split
  %129 = sub nsw i64 %108, %120
  %130 = icmp sgt i64 %129, 0
  %131 = select i1 %130, i64 %129, i64 0
  %polly.loop_guard269 = icmp slt i64 %131, 20
  br i1 %polly.loop_guard269, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1281.us = mul nuw nsw i64 %polly.indvar262.us, 1200
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header259.us, %polly.loop_exit276.us
  %indvar1372 = phi i64 [ 0, %polly.loop_header259.us ], [ %indvar.next1373, %polly.loop_exit276.us ]
  %indvars.iv1072 = phi i64 [ %119, %polly.loop_header259.us ], [ %indvars.iv.next1073, %polly.loop_exit276.us ]
  %polly.indvar270.us = phi i64 [ %131, %polly.loop_header259.us ], [ %polly.indvar_next271.us, %polly.loop_exit276.us ]
  %132 = add i64 %118, %indvar1372
  %smin1374 = call i64 @llvm.smin.i64(i64 %132, i64 255)
  %133 = add nsw i64 %smin1374, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 255)
  %134 = add nsw i64 %polly.indvar270.us, %121
  %polly.loop_guard277.us1165 = icmp sgt i64 %134, -1
  br i1 %polly.loop_guard277.us1165, label %polly.loop_header274.preheader.us, label %polly.loop_exit276.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %135 = add nuw nsw i64 %polly.indvar278.us, %108
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar278.us, %polly.access.mul.Packed_MemRef_call1281.us
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %136 = shl i64 %135, 3
  %137 = add i64 %136, %139
  %scevgep297.us = getelementptr i8, i8* %call, i64 %137
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar278.us, %smin
  br i1 %exitcond1074.not, label %polly.loop_exit276.us, label %polly.loop_header274.us, !llvm.loop !84

polly.loop_exit276.us:                            ; preds = %polly.loop_header274.us, %middle.block1366, %polly.loop_header266.us
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %polly.loop_cond272.us = icmp ult i64 %polly.indvar270.us, 19
  %indvars.iv.next1073 = add i64 %indvars.iv1072, 1
  %indvar.next1373 = add i64 %indvar1372, 1
  br i1 %polly.loop_cond272.us, label %polly.loop_header266.us, label %polly.loop_exit268.loopexit.us

polly.loop_header274.preheader.us:                ; preds = %polly.loop_header266.us
  %138 = add nsw i64 %polly.indvar270.us, %120
  %polly.access.add.Packed_MemRef_call2286.us = add nsw i64 %134, %polly.access.mul.Packed_MemRef_call1281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %139 = mul i64 %138, 9600
  %min.iters.check1375 = icmp ult i64 %133, 4
  br i1 %min.iters.check1375, label %polly.loop_header274.us.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header274.preheader.us
  %n.vec1378 = and i64 %133, -4
  %broadcast.splatinsert1384 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1385 = shufflevector <4 x double> %broadcast.splatinsert1384, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1387 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1388 = shufflevector <4 x double> %broadcast.splatinsert1387, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1368 ]
  %140 = add nuw nsw i64 %index1379, %108
  %141 = add nuw nsw i64 %index1379, %polly.access.mul.Packed_MemRef_call1281.us
  %142 = getelementptr double, double* %Packed_MemRef_call1, i64 %141
  %143 = bitcast double* %142 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %143, align 8
  %144 = fmul fast <4 x double> %broadcast.splat1385, %wide.load1383
  %145 = getelementptr double, double* %Packed_MemRef_call2, i64 %141
  %146 = bitcast double* %145 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %146, align 8
  %147 = fmul fast <4 x double> %broadcast.splat1388, %wide.load1386
  %148 = shl i64 %140, 3
  %149 = add i64 %148, %139
  %150 = getelementptr i8, i8* %call, i64 %149
  %151 = bitcast i8* %150 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %151, align 8, !alias.scope !72, !noalias !74
  %152 = fadd fast <4 x double> %147, %144
  %153 = fmul fast <4 x double> %152, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %154 = fadd fast <4 x double> %153, %wide.load1389
  %155 = bitcast i8* %150 to <4 x double>*
  store <4 x double> %154, <4 x double>* %155, align 8, !alias.scope !72, !noalias !74
  %index.next1380 = add i64 %index1379, 4
  %156 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %156, label %middle.block1366, label %vector.body1368, !llvm.loop !85

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1382 = icmp eq i64 %133, %n.vec1378
  br i1 %cmp.n1382, label %polly.loop_exit276.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %polly.loop_header274.preheader.us, %middle.block1366
  %polly.indvar278.us.ph = phi i64 [ 0, %polly.loop_header274.preheader.us ], [ %n.vec1378, %middle.block1366 ]
  br label %polly.loop_header274.us

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_exit276.us
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next263.us, 1000
  br i1 %exitcond1075.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.loop_header245:                             ; preds = %polly.loop_header228, %polly.loop_header245
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_header245 ], [ %125, %polly.loop_header228 ]
  %157 = add nuw nsw i64 %polly.indvar249, %108
  %polly.access.mul.call1253 = mul nsw i64 %157, 1000
  %polly.access.add.call1254 = add nuw nsw i64 %polly.access.mul.call1253, %polly.indvar231
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar249, %polly.access.mul.Packed_MemRef_call1256
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp slt i64 %polly.indvar249, %126
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header245, label %polly.loop_exit247

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit431
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1305 = phi i64 [ %indvar.next1306, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %158 = add i64 %indvar1305, 1
  %159 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1307 = icmp ult i64 %158, 4
  br i1 %min.iters.check1307, label %polly.loop_header396.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header390
  %n.vec1310 = and i64 %158, -4
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1304 ]
  %160 = shl nuw nsw i64 %index1311, 3
  %161 = getelementptr i8, i8* %scevgep402, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !86, !noalias !88
  %163 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !86, !noalias !88
  %index.next1312 = add i64 %index1311, 4
  %165 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %165, label %middle.block1302, label %vector.body1304, !llvm.loop !93

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1314 = icmp eq i64 %158, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1302
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1310, %middle.block1302 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1302
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1306 = add i64 %indvar1305, 1
  br i1 %exitcond1104.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %166
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1103.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !94

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit431
  %indvars.iv1093 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1094, %polly.loop_exit431 ]
  %indvars.iv1088 = phi i64 [ 4, %polly.loop_header406.preheader ], [ %indvars.iv.next1089, %polly.loop_exit431 ]
  %indvars.iv1086 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1087, %polly.loop_exit431 ]
  %indvars.iv1079 = phi i64 [ 1200, %polly.loop_header406.preheader ], [ %indvars.iv.next1080, %polly.loop_exit431 ]
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next410, %polly.loop_exit431 ]
  %167 = mul nsw i64 %polly.indvar409, -4
  %168 = add nuw i64 %polly.indvar409, 4
  %169 = udiv i64 %168, 5
  %170 = mul nuw nsw i64 %169, 20
  %171 = add i64 %167, %170
  %172 = shl nuw nsw i64 %polly.indvar409, 2
  %173 = sub nsw i64 %172, %170
  %174 = udiv i64 %indvars.iv1088, 5
  %175 = mul nuw nsw i64 %174, 20
  %176 = add i64 %indvars.iv1086, %175
  %177 = sub nsw i64 %indvars.iv1093, %175
  %178 = shl nsw i64 %polly.indvar409, 8
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit420
  %179 = mul nsw i64 %polly.indvar409, -256
  %180 = mul nuw nsw i64 %polly.indvar409, 13
  %181 = add nuw nsw i64 %polly.indvar409, 4
  %pexp.p_div_q428 = udiv i64 %181, 5
  %182 = sub nsw i64 %180, %pexp.p_div_q428
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_exit470
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -256
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -4
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 4
  %exitcond1102.not = icmp eq i64 %polly.indvar_next410, 5
  br i1 %exitcond1102.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit420, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar415, 1200
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next416, 1000
  br i1 %exitcond1082.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %183 = add nuw nsw i64 %polly.indvar421, %178
  %polly.access.mul.call2425 = mul nuw nsw i64 %183, 1000
  %polly.access.add.call2426 = add nuw nsw i64 %polly.access.mul.call2425, %polly.indvar415
  %polly.access.call2427 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2426
  %polly.access.call2427.load = load double, double* %polly.access.call2427, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2427.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next422, %indvars.iv1079
  br i1 %exitcond1081.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header429:                             ; preds = %polly.loop_exit470, %polly.loop_exit414
  %indvar1319 = phi i64 [ %indvar.next1320, %polly.loop_exit470 ], [ 0, %polly.loop_exit414 ]
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit470 ], [ %177, %polly.loop_exit414 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit470 ], [ %176, %polly.loop_exit414 ]
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_exit470 ], [ %182, %polly.loop_exit414 ]
  %184 = mul nsw i64 %indvar1319, -20
  %185 = add i64 %171, %184
  %smax1321 = call i64 @llvm.smax.i64(i64 %185, i64 0)
  %186 = mul nuw nsw i64 %indvar1319, 20
  %187 = add i64 %173, %186
  %188 = add i64 %smax1321, %187
  %smax1092 = call i64 @llvm.smax.i64(i64 %indvars.iv1090, i64 0)
  %189 = add i64 %smax1092, %indvars.iv1095
  %190 = mul nsw i64 %polly.indvar432, 20
  %191 = add nsw i64 %190, %179
  %192 = add nsw i64 %191, -1
  %.inv924 = icmp sgt i64 %191, 255
  %193 = select i1 %.inv924, i64 255, i64 %192
  %polly.loop_guard445 = icmp sgt i64 %193, -1
  %194 = icmp sgt i64 %191, 0
  %195 = select i1 %194, i64 %191, i64 0
  %196 = add nsw i64 %191, 19
  %polly.loop_guard457.not = icmp sgt i64 %195, %196
  br i1 %polly.loop_guard445, label %polly.loop_header435.us, label %polly.loop_header429.split

polly.loop_header435.us:                          ; preds = %polly.loop_header429, %polly.loop_exit456.us
  %polly.indvar438.us = phi i64 [ %polly.indvar_next439.us, %polly.loop_exit456.us ], [ 0, %polly.loop_header429 ]
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar438.us, 1200
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us ]
  %197 = add nuw nsw i64 %polly.indvar446.us, %178
  %polly.access.mul.call1450.us = mul nuw nsw i64 %197, 1000
  %polly.access.add.call1451.us = add nuw nsw i64 %polly.access.mul.call1450.us, %polly.indvar438.us
  %polly.access.call1452.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1451.us
  %polly.access.call1452.load.us = load double, double* %polly.access.call1452.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar446.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1452.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next447.us = add nuw i64 %polly.indvar446.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar446.us, %193
  br i1 %exitcond1084.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_header454.us:                          ; preds = %polly.loop_exit444.loopexit.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ %195, %polly.loop_exit444.loopexit.us ]
  %198 = add nuw nsw i64 %polly.indvar458.us, %178
  %polly.access.mul.call1462.us = mul nsw i64 %198, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %polly.access.mul.call1462.us, %polly.indvar438.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305467.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1305467.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %polly.loop_cond460.not.not.us = icmp slt i64 %polly.indvar458.us, %196
  br i1 %polly.loop_cond460.not.not.us, label %polly.loop_header454.us, label %polly.loop_exit456.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us, %polly.loop_exit444.loopexit.us
  %polly.indvar_next439.us = add nuw nsw i64 %polly.indvar438.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next439.us, 1000
  br i1 %exitcond1085.not, label %polly.loop_header468.preheader, label %polly.loop_header435.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  br i1 %polly.loop_guard457.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_header429.split:                       ; preds = %polly.loop_header429
  br i1 %polly.loop_guard457.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_exit470:                               ; preds = %polly.loop_exit477.loopexit.us, %polly.loop_header468.preheader
  %polly.indvar_next433 = add nsw i64 %polly.indvar432, 1
  %polly.loop_cond434 = icmp slt i64 %polly.indvar432, 59
  %indvars.iv.next1091 = add i64 %indvars.iv1090, -20
  %indvars.iv.next1096 = add i64 %indvars.iv1095, 20
  %indvar.next1320 = add i64 %indvar1319, 1
  br i1 %polly.loop_cond434, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header435:                             ; preds = %polly.loop_header429.split, %polly.loop_exit456
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_exit456 ], [ 0, %polly.loop_header429.split ]
  %polly.access.mul.Packed_MemRef_call1305465 = mul nuw nsw i64 %polly.indvar438, 1200
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_header454
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next439, 1000
  br i1 %exitcond1083.not, label %polly.loop_header468.preheader, label %polly.loop_header435

polly.loop_header468.preheader:                   ; preds = %polly.loop_exit456, %polly.loop_exit456.us, %polly.loop_header429.split
  %199 = sub nsw i64 %178, %190
  %200 = icmp sgt i64 %199, 0
  %201 = select i1 %200, i64 %199, i64 0
  %polly.loop_guard478 = icmp slt i64 %201, 20
  br i1 %polly.loop_guard478, label %polly.loop_header468.us, label %polly.loop_exit470

polly.loop_header468.us:                          ; preds = %polly.loop_header468.preheader, %polly.loop_exit477.loopexit.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_exit477.loopexit.us ], [ 0, %polly.loop_header468.preheader ]
  %polly.access.mul.Packed_MemRef_call1305490.us = mul nuw nsw i64 %polly.indvar471.us, 1200
  br label %polly.loop_header475.us

polly.loop_header475.us:                          ; preds = %polly.loop_header468.us, %polly.loop_exit485.us
  %indvar1322 = phi i64 [ 0, %polly.loop_header468.us ], [ %indvar.next1323, %polly.loop_exit485.us ]
  %indvars.iv1097 = phi i64 [ %189, %polly.loop_header468.us ], [ %indvars.iv.next1098, %polly.loop_exit485.us ]
  %polly.indvar479.us = phi i64 [ %201, %polly.loop_header468.us ], [ %polly.indvar_next480.us, %polly.loop_exit485.us ]
  %202 = add i64 %188, %indvar1322
  %smin1324 = call i64 @llvm.smin.i64(i64 %202, i64 255)
  %203 = add nsw i64 %smin1324, 1
  %smin1099 = call i64 @llvm.smin.i64(i64 %indvars.iv1097, i64 255)
  %204 = add nsw i64 %polly.indvar479.us, %191
  %polly.loop_guard486.us1166 = icmp sgt i64 %204, -1
  br i1 %polly.loop_guard486.us1166, label %polly.loop_header483.preheader.us, label %polly.loop_exit485.us

polly.loop_header483.us:                          ; preds = %polly.loop_header483.us.preheader, %polly.loop_header483.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_header483.us ], [ %polly.indvar487.us.ph, %polly.loop_header483.us.preheader ]
  %205 = add nuw nsw i64 %polly.indvar487.us, %178
  %polly.access.add.Packed_MemRef_call1305491.us = add nuw nsw i64 %polly.indvar487.us, %polly.access.mul.Packed_MemRef_call1305490.us
  %polly.access.Packed_MemRef_call1305492.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call1305492.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_497.us, %_p_scalar_493.us
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305491.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_505.us, %_p_scalar_501.us
  %206 = shl i64 %205, 3
  %207 = add i64 %206, %209
  %scevgep506.us = getelementptr i8, i8* %call, i64 %207
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_508.us
  store double %p_add42.i79.us, double* %scevgep506507.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar487.us, %smin1099
  br i1 %exitcond1100.not, label %polly.loop_exit485.us, label %polly.loop_header483.us, !llvm.loop !97

polly.loop_exit485.us:                            ; preds = %polly.loop_header483.us, %middle.block1316, %polly.loop_header475.us
  %polly.indvar_next480.us = add nuw nsw i64 %polly.indvar479.us, 1
  %polly.loop_cond481.us = icmp ult i64 %polly.indvar479.us, 19
  %indvars.iv.next1098 = add i64 %indvars.iv1097, 1
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %polly.loop_cond481.us, label %polly.loop_header475.us, label %polly.loop_exit477.loopexit.us

polly.loop_header483.preheader.us:                ; preds = %polly.loop_header475.us
  %208 = add nsw i64 %polly.indvar479.us, %190
  %polly.access.add.Packed_MemRef_call2307495.us = add nsw i64 %204, %polly.access.mul.Packed_MemRef_call1305490.us
  %polly.access.Packed_MemRef_call2307496.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2307496.us, align 8
  %polly.access.Packed_MemRef_call1305504.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307495.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1305504.us, align 8
  %209 = mul i64 %208, 9600
  %min.iters.check1325 = icmp ult i64 %203, 4
  br i1 %min.iters.check1325, label %polly.loop_header483.us.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header483.preheader.us
  %n.vec1328 = and i64 %203, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_497.us, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_505.us, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1318 ]
  %210 = add nuw nsw i64 %index1329, %178
  %211 = add nuw nsw i64 %index1329, %polly.access.mul.Packed_MemRef_call1305490.us
  %212 = getelementptr double, double* %Packed_MemRef_call1305, i64 %211
  %213 = bitcast double* %212 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %213, align 8
  %214 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %215 = getelementptr double, double* %Packed_MemRef_call2307, i64 %211
  %216 = bitcast double* %215 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %216, align 8
  %217 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %218 = shl i64 %210, 3
  %219 = add i64 %218, %209
  %220 = getelementptr i8, i8* %call, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %221, align 8, !alias.scope !86, !noalias !88
  %222 = fadd fast <4 x double> %217, %214
  %223 = fmul fast <4 x double> %222, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %224 = fadd fast <4 x double> %223, %wide.load1339
  %225 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %224, <4 x double>* %225, align 8, !alias.scope !86, !noalias !88
  %index.next1330 = add i64 %index1329, 4
  %226 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %226, label %middle.block1316, label %vector.body1318, !llvm.loop !98

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1332 = icmp eq i64 %203, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit485.us, label %polly.loop_header483.us.preheader

polly.loop_header483.us.preheader:                ; preds = %polly.loop_header483.preheader.us, %middle.block1316
  %polly.indvar487.us.ph = phi i64 [ 0, %polly.loop_header483.preheader.us ], [ %n.vec1328, %middle.block1316 ]
  br label %polly.loop_header483.us

polly.loop_exit477.loopexit.us:                   ; preds = %polly.loop_exit485.us
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next472.us, 1000
  br i1 %exitcond1101.not, label %polly.loop_exit470, label %polly.loop_header468.us

polly.loop_header454:                             ; preds = %polly.loop_header435, %polly.loop_header454
  %polly.indvar458 = phi i64 [ %polly.indvar_next459, %polly.loop_header454 ], [ %195, %polly.loop_header435 ]
  %227 = add nuw nsw i64 %polly.indvar458, %178
  %polly.access.mul.call1462 = mul nsw i64 %227, 1000
  %polly.access.add.call1463 = add nuw nsw i64 %polly.access.mul.call1462, %polly.indvar438
  %polly.access.call1464 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1463
  %polly.access.call1464.load = load double, double* %polly.access.call1464, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1305466 = add nuw nsw i64 %polly.indvar458, %polly.access.mul.Packed_MemRef_call1305465
  %polly.access.Packed_MemRef_call1305467 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305466
  store double %polly.access.call1464.load, double* %polly.access.Packed_MemRef_call1305467, align 8
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %196
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.start511:                                   ; preds = %init_array.exit
  %malloccall513 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting512:                                 ; preds = %polly.loop_exit640
  tail call void @free(i8* %malloccall513)
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start511
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start511 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start511 ]
  %228 = add i64 %indvar, 1
  %229 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %229
  %min.iters.check1257 = icmp ult i64 %228, 4
  br i1 %min.iters.check1257, label %polly.loop_header605.preheader, label %vector.ph1258

vector.ph1258:                                    ; preds = %polly.loop_header599
  %n.vec1260 = and i64 %228, -4
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1256 ]
  %230 = shl nuw nsw i64 %index1261, 3
  %231 = getelementptr i8, i8* %scevgep611, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  %wide.load1265 = load <4 x double>, <4 x double>* %232, align 8, !alias.scope !99, !noalias !101
  %233 = fmul fast <4 x double> %wide.load1265, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %234 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %233, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %index.next1262 = add i64 %index1261, 4
  %235 = icmp eq i64 %index.next1262, %n.vec1260
  br i1 %235, label %middle.block1254, label %vector.body1256, !llvm.loop !106

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1264 = icmp eq i64 %228, %n.vec1260
  br i1 %cmp.n1264, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1254
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1260, %middle.block1254 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1254
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1130.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1514 = bitcast i8* %malloccall513 to double*
  %Packed_MemRef_call2516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %236 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %236
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1129.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !107

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit640
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1120, %polly.loop_exit640 ]
  %indvars.iv1114 = phi i64 [ 4, %polly.loop_header615.preheader ], [ %indvars.iv.next1115, %polly.loop_exit640 ]
  %indvars.iv1112 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1113, %polly.loop_exit640 ]
  %indvars.iv1105 = phi i64 [ 1200, %polly.loop_header615.preheader ], [ %indvars.iv.next1106, %polly.loop_exit640 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %polly.indvar_next619, %polly.loop_exit640 ]
  %237 = mul nsw i64 %polly.indvar618, -4
  %238 = add nuw i64 %polly.indvar618, 4
  %239 = udiv i64 %238, 5
  %240 = mul nuw nsw i64 %239, 20
  %241 = add i64 %237, %240
  %242 = shl nuw nsw i64 %polly.indvar618, 2
  %243 = sub nsw i64 %242, %240
  %244 = udiv i64 %indvars.iv1114, 5
  %245 = mul nuw nsw i64 %244, 20
  %246 = add i64 %indvars.iv1112, %245
  %247 = sub nsw i64 %indvars.iv1119, %245
  %248 = shl nsw i64 %polly.indvar618, 8
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %249 = mul nsw i64 %polly.indvar618, -256
  %250 = mul nuw nsw i64 %polly.indvar618, 13
  %251 = add nuw nsw i64 %polly.indvar618, 4
  %pexp.p_div_q637 = udiv i64 %251, 5
  %252 = sub nsw i64 %250, %pexp.p_div_q637
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit679
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -256
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -4
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 4
  %exitcond1128.not = icmp eq i64 %polly.indvar_next619, 5
  br i1 %exitcond1128.not, label %polly.exiting512, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %polly.indvar624 = phi i64 [ 0, %polly.loop_header615 ], [ %polly.indvar_next625, %polly.loop_exit629 ]
  %polly.access.mul.Packed_MemRef_call2516 = mul nuw nsw i64 %polly.indvar624, 1200
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_header627
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1108.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_header627, %polly.loop_header621
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header621 ], [ %polly.indvar_next631, %polly.loop_header627 ]
  %253 = add nuw nsw i64 %polly.indvar630, %248
  %polly.access.mul.call2634 = mul nuw nsw i64 %253, 1000
  %polly.access.add.call2635 = add nuw nsw i64 %polly.access.mul.call2634, %polly.indvar624
  %polly.access.call2636 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2635
  %polly.access.call2636.load = load double, double* %polly.access.call2636, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2516 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call2516
  %polly.access.Packed_MemRef_call2516 = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516
  store double %polly.access.call2636.load, double* %polly.access.Packed_MemRef_call2516, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next631, %indvars.iv1105
  br i1 %exitcond1107.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header638:                             ; preds = %polly.loop_exit679, %polly.loop_exit623
  %indvar1269 = phi i64 [ %indvar.next1270, %polly.loop_exit679 ], [ 0, %polly.loop_exit623 ]
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit679 ], [ %247, %polly.loop_exit623 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit679 ], [ %246, %polly.loop_exit623 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit679 ], [ %252, %polly.loop_exit623 ]
  %254 = mul nsw i64 %indvar1269, -20
  %255 = add i64 %241, %254
  %smax1271 = call i64 @llvm.smax.i64(i64 %255, i64 0)
  %256 = mul nuw nsw i64 %indvar1269, 20
  %257 = add i64 %243, %256
  %258 = add i64 %smax1271, %257
  %smax1118 = call i64 @llvm.smax.i64(i64 %indvars.iv1116, i64 0)
  %259 = add i64 %smax1118, %indvars.iv1121
  %260 = mul nsw i64 %polly.indvar641, 20
  %261 = add nsw i64 %260, %249
  %262 = add nsw i64 %261, -1
  %.inv925 = icmp sgt i64 %261, 255
  %263 = select i1 %.inv925, i64 255, i64 %262
  %polly.loop_guard654 = icmp sgt i64 %263, -1
  %264 = icmp sgt i64 %261, 0
  %265 = select i1 %264, i64 %261, i64 0
  %266 = add nsw i64 %261, 19
  %polly.loop_guard666.not = icmp sgt i64 %265, %266
  br i1 %polly.loop_guard654, label %polly.loop_header644.us, label %polly.loop_header638.split

polly.loop_header644.us:                          ; preds = %polly.loop_header638, %polly.loop_exit665.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_exit665.us ], [ 0, %polly.loop_header638 ]
  %polly.access.mul.Packed_MemRef_call1514.us = mul nuw nsw i64 %polly.indvar647.us, 1200
  br label %polly.loop_header651.us

polly.loop_header651.us:                          ; preds = %polly.loop_header644.us, %polly.loop_header651.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.loop_header651.us ], [ 0, %polly.loop_header644.us ]
  %267 = add nuw nsw i64 %polly.indvar655.us, %248
  %polly.access.mul.call1659.us = mul nuw nsw i64 %267, 1000
  %polly.access.add.call1660.us = add nuw nsw i64 %polly.access.mul.call1659.us, %polly.indvar647.us
  %polly.access.call1661.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1660.us
  %polly.access.call1661.load.us = load double, double* %polly.access.call1661.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514.us = add nuw nsw i64 %polly.indvar655.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514.us
  store double %polly.access.call1661.load.us, double* %polly.access.Packed_MemRef_call1514.us, align 8
  %polly.indvar_next656.us = add nuw i64 %polly.indvar655.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar655.us, %263
  br i1 %exitcond1110.not, label %polly.loop_exit653.loopexit.us, label %polly.loop_header651.us

polly.loop_header663.us:                          ; preds = %polly.loop_exit653.loopexit.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ %265, %polly.loop_exit653.loopexit.us ]
  %268 = add nuw nsw i64 %polly.indvar667.us, %248
  %polly.access.mul.call1671.us = mul nsw i64 %268, 1000
  %polly.access.add.call1672.us = add nuw nsw i64 %polly.access.mul.call1671.us, %polly.indvar647.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1514.us
  %polly.access.Packed_MemRef_call1514676.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1514676.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %polly.loop_cond669.not.not.us = icmp slt i64 %polly.indvar667.us, %266
  br i1 %polly.loop_cond669.not.not.us, label %polly.loop_header663.us, label %polly.loop_exit665.us

polly.loop_exit665.us:                            ; preds = %polly.loop_header663.us, %polly.loop_exit653.loopexit.us
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next648.us, 1000
  br i1 %exitcond1111.not, label %polly.loop_header677.preheader, label %polly.loop_header644.us

polly.loop_exit653.loopexit.us:                   ; preds = %polly.loop_header651.us
  br i1 %polly.loop_guard666.not, label %polly.loop_exit665.us, label %polly.loop_header663.us

polly.loop_header638.split:                       ; preds = %polly.loop_header638
  br i1 %polly.loop_guard666.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_exit679:                               ; preds = %polly.loop_exit686.loopexit.us, %polly.loop_header677.preheader
  %polly.indvar_next642 = add nsw i64 %polly.indvar641, 1
  %polly.loop_cond643 = icmp slt i64 %polly.indvar641, 59
  %indvars.iv.next1117 = add i64 %indvars.iv1116, -20
  %indvars.iv.next1122 = add i64 %indvars.iv1121, 20
  %indvar.next1270 = add i64 %indvar1269, 1
  br i1 %polly.loop_cond643, label %polly.loop_header638, label %polly.loop_exit640

polly.loop_header644:                             ; preds = %polly.loop_header638.split, %polly.loop_exit665
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit665 ], [ 0, %polly.loop_header638.split ]
  %polly.access.mul.Packed_MemRef_call1514674 = mul nuw nsw i64 %polly.indvar647, 1200
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_header663
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next648, 1000
  br i1 %exitcond1109.not, label %polly.loop_header677.preheader, label %polly.loop_header644

polly.loop_header677.preheader:                   ; preds = %polly.loop_exit665, %polly.loop_exit665.us, %polly.loop_header638.split
  %269 = sub nsw i64 %248, %260
  %270 = icmp sgt i64 %269, 0
  %271 = select i1 %270, i64 %269, i64 0
  %polly.loop_guard687 = icmp slt i64 %271, 20
  br i1 %polly.loop_guard687, label %polly.loop_header677.us, label %polly.loop_exit679

polly.loop_header677.us:                          ; preds = %polly.loop_header677.preheader, %polly.loop_exit686.loopexit.us
  %polly.indvar680.us = phi i64 [ %polly.indvar_next681.us, %polly.loop_exit686.loopexit.us ], [ 0, %polly.loop_header677.preheader ]
  %polly.access.mul.Packed_MemRef_call1514699.us = mul nuw nsw i64 %polly.indvar680.us, 1200
  br label %polly.loop_header684.us

polly.loop_header684.us:                          ; preds = %polly.loop_header677.us, %polly.loop_exit694.us
  %indvar1272 = phi i64 [ 0, %polly.loop_header677.us ], [ %indvar.next1273, %polly.loop_exit694.us ]
  %indvars.iv1123 = phi i64 [ %259, %polly.loop_header677.us ], [ %indvars.iv.next1124, %polly.loop_exit694.us ]
  %polly.indvar688.us = phi i64 [ %271, %polly.loop_header677.us ], [ %polly.indvar_next689.us, %polly.loop_exit694.us ]
  %272 = add i64 %258, %indvar1272
  %smin1274 = call i64 @llvm.smin.i64(i64 %272, i64 255)
  %273 = add nsw i64 %smin1274, 1
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 255)
  %274 = add nsw i64 %polly.indvar688.us, %261
  %polly.loop_guard695.us1167 = icmp sgt i64 %274, -1
  br i1 %polly.loop_guard695.us1167, label %polly.loop_header692.preheader.us, label %polly.loop_exit694.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %275 = add nuw nsw i64 %polly.indvar696.us, %248
  %polly.access.add.Packed_MemRef_call1514700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1514699.us
  %polly.access.Packed_MemRef_call1514701.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1514701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.Packed_MemRef_call2516709.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call1514700.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2516709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %276 = shl i64 %275, 3
  %277 = add i64 %276, %279
  %scevgep715.us = getelementptr i8, i8* %call, i64 %277
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar696.us, %smin1125
  br i1 %exitcond1126.not, label %polly.loop_exit694.us, label %polly.loop_header692.us, !llvm.loop !110

polly.loop_exit694.us:                            ; preds = %polly.loop_header692.us, %middle.block1266, %polly.loop_header684.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %polly.loop_cond690.us = icmp ult i64 %polly.indvar688.us, 19
  %indvars.iv.next1124 = add i64 %indvars.iv1123, 1
  %indvar.next1273 = add i64 %indvar1272, 1
  br i1 %polly.loop_cond690.us, label %polly.loop_header684.us, label %polly.loop_exit686.loopexit.us

polly.loop_header692.preheader.us:                ; preds = %polly.loop_header684.us
  %278 = add nsw i64 %polly.indvar688.us, %260
  %polly.access.add.Packed_MemRef_call2516704.us = add nsw i64 %274, %polly.access.mul.Packed_MemRef_call1514699.us
  %polly.access.Packed_MemRef_call2516705.us = getelementptr double, double* %Packed_MemRef_call2516, i64 %polly.access.add.Packed_MemRef_call2516704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2516705.us, align 8
  %polly.access.Packed_MemRef_call1514713.us = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call2516704.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1514713.us, align 8
  %279 = mul i64 %278, 9600
  %min.iters.check1275 = icmp ult i64 %273, 4
  br i1 %min.iters.check1275, label %polly.loop_header692.us.preheader, label %vector.ph1276

vector.ph1276:                                    ; preds = %polly.loop_header692.preheader.us
  %n.vec1278 = and i64 %273, -4
  %broadcast.splatinsert1284 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1285 = shufflevector <4 x double> %broadcast.splatinsert1284, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1268 ]
  %280 = add nuw nsw i64 %index1279, %248
  %281 = add nuw nsw i64 %index1279, %polly.access.mul.Packed_MemRef_call1514699.us
  %282 = getelementptr double, double* %Packed_MemRef_call1514, i64 %281
  %283 = bitcast double* %282 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %283, align 8
  %284 = fmul fast <4 x double> %broadcast.splat1285, %wide.load1283
  %285 = getelementptr double, double* %Packed_MemRef_call2516, i64 %281
  %286 = bitcast double* %285 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %286, align 8
  %287 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %288 = shl i64 %280, 3
  %289 = add i64 %288, %279
  %290 = getelementptr i8, i8* %call, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %291, align 8, !alias.scope !99, !noalias !101
  %292 = fadd fast <4 x double> %287, %284
  %293 = fmul fast <4 x double> %292, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %294 = fadd fast <4 x double> %293, %wide.load1289
  %295 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %294, <4 x double>* %295, align 8, !alias.scope !99, !noalias !101
  %index.next1280 = add i64 %index1279, 4
  %296 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %296, label %middle.block1266, label %vector.body1268, !llvm.loop !111

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1282 = icmp eq i64 %273, %n.vec1278
  br i1 %cmp.n1282, label %polly.loop_exit694.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %polly.loop_header692.preheader.us, %middle.block1266
  %polly.indvar696.us.ph = phi i64 [ 0, %polly.loop_header692.preheader.us ], [ %n.vec1278, %middle.block1266 ]
  br label %polly.loop_header692.us

polly.loop_exit686.loopexit.us:                   ; preds = %polly.loop_exit694.us
  %polly.indvar_next681.us = add nuw nsw i64 %polly.indvar680.us, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next681.us, 1000
  br i1 %exitcond1127.not, label %polly.loop_exit679, label %polly.loop_header677.us

polly.loop_header663:                             ; preds = %polly.loop_header644, %polly.loop_header663
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_header663 ], [ %265, %polly.loop_header644 ]
  %297 = add nuw nsw i64 %polly.indvar667, %248
  %polly.access.mul.call1671 = mul nsw i64 %297, 1000
  %polly.access.add.call1672 = add nuw nsw i64 %polly.access.mul.call1671, %polly.indvar647
  %polly.access.call1673 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672
  %polly.access.call1673.load = load double, double* %polly.access.call1673, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1514675 = add nuw nsw i64 %polly.indvar667, %polly.access.mul.Packed_MemRef_call1514674
  %polly.access.Packed_MemRef_call1514676 = getelementptr double, double* %Packed_MemRef_call1514, i64 %polly.access.add.Packed_MemRef_call1514675
  store double %polly.access.call1673.load, double* %polly.access.Packed_MemRef_call1514676, align 8
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %polly.loop_cond669.not.not = icmp slt i64 %polly.indvar667, %266
  br i1 %polly.loop_cond669.not.not, label %polly.loop_header663, label %polly.loop_exit665

polly.loop_header844:                             ; preds = %entry, %polly.loop_exit852
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit852 ], [ 0, %entry ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %entry ]
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 -1168)
  %298 = shl nsw i64 %polly.indvar847, 5
  %299 = add nsw i64 %smin1157, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1160.not, label %polly.loop_header871, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_header844 ]
  %300 = mul nsw i64 %polly.indvar853, -32
  %smin1195 = call i64 @llvm.smin.i64(i64 %300, i64 -1168)
  %301 = add nsw i64 %smin1195, 1200
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 -1168)
  %302 = shl nsw i64 %polly.indvar853, 5
  %303 = add nsw i64 %smin1153, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1152 = add nsw i64 %indvars.iv1151, -32
  %exitcond1159.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1159.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %polly.indvar859 = phi i64 [ 0, %polly.loop_header850 ], [ %polly.indvar_next860, %polly.loop_exit864 ]
  %304 = add nuw nsw i64 %polly.indvar859, %298
  %305 = trunc i64 %304 to i32
  %306 = mul nuw nsw i64 %304, 9600
  %min.iters.check = icmp eq i64 %301, 0
  br i1 %min.iters.check, label %polly.loop_header862, label %vector.ph1196

vector.ph1196:                                    ; preds = %polly.loop_header856
  %broadcast.splatinsert1203 = insertelement <4 x i64> poison, i64 %302, i32 0
  %broadcast.splat1204 = shufflevector <4 x i64> %broadcast.splatinsert1203, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1197 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1198, %vector.body1194 ]
  %vec.ind1201 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1196 ], [ %vec.ind.next1202, %vector.body1194 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1201, %broadcast.splat1204
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1206, %308
  %310 = add <4 x i32> %309, <i32 3, i32 3, i32 3, i32 3>
  %311 = urem <4 x i32> %310, <i32 1200, i32 1200, i32 1200, i32 1200>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add nuw nsw i64 %315, %306
  %317 = getelementptr i8, i8* %call, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !112, !noalias !114
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1202 = add <4 x i64> %vec.ind1201, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1198, %301
  br i1 %319, label %polly.loop_exit864, label %vector.body1194, !llvm.loop !117

polly.loop_exit864:                               ; preds = %vector.body1194, %polly.loop_header862
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar859, %299
  br i1 %exitcond1158.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_header856, %polly.loop_header862
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_header862 ], [ 0, %polly.loop_header856 ]
  %320 = add nuw nsw i64 %polly.indvar865, %302
  %321 = trunc i64 %320 to i32
  %322 = mul i32 %321, %305
  %323 = add i32 %322, 3
  %324 = urem i32 %323, 1200
  %p_conv31.i = sitofp i32 %324 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %325 = shl i64 %320, 3
  %326 = add nuw nsw i64 %325, %306
  %scevgep868 = getelementptr i8, i8* %call, i64 %326
  %scevgep868869 = bitcast i8* %scevgep868 to double*
  store double %p_div33.i, double* %scevgep868869, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar865, %303
  br i1 %exitcond1154.not, label %polly.loop_exit864, label %polly.loop_header862, !llvm.loop !118

polly.loop_header871:                             ; preds = %polly.loop_exit852, %polly.loop_exit879
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_exit852 ]
  %smin1147 = call i64 @llvm.smin.i64(i64 %indvars.iv1145, i64 -1168)
  %327 = shl nsw i64 %polly.indvar874, 5
  %328 = add nsw i64 %smin1147, 1199
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -32
  %exitcond1150.not = icmp eq i64 %polly.indvar_next875, 38
  br i1 %exitcond1150.not, label %polly.loop_header897, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_header871 ]
  %329 = mul nsw i64 %polly.indvar880, -32
  %smin1210 = call i64 @llvm.smin.i64(i64 %329, i64 -968)
  %330 = add nsw i64 %smin1210, 1000
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1141, i64 -968)
  %331 = shl nsw i64 %polly.indvar880, 5
  %332 = add nsw i64 %smin1143, 999
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -32
  %exitcond1149.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1149.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %polly.indvar886 = phi i64 [ 0, %polly.loop_header877 ], [ %polly.indvar_next887, %polly.loop_exit891 ]
  %333 = add nuw nsw i64 %polly.indvar886, %327
  %334 = trunc i64 %333 to i32
  %335 = mul nuw nsw i64 %333, 8000
  %min.iters.check1211 = icmp eq i64 %330, 0
  br i1 %min.iters.check1211, label %polly.loop_header889, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header883
  %broadcast.splatinsert1221 = insertelement <4 x i64> poison, i64 %331, i32 0
  %broadcast.splat1222 = shufflevector <4 x i64> %broadcast.splatinsert1221, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1209 ]
  %vec.ind1219 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1212 ], [ %vec.ind.next1220, %vector.body1209 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1219, %broadcast.splat1222
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1224, %337
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 1000, i32 1000, i32 1000, i32 1000>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add nuw nsw i64 %344, %335
  %346 = getelementptr i8, i8* %call2, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !116, !noalias !119
  %index.next1216 = add i64 %index1215, 4
  %vec.ind.next1220 = add <4 x i64> %vec.ind1219, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1216, %330
  br i1 %348, label %polly.loop_exit891, label %vector.body1209, !llvm.loop !120

polly.loop_exit891:                               ; preds = %vector.body1209, %polly.loop_header889
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar886, %328
  br i1 %exitcond1148.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_header883, %polly.loop_header889
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_header889 ], [ 0, %polly.loop_header883 ]
  %349 = add nuw nsw i64 %polly.indvar892, %331
  %350 = trunc i64 %349 to i32
  %351 = mul i32 %350, %334
  %352 = add i32 %351, 2
  %353 = urem i32 %352, 1000
  %p_conv10.i = sitofp i32 %353 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %354 = shl i64 %349, 3
  %355 = add nuw nsw i64 %354, %335
  %scevgep895 = getelementptr i8, i8* %call2, i64 %355
  %scevgep895896 = bitcast i8* %scevgep895 to double*
  store double %p_div12.i, double* %scevgep895896, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar892, %332
  br i1 %exitcond1144.not, label %polly.loop_exit891, label %polly.loop_header889, !llvm.loop !121

polly.loop_header897:                             ; preds = %polly.loop_exit879, %polly.loop_exit905
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_exit879 ]
  %smin1137 = call i64 @llvm.smin.i64(i64 %indvars.iv1135, i64 -1168)
  %356 = shl nsw i64 %polly.indvar900, 5
  %357 = add nsw i64 %smin1137, 1199
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -32
  %exitcond1140.not = icmp eq i64 %polly.indvar_next901, 38
  br i1 %exitcond1140.not, label %init_array.exit, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_header897 ]
  %358 = mul nsw i64 %polly.indvar906, -32
  %smin1228 = call i64 @llvm.smin.i64(i64 %358, i64 -968)
  %359 = add nsw i64 %smin1228, 1000
  %smin1133 = call i64 @llvm.smin.i64(i64 %indvars.iv1131, i64 -968)
  %360 = shl nsw i64 %polly.indvar906, 5
  %361 = add nsw i64 %smin1133, 999
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -32
  %exitcond1139.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1139.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %polly.indvar912 = phi i64 [ 0, %polly.loop_header903 ], [ %polly.indvar_next913, %polly.loop_exit917 ]
  %362 = add nuw nsw i64 %polly.indvar912, %356
  %363 = trunc i64 %362 to i32
  %364 = mul nuw nsw i64 %362, 8000
  %min.iters.check1229 = icmp eq i64 %359, 0
  br i1 %min.iters.check1229, label %polly.loop_header915, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header909
  %broadcast.splatinsert1239 = insertelement <4 x i64> poison, i64 %360, i32 0
  %broadcast.splat1240 = shufflevector <4 x i64> %broadcast.splatinsert1239, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1227 ]
  %vec.ind1237 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1230 ], [ %vec.ind.next1238, %vector.body1227 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1237, %broadcast.splat1240
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1242, %366
  %368 = add <4 x i32> %367, <i32 1, i32 1, i32 1, i32 1>
  %369 = urem <4 x i32> %368, <i32 1200, i32 1200, i32 1200, i32 1200>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %364
  %375 = getelementptr i8, i8* %call1, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !115, !noalias !122
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1238 = add <4 x i64> %vec.ind1237, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1234, %359
  br i1 %377, label %polly.loop_exit917, label %vector.body1227, !llvm.loop !123

polly.loop_exit917:                               ; preds = %vector.body1227, %polly.loop_header915
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar912, %357
  br i1 %exitcond1138.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_header909, %polly.loop_header915
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_header915 ], [ 0, %polly.loop_header909 ]
  %378 = add nuw nsw i64 %polly.indvar918, %360
  %379 = trunc i64 %378 to i32
  %380 = mul i32 %379, %363
  %381 = add i32 %380, 1
  %382 = urem i32 %381, 1200
  %p_conv.i = sitofp i32 %382 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %383 = shl i64 %378, 3
  %384 = add nuw nsw i64 %383, %364
  %scevgep922 = getelementptr i8, i8* %call1, i64 %384
  %scevgep922923 = bitcast i8* %scevgep922 to double*
  store double %p_div.i, double* %scevgep922923, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar918, %361
  br i1 %exitcond1134.not, label %polly.loop_exit917, label %polly.loop_header915, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 256}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 20}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
