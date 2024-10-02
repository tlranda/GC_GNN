; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1562.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1562.c"
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
  %call852 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1704 = bitcast i8* %call1 to double*
  %polly.access.call1713 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2714 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1713, %call2
  %polly.access.call2733 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2733, %call1
  %2 = or i1 %0, %1
  %polly.access.call753 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call753, %call2
  %4 = icmp ule i8* %polly.access.call2733, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call753, %call1
  %8 = icmp ule i8* %polly.access.call1713, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header826, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1137 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1136 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1135 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1134 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1134, %scevgep1137
  %bound1 = icmp ult i8* %scevgep1136, %scevgep1135
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
  br i1 %exitcond18.not.i, label %vector.ph1141, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1141:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1141
  %index1142 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1141 ], [ %vec.ind.next1147, %vector.body1140 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv7.i, i64 %index1142
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1143, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1140, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1140
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1141, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit887
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start498, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1203 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1203, label %for.body3.i46.preheader1346, label %vector.ph1204

vector.ph1204:                                    ; preds = %for.body3.i46.preheader
  %n.vec1206 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1202 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i, i64 %index1207
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1208 = add i64 %index1207, 4
  %46 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %46, label %middle.block1200, label %vector.body1202, !llvm.loop !18

middle.block1200:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %indvars.iv21.i, %n.vec1206
  br i1 %cmp.n1210, label %for.inc6.i, label %for.body3.i46.preheader1346

for.body3.i46.preheader1346:                      ; preds = %for.body3.i46.preheader, %middle.block1200
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1206, %middle.block1200 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1346, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1346 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1200, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting499
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start294, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1248 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1248, label %for.body3.i60.preheader1344, label %vector.ph1249

vector.ph1249:                                    ; preds = %for.body3.i60.preheader
  %n.vec1251 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1249
  %index1252 = phi i64 [ 0, %vector.ph1249 ], [ %index.next1253, %vector.body1247 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i52, i64 %index1252
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1256, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1253 = add i64 %index1252, 4
  %57 = icmp eq i64 %index.next1253, %n.vec1251
  br i1 %57, label %middle.block1245, label %vector.body1247, !llvm.loop !57

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1255 = icmp eq i64 %indvars.iv21.i52, %n.vec1251
  br i1 %cmp.n1255, label %for.inc6.i63, label %for.body3.i60.preheader1344

for.body3.i60.preheader1344:                      ; preds = %for.body3.i60.preheader, %middle.block1245
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1251, %middle.block1245 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1344, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1344 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1245, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1296 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1296, label %for.body3.i99.preheader1342, label %vector.ph1297

vector.ph1297:                                    ; preds = %for.body3.i99.preheader
  %n.vec1299 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i91, i64 %index1300
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1304, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %68 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %68, label %middle.block1293, label %vector.body1295, !llvm.loop !59

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i91, %n.vec1299
  br i1 %cmp.n1303, label %for.inc6.i102, label %for.body3.i99.preheader1342

for.body3.i99.preheader1342:                      ; preds = %for.body3.i99.preheader, %middle.block1293
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1299, %middle.block1293 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1342, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1342 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1293, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1308, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1310 = icmp ult i64 %88, 4
  br i1 %min.iters.check1310, label %polly.loop_header192.preheader, label %vector.ph1311

vector.ph1311:                                    ; preds = %polly.loop_header
  %n.vec1313 = and i64 %88, -4
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1307 ]
  %90 = shl nuw nsw i64 %index1314, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1318, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1315 = add i64 %index1314, 4
  %95 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %95, label %middle.block1305, label %vector.body1307, !llvm.loop !72

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1317 = icmp eq i64 %88, %n.vec1313
  br i1 %cmp.n1317, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1305
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1313, %middle.block1305 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1305
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1309 = add i64 %indvar1308, 1
  br i1 %exitcond1036.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1035.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1035.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1034.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2714, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1033.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit224 ], [ 2, %polly.loop_exit208 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
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
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 8
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 2
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 150
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit230 ], [ %indvars.iv1018, %polly.loop_header216 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %101 = shl nuw nsw i64 %polly.indvar225, 2
  %102 = add i64 %97, %101
  %smax1322 = call i64 @llvm.smax.i64(i64 %102, i64 0)
  %103 = mul nsw i64 %polly.indvar225, -4
  %104 = add i64 %98, %103
  %105 = add i64 %smax1322, %104
  %106 = shl nsw i64 %polly.indvar225, 2
  %107 = add nsw i64 %106, %99
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard = icmp slt i64 %109, 8
  br i1 %polly.loop_guard, label %polly.loop_header228.preheader, label %polly.loop_exit230

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1016, i64 0)
  %110 = add i64 %smax, %indvars.iv1020
  %111 = sub nsw i64 %100, %106
  %112 = add nuw nsw i64 %106, 4
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 4
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -4
  %exitcond1031.not = icmp eq i64 %polly.indvar_next226, %indvars.iv1029
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1323 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1324, %polly.loop_exit261 ]
  %indvars.iv1022 = phi i64 [ %110, %polly.loop_header228.preheader ], [ %indvars.iv.next1023, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %109, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %113 = add i64 %105, %indvar1323
  %smin1325 = call i64 @llvm.smin.i64(i64 %113, i64 3)
  %114 = add nsw i64 %smin1325, 1
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1022, i64 3)
  %115 = add nsw i64 %polly.indvar231, %111
  %polly.loop_guard2441123 = icmp sgt i64 %115, -1
  %116 = add nuw nsw i64 %polly.indvar231, %100
  %.not = icmp ult i64 %116, %112
  %polly.access.mul.call1253 = mul nsw i64 %116, 1000
  br i1 %polly.loop_guard2441123, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %117 = add nuw nsw i64 %polly.indvar245.us, %106
  %polly.access.mul.call1249.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %polly.access.mul.call1249.us, %polly.indvar237.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar245.us, %smin1026
  br i1 %exitcond1024.not, label %polly.cond.loopexit.us, label %polly.loop_header241.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1254.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1253
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %115
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1258.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next238.us, 1000
  br i1 %exitcond1025.not, label %polly.loop_header259.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header241.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit261, label %polly.loop_header234

polly.loop_exit261:                               ; preds = %polly.loop_exit268.loopexit.us, %polly.loop_header228.split, %polly.loop_header259.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 7
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 1
  %indvar.next1324 = add i64 %indvar1323, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %115
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 1000
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %118 = mul i64 %116, 9600
  br i1 %polly.loop_guard2441123, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 1200
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %116
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %115
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1326 = icmp ult i64 %114, 4
  br i1 %min.iters.check1326, label %polly.loop_header266.us.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header259.us
  %n.vec1329 = and i64 %114, -4
  %broadcast.splatinsert1335 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1336 = shufflevector <4 x double> %broadcast.splatinsert1335, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1338 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1339 = shufflevector <4 x double> %broadcast.splatinsert1338, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1321 ]
  %119 = add nuw nsw i64 %index1330, %106
  %120 = add nuw nsw i64 %index1330, %polly.access.mul.Packed_MemRef_call1273.us
  %121 = getelementptr double, double* %Packed_MemRef_call1, i64 %120
  %122 = bitcast double* %121 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %122, align 8
  %123 = fmul fast <4 x double> %broadcast.splat1336, %wide.load1334
  %124 = add nuw nsw i64 %119, %polly.access.mul.Packed_MemRef_call1273.us
  %125 = getelementptr double, double* %Packed_MemRef_call2, i64 %124
  %126 = bitcast double* %125 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %126, align 8
  %127 = fmul fast <4 x double> %broadcast.splat1339, %wide.load1337
  %128 = shl i64 %119, 3
  %129 = add i64 %128, %118
  %130 = getelementptr i8, i8* %call, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !65, !noalias !67
  %132 = fadd fast <4 x double> %127, %123
  %133 = fmul fast <4 x double> %132, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %134 = fadd fast <4 x double> %133, %wide.load1340
  %135 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !65, !noalias !67
  %index.next1331 = add i64 %index1330, 4
  %136 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %136, label %middle.block1319, label %vector.body1321, !llvm.loop !77

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1333 = icmp eq i64 %114, %n.vec1329
  br i1 %cmp.n1333, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1319
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1329, %middle.block1319 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %137 = add nuw nsw i64 %polly.indvar270.us, %106
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %137, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %138 = shl i64 %137, 3
  %139 = add i64 %138, %118
  %scevgep289.us = getelementptr i8, i8* %call, i64 %139
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar270.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1319
  %polly.indvar_next263.us = add nuw nsw i64 %polly.indvar262.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next263.us, 1000
  br i1 %exitcond1028.not, label %polly.loop_exit261, label %polly.loop_header259.us

polly.start294:                                   ; preds = %kernel_syr2k.exit
  %malloccall296 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header382

polly.exiting295:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* %malloccall296)
  tail call void @free(i8* %malloccall298)
  br label %kernel_syr2k.exit90

polly.loop_header382:                             ; preds = %polly.loop_exit390, %polly.start294
  %indvar1260 = phi i64 [ %indvar.next1261, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %140 = add i64 %indvar1260, 1
  %141 = mul nuw nsw i64 %polly.indvar385, 9600
  %scevgep394 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1262 = icmp ult i64 %140, 4
  br i1 %min.iters.check1262, label %polly.loop_header388.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header382
  %n.vec1265 = and i64 %140, -4
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1259 ]
  %142 = shl nuw nsw i64 %index1266, 3
  %143 = getelementptr i8, i8* %scevgep394, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !79, !noalias !81
  %145 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !79, !noalias !81
  %index.next1267 = add i64 %index1266, 4
  %147 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %147, label %middle.block1257, label %vector.body1259, !llvm.loop !86

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1269 = icmp eq i64 %140, %n.vec1265
  br i1 %cmp.n1269, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1257
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1265, %middle.block1257 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1257
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next386, 1200
  %indvar.next1261 = add i64 %indvar1260, 1
  br i1 %exitcond1062.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %148
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1061.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 1200
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next402, 1000
  br i1 %exitcond1060.not, label %polly.loop_header414, label %polly.loop_header398

polly.loop_header404:                             ; preds = %polly.loop_header404, %polly.loop_header398
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header398 ], [ %polly.indvar_next408, %polly.loop_header404 ]
  %polly.access.mul.call2411 = mul nuw nsw i64 %polly.indvar407, 1000
  %polly.access.add.call2412 = add nuw nsw i64 %polly.access.mul.call2411, %polly.indvar401
  %polly.access.call2413 = getelementptr double, double* %polly.access.cast.call2714, i64 %polly.access.add.call2412
  %polly.access.call2413.load = load double, double* %polly.access.call2413, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2299 = add nuw nsw i64 %polly.indvar407, %polly.access.mul.Packed_MemRef_call2299
  %polly.access.Packed_MemRef_call2299 = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299
  store double %polly.access.call2413.load, double* %polly.access.Packed_MemRef_call2299, align 8
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next408, 1200
  br i1 %exitcond1059.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header414:                             ; preds = %polly.loop_exit406, %polly.loop_exit422
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit422 ], [ 2, %polly.loop_exit406 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %149 = mul nsw i64 %polly.indvar417, -8
  %150 = shl nuw nsw i64 %polly.indvar417, 3
  %151 = mul nsw i64 %polly.indvar417, -8
  %152 = shl nsw i64 %polly.indvar417, 3
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit429
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -8
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 8
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 2
  %exitcond1058.not = icmp eq i64 %polly.indvar_next418, 150
  br i1 %exitcond1058.not, label %polly.exiting295, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit429, %polly.loop_header414
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit429 ], [ %indvars.iv1043, %polly.loop_header414 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit429 ], [ %indvars.iv1038, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit429 ], [ 0, %polly.loop_header414 ]
  %153 = shl nuw nsw i64 %polly.indvar423, 2
  %154 = add i64 %149, %153
  %smax1274 = call i64 @llvm.smax.i64(i64 %154, i64 0)
  %155 = mul nsw i64 %polly.indvar423, -4
  %156 = add i64 %150, %155
  %157 = add i64 %smax1274, %156
  %158 = shl nsw i64 %polly.indvar423, 2
  %159 = add nsw i64 %158, %151
  %160 = icmp sgt i64 %159, 0
  %161 = select i1 %160, i64 %159, i64 0
  %polly.loop_guard430 = icmp slt i64 %161, 8
  br i1 %polly.loop_guard430, label %polly.loop_header427.preheader, label %polly.loop_exit429

polly.loop_header427.preheader:                   ; preds = %polly.loop_header420
  %smax1042 = call i64 @llvm.smax.i64(i64 %indvars.iv1040, i64 0)
  %162 = add i64 %smax1042, %indvars.iv1045
  %163 = sub nsw i64 %152, %158
  %164 = add nuw nsw i64 %158, 4
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit465, %polly.loop_header420
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, 4
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -4
  %exitcond1057.not = icmp eq i64 %polly.indvar_next424, %indvars.iv1055
  br i1 %exitcond1057.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit465
  %indvar1275 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %indvar.next1276, %polly.loop_exit465 ]
  %indvars.iv1047 = phi i64 [ %162, %polly.loop_header427.preheader ], [ %indvars.iv.next1048, %polly.loop_exit465 ]
  %polly.indvar431 = phi i64 [ %161, %polly.loop_header427.preheader ], [ %polly.indvar_next432, %polly.loop_exit465 ]
  %165 = add i64 %157, %indvar1275
  %smin1277 = call i64 @llvm.smin.i64(i64 %165, i64 3)
  %166 = add nsw i64 %smin1277, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 3)
  %167 = add nsw i64 %polly.indvar431, %163
  %polly.loop_guard4441124 = icmp sgt i64 %167, -1
  %168 = add nuw nsw i64 %polly.indvar431, %152
  %.not906 = icmp ult i64 %168, %164
  %polly.access.mul.call1457 = mul nsw i64 %168, 1000
  br i1 %polly.loop_guard4441124, label %polly.loop_header434.us, label %polly.loop_header427.split

polly.loop_header434.us:                          ; preds = %polly.loop_header427, %polly.merge453.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.merge453.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar437.us, 1200
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %169 = add nuw nsw i64 %polly.indvar445.us, %158
  %polly.access.mul.call1449.us = mul nuw nsw i64 %169, 1000
  %polly.access.add.call1450.us = add nuw nsw i64 %polly.access.mul.call1449.us, %polly.indvar437.us
  %polly.access.call1451.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1450.us
  %polly.access.call1451.load.us = load double, double* %polly.access.call1451.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1297.us
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297.us
  store double %polly.access.call1451.load.us, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar445.us, %smin1052
  br i1 %exitcond1050.not, label %polly.cond452.loopexit.us, label %polly.loop_header441.us

polly.then454.us:                                 ; preds = %polly.cond452.loopexit.us
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.call1457
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1297461.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %167
  %polly.access.Packed_MemRef_call1297462.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1297462.us, align 8
  br label %polly.merge453.us

polly.merge453.us:                                ; preds = %polly.then454.us, %polly.cond452.loopexit.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next438.us, 1000
  br i1 %exitcond1051.not, label %polly.loop_header463.preheader, label %polly.loop_header434.us

polly.cond452.loopexit.us:                        ; preds = %polly.loop_header441.us
  br i1 %.not906, label %polly.merge453.us, label %polly.then454.us

polly.loop_header427.split:                       ; preds = %polly.loop_header427
  br i1 %.not906, label %polly.loop_exit465, label %polly.loop_header434

polly.loop_exit465:                               ; preds = %polly.loop_exit472.loopexit.us, %polly.loop_header427.split, %polly.loop_header463.preheader
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %polly.loop_cond433 = icmp ult i64 %polly.indvar431, 7
  %indvars.iv.next1048 = add i64 %indvars.iv1047, 1
  %indvar.next1276 = add i64 %indvar1275, 1
  br i1 %polly.loop_cond433, label %polly.loop_header427, label %polly.loop_exit429

polly.loop_header434:                             ; preds = %polly.loop_header427.split, %polly.loop_header434
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header434 ], [ 0, %polly.loop_header427.split ]
  %polly.access.add.call1458 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297460 = mul nuw nsw i64 %polly.indvar437, 1200
  %polly.access.add.Packed_MemRef_call1297461 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297460, %167
  %polly.access.Packed_MemRef_call1297462 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1297462, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next438, 1000
  br i1 %exitcond1037.not, label %polly.loop_header463.preheader, label %polly.loop_header434

polly.loop_header463.preheader:                   ; preds = %polly.loop_header434, %polly.merge453.us
  %170 = mul i64 %168, 9600
  br i1 %polly.loop_guard4441124, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1297477.us = mul nuw nsw i64 %polly.indvar466.us, 1200
  %polly.access.add.Packed_MemRef_call2299482.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %168
  %polly.access.Packed_MemRef_call2299483.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2299483.us, align 8
  %polly.access.add.Packed_MemRef_call1297490.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %167
  %polly.access.Packed_MemRef_call1297491.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1297491.us, align 8
  %min.iters.check1278 = icmp ult i64 %166, 4
  br i1 %min.iters.check1278, label %polly.loop_header470.us.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %polly.loop_header463.us
  %n.vec1281 = and i64 %166, -4
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_484.us, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1273 ]
  %171 = add nuw nsw i64 %index1282, %158
  %172 = add nuw nsw i64 %index1282, %polly.access.mul.Packed_MemRef_call1297477.us
  %173 = getelementptr double, double* %Packed_MemRef_call1297, i64 %172
  %174 = bitcast double* %173 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %174, align 8
  %175 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %176 = add nuw nsw i64 %171, %polly.access.mul.Packed_MemRef_call1297477.us
  %177 = getelementptr double, double* %Packed_MemRef_call2299, i64 %176
  %178 = bitcast double* %177 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %178, align 8
  %179 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %180 = shl i64 %171, 3
  %181 = add i64 %180, %170
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %183, align 8, !alias.scope !79, !noalias !81
  %184 = fadd fast <4 x double> %179, %175
  %185 = fmul fast <4 x double> %184, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %186 = fadd fast <4 x double> %185, %wide.load1292
  %187 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %186, <4 x double>* %187, align 8, !alias.scope !79, !noalias !81
  %index.next1283 = add i64 %index1282, 4
  %188 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %188, label %middle.block1271, label %vector.body1273, !llvm.loop !90

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1285 = icmp eq i64 %166, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us.preheader

polly.loop_header470.us.preheader:                ; preds = %polly.loop_header463.us, %middle.block1271
  %polly.indvar474.us.ph = phi i64 [ 0, %polly.loop_header463.us ], [ %n.vec1281, %middle.block1271 ]
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.us.preheader, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %polly.indvar474.us.ph, %polly.loop_header470.us.preheader ]
  %189 = add nuw nsw i64 %polly.indvar474.us, %158
  %polly.access.add.Packed_MemRef_call1297478.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call1297479.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call1297479.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_484.us, %_p_scalar_480.us
  %polly.access.add.Packed_MemRef_call2299486.us = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call2299487.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call2299487.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %190 = shl i64 %189, 3
  %191 = add i64 %190, %170
  %scevgep493.us = getelementptr i8, i8* %call, i64 %191
  %scevgep493494.us = bitcast i8* %scevgep493.us to double*
  %_p_scalar_495.us = load double, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_495.us
  store double %p_add42.i79.us, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar474.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us, !llvm.loop !91

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_header470.us, %middle.block1271
  %polly.indvar_next467.us = add nuw nsw i64 %polly.indvar466.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next467.us, 1000
  br i1 %exitcond1054.not, label %polly.loop_exit465, label %polly.loop_header463.us

polly.start498:                                   ; preds = %init_array.exit
  %malloccall500 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall502 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header586

polly.exiting499:                                 ; preds = %polly.loop_exit626
  tail call void @free(i8* %malloccall500)
  tail call void @free(i8* %malloccall502)
  br label %kernel_syr2k.exit

polly.loop_header586:                             ; preds = %polly.loop_exit594, %polly.start498
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit594 ], [ 0, %polly.start498 ]
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 1, %polly.start498 ]
  %192 = add i64 %indvar, 1
  %193 = mul nuw nsw i64 %polly.indvar589, 9600
  %scevgep598 = getelementptr i8, i8* %call, i64 %193
  %min.iters.check1214 = icmp ult i64 %192, 4
  br i1 %min.iters.check1214, label %polly.loop_header592.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header586
  %n.vec1217 = and i64 %192, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %194 = shl nuw nsw i64 %index1218, 3
  %195 = getelementptr i8, i8* %scevgep598, i64 %194
  %196 = bitcast i8* %195 to <4 x double>*
  %wide.load1222 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !92, !noalias !94
  %197 = fmul fast <4 x double> %wide.load1222, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %198 = bitcast i8* %195 to <4 x double>*
  store <4 x double> %197, <4 x double>* %198, align 8, !alias.scope !92, !noalias !94
  %index.next1219 = add i64 %index1218, 4
  %199 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %199, label %middle.block1211, label %vector.body1213, !llvm.loop !99

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %192, %n.vec1217
  br i1 %cmp.n1221, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header586, %middle.block1211
  %polly.indvar595.ph = phi i64 [ 0, %polly.loop_header586 ], [ %n.vec1217, %middle.block1211 ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592, %middle.block1211
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next590, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1088.not, label %polly.loop_header602.preheader, label %polly.loop_header586

polly.loop_header602.preheader:                   ; preds = %polly.loop_exit594
  %Packed_MemRef_call1501 = bitcast i8* %malloccall500 to double*
  %Packed_MemRef_call2503 = bitcast i8* %malloccall502 to double*
  br label %polly.loop_header602

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_header592
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_header592 ], [ %polly.indvar595.ph, %polly.loop_header592.preheader ]
  %200 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %200
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond1087.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !100

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit610
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 0, %polly.loop_header602.preheader ]
  %polly.access.mul.Packed_MemRef_call2503 = mul nuw nsw i64 %polly.indvar605, 1200
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next606, 1000
  br i1 %exitcond1086.not, label %polly.loop_header618, label %polly.loop_header602

polly.loop_header608:                             ; preds = %polly.loop_header608, %polly.loop_header602
  %polly.indvar611 = phi i64 [ 0, %polly.loop_header602 ], [ %polly.indvar_next612, %polly.loop_header608 ]
  %polly.access.mul.call2615 = mul nuw nsw i64 %polly.indvar611, 1000
  %polly.access.add.call2616 = add nuw nsw i64 %polly.access.mul.call2615, %polly.indvar605
  %polly.access.call2617 = getelementptr double, double* %polly.access.cast.call2714, i64 %polly.access.add.call2616
  %polly.access.call2617.load = load double, double* %polly.access.call2617, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2503 = add nuw nsw i64 %polly.indvar611, %polly.access.mul.Packed_MemRef_call2503
  %polly.access.Packed_MemRef_call2503 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503
  store double %polly.access.call2617.load, double* %polly.access.Packed_MemRef_call2503, align 8
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next612, 1200
  br i1 %exitcond1085.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header618:                             ; preds = %polly.loop_exit610, %polly.loop_exit626
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit626 ], [ 2, %polly.loop_exit610 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %201 = mul nsw i64 %polly.indvar621, -8
  %202 = shl nuw nsw i64 %polly.indvar621, 3
  %203 = mul nsw i64 %polly.indvar621, -8
  %204 = shl nsw i64 %polly.indvar621, 3
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit633
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -8
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 8
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 2
  %exitcond1084.not = icmp eq i64 %polly.indvar_next622, 150
  br i1 %exitcond1084.not, label %polly.exiting499, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit633, %polly.loop_header618
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit633 ], [ %indvars.iv1069, %polly.loop_header618 ]
  %indvars.iv1066 = phi i64 [ %indvars.iv.next1067, %polly.loop_exit633 ], [ %indvars.iv1064, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit633 ], [ 0, %polly.loop_header618 ]
  %205 = shl nuw nsw i64 %polly.indvar627, 2
  %206 = add i64 %201, %205
  %smax1226 = call i64 @llvm.smax.i64(i64 %206, i64 0)
  %207 = mul nsw i64 %polly.indvar627, -4
  %208 = add i64 %202, %207
  %209 = add i64 %smax1226, %208
  %210 = shl nsw i64 %polly.indvar627, 2
  %211 = add nsw i64 %210, %203
  %212 = icmp sgt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  %polly.loop_guard634 = icmp slt i64 %213, 8
  br i1 %polly.loop_guard634, label %polly.loop_header631.preheader, label %polly.loop_exit633

polly.loop_header631.preheader:                   ; preds = %polly.loop_header624
  %smax1068 = call i64 @llvm.smax.i64(i64 %indvars.iv1066, i64 0)
  %214 = add i64 %smax1068, %indvars.iv1071
  %215 = sub nsw i64 %204, %210
  %216 = add nuw nsw i64 %210, 4
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit669, %polly.loop_header624
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1067 = add nsw i64 %indvars.iv1066, 4
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -4
  %exitcond1083.not = icmp eq i64 %polly.indvar_next628, %indvars.iv1081
  br i1 %exitcond1083.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit669
  %indvar1227 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvar.next1228, %polly.loop_exit669 ]
  %indvars.iv1073 = phi i64 [ %214, %polly.loop_header631.preheader ], [ %indvars.iv.next1074, %polly.loop_exit669 ]
  %polly.indvar635 = phi i64 [ %213, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit669 ]
  %217 = add i64 %209, %indvar1227
  %smin1229 = call i64 @llvm.smin.i64(i64 %217, i64 3)
  %218 = add nsw i64 %smin1229, 1
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 3)
  %219 = add nsw i64 %polly.indvar635, %215
  %polly.loop_guard6481125 = icmp sgt i64 %219, -1
  %220 = add nuw nsw i64 %polly.indvar635, %204
  %.not907 = icmp ult i64 %220, %216
  %polly.access.mul.call1661 = mul nsw i64 %220, 1000
  br i1 %polly.loop_guard6481125, label %polly.loop_header638.us, label %polly.loop_header631.split

polly.loop_header638.us:                          ; preds = %polly.loop_header631, %polly.merge657.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.merge657.us ], [ 0, %polly.loop_header631 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar641.us, 1200
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header645.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.loop_header645.us ], [ 0, %polly.loop_header638.us ]
  %221 = add nuw nsw i64 %polly.indvar649.us, %210
  %polly.access.mul.call1653.us = mul nuw nsw i64 %221, 1000
  %polly.access.add.call1654.us = add nuw nsw i64 %polly.access.mul.call1653.us, %polly.indvar641.us
  %polly.access.call1655.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1654.us
  %polly.access.call1655.load.us = load double, double* %polly.access.call1655.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1501.us
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us
  store double %polly.access.call1655.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar649.us, %smin1078
  br i1 %exitcond1076.not, label %polly.cond656.loopexit.us, label %polly.loop_header645.us

polly.then658.us:                                 ; preds = %polly.cond656.loopexit.us
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.call1661
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501665.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501.us, %219
  %polly.access.Packed_MemRef_call1501666.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1501666.us, align 8
  br label %polly.merge657.us

polly.merge657.us:                                ; preds = %polly.then658.us, %polly.cond656.loopexit.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next642.us, 1000
  br i1 %exitcond1077.not, label %polly.loop_header667.preheader, label %polly.loop_header638.us

polly.cond656.loopexit.us:                        ; preds = %polly.loop_header645.us
  br i1 %.not907, label %polly.merge657.us, label %polly.then658.us

polly.loop_header631.split:                       ; preds = %polly.loop_header631
  br i1 %.not907, label %polly.loop_exit669, label %polly.loop_header638

polly.loop_exit669:                               ; preds = %polly.loop_exit676.loopexit.us, %polly.loop_header631.split, %polly.loop_header667.preheader
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %polly.loop_cond637 = icmp ult i64 %polly.indvar635, 7
  %indvars.iv.next1074 = add i64 %indvars.iv1073, 1
  %indvar.next1228 = add i64 %indvar1227, 1
  br i1 %polly.loop_cond637, label %polly.loop_header631, label %polly.loop_exit633

polly.loop_header638:                             ; preds = %polly.loop_header631.split, %polly.loop_header638
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_header638 ], [ 0, %polly.loop_header631.split ]
  %polly.access.add.call1662 = add nuw nsw i64 %polly.indvar641, %polly.access.mul.call1661
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1501664 = mul nuw nsw i64 %polly.indvar641, 1200
  %polly.access.add.Packed_MemRef_call1501665 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501664, %219
  %polly.access.Packed_MemRef_call1501666 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1501666, align 8
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next642, 1000
  br i1 %exitcond1063.not, label %polly.loop_header667.preheader, label %polly.loop_header638

polly.loop_header667.preheader:                   ; preds = %polly.loop_header638, %polly.merge657.us
  %222 = mul i64 %220, 9600
  br i1 %polly.loop_guard6481125, label %polly.loop_header667.us, label %polly.loop_exit669

polly.loop_header667.us:                          ; preds = %polly.loop_header667.preheader, %polly.loop_exit676.loopexit.us
  %polly.indvar670.us = phi i64 [ %polly.indvar_next671.us, %polly.loop_exit676.loopexit.us ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1501681.us = mul nuw nsw i64 %polly.indvar670.us, 1200
  %polly.access.add.Packed_MemRef_call2503686.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %220
  %polly.access.Packed_MemRef_call2503687.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2503687.us, align 8
  %polly.access.add.Packed_MemRef_call1501694.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %219
  %polly.access.Packed_MemRef_call1501695.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1501695.us, align 8
  %min.iters.check1230 = icmp ult i64 %218, 4
  br i1 %min.iters.check1230, label %polly.loop_header674.us.preheader, label %vector.ph1231

vector.ph1231:                                    ; preds = %polly.loop_header667.us
  %n.vec1233 = and i64 %218, -4
  %broadcast.splatinsert1239 = insertelement <4 x double> poison, double %_p_scalar_688.us, i32 0
  %broadcast.splat1240 = shufflevector <4 x double> %broadcast.splatinsert1239, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1242 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1243 = shufflevector <4 x double> %broadcast.splatinsert1242, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1225 ]
  %223 = add nuw nsw i64 %index1234, %210
  %224 = add nuw nsw i64 %index1234, %polly.access.mul.Packed_MemRef_call1501681.us
  %225 = getelementptr double, double* %Packed_MemRef_call1501, i64 %224
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1240, %wide.load1238
  %228 = add nuw nsw i64 %223, %polly.access.mul.Packed_MemRef_call1501681.us
  %229 = getelementptr double, double* %Packed_MemRef_call2503, i64 %228
  %230 = bitcast double* %229 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %230, align 8
  %231 = fmul fast <4 x double> %broadcast.splat1243, %wide.load1241
  %232 = shl i64 %223, 3
  %233 = add i64 %232, %222
  %234 = getelementptr i8, i8* %call, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !92, !noalias !94
  %236 = fadd fast <4 x double> %231, %227
  %237 = fmul fast <4 x double> %236, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %238 = fadd fast <4 x double> %237, %wide.load1244
  %239 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %238, <4 x double>* %239, align 8, !alias.scope !92, !noalias !94
  %index.next1235 = add i64 %index1234, 4
  %240 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %240, label %middle.block1223, label %vector.body1225, !llvm.loop !103

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1237 = icmp eq i64 %218, %n.vec1233
  br i1 %cmp.n1237, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us.preheader

polly.loop_header674.us.preheader:                ; preds = %polly.loop_header667.us, %middle.block1223
  %polly.indvar678.us.ph = phi i64 [ 0, %polly.loop_header667.us ], [ %n.vec1233, %middle.block1223 ]
  br label %polly.loop_header674.us

polly.loop_header674.us:                          ; preds = %polly.loop_header674.us.preheader, %polly.loop_header674.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_header674.us ], [ %polly.indvar678.us.ph, %polly.loop_header674.us.preheader ]
  %241 = add nuw nsw i64 %polly.indvar678.us, %210
  %polly.access.add.Packed_MemRef_call1501682.us = add nuw nsw i64 %polly.indvar678.us, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call1501683.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call1501683.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_688.us, %_p_scalar_684.us
  %polly.access.add.Packed_MemRef_call2503690.us = add nuw nsw i64 %241, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call2503691.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call2503691.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %222
  %scevgep697.us = getelementptr i8, i8* %call, i64 %243
  %scevgep697698.us = bitcast i8* %scevgep697.us to double*
  %_p_scalar_699.us = load double, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_699.us
  store double %p_add42.i.us, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar678.us, %smin1078
  br i1 %exitcond1079.not, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us, !llvm.loop !104

polly.loop_exit676.loopexit.us:                   ; preds = %polly.loop_header674.us, %middle.block1223
  %polly.indvar_next671.us = add nuw nsw i64 %polly.indvar670.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next671.us, 1000
  br i1 %exitcond1080.not, label %polly.loop_exit669, label %polly.loop_header667.us

polly.loop_header826:                             ; preds = %entry, %polly.loop_exit834
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit834 ], [ 0, %entry ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %entry ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %244 = shl nsw i64 %polly.indvar829, 5
  %245 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next830, 38
  br i1 %exitcond1118.not, label %polly.loop_header853, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit840 ], [ 0, %polly.loop_header826 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_header826 ]
  %246 = mul nsw i64 %polly.indvar835, -32
  %smin = call i64 @llvm.smin.i64(i64 %246, i64 -1168)
  %247 = add nsw i64 %smin, 1200
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -1168)
  %248 = shl nsw i64 %polly.indvar835, 5
  %249 = add nsw i64 %smin1111, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1117.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %polly.indvar841 = phi i64 [ 0, %polly.loop_header832 ], [ %polly.indvar_next842, %polly.loop_exit846 ]
  %250 = add nuw nsw i64 %polly.indvar841, %244
  %251 = trunc i64 %250 to i32
  %252 = mul nuw nsw i64 %250, 9600
  %min.iters.check = icmp eq i64 %247, 0
  br i1 %min.iters.check, label %polly.loop_header844, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header838
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %248, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1153
  %index1154 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1159, %vector.body1152 ]
  %253 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %254 = trunc <4 x i64> %253 to <4 x i32>
  %255 = mul <4 x i32> %broadcast.splat1163, %254
  %256 = add <4 x i32> %255, <i32 3, i32 3, i32 3, i32 3>
  %257 = urem <4 x i32> %256, <i32 1200, i32 1200, i32 1200, i32 1200>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %260 = extractelement <4 x i64> %253, i32 0
  %261 = shl i64 %260, 3
  %262 = add nuw nsw i64 %261, %252
  %263 = getelementptr i8, i8* %call, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %259, <4 x double>* %264, align 8, !alias.scope !105, !noalias !107
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %265 = icmp eq i64 %index.next1155, %247
  br i1 %265, label %polly.loop_exit846, label %vector.body1152, !llvm.loop !110

polly.loop_exit846:                               ; preds = %vector.body1152, %polly.loop_header844
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar841, %245
  br i1 %exitcond1116.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_header838, %polly.loop_header844
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_header844 ], [ 0, %polly.loop_header838 ]
  %266 = add nuw nsw i64 %polly.indvar847, %248
  %267 = trunc i64 %266 to i32
  %268 = mul i32 %267, %251
  %269 = add i32 %268, 3
  %270 = urem i32 %269, 1200
  %p_conv31.i = sitofp i32 %270 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %271 = shl i64 %266, 3
  %272 = add nuw nsw i64 %271, %252
  %scevgep850 = getelementptr i8, i8* %call, i64 %272
  %scevgep850851 = bitcast i8* %scevgep850 to double*
  store double %p_div33.i, double* %scevgep850851, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar847, %249
  br i1 %exitcond1112.not, label %polly.loop_exit846, label %polly.loop_header844, !llvm.loop !111

polly.loop_header853:                             ; preds = %polly.loop_exit834, %polly.loop_exit861
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit861 ], [ 0, %polly.loop_exit834 ]
  %polly.indvar856 = phi i64 [ %polly.indvar_next857, %polly.loop_exit861 ], [ 0, %polly.loop_exit834 ]
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -1168)
  %273 = shl nsw i64 %polly.indvar856, 5
  %274 = add nsw i64 %smin1105, 1199
  br label %polly.loop_header859

polly.loop_exit861:                               ; preds = %polly.loop_exit867
  %polly.indvar_next857 = add nuw nsw i64 %polly.indvar856, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next857, 38
  br i1 %exitcond1108.not, label %polly.loop_header879, label %polly.loop_header853

polly.loop_header859:                             ; preds = %polly.loop_exit867, %polly.loop_header853
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit867 ], [ 0, %polly.loop_header853 ]
  %polly.indvar862 = phi i64 [ %polly.indvar_next863, %polly.loop_exit867 ], [ 0, %polly.loop_header853 ]
  %275 = mul nsw i64 %polly.indvar862, -32
  %smin1167 = call i64 @llvm.smin.i64(i64 %275, i64 -968)
  %276 = add nsw i64 %smin1167, 1000
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -968)
  %277 = shl nsw i64 %polly.indvar862, 5
  %278 = add nsw i64 %smin1101, 999
  br label %polly.loop_header865

polly.loop_exit867:                               ; preds = %polly.loop_exit873
  %polly.indvar_next863 = add nuw nsw i64 %polly.indvar862, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next863, 32
  br i1 %exitcond1107.not, label %polly.loop_exit861, label %polly.loop_header859

polly.loop_header865:                             ; preds = %polly.loop_exit873, %polly.loop_header859
  %polly.indvar868 = phi i64 [ 0, %polly.loop_header859 ], [ %polly.indvar_next869, %polly.loop_exit873 ]
  %279 = add nuw nsw i64 %polly.indvar868, %273
  %280 = trunc i64 %279 to i32
  %281 = mul nuw nsw i64 %279, 8000
  %min.iters.check1168 = icmp eq i64 %276, 0
  br i1 %min.iters.check1168, label %polly.loop_header871, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header865
  %broadcast.splatinsert1178 = insertelement <4 x i64> poison, i64 %277, i32 0
  %broadcast.splat1179 = shufflevector <4 x i64> %broadcast.splatinsert1178, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1166 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1169 ], [ %vec.ind.next1177, %vector.body1166 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1176, %broadcast.splat1179
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1181, %283
  %285 = add <4 x i32> %284, <i32 2, i32 2, i32 2, i32 2>
  %286 = urem <4 x i32> %285, <i32 1000, i32 1000, i32 1000, i32 1000>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add nuw nsw i64 %290, %281
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !109, !noalias !112
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1173, %276
  br i1 %294, label %polly.loop_exit873, label %vector.body1166, !llvm.loop !113

polly.loop_exit873:                               ; preds = %vector.body1166, %polly.loop_header871
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar868, %274
  br i1 %exitcond1106.not, label %polly.loop_exit867, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_header865, %polly.loop_header871
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_header871 ], [ 0, %polly.loop_header865 ]
  %295 = add nuw nsw i64 %polly.indvar874, %277
  %296 = trunc i64 %295 to i32
  %297 = mul i32 %296, %280
  %298 = add i32 %297, 2
  %299 = urem i32 %298, 1000
  %p_conv10.i = sitofp i32 %299 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %300 = shl i64 %295, 3
  %301 = add nuw nsw i64 %300, %281
  %scevgep877 = getelementptr i8, i8* %call2, i64 %301
  %scevgep877878 = bitcast i8* %scevgep877 to double*
  store double %p_div12.i, double* %scevgep877878, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar874, %278
  br i1 %exitcond1102.not, label %polly.loop_exit873, label %polly.loop_header871, !llvm.loop !114

polly.loop_header879:                             ; preds = %polly.loop_exit861, %polly.loop_exit887
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit887 ], [ 0, %polly.loop_exit861 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit861 ]
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1168)
  %302 = shl nsw i64 %polly.indvar882, 5
  %303 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -32
  %exitcond1098.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1098.not, label %init_array.exit, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %304 = mul nsw i64 %polly.indvar888, -32
  %smin1185 = call i64 @llvm.smin.i64(i64 %304, i64 -968)
  %305 = add nsw i64 %smin1185, 1000
  %smin1091 = call i64 @llvm.smin.i64(i64 %indvars.iv1089, i64 -968)
  %306 = shl nsw i64 %polly.indvar888, 5
  %307 = add nsw i64 %smin1091, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1097.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %308 = add nuw nsw i64 %polly.indvar894, %302
  %309 = trunc i64 %308 to i32
  %310 = mul nuw nsw i64 %308, 8000
  %min.iters.check1186 = icmp eq i64 %305, 0
  br i1 %min.iters.check1186, label %polly.loop_header897, label %vector.ph1187

vector.ph1187:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %306, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1191, %vector.body1184 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1187 ], [ %vec.ind.next1195, %vector.body1184 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1199, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 1200, i32 1200, i32 1200, i32 1200>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add nuw nsw i64 %319, %310
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !108, !noalias !115
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1191, %305
  br i1 %323, label %polly.loop_exit899, label %vector.body1184, !llvm.loop !116

polly.loop_exit899:                               ; preds = %vector.body1184, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar894, %303
  br i1 %exitcond1096.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %324 = add nuw nsw i64 %polly.indvar900, %306
  %325 = trunc i64 %324 to i32
  %326 = mul i32 %325, %309
  %327 = add i32 %326, 1
  %328 = urem i32 %327, 1200
  %p_conv.i = sitofp i32 %328 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %329 = shl i64 %324, 3
  %330 = add nuw nsw i64 %329, %310
  %scevgep904 = getelementptr i8, i8* %call1, i64 %330
  %scevgep904905 = bitcast i8* %scevgep904 to double*
  store double %p_div.i, double* %scevgep904905, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar900, %307
  br i1 %exitcond1092.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !117
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
