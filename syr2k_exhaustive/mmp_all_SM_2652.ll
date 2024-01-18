; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2652.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2652.c"
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
  %scevgep1139 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1138 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1137 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1136 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1136, %scevgep1139
  %bound1 = icmp ult i8* %scevgep1138, %scevgep1137
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
  br i1 %exitcond18.not.i, label %vector.ph1143, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1143:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1150 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1151 = shufflevector <4 x i64> %broadcast.splatinsert1150, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %vector.ph1143
  %index1144 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1143 ], [ %vec.ind.next1149, %vector.body1142 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1148, %broadcast.splat1151
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv7.i, i64 %index1144
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1145, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1142, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1142
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1143, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit887
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start498, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1205 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1205, label %for.body3.i46.preheader1348, label %vector.ph1206

vector.ph1206:                                    ; preds = %for.body3.i46.preheader
  %n.vec1208 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1204 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i, i64 %index1209
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1210 = add i64 %index1209, 4
  %46 = icmp eq i64 %index.next1210, %n.vec1208
  br i1 %46, label %middle.block1202, label %vector.body1204, !llvm.loop !18

middle.block1202:                                 ; preds = %vector.body1204
  %cmp.n1212 = icmp eq i64 %indvars.iv21.i, %n.vec1208
  br i1 %cmp.n1212, label %for.inc6.i, label %for.body3.i46.preheader1348

for.body3.i46.preheader1348:                      ; preds = %for.body3.i46.preheader, %middle.block1202
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1208, %middle.block1202 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1348, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1348 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1202, %for.cond1.preheader.i45
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
  %min.iters.check1250 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1250, label %for.body3.i60.preheader1346, label %vector.ph1251

vector.ph1251:                                    ; preds = %for.body3.i60.preheader
  %n.vec1253 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1249 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i52, i64 %index1254
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1258, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1255 = add i64 %index1254, 4
  %57 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %57, label %middle.block1247, label %vector.body1249, !llvm.loop !57

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1257 = icmp eq i64 %indvars.iv21.i52, %n.vec1253
  br i1 %cmp.n1257, label %for.inc6.i63, label %for.body3.i60.preheader1346

for.body3.i60.preheader1346:                      ; preds = %for.body3.i60.preheader, %middle.block1247
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1253, %middle.block1247 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1346, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1346 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1247, %for.cond1.preheader.i54
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
  %min.iters.check1298 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1298, label %for.body3.i99.preheader1344, label %vector.ph1299

vector.ph1299:                                    ; preds = %for.body3.i99.preheader
  %n.vec1301 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1297 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i91, i64 %index1302
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1306, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1303 = add i64 %index1302, 4
  %68 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %68, label %middle.block1295, label %vector.body1297, !llvm.loop !59

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %indvars.iv21.i91, %n.vec1301
  br i1 %cmp.n1305, label %for.inc6.i102, label %for.body3.i99.preheader1344

for.body3.i99.preheader1344:                      ; preds = %for.body3.i99.preheader, %middle.block1295
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1301, %middle.block1295 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1344, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1344 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call852, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1295, %for.cond1.preheader.i93
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
  %indvar1310 = phi i64 [ %indvar.next1311, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1310, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1312 = icmp ult i64 %88, 4
  br i1 %min.iters.check1312, label %polly.loop_header192.preheader, label %vector.ph1313

vector.ph1313:                                    ; preds = %polly.loop_header
  %n.vec1315 = and i64 %88, -4
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1309 ]
  %90 = shl nuw nsw i64 %index1316, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1320 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1320, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1317 = add i64 %index1316, 4
  %95 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %95, label %middle.block1307, label %vector.body1309, !llvm.loop !72

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1319 = icmp eq i64 %88, %n.vec1315
  br i1 %cmp.n1319, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1307
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1315, %middle.block1307 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1307
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1311 = add i64 %indvar1310, 1
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
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit224 ], [ 15, %polly.loop_exit208 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nsw i64 %polly.indvar219, -128
  %98 = shl nuw nsw i64 %polly.indvar219, 7
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv1029, i64 149)
  %99 = mul nsw i64 %polly.indvar219, -128
  %100 = icmp slt i64 %99, -1072
  %101 = select i1 %100, i64 %99, i64 -1072
  %102 = add nsw i64 %101, 1199
  %103 = shl nsw i64 %polly.indvar219, 7
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 128
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 16
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit230 ], [ %indvars.iv1018, %polly.loop_header216 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %104 = shl nuw nsw i64 %polly.indvar225, 3
  %105 = add i64 %97, %104
  %smax1324 = call i64 @llvm.smax.i64(i64 %105, i64 0)
  %106 = mul nsw i64 %polly.indvar225, -8
  %107 = add i64 %98, %106
  %108 = add i64 %smax1324, %107
  %109 = shl nsw i64 %polly.indvar225, 3
  %110 = add nsw i64 %109, %99
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard.not = icmp sgt i64 %112, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1016, i64 0)
  %113 = add i64 %smax, %indvars.iv1020
  %114 = sub nsw i64 %103, %109
  %115 = add nuw nsw i64 %109, 8
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit261, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 8
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -8
  %exitcond1031.not = icmp eq i64 %polly.indvar225, %umin
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit261
  %indvar1325 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvar.next1326, %polly.loop_exit261 ]
  %indvars.iv1022 = phi i64 [ %113, %polly.loop_header228.preheader ], [ %indvars.iv.next1023, %polly.loop_exit261 ]
  %polly.indvar231 = phi i64 [ %112, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit261 ]
  %116 = add i64 %108, %indvar1325
  %smin1327 = call i64 @llvm.smin.i64(i64 %116, i64 7)
  %117 = add nsw i64 %smin1327, 1
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1022, i64 7)
  %118 = add nsw i64 %polly.indvar231, %114
  %polly.loop_guard2441125 = icmp sgt i64 %118, -1
  %119 = add nuw nsw i64 %polly.indvar231, %103
  %.not = icmp ult i64 %119, %115
  %polly.access.mul.call1253 = mul nsw i64 %119, 1000
  br i1 %polly.loop_guard2441125, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %120 = add nuw nsw i64 %polly.indvar245.us, %109
  %polly.access.mul.call1249.us = mul nuw nsw i64 %120, 1000
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
  %polly.access.add.Packed_MemRef_call1257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %118
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
  %polly.loop_cond233.not.not = icmp ult i64 %polly.indvar231, %102
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 1
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %polly.loop_cond233.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1254 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1253
  %polly.access.call1255 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1254
  %polly.access.call1255.load = load double, double* %polly.access.call1255, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.Packed_MemRef_call1257 = add nsw i64 %polly.access.mul.Packed_MemRef_call1256, %118
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  store double %polly.access.call1255.load, double* %polly.access.Packed_MemRef_call1258, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 1000
  br i1 %exitcond.not, label %polly.loop_header259.preheader, label %polly.loop_header234

polly.loop_header259.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %121 = mul i64 %119, 9600
  br i1 %polly.loop_guard2441125, label %polly.loop_header259.us, label %polly.loop_exit261

polly.loop_header259.us:                          ; preds = %polly.loop_header259.preheader, %polly.loop_exit268.loopexit.us
  %polly.indvar262.us = phi i64 [ %polly.indvar_next263.us, %polly.loop_exit268.loopexit.us ], [ 0, %polly.loop_header259.preheader ]
  %polly.access.mul.Packed_MemRef_call1273.us = mul nuw nsw i64 %polly.indvar262.us, 1200
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %119
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %polly.access.add.Packed_MemRef_call1286.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1273.us, %118
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %min.iters.check1328 = icmp ult i64 %117, 4
  br i1 %min.iters.check1328, label %polly.loop_header266.us.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header259.us
  %n.vec1331 = and i64 %117, -4
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_280.us, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1323 ]
  %122 = add nuw nsw i64 %index1332, %109
  %123 = add nuw nsw i64 %index1332, %polly.access.mul.Packed_MemRef_call1273.us
  %124 = getelementptr double, double* %Packed_MemRef_call1, i64 %123
  %125 = bitcast double* %124 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %125, align 8
  %126 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %127 = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call1273.us
  %128 = getelementptr double, double* %Packed_MemRef_call2, i64 %127
  %129 = bitcast double* %128 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %129, align 8
  %130 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %131 = shl i64 %122, 3
  %132 = add i64 %131, %121
  %133 = getelementptr i8, i8* %call, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !65, !noalias !67
  %135 = fadd fast <4 x double> %130, %126
  %136 = fmul fast <4 x double> %135, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %137 = fadd fast <4 x double> %136, %wide.load1342
  %138 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !65, !noalias !67
  %index.next1333 = add i64 %index1332, 4
  %139 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %139, label %middle.block1321, label %vector.body1323, !llvm.loop !77

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1335 = icmp eq i64 %117, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us.preheader

polly.loop_header266.us.preheader:                ; preds = %polly.loop_header259.us, %middle.block1321
  %polly.indvar270.us.ph = phi i64 [ 0, %polly.loop_header259.us ], [ %n.vec1331, %middle.block1321 ]
  br label %polly.loop_header266.us

polly.loop_header266.us:                          ; preds = %polly.loop_header266.us.preheader, %polly.loop_header266.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_header266.us ], [ %polly.indvar270.us.ph, %polly.loop_header266.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar270.us, %109
  %polly.access.add.Packed_MemRef_call1274.us = add nuw nsw i64 %polly.indvar270.us, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call1275.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call1275.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_280.us, %_p_scalar_276.us
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %140, %polly.access.mul.Packed_MemRef_call1273.us
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %141 = shl i64 %140, 3
  %142 = add i64 %141, %121
  %scevgep289.us = getelementptr i8, i8* %call, i64 %142
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_291.us
  store double %p_add42.i118.us, double* %scevgep289290.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar270.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit268.loopexit.us, label %polly.loop_header266.us, !llvm.loop !78

polly.loop_exit268.loopexit.us:                   ; preds = %polly.loop_header266.us, %middle.block1321
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
  %indvar1262 = phi i64 [ %indvar.next1263, %polly.loop_exit390 ], [ 0, %polly.start294 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit390 ], [ 1, %polly.start294 ]
  %143 = add i64 %indvar1262, 1
  %144 = mul nuw nsw i64 %polly.indvar385, 9600
  %scevgep394 = getelementptr i8, i8* %call, i64 %144
  %min.iters.check1264 = icmp ult i64 %143, 4
  br i1 %min.iters.check1264, label %polly.loop_header388.preheader, label %vector.ph1265

vector.ph1265:                                    ; preds = %polly.loop_header382
  %n.vec1267 = and i64 %143, -4
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1261 ]
  %145 = shl nuw nsw i64 %index1268, 3
  %146 = getelementptr i8, i8* %scevgep394, i64 %145
  %147 = bitcast i8* %146 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %147, align 8, !alias.scope !79, !noalias !81
  %148 = fmul fast <4 x double> %wide.load1272, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %149 = bitcast i8* %146 to <4 x double>*
  store <4 x double> %148, <4 x double>* %149, align 8, !alias.scope !79, !noalias !81
  %index.next1269 = add i64 %index1268, 4
  %150 = icmp eq i64 %index.next1269, %n.vec1267
  br i1 %150, label %middle.block1259, label %vector.body1261, !llvm.loop !86

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1271 = icmp eq i64 %143, %n.vec1267
  br i1 %cmp.n1271, label %polly.loop_exit390, label %polly.loop_header388.preheader

polly.loop_header388.preheader:                   ; preds = %polly.loop_header382, %middle.block1259
  %polly.indvar391.ph = phi i64 [ 0, %polly.loop_header382 ], [ %n.vec1267, %middle.block1259 ]
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_header388, %middle.block1259
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next386, 1200
  %indvar.next1263 = add i64 %indvar1262, 1
  br i1 %exitcond1063.not, label %polly.loop_header398.preheader, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_exit390
  %Packed_MemRef_call1297 = bitcast i8* %malloccall296 to double*
  %Packed_MemRef_call2299 = bitcast i8* %malloccall298 to double*
  br label %polly.loop_header398

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_header388
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header388 ], [ %polly.indvar391.ph, %polly.loop_header388.preheader ]
  %151 = shl nuw nsw i64 %polly.indvar391, 3
  %scevgep395 = getelementptr i8, i8* %scevgep394, i64 %151
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_397, 1.200000e+00
  store double %p_mul.i57, double* %scevgep395396, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next392, %polly.indvar385
  br i1 %exitcond1062.not, label %polly.loop_exit390, label %polly.loop_header388, !llvm.loop !87

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit406
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 0, %polly.loop_header398.preheader ]
  %polly.access.mul.Packed_MemRef_call2299 = mul nuw nsw i64 %polly.indvar401, 1200
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next402, 1000
  br i1 %exitcond1061.not, label %polly.loop_header414, label %polly.loop_header398

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
  %exitcond1060.not = icmp eq i64 %polly.indvar_next408, 1200
  br i1 %exitcond1060.not, label %polly.loop_exit406, label %polly.loop_header404

polly.loop_header414:                             ; preds = %polly.loop_exit406, %polly.loop_exit422
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit422 ], [ 15, %polly.loop_exit406 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_exit406 ]
  %152 = mul nsw i64 %polly.indvar417, -128
  %153 = shl nuw nsw i64 %polly.indvar417, 7
  %umin1057 = call i64 @llvm.umin.i64(i64 %indvars.iv1055, i64 149)
  %154 = mul nsw i64 %polly.indvar417, -128
  %155 = icmp slt i64 %154, -1072
  %156 = select i1 %155, i64 %154, i64 -1072
  %157 = add nsw i64 %156, 1199
  %158 = shl nsw i64 %polly.indvar417, 7
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit429
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -128
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 128
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 16
  %exitcond1059.not = icmp eq i64 %polly.indvar_next418, 10
  br i1 %exitcond1059.not, label %polly.exiting295, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit429, %polly.loop_header414
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit429 ], [ %indvars.iv1043, %polly.loop_header414 ]
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit429 ], [ %indvars.iv1038, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit429 ], [ 0, %polly.loop_header414 ]
  %159 = shl nuw nsw i64 %polly.indvar423, 3
  %160 = add i64 %152, %159
  %smax1276 = call i64 @llvm.smax.i64(i64 %160, i64 0)
  %161 = mul nsw i64 %polly.indvar423, -8
  %162 = add i64 %153, %161
  %163 = add i64 %smax1276, %162
  %164 = shl nsw i64 %polly.indvar423, 3
  %165 = add nsw i64 %164, %154
  %166 = icmp sgt i64 %165, 0
  %167 = select i1 %166, i64 %165, i64 0
  %polly.loop_guard430.not = icmp sgt i64 %167, %157
  br i1 %polly.loop_guard430.not, label %polly.loop_exit429, label %polly.loop_header427.preheader

polly.loop_header427.preheader:                   ; preds = %polly.loop_header420
  %smax1042 = call i64 @llvm.smax.i64(i64 %indvars.iv1040, i64 0)
  %168 = add i64 %smax1042, %indvars.iv1045
  %169 = sub nsw i64 %158, %164
  %170 = add nuw nsw i64 %164, 8
  br label %polly.loop_header427

polly.loop_exit429:                               ; preds = %polly.loop_exit465, %polly.loop_header420
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, 8
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -8
  %exitcond1058.not = icmp eq i64 %polly.indvar423, %umin1057
  br i1 %exitcond1058.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header427:                             ; preds = %polly.loop_header427.preheader, %polly.loop_exit465
  %indvar1277 = phi i64 [ 0, %polly.loop_header427.preheader ], [ %indvar.next1278, %polly.loop_exit465 ]
  %indvars.iv1047 = phi i64 [ %168, %polly.loop_header427.preheader ], [ %indvars.iv.next1048, %polly.loop_exit465 ]
  %polly.indvar431 = phi i64 [ %167, %polly.loop_header427.preheader ], [ %polly.indvar_next432, %polly.loop_exit465 ]
  %171 = add i64 %163, %indvar1277
  %smin1279 = call i64 @llvm.smin.i64(i64 %171, i64 7)
  %172 = add nsw i64 %smin1279, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 7)
  %173 = add nsw i64 %polly.indvar431, %169
  %polly.loop_guard4441126 = icmp sgt i64 %173, -1
  %174 = add nuw nsw i64 %polly.indvar431, %158
  %.not906 = icmp ult i64 %174, %170
  %polly.access.mul.call1457 = mul nsw i64 %174, 1000
  br i1 %polly.loop_guard4441126, label %polly.loop_header434.us, label %polly.loop_header427.split

polly.loop_header434.us:                          ; preds = %polly.loop_header427, %polly.merge453.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.merge453.us ], [ 0, %polly.loop_header427 ]
  %polly.access.mul.Packed_MemRef_call1297.us = mul nuw nsw i64 %polly.indvar437.us, 1200
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %175 = add nuw nsw i64 %polly.indvar445.us, %164
  %polly.access.mul.call1449.us = mul nuw nsw i64 %175, 1000
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
  %polly.access.add.Packed_MemRef_call1297461.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297.us, %173
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
  %polly.loop_cond433.not.not = icmp ult i64 %polly.indvar431, %157
  %indvars.iv.next1048 = add i64 %indvars.iv1047, 1
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %polly.loop_cond433.not.not, label %polly.loop_header427, label %polly.loop_exit429

polly.loop_header434:                             ; preds = %polly.loop_header427.split, %polly.loop_header434
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header434 ], [ 0, %polly.loop_header427.split ]
  %polly.access.add.call1458 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1297460 = mul nuw nsw i64 %polly.indvar437, 1200
  %polly.access.add.Packed_MemRef_call1297461 = add nsw i64 %polly.access.mul.Packed_MemRef_call1297460, %173
  %polly.access.Packed_MemRef_call1297462 = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1297462, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next438, 1000
  br i1 %exitcond1037.not, label %polly.loop_header463.preheader, label %polly.loop_header434

polly.loop_header463.preheader:                   ; preds = %polly.loop_header434, %polly.merge453.us
  %176 = mul i64 %174, 9600
  br i1 %polly.loop_guard4441126, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %polly.access.mul.Packed_MemRef_call1297477.us = mul nuw nsw i64 %polly.indvar466.us, 1200
  %polly.access.add.Packed_MemRef_call2299482.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %174
  %polly.access.Packed_MemRef_call2299483.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2299483.us, align 8
  %polly.access.add.Packed_MemRef_call1297490.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1297477.us, %173
  %polly.access.Packed_MemRef_call1297491.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1297491.us, align 8
  %min.iters.check1280 = icmp ult i64 %172, 4
  br i1 %min.iters.check1280, label %polly.loop_header470.us.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header463.us
  %n.vec1283 = and i64 %172, -4
  %broadcast.splatinsert1289 = insertelement <4 x double> poison, double %_p_scalar_484.us, i32 0
  %broadcast.splat1290 = shufflevector <4 x double> %broadcast.splatinsert1289, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1293 = shufflevector <4 x double> %broadcast.splatinsert1292, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1275 ]
  %177 = add nuw nsw i64 %index1284, %164
  %178 = add nuw nsw i64 %index1284, %polly.access.mul.Packed_MemRef_call1297477.us
  %179 = getelementptr double, double* %Packed_MemRef_call1297, i64 %178
  %180 = bitcast double* %179 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %180, align 8
  %181 = fmul fast <4 x double> %broadcast.splat1290, %wide.load1288
  %182 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call1297477.us
  %183 = getelementptr double, double* %Packed_MemRef_call2299, i64 %182
  %184 = bitcast double* %183 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %184, align 8
  %185 = fmul fast <4 x double> %broadcast.splat1293, %wide.load1291
  %186 = shl i64 %177, 3
  %187 = add i64 %186, %176
  %188 = getelementptr i8, i8* %call, i64 %187
  %189 = bitcast i8* %188 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %189, align 8, !alias.scope !79, !noalias !81
  %190 = fadd fast <4 x double> %185, %181
  %191 = fmul fast <4 x double> %190, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %192 = fadd fast <4 x double> %191, %wide.load1294
  %193 = bitcast i8* %188 to <4 x double>*
  store <4 x double> %192, <4 x double>* %193, align 8, !alias.scope !79, !noalias !81
  %index.next1285 = add i64 %index1284, 4
  %194 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %194, label %middle.block1273, label %vector.body1275, !llvm.loop !90

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1287 = icmp eq i64 %172, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us.preheader

polly.loop_header470.us.preheader:                ; preds = %polly.loop_header463.us, %middle.block1273
  %polly.indvar474.us.ph = phi i64 [ 0, %polly.loop_header463.us ], [ %n.vec1283, %middle.block1273 ]
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header470.us.preheader, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %polly.indvar474.us.ph, %polly.loop_header470.us.preheader ]
  %195 = add nuw nsw i64 %polly.indvar474.us, %164
  %polly.access.add.Packed_MemRef_call1297478.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call1297479.us = getelementptr double, double* %Packed_MemRef_call1297, i64 %polly.access.add.Packed_MemRef_call1297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call1297479.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_484.us, %_p_scalar_480.us
  %polly.access.add.Packed_MemRef_call2299486.us = add nuw nsw i64 %195, %polly.access.mul.Packed_MemRef_call1297477.us
  %polly.access.Packed_MemRef_call2299487.us = getelementptr double, double* %Packed_MemRef_call2299, i64 %polly.access.add.Packed_MemRef_call2299486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call2299487.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %196 = shl i64 %195, 3
  %197 = add i64 %196, %176
  %scevgep493.us = getelementptr i8, i8* %call, i64 %197
  %scevgep493494.us = bitcast i8* %scevgep493.us to double*
  %_p_scalar_495.us = load double, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_495.us
  store double %p_add42.i79.us, double* %scevgep493494.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar474.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit472.loopexit.us, label %polly.loop_header470.us, !llvm.loop !91

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_header470.us, %middle.block1273
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
  %198 = add i64 %indvar, 1
  %199 = mul nuw nsw i64 %polly.indvar589, 9600
  %scevgep598 = getelementptr i8, i8* %call, i64 %199
  %min.iters.check1216 = icmp ult i64 %198, 4
  br i1 %min.iters.check1216, label %polly.loop_header592.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %polly.loop_header586
  %n.vec1219 = and i64 %198, -4
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %200 = shl nuw nsw i64 %index1220, 3
  %201 = getelementptr i8, i8* %scevgep598, i64 %200
  %202 = bitcast i8* %201 to <4 x double>*
  %wide.load1224 = load <4 x double>, <4 x double>* %202, align 8, !alias.scope !92, !noalias !94
  %203 = fmul fast <4 x double> %wide.load1224, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %204 = bitcast i8* %201 to <4 x double>*
  store <4 x double> %203, <4 x double>* %204, align 8, !alias.scope !92, !noalias !94
  %index.next1221 = add i64 %index1220, 4
  %205 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %205, label %middle.block1213, label %vector.body1215, !llvm.loop !99

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %198, %n.vec1219
  br i1 %cmp.n1223, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header586, %middle.block1213
  %polly.indvar595.ph = phi i64 [ 0, %polly.loop_header586 ], [ %n.vec1219, %middle.block1213 ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592, %middle.block1213
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next590, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1090.not, label %polly.loop_header602.preheader, label %polly.loop_header586

polly.loop_header602.preheader:                   ; preds = %polly.loop_exit594
  %Packed_MemRef_call1501 = bitcast i8* %malloccall500 to double*
  %Packed_MemRef_call2503 = bitcast i8* %malloccall502 to double*
  br label %polly.loop_header602

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_header592
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_header592 ], [ %polly.indvar595.ph, %polly.loop_header592.preheader ]
  %206 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %206
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond1089.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !100

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit610
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 0, %polly.loop_header602.preheader ]
  %polly.access.mul.Packed_MemRef_call2503 = mul nuw nsw i64 %polly.indvar605, 1200
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next606, 1000
  br i1 %exitcond1088.not, label %polly.loop_header618, label %polly.loop_header602

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
  %exitcond1087.not = icmp eq i64 %polly.indvar_next612, 1200
  br i1 %exitcond1087.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header618:                             ; preds = %polly.loop_exit610, %polly.loop_exit626
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit626 ], [ 15, %polly.loop_exit610 ]
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit626 ], [ 0, %polly.loop_exit610 ]
  %207 = mul nsw i64 %polly.indvar621, -128
  %208 = shl nuw nsw i64 %polly.indvar621, 7
  %umin1084 = call i64 @llvm.umin.i64(i64 %indvars.iv1082, i64 149)
  %209 = mul nsw i64 %polly.indvar621, -128
  %210 = icmp slt i64 %209, -1072
  %211 = select i1 %210, i64 %209, i64 -1072
  %212 = add nsw i64 %211, 1199
  %213 = shl nsw i64 %polly.indvar621, 7
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit633
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -128
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 128
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 16
  %exitcond1086.not = icmp eq i64 %polly.indvar_next622, 10
  br i1 %exitcond1086.not, label %polly.exiting499, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit633, %polly.loop_header618
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit633 ], [ %indvars.iv1070, %polly.loop_header618 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit633 ], [ %indvars.iv1065, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit633 ], [ 0, %polly.loop_header618 ]
  %214 = shl nuw nsw i64 %polly.indvar627, 3
  %215 = add i64 %207, %214
  %smax1228 = call i64 @llvm.smax.i64(i64 %215, i64 0)
  %216 = mul nsw i64 %polly.indvar627, -8
  %217 = add i64 %208, %216
  %218 = add i64 %smax1228, %217
  %219 = shl nsw i64 %polly.indvar627, 3
  %220 = add nsw i64 %219, %209
  %221 = icmp sgt i64 %220, 0
  %222 = select i1 %221, i64 %220, i64 0
  %polly.loop_guard634.not = icmp sgt i64 %222, %212
  br i1 %polly.loop_guard634.not, label %polly.loop_exit633, label %polly.loop_header631.preheader

polly.loop_header631.preheader:                   ; preds = %polly.loop_header624
  %smax1069 = call i64 @llvm.smax.i64(i64 %indvars.iv1067, i64 0)
  %223 = add i64 %smax1069, %indvars.iv1072
  %224 = sub nsw i64 %213, %219
  %225 = add nuw nsw i64 %219, 8
  br label %polly.loop_header631

polly.loop_exit633:                               ; preds = %polly.loop_exit669, %polly.loop_header624
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, 8
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -8
  %exitcond1085.not = icmp eq i64 %polly.indvar627, %umin1084
  br i1 %exitcond1085.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit669
  %indvar1229 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvar.next1230, %polly.loop_exit669 ]
  %indvars.iv1074 = phi i64 [ %223, %polly.loop_header631.preheader ], [ %indvars.iv.next1075, %polly.loop_exit669 ]
  %polly.indvar635 = phi i64 [ %222, %polly.loop_header631.preheader ], [ %polly.indvar_next636, %polly.loop_exit669 ]
  %226 = add i64 %218, %indvar1229
  %smin1231 = call i64 @llvm.smin.i64(i64 %226, i64 7)
  %227 = add nsw i64 %smin1231, 1
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 7)
  %228 = add nsw i64 %polly.indvar635, %224
  %polly.loop_guard6481127 = icmp sgt i64 %228, -1
  %229 = add nuw nsw i64 %polly.indvar635, %213
  %.not907 = icmp ult i64 %229, %225
  %polly.access.mul.call1661 = mul nsw i64 %229, 1000
  br i1 %polly.loop_guard6481127, label %polly.loop_header638.us, label %polly.loop_header631.split

polly.loop_header638.us:                          ; preds = %polly.loop_header631, %polly.merge657.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.merge657.us ], [ 0, %polly.loop_header631 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar641.us, 1200
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header645.us
  %polly.indvar649.us = phi i64 [ %polly.indvar_next650.us, %polly.loop_header645.us ], [ 0, %polly.loop_header638.us ]
  %230 = add nuw nsw i64 %polly.indvar649.us, %219
  %polly.access.mul.call1653.us = mul nuw nsw i64 %230, 1000
  %polly.access.add.call1654.us = add nuw nsw i64 %polly.access.mul.call1653.us, %polly.indvar641.us
  %polly.access.call1655.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1654.us
  %polly.access.call1655.load.us = load double, double* %polly.access.call1655.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1501.us
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us
  store double %polly.access.call1655.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar649.us, %smin1079
  br i1 %exitcond1077.not, label %polly.cond656.loopexit.us, label %polly.loop_header645.us

polly.then658.us:                                 ; preds = %polly.cond656.loopexit.us
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.call1661
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1501665.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501.us, %228
  %polly.access.Packed_MemRef_call1501666.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1501666.us, align 8
  br label %polly.merge657.us

polly.merge657.us:                                ; preds = %polly.then658.us, %polly.cond656.loopexit.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next642.us, 1000
  br i1 %exitcond1078.not, label %polly.loop_header667.preheader, label %polly.loop_header638.us

polly.cond656.loopexit.us:                        ; preds = %polly.loop_header645.us
  br i1 %.not907, label %polly.merge657.us, label %polly.then658.us

polly.loop_header631.split:                       ; preds = %polly.loop_header631
  br i1 %.not907, label %polly.loop_exit669, label %polly.loop_header638

polly.loop_exit669:                               ; preds = %polly.loop_exit676.loopexit.us, %polly.loop_header631.split, %polly.loop_header667.preheader
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %polly.loop_cond637.not.not = icmp ult i64 %polly.indvar635, %212
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 1
  %indvar.next1230 = add i64 %indvar1229, 1
  br i1 %polly.loop_cond637.not.not, label %polly.loop_header631, label %polly.loop_exit633

polly.loop_header638:                             ; preds = %polly.loop_header631.split, %polly.loop_header638
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_header638 ], [ 0, %polly.loop_header631.split ]
  %polly.access.add.call1662 = add nuw nsw i64 %polly.indvar641, %polly.access.mul.call1661
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1704, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1501664 = mul nuw nsw i64 %polly.indvar641, 1200
  %polly.access.add.Packed_MemRef_call1501665 = add nsw i64 %polly.access.mul.Packed_MemRef_call1501664, %228
  %polly.access.Packed_MemRef_call1501666 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501665
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1501666, align 8
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next642, 1000
  br i1 %exitcond1064.not, label %polly.loop_header667.preheader, label %polly.loop_header638

polly.loop_header667.preheader:                   ; preds = %polly.loop_header638, %polly.merge657.us
  %231 = mul i64 %229, 9600
  br i1 %polly.loop_guard6481127, label %polly.loop_header667.us, label %polly.loop_exit669

polly.loop_header667.us:                          ; preds = %polly.loop_header667.preheader, %polly.loop_exit676.loopexit.us
  %polly.indvar670.us = phi i64 [ %polly.indvar_next671.us, %polly.loop_exit676.loopexit.us ], [ 0, %polly.loop_header667.preheader ]
  %polly.access.mul.Packed_MemRef_call1501681.us = mul nuw nsw i64 %polly.indvar670.us, 1200
  %polly.access.add.Packed_MemRef_call2503686.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %229
  %polly.access.Packed_MemRef_call2503687.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2503687.us, align 8
  %polly.access.add.Packed_MemRef_call1501694.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1501681.us, %228
  %polly.access.Packed_MemRef_call1501695.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1501695.us, align 8
  %min.iters.check1232 = icmp ult i64 %227, 4
  br i1 %min.iters.check1232, label %polly.loop_header674.us.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header667.us
  %n.vec1235 = and i64 %227, -4
  %broadcast.splatinsert1241 = insertelement <4 x double> poison, double %_p_scalar_688.us, i32 0
  %broadcast.splat1242 = shufflevector <4 x double> %broadcast.splatinsert1241, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x double> poison, double %_p_scalar_696.us, i32 0
  %broadcast.splat1245 = shufflevector <4 x double> %broadcast.splatinsert1244, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1227 ]
  %232 = add nuw nsw i64 %index1236, %219
  %233 = add nuw nsw i64 %index1236, %polly.access.mul.Packed_MemRef_call1501681.us
  %234 = getelementptr double, double* %Packed_MemRef_call1501, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %235, align 8
  %236 = fmul fast <4 x double> %broadcast.splat1242, %wide.load1240
  %237 = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call1501681.us
  %238 = getelementptr double, double* %Packed_MemRef_call2503, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %239, align 8
  %240 = fmul fast <4 x double> %broadcast.splat1245, %wide.load1243
  %241 = shl i64 %232, 3
  %242 = add i64 %241, %231
  %243 = getelementptr i8, i8* %call, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !92, !noalias !94
  %245 = fadd fast <4 x double> %240, %236
  %246 = fmul fast <4 x double> %245, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %247 = fadd fast <4 x double> %246, %wide.load1246
  %248 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !92, !noalias !94
  %index.next1237 = add i64 %index1236, 4
  %249 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %249, label %middle.block1225, label %vector.body1227, !llvm.loop !103

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1239 = icmp eq i64 %227, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us.preheader

polly.loop_header674.us.preheader:                ; preds = %polly.loop_header667.us, %middle.block1225
  %polly.indvar678.us.ph = phi i64 [ 0, %polly.loop_header667.us ], [ %n.vec1235, %middle.block1225 ]
  br label %polly.loop_header674.us

polly.loop_header674.us:                          ; preds = %polly.loop_header674.us.preheader, %polly.loop_header674.us
  %polly.indvar678.us = phi i64 [ %polly.indvar_next679.us, %polly.loop_header674.us ], [ %polly.indvar678.us.ph, %polly.loop_header674.us.preheader ]
  %250 = add nuw nsw i64 %polly.indvar678.us, %219
  %polly.access.add.Packed_MemRef_call1501682.us = add nuw nsw i64 %polly.indvar678.us, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call1501683.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call1501683.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_688.us, %_p_scalar_684.us
  %polly.access.add.Packed_MemRef_call2503690.us = add nuw nsw i64 %250, %polly.access.mul.Packed_MemRef_call1501681.us
  %polly.access.Packed_MemRef_call2503691.us = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call2503691.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_696.us, %_p_scalar_692.us
  %251 = shl i64 %250, 3
  %252 = add i64 %251, %231
  %scevgep697.us = getelementptr i8, i8* %call, i64 %252
  %scevgep697698.us = bitcast i8* %scevgep697.us to double*
  %_p_scalar_699.us = load double, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_699.us
  store double %p_add42.i.us, double* %scevgep697698.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next679.us = add nuw nsw i64 %polly.indvar678.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar678.us, %smin1079
  br i1 %exitcond1080.not, label %polly.loop_exit676.loopexit.us, label %polly.loop_header674.us, !llvm.loop !104

polly.loop_exit676.loopexit.us:                   ; preds = %polly.loop_header674.us, %middle.block1225
  %polly.indvar_next671.us = add nuw nsw i64 %polly.indvar670.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next671.us, 1000
  br i1 %exitcond1081.not, label %polly.loop_exit669, label %polly.loop_header667.us

polly.loop_header826:                             ; preds = %entry, %polly.loop_exit834
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit834 ], [ 0, %entry ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %entry ]
  %smin1117 = call i64 @llvm.smin.i64(i64 %indvars.iv1115, i64 -1168)
  %253 = shl nsw i64 %polly.indvar829, 5
  %254 = add nsw i64 %smin1117, 1199
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -32
  %exitcond1120.not = icmp eq i64 %polly.indvar_next830, 38
  br i1 %exitcond1120.not, label %polly.loop_header853, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit840 ], [ 0, %polly.loop_header826 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_header826 ]
  %255 = mul nsw i64 %polly.indvar835, -32
  %smin = call i64 @llvm.smin.i64(i64 %255, i64 -1168)
  %256 = add nsw i64 %smin, 1200
  %smin1113 = call i64 @llvm.smin.i64(i64 %indvars.iv1111, i64 -1168)
  %257 = shl nsw i64 %polly.indvar835, 5
  %258 = add nsw i64 %smin1113, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -32
  %exitcond1119.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1119.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %polly.indvar841 = phi i64 [ 0, %polly.loop_header832 ], [ %polly.indvar_next842, %polly.loop_exit846 ]
  %259 = add nuw nsw i64 %polly.indvar841, %253
  %260 = trunc i64 %259 to i32
  %261 = mul nuw nsw i64 %259, 9600
  %min.iters.check = icmp eq i64 %256, 0
  br i1 %min.iters.check, label %polly.loop_header844, label %vector.ph1155

vector.ph1155:                                    ; preds = %polly.loop_header838
  %broadcast.splatinsert1162 = insertelement <4 x i64> poison, i64 %257, i32 0
  %broadcast.splat1163 = shufflevector <4 x i64> %broadcast.splatinsert1162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %260, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1155
  %index1156 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1155 ], [ %vec.ind.next1161, %vector.body1154 ]
  %262 = add nuw nsw <4 x i64> %vec.ind1160, %broadcast.splat1163
  %263 = trunc <4 x i64> %262 to <4 x i32>
  %264 = mul <4 x i32> %broadcast.splat1165, %263
  %265 = add <4 x i32> %264, <i32 3, i32 3, i32 3, i32 3>
  %266 = urem <4 x i32> %265, <i32 1200, i32 1200, i32 1200, i32 1200>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %269 = extractelement <4 x i64> %262, i32 0
  %270 = shl i64 %269, 3
  %271 = add nuw nsw i64 %270, %261
  %272 = getelementptr i8, i8* %call, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %268, <4 x double>* %273, align 8, !alias.scope !105, !noalias !107
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %274 = icmp eq i64 %index.next1157, %256
  br i1 %274, label %polly.loop_exit846, label %vector.body1154, !llvm.loop !110

polly.loop_exit846:                               ; preds = %vector.body1154, %polly.loop_header844
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar841, %254
  br i1 %exitcond1118.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_header838, %polly.loop_header844
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_header844 ], [ 0, %polly.loop_header838 ]
  %275 = add nuw nsw i64 %polly.indvar847, %257
  %276 = trunc i64 %275 to i32
  %277 = mul i32 %276, %260
  %278 = add i32 %277, 3
  %279 = urem i32 %278, 1200
  %p_conv31.i = sitofp i32 %279 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %280 = shl i64 %275, 3
  %281 = add nuw nsw i64 %280, %261
  %scevgep850 = getelementptr i8, i8* %call, i64 %281
  %scevgep850851 = bitcast i8* %scevgep850 to double*
  store double %p_div33.i, double* %scevgep850851, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar847, %258
  br i1 %exitcond1114.not, label %polly.loop_exit846, label %polly.loop_header844, !llvm.loop !111

polly.loop_header853:                             ; preds = %polly.loop_exit834, %polly.loop_exit861
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit861 ], [ 0, %polly.loop_exit834 ]
  %polly.indvar856 = phi i64 [ %polly.indvar_next857, %polly.loop_exit861 ], [ 0, %polly.loop_exit834 ]
  %smin1107 = call i64 @llvm.smin.i64(i64 %indvars.iv1105, i64 -1168)
  %282 = shl nsw i64 %polly.indvar856, 5
  %283 = add nsw i64 %smin1107, 1199
  br label %polly.loop_header859

polly.loop_exit861:                               ; preds = %polly.loop_exit867
  %polly.indvar_next857 = add nuw nsw i64 %polly.indvar856, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -32
  %exitcond1110.not = icmp eq i64 %polly.indvar_next857, 38
  br i1 %exitcond1110.not, label %polly.loop_header879, label %polly.loop_header853

polly.loop_header859:                             ; preds = %polly.loop_exit867, %polly.loop_header853
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit867 ], [ 0, %polly.loop_header853 ]
  %polly.indvar862 = phi i64 [ %polly.indvar_next863, %polly.loop_exit867 ], [ 0, %polly.loop_header853 ]
  %284 = mul nsw i64 %polly.indvar862, -32
  %smin1169 = call i64 @llvm.smin.i64(i64 %284, i64 -968)
  %285 = add nsw i64 %smin1169, 1000
  %smin1103 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 -968)
  %286 = shl nsw i64 %polly.indvar862, 5
  %287 = add nsw i64 %smin1103, 999
  br label %polly.loop_header865

polly.loop_exit867:                               ; preds = %polly.loop_exit873
  %polly.indvar_next863 = add nuw nsw i64 %polly.indvar862, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -32
  %exitcond1109.not = icmp eq i64 %polly.indvar_next863, 32
  br i1 %exitcond1109.not, label %polly.loop_exit861, label %polly.loop_header859

polly.loop_header865:                             ; preds = %polly.loop_exit873, %polly.loop_header859
  %polly.indvar868 = phi i64 [ 0, %polly.loop_header859 ], [ %polly.indvar_next869, %polly.loop_exit873 ]
  %288 = add nuw nsw i64 %polly.indvar868, %282
  %289 = trunc i64 %288 to i32
  %290 = mul nuw nsw i64 %288, 8000
  %min.iters.check1170 = icmp eq i64 %285, 0
  br i1 %min.iters.check1170, label %polly.loop_header871, label %vector.ph1171

vector.ph1171:                                    ; preds = %polly.loop_header865
  %broadcast.splatinsert1180 = insertelement <4 x i64> poison, i64 %286, i32 0
  %broadcast.splat1181 = shufflevector <4 x i64> %broadcast.splatinsert1180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %289, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1175, %vector.body1168 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1171 ], [ %vec.ind.next1179, %vector.body1168 ]
  %291 = add nuw nsw <4 x i64> %vec.ind1178, %broadcast.splat1181
  %292 = trunc <4 x i64> %291 to <4 x i32>
  %293 = mul <4 x i32> %broadcast.splat1183, %292
  %294 = add <4 x i32> %293, <i32 2, i32 2, i32 2, i32 2>
  %295 = urem <4 x i32> %294, <i32 1000, i32 1000, i32 1000, i32 1000>
  %296 = sitofp <4 x i32> %295 to <4 x double>
  %297 = fmul fast <4 x double> %296, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %298 = extractelement <4 x i64> %291, i32 0
  %299 = shl i64 %298, 3
  %300 = add nuw nsw i64 %299, %290
  %301 = getelementptr i8, i8* %call2, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %297, <4 x double>* %302, align 8, !alias.scope !109, !noalias !112
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %303 = icmp eq i64 %index.next1175, %285
  br i1 %303, label %polly.loop_exit873, label %vector.body1168, !llvm.loop !113

polly.loop_exit873:                               ; preds = %vector.body1168, %polly.loop_header871
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar868, %283
  br i1 %exitcond1108.not, label %polly.loop_exit867, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_header865, %polly.loop_header871
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_header871 ], [ 0, %polly.loop_header865 ]
  %304 = add nuw nsw i64 %polly.indvar874, %286
  %305 = trunc i64 %304 to i32
  %306 = mul i32 %305, %289
  %307 = add i32 %306, 2
  %308 = urem i32 %307, 1000
  %p_conv10.i = sitofp i32 %308 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %309 = shl i64 %304, 3
  %310 = add nuw nsw i64 %309, %290
  %scevgep877 = getelementptr i8, i8* %call2, i64 %310
  %scevgep877878 = bitcast i8* %scevgep877 to double*
  store double %p_div12.i, double* %scevgep877878, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar874, %287
  br i1 %exitcond1104.not, label %polly.loop_exit873, label %polly.loop_header871, !llvm.loop !114

polly.loop_header879:                             ; preds = %polly.loop_exit861, %polly.loop_exit887
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit887 ], [ 0, %polly.loop_exit861 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit861 ]
  %smin1097 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 -1168)
  %311 = shl nsw i64 %polly.indvar882, 5
  %312 = add nsw i64 %smin1097, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -32
  %exitcond1100.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1100.not, label %init_array.exit, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %313 = mul nsw i64 %polly.indvar888, -32
  %smin1187 = call i64 @llvm.smin.i64(i64 %313, i64 -968)
  %314 = add nsw i64 %smin1187, 1000
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -968)
  %315 = shl nsw i64 %polly.indvar888, 5
  %316 = add nsw i64 %smin1093, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -32
  %exitcond1099.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1099.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %317 = add nuw nsw i64 %polly.indvar894, %311
  %318 = trunc i64 %317 to i32
  %319 = mul nuw nsw i64 %317, 8000
  %min.iters.check1188 = icmp eq i64 %314, 0
  br i1 %min.iters.check1188, label %polly.loop_header897, label %vector.ph1189

vector.ph1189:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1198 = insertelement <4 x i64> poison, i64 %315, i32 0
  %broadcast.splat1199 = shufflevector <4 x i64> %broadcast.splatinsert1198, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %318, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1193, %vector.body1186 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1189 ], [ %vec.ind.next1197, %vector.body1186 ]
  %320 = add nuw nsw <4 x i64> %vec.ind1196, %broadcast.splat1199
  %321 = trunc <4 x i64> %320 to <4 x i32>
  %322 = mul <4 x i32> %broadcast.splat1201, %321
  %323 = add <4 x i32> %322, <i32 1, i32 1, i32 1, i32 1>
  %324 = urem <4 x i32> %323, <i32 1200, i32 1200, i32 1200, i32 1200>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %327 = extractelement <4 x i64> %320, i32 0
  %328 = shl i64 %327, 3
  %329 = add nuw nsw i64 %328, %319
  %330 = getelementptr i8, i8* %call1, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %326, <4 x double>* %331, align 8, !alias.scope !108, !noalias !115
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %332 = icmp eq i64 %index.next1193, %314
  br i1 %332, label %polly.loop_exit899, label %vector.body1186, !llvm.loop !116

polly.loop_exit899:                               ; preds = %vector.body1186, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar894, %312
  br i1 %exitcond1098.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %333 = add nuw nsw i64 %polly.indvar900, %315
  %334 = trunc i64 %333 to i32
  %335 = mul i32 %334, %318
  %336 = add i32 %335, 1
  %337 = urem i32 %336, 1200
  %p_conv.i = sitofp i32 %337 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %338 = shl i64 %333, 3
  %339 = add nuw nsw i64 %338, %319
  %scevgep904 = getelementptr i8, i8* %call1, i64 %339
  %scevgep904905 = bitcast i8* %scevgep904 to double*
  store double %p_div.i, double* %scevgep904905, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar900, %316
  br i1 %exitcond1094.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !117
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 8}
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
