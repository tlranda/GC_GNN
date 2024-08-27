; ModuleID = 'syr2k_exhaustive/mmp_all_SM_54.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_54.c"
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
  %call874 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1726 = bitcast i8* %call1 to double*
  %polly.access.call1735 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2736 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1735, %call2
  %polly.access.call2755 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2755, %call1
  %2 = or i1 %0, %1
  %polly.access.call775 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call775, %call2
  %4 = icmp ule i8* %polly.access.call2755, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call775, %call1
  %8 = icmp ule i8* %polly.access.call1735, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header848, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1082 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1081 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1080 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1079 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1079, %scevgep1082
  %bound1 = icmp ult i8* %scevgep1081, %scevgep1080
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
  br i1 %exitcond18.not.i, label %vector.ph1086, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1086:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1093 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1094 = shufflevector <4 x i64> %broadcast.splatinsert1093, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1086
  %index1087 = phi i64 [ 0, %vector.ph1086 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1091 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1086 ], [ %vec.ind.next1092, %vector.body1085 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1091, %broadcast.splat1094
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv7.i, i64 %index1087
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1092 = add <4 x i64> %vec.ind1091, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1088, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1085, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1085
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1086, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit909
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start514, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1148 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1148, label %for.body3.i46.preheader1459, label %vector.ph1149

vector.ph1149:                                    ; preds = %for.body3.i46.preheader
  %n.vec1151 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1149
  %index1152 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1153, %vector.body1147 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %index1152
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %46 = icmp eq i64 %index.next1153, %n.vec1151
  br i1 %46, label %middle.block1145, label %vector.body1147, !llvm.loop !18

middle.block1145:                                 ; preds = %vector.body1147
  %cmp.n1155 = icmp eq i64 %indvars.iv21.i, %n.vec1151
  br i1 %cmp.n1155, label %for.inc6.i, label %for.body3.i46.preheader1459

for.body3.i46.preheader1459:                      ; preds = %for.body3.i46.preheader, %middle.block1145
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1151, %middle.block1145 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1459, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1459 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1145, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1249 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1249, label %for.body3.i60.preheader1457, label %vector.ph1250

vector.ph1250:                                    ; preds = %for.body3.i60.preheader
  %n.vec1252 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1248 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %index1253
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1257 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1257, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1254 = add i64 %index1253, 4
  %57 = icmp eq i64 %index.next1254, %n.vec1252
  br i1 %57, label %middle.block1246, label %vector.body1248, !llvm.loop !64

middle.block1246:                                 ; preds = %vector.body1248
  %cmp.n1256 = icmp eq i64 %indvars.iv21.i52, %n.vec1252
  br i1 %cmp.n1256, label %for.inc6.i63, label %for.body3.i60.preheader1457

for.body3.i60.preheader1457:                      ; preds = %for.body3.i60.preheader, %middle.block1246
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1252, %middle.block1246 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1457, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1457 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1246, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting305
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1353 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1353, label %for.body3.i99.preheader1455, label %vector.ph1354

vector.ph1354:                                    ; preds = %for.body3.i99.preheader
  %n.vec1356 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %vector.ph1354
  %index1357 = phi i64 [ 0, %vector.ph1354 ], [ %index.next1358, %vector.body1352 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %index1357
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1361, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1358 = add i64 %index1357, 4
  %68 = icmp eq i64 %index.next1358, %n.vec1356
  br i1 %68, label %middle.block1350, label %vector.body1352, !llvm.loop !66

middle.block1350:                                 ; preds = %vector.body1352
  %cmp.n1360 = icmp eq i64 %indvars.iv21.i91, %n.vec1356
  br i1 %cmp.n1360, label %for.inc6.i102, label %for.body3.i99.preheader1455

for.body3.i99.preheader1455:                      ; preds = %for.body3.i99.preheader, %middle.block1350
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1356, %middle.block1350 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1455, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1455 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1350, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1365 = phi i64 [ %indvar.next1366, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1365, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1367 = icmp ult i64 %88, 4
  br i1 %min.iters.check1367, label %polly.loop_header192.preheader, label %vector.ph1368

vector.ph1368:                                    ; preds = %polly.loop_header
  %n.vec1370 = and i64 %88, -4
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1368
  %index1371 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1372, %vector.body1364 ]
  %90 = shl nuw nsw i64 %index1371, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1375, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1372 = add i64 %index1371, 4
  %95 = icmp eq i64 %index.next1372, %n.vec1370
  br i1 %95, label %middle.block1362, label %vector.body1364, !llvm.loop !79

middle.block1362:                                 ; preds = %vector.body1364
  %cmp.n1374 = icmp eq i64 %88, %n.vec1370
  br i1 %cmp.n1374, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1362
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1370, %middle.block1362 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1362
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1366 = add i64 %indvar1365, 1
  br i1 %exitcond984.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond983.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond983.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv963 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next964, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin978 = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 -968)
  %97 = add nsw i64 %smin978, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -32
  %exitcond982.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond982.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %100 = mul nsw i64 %polly.indvar209, -256
  %101 = shl nsw i64 %polly.indvar209, 6
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %exitcond981.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond981.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %102 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond965.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %103 = add nuw nsw i64 %polly.indvar221, %99
  %polly.access.mul.call2225 = mul nuw nsw i64 %103, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %102, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2736, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1379 = phi i64 [ %indvar.next1380, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %101, %polly.loop_exit214 ]
  %104 = shl nuw nsw i64 %indvar1379, 2
  %smin1438 = call i64 @llvm.smin.i64(i64 %104, i64 255)
  %105 = add nuw nsw i64 %smin1438, 1
  %106 = shl nuw nsw i64 %indvar1379, 2
  %107 = or i64 %106, 1
  %smin1419 = call i64 @llvm.smin.i64(i64 %107, i64 255)
  %108 = add nuw nsw i64 %smin1419, 1
  %109 = shl nuw nsw i64 %indvar1379, 2
  %110 = or i64 %109, 2
  %smin1400 = call i64 @llvm.smin.i64(i64 %110, i64 255)
  %111 = add nuw nsw i64 %smin1400, 1
  %112 = shl nuw nsw i64 %indvar1379, 2
  %113 = or i64 %112, 3
  %smin1381 = call i64 @llvm.smin.i64(i64 %113, i64 255)
  %114 = shl nsw i64 %polly.indvar231, 2
  %115 = add nsw i64 %114, %100
  %116 = add nsw i64 %115, -1
  %.inv = icmp ugt i64 %115, 255
  %117 = select i1 %.inv, i64 255, i64 %116
  %polly.loop_guard = icmp sgt i64 %117, -1
  %118 = or i64 %115, 3
  %119 = add nuw nsw i64 %115, %99
  %polly.access.mul.call1259.us = mul nuw nsw i64 %119, 1000
  %polly.indvar_next256.us = or i64 %115, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %115, %118
  %120 = add nuw nsw i64 %polly.indvar_next256.us, %99
  %polly.access.mul.call1259.us.1 = mul nuw nsw i64 %120, 1000
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar_next256.us, 1
  %121 = add nuw nsw i64 %polly.indvar_next256.us.1, %99
  %polly.access.mul.call1259.us.2 = mul nuw nsw i64 %121, 1000
  %polly.indvar_next256.us.2 = or i64 %115, 3
  %122 = add nuw nsw i64 %polly.indvar_next256.us.2, %99
  %polly.access.mul.call1259.us.3 = mul nuw nsw i64 %122, 1000
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %123 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %124 = add nuw nsw i64 %polly.indvar243.us, %99
  %polly.access.mul.call1247.us = mul nuw nsw i64 %124, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %123, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond968.not = icmp eq i64 %polly.indvar243.us, %117
  br i1 %exitcond968.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond970.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.access.add.call1260.us = add nuw nsw i64 %123, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us.1, label %polly.loop_exit253.us

polly.loop_exit267:                               ; preds = %polly.loop_exit279.3
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next972 = add nuw nsw i64 %indvars.iv971, 4
  %exitcond980.not = icmp eq i64 %polly.indvar_next232, 300
  %indvar.next1380 = add i64 %indvar1379, 1
  br i1 %exitcond980.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228 ]
  %125 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.call1260 = add nuw nsw i64 %125, %polly.access.mul.call1259.us
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.1, label %polly.loop_exit253

polly.loop_exit253:                               ; preds = %polly.loop_header251.1, %polly.loop_header234
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond967.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond967.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us
  %smin975 = call i64 @llvm.smin.i64(i64 %indvars.iv971, i64 255)
  %126 = mul nsw i64 %polly.indvar231, 38400
  %indvars.iv.next974 = or i64 %indvars.iv971, 1
  %smin975.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next974, i64 255)
  %127 = or i64 %115, 1
  %128 = or i64 %114, 1
  %129 = mul nuw nsw i64 %128, 9600
  %indvars.iv.next974.1 = add nuw nsw i64 %indvars.iv.next974, 1
  %smin975.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next974.1, i64 255)
  %130 = or i64 %115, 2
  %131 = or i64 %114, 2
  %132 = mul nuw nsw i64 %131, 9600
  %133 = or i64 %115, 3
  %134 = or i64 %114, 3
  %135 = mul nuw nsw i64 %134, 9600
  br label %polly.loop_header265

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit279.3
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit279.3 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1283 = mul nuw nsw i64 %polly.indvar268, 1200
  %polly.access.add.Packed_MemRef_call2288 = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.access.Packed_MemRef_call1297 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call1297, align 8
  %min.iters.check1439 = icmp ult i64 %smin1438, 3
  br i1 %min.iters.check1439, label %polly.loop_header277.preheader, label %vector.ph1440

vector.ph1440:                                    ; preds = %polly.loop_header265
  %n.vec1442 = and i64 %105, -4
  %broadcast.splatinsert1448 = insertelement <4 x double> poison, double %_p_scalar_290, i32 0
  %broadcast.splat1449 = shufflevector <4 x double> %broadcast.splatinsert1448, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1451 = insertelement <4 x double> poison, double %_p_scalar_298, i32 0
  %broadcast.splat1452 = shufflevector <4 x double> %broadcast.splatinsert1451, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %vector.ph1440
  %index1443 = phi i64 [ 0, %vector.ph1440 ], [ %index.next1444, %vector.body1437 ]
  %136 = add nuw nsw i64 %index1443, %99
  %137 = add nuw nsw i64 %index1443, %polly.access.mul.Packed_MemRef_call1283
  %138 = getelementptr double, double* %Packed_MemRef_call1, i64 %137
  %139 = bitcast double* %138 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %139, align 8
  %140 = fmul fast <4 x double> %broadcast.splat1449, %wide.load1447
  %141 = getelementptr double, double* %Packed_MemRef_call2, i64 %137
  %142 = bitcast double* %141 to <4 x double>*
  %wide.load1450 = load <4 x double>, <4 x double>* %142, align 8
  %143 = fmul fast <4 x double> %broadcast.splat1452, %wide.load1450
  %144 = shl i64 %136, 3
  %145 = add nuw nsw i64 %144, %126
  %146 = getelementptr i8, i8* %call, i64 %145
  %147 = bitcast i8* %146 to <4 x double>*
  %wide.load1453 = load <4 x double>, <4 x double>* %147, align 8, !alias.scope !72, !noalias !74
  %148 = fadd fast <4 x double> %143, %140
  %149 = fmul fast <4 x double> %148, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %150 = fadd fast <4 x double> %149, %wide.load1453
  %151 = bitcast i8* %146 to <4 x double>*
  store <4 x double> %150, <4 x double>* %151, align 8, !alias.scope !72, !noalias !74
  %index.next1444 = add i64 %index1443, 4
  %152 = icmp eq i64 %index.next1444, %n.vec1442
  br i1 %152, label %middle.block1435, label %vector.body1437, !llvm.loop !84

middle.block1435:                                 ; preds = %vector.body1437
  %cmp.n1446 = icmp eq i64 %105, %n.vec1442
  br i1 %cmp.n1446, label %polly.loop_exit279, label %polly.loop_header277.preheader

polly.loop_header277.preheader:                   ; preds = %polly.loop_header265, %middle.block1435
  %polly.indvar280.ph = phi i64 [ 0, %polly.loop_header265 ], [ %n.vec1442, %middle.block1435 ]
  br label %polly.loop_header277

polly.loop_exit279:                               ; preds = %polly.loop_header277, %middle.block1435
  %polly.access.add.Packed_MemRef_call2288.1 = add nuw nsw i64 %127, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call2289.1, align 8
  %polly.access.Packed_MemRef_call1297.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.1
  %_p_scalar_298.1 = load double, double* %polly.access.Packed_MemRef_call1297.1, align 8
  %min.iters.check1420 = icmp ult i64 %smin1419, 3
  br i1 %min.iters.check1420, label %polly.loop_header277.1.preheader, label %vector.ph1421

vector.ph1421:                                    ; preds = %polly.loop_exit279
  %n.vec1423 = and i64 %108, -4
  %broadcast.splatinsert1429 = insertelement <4 x double> poison, double %_p_scalar_290.1, i32 0
  %broadcast.splat1430 = shufflevector <4 x double> %broadcast.splatinsert1429, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <4 x double> poison, double %_p_scalar_298.1, i32 0
  %broadcast.splat1433 = shufflevector <4 x double> %broadcast.splatinsert1432, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %vector.ph1421
  %index1424 = phi i64 [ 0, %vector.ph1421 ], [ %index.next1425, %vector.body1418 ]
  %153 = add nuw nsw i64 %index1424, %99
  %154 = add nuw nsw i64 %index1424, %polly.access.mul.Packed_MemRef_call1283
  %155 = getelementptr double, double* %Packed_MemRef_call1, i64 %154
  %156 = bitcast double* %155 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %156, align 8
  %157 = fmul fast <4 x double> %broadcast.splat1430, %wide.load1428
  %158 = getelementptr double, double* %Packed_MemRef_call2, i64 %154
  %159 = bitcast double* %158 to <4 x double>*
  %wide.load1431 = load <4 x double>, <4 x double>* %159, align 8
  %160 = fmul fast <4 x double> %broadcast.splat1433, %wide.load1431
  %161 = shl i64 %153, 3
  %162 = add nuw nsw i64 %161, %129
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1434 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !72, !noalias !74
  %165 = fadd fast <4 x double> %160, %157
  %166 = fmul fast <4 x double> %165, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %167 = fadd fast <4 x double> %166, %wide.load1434
  %168 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !72, !noalias !74
  %index.next1425 = add i64 %index1424, 4
  %169 = icmp eq i64 %index.next1425, %n.vec1423
  br i1 %169, label %middle.block1416, label %vector.body1418, !llvm.loop !85

middle.block1416:                                 ; preds = %vector.body1418
  %cmp.n1427 = icmp eq i64 %108, %n.vec1423
  br i1 %cmp.n1427, label %polly.loop_exit279.1, label %polly.loop_header277.1.preheader

polly.loop_header277.1.preheader:                 ; preds = %polly.loop_exit279, %middle.block1416
  %polly.indvar280.1.ph = phi i64 [ 0, %polly.loop_exit279 ], [ %n.vec1423, %middle.block1416 ]
  br label %polly.loop_header277.1

polly.loop_header277:                             ; preds = %polly.loop_header277.preheader, %polly.loop_header277
  %polly.indvar280 = phi i64 [ %polly.indvar_next281, %polly.loop_header277 ], [ %polly.indvar280.ph, %polly.loop_header277.preheader ]
  %170 = add nuw nsw i64 %polly.indvar280, %99
  %polly.access.add.Packed_MemRef_call1284 = add nuw nsw i64 %polly.indvar280, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call1285, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_298, %_p_scalar_294
  %171 = shl i64 %170, 3
  %172 = add nuw nsw i64 %171, %126
  %scevgep299 = getelementptr i8, i8* %call, i64 %172
  %scevgep299300 = bitcast i8* %scevgep299 to double*
  %_p_scalar_301 = load double, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_301
  store double %p_add42.i118, double* %scevgep299300, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281 = add nuw nsw i64 %polly.indvar280, 1
  %exitcond976.not = icmp eq i64 %polly.indvar280, %smin975
  br i1 %exitcond976.not, label %polly.loop_exit279, label %polly.loop_header277, !llvm.loop !86

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall308 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header392

polly.exiting305:                                 ; preds = %polly.loop_exit416
  tail call void @free(i8* nonnull %malloccall306)
  tail call void @free(i8* nonnull %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start304
  %indvar1261 = phi i64 [ %indvar.next1262, %polly.loop_exit400 ], [ 0, %polly.start304 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start304 ]
  %173 = add i64 %indvar1261, 1
  %174 = mul nuw nsw i64 %polly.indvar395, 9600
  %scevgep404 = getelementptr i8, i8* %call, i64 %174
  %min.iters.check1263 = icmp ult i64 %173, 4
  br i1 %min.iters.check1263, label %polly.loop_header398.preheader, label %vector.ph1264

vector.ph1264:                                    ; preds = %polly.loop_header392
  %n.vec1266 = and i64 %173, -4
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1260 ]
  %175 = shl nuw nsw i64 %index1267, 3
  %176 = getelementptr i8, i8* %scevgep404, i64 %175
  %177 = bitcast i8* %176 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %177, align 8, !alias.scope !87, !noalias !89
  %178 = fmul fast <4 x double> %wide.load1271, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %179 = bitcast i8* %176 to <4 x double>*
  store <4 x double> %178, <4 x double>* %179, align 8, !alias.scope !87, !noalias !89
  %index.next1268 = add i64 %index1267, 4
  %180 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %180, label %middle.block1258, label %vector.body1260, !llvm.loop !94

middle.block1258:                                 ; preds = %vector.body1260
  %cmp.n1270 = icmp eq i64 %173, %n.vec1266
  br i1 %cmp.n1270, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1258
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1266, %middle.block1258 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1258
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next396, 1200
  %indvar.next1262 = add i64 %indvar1261, 1
  br i1 %exitcond1010.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  %Packed_MemRef_call2309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %181 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %181
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !87, !noalias !89
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond1009.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !95

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit416
  %indvars.iv988 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %indvars.iv.next989, %polly.loop_exit416 ]
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %polly.indvar_next412, %polly.loop_exit416 ]
  %smin1004 = call i64 @llvm.smin.i64(i64 %indvars.iv988, i64 -968)
  %182 = add nsw i64 %smin1004, 1000
  %183 = shl nsw i64 %polly.indvar411, 5
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit438
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %indvars.iv.next989 = add nsw i64 %indvars.iv988, -32
  %exitcond1008.not = icmp eq i64 %polly.indvar_next412, 32
  br i1 %exitcond1008.not, label %polly.exiting305, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_exit438, %polly.loop_header408
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit438 ], [ 1200, %polly.loop_header408 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit438 ], [ 0, %polly.loop_header408 ]
  %184 = shl nsw i64 %polly.indvar417, 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit428
  %185 = mul nsw i64 %polly.indvar417, -256
  %186 = shl nsw i64 %polly.indvar417, 6
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit477
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, -256
  %exitcond1007.not = icmp eq i64 %polly.indvar_next418, 5
  br i1 %exitcond1007.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit428, %polly.loop_header414
  %polly.indvar423 = phi i64 [ 0, %polly.loop_header414 ], [ %polly.indvar_next424, %polly.loop_exit428 ]
  %187 = add nuw nsw i64 %polly.indvar423, %183
  %polly.access.mul.Packed_MemRef_call2309 = mul nuw nsw i64 %polly.indvar423, 1200
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_header426
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next424, %182
  br i1 %exitcond991.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_header426, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_header426 ]
  %188 = add nuw nsw i64 %polly.indvar429, %184
  %polly.access.mul.call2433 = mul nuw nsw i64 %188, 1000
  %polly.access.add.call2434 = add nuw nsw i64 %187, %polly.access.mul.call2433
  %polly.access.call2435 = getelementptr double, double* %polly.access.cast.call2736, i64 %polly.access.add.call2434
  %polly.access.call2435.load = load double, double* %polly.access.call2435, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call2309 = add nuw nsw i64 %polly.indvar429, %polly.access.mul.Packed_MemRef_call2309
  %polly.access.Packed_MemRef_call2309 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309
  store double %polly.access.call2435.load, double* %polly.access.Packed_MemRef_call2309, align 8
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next430, %indvars.iv985
  br i1 %exitcond987.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header436:                             ; preds = %polly.loop_exit477, %polly.loop_exit422
  %indvar1275 = phi i64 [ %indvar.next1276, %polly.loop_exit477 ], [ 0, %polly.loop_exit422 ]
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit477 ], [ 0, %polly.loop_exit422 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit477 ], [ %186, %polly.loop_exit422 ]
  %189 = shl nuw nsw i64 %indvar1275, 2
  %smin1334 = call i64 @llvm.smin.i64(i64 %189, i64 255)
  %190 = add nuw nsw i64 %smin1334, 1
  %191 = shl nuw nsw i64 %indvar1275, 2
  %192 = or i64 %191, 1
  %smin1315 = call i64 @llvm.smin.i64(i64 %192, i64 255)
  %193 = add nuw nsw i64 %smin1315, 1
  %194 = shl nuw nsw i64 %indvar1275, 2
  %195 = or i64 %194, 2
  %smin1296 = call i64 @llvm.smin.i64(i64 %195, i64 255)
  %196 = add nuw nsw i64 %smin1296, 1
  %197 = shl nuw nsw i64 %indvar1275, 2
  %198 = or i64 %197, 3
  %smin1277 = call i64 @llvm.smin.i64(i64 %198, i64 255)
  %199 = shl nsw i64 %polly.indvar439, 2
  %200 = add nsw i64 %199, %185
  %201 = add nsw i64 %200, -1
  %.inv928 = icmp ugt i64 %200, 255
  %202 = select i1 %.inv928, i64 255, i64 %201
  %polly.loop_guard452 = icmp sgt i64 %202, -1
  %203 = or i64 %200, 3
  %204 = add nuw nsw i64 %200, %184
  %polly.access.mul.call1469.us = mul nuw nsw i64 %204, 1000
  %polly.indvar_next466.us = or i64 %200, 1
  %polly.loop_cond467.not.not.us = icmp ult i64 %200, %203
  %205 = add nuw nsw i64 %polly.indvar_next466.us, %184
  %polly.access.mul.call1469.us.1 = mul nuw nsw i64 %205, 1000
  %polly.indvar_next466.us.1 = add nuw nsw i64 %polly.indvar_next466.us, 1
  %206 = add nuw nsw i64 %polly.indvar_next466.us.1, %184
  %polly.access.mul.call1469.us.2 = mul nuw nsw i64 %206, 1000
  %polly.indvar_next466.us.2 = or i64 %200, 3
  %207 = add nuw nsw i64 %polly.indvar_next466.us.2, %184
  %polly.access.mul.call1469.us.3 = mul nuw nsw i64 %207, 1000
  br i1 %polly.loop_guard452, label %polly.loop_header442.us, label %polly.loop_header442

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.loop_exit463.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_exit463.us ], [ 0, %polly.loop_header436 ]
  %208 = add nuw nsw i64 %polly.indvar445.us, %183
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar445.us, 1200
  br label %polly.loop_header449.us

polly.loop_header449.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header442.us ]
  %209 = add nuw nsw i64 %polly.indvar453.us, %184
  %polly.access.mul.call1457.us = mul nuw nsw i64 %209, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %208, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next454.us = add nuw i64 %polly.indvar453.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar453.us, %202
  br i1 %exitcond994.not, label %polly.loop_exit451.loopexit.us, label %polly.loop_header449.us

polly.loop_exit463.us:                            ; preds = %polly.loop_header461.us.1, %polly.loop_exit451.loopexit.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next446.us, %182
  br i1 %exitcond996.not, label %polly.loop_header475.preheader, label %polly.loop_header442.us

polly.loop_exit451.loopexit.us:                   ; preds = %polly.loop_header449.us
  %polly.access.add.call1470.us = add nuw nsw i64 %208, %polly.access.mul.call1469.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.us = add nuw nsw i64 %200, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1307474.us, align 8
  br i1 %polly.loop_cond467.not.not.us, label %polly.loop_header461.us.1, label %polly.loop_exit463.us

polly.loop_exit477:                               ; preds = %polly.loop_exit489.3
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 4
  %exitcond1006.not = icmp eq i64 %polly.indvar_next440, 300
  %indvar.next1276 = add i64 %indvar1275, 1
  br i1 %exitcond1006.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header442:                             ; preds = %polly.loop_header436, %polly.loop_exit463
  %polly.indvar445 = phi i64 [ %polly.indvar_next446, %polly.loop_exit463 ], [ 0, %polly.loop_header436 ]
  %210 = add nuw nsw i64 %polly.indvar445, %183
  %polly.access.mul.Packed_MemRef_call1307472 = mul nuw nsw i64 %polly.indvar445, 1200
  %polly.access.add.call1470 = add nuw nsw i64 %210, %polly.access.mul.call1469.us
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473 = add nuw nsw i64 %200, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1307474, align 8
  br i1 %polly.loop_cond467.not.not.us, label %polly.loop_header461.1, label %polly.loop_exit463

polly.loop_exit463:                               ; preds = %polly.loop_header461.1, %polly.loop_header442
  %polly.indvar_next446 = add nuw nsw i64 %polly.indvar445, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next446, %182
  br i1 %exitcond993.not, label %polly.loop_header475.preheader, label %polly.loop_header442

polly.loop_header475.preheader:                   ; preds = %polly.loop_exit463, %polly.loop_exit463.us
  %smin1001 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 255)
  %211 = mul nsw i64 %polly.indvar439, 38400
  %indvars.iv.next1000 = or i64 %indvars.iv997, 1
  %smin1001.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000, i64 255)
  %212 = or i64 %200, 1
  %213 = or i64 %199, 1
  %214 = mul nuw nsw i64 %213, 9600
  %indvars.iv.next1000.1 = add nuw nsw i64 %indvars.iv.next1000, 1
  %smin1001.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000.1, i64 255)
  %215 = or i64 %200, 2
  %216 = or i64 %199, 2
  %217 = mul nuw nsw i64 %216, 9600
  %218 = or i64 %200, 3
  %219 = or i64 %199, 3
  %220 = mul nuw nsw i64 %219, 9600
  br label %polly.loop_header475

polly.loop_header475:                             ; preds = %polly.loop_header475.preheader, %polly.loop_exit489.3
  %polly.indvar478 = phi i64 [ %polly.indvar_next479, %polly.loop_exit489.3 ], [ 0, %polly.loop_header475.preheader ]
  %polly.access.mul.Packed_MemRef_call1307493 = mul nuw nsw i64 %polly.indvar478, 1200
  %polly.access.add.Packed_MemRef_call2309498 = add nuw nsw i64 %200, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call2309499 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2309499, align 8
  %polly.access.Packed_MemRef_call1307507 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498
  %_p_scalar_508 = load double, double* %polly.access.Packed_MemRef_call1307507, align 8
  %min.iters.check1335 = icmp ult i64 %smin1334, 3
  br i1 %min.iters.check1335, label %polly.loop_header487.preheader, label %vector.ph1336

vector.ph1336:                                    ; preds = %polly.loop_header475
  %n.vec1338 = and i64 %190, -4
  %broadcast.splatinsert1344 = insertelement <4 x double> poison, double %_p_scalar_500, i32 0
  %broadcast.splat1345 = shufflevector <4 x double> %broadcast.splatinsert1344, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1347 = insertelement <4 x double> poison, double %_p_scalar_508, i32 0
  %broadcast.splat1348 = shufflevector <4 x double> %broadcast.splatinsert1347, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1333 ]
  %221 = add nuw nsw i64 %index1339, %184
  %222 = add nuw nsw i64 %index1339, %polly.access.mul.Packed_MemRef_call1307493
  %223 = getelementptr double, double* %Packed_MemRef_call1307, i64 %222
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %224, align 8
  %225 = fmul fast <4 x double> %broadcast.splat1345, %wide.load1343
  %226 = getelementptr double, double* %Packed_MemRef_call2309, i64 %222
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1348, %wide.load1346
  %229 = shl i64 %221, 3
  %230 = add nuw nsw i64 %229, %211
  %231 = getelementptr i8, i8* %call, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  %wide.load1349 = load <4 x double>, <4 x double>* %232, align 8, !alias.scope !87, !noalias !89
  %233 = fadd fast <4 x double> %228, %225
  %234 = fmul fast <4 x double> %233, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %235 = fadd fast <4 x double> %234, %wide.load1349
  %236 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %235, <4 x double>* %236, align 8, !alias.scope !87, !noalias !89
  %index.next1340 = add i64 %index1339, 4
  %237 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %237, label %middle.block1331, label %vector.body1333, !llvm.loop !98

middle.block1331:                                 ; preds = %vector.body1333
  %cmp.n1342 = icmp eq i64 %190, %n.vec1338
  br i1 %cmp.n1342, label %polly.loop_exit489, label %polly.loop_header487.preheader

polly.loop_header487.preheader:                   ; preds = %polly.loop_header475, %middle.block1331
  %polly.indvar490.ph = phi i64 [ 0, %polly.loop_header475 ], [ %n.vec1338, %middle.block1331 ]
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_header487, %middle.block1331
  %polly.access.add.Packed_MemRef_call2309498.1 = add nuw nsw i64 %212, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call2309499.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call2309499.1, align 8
  %polly.access.Packed_MemRef_call1307507.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498.1
  %_p_scalar_508.1 = load double, double* %polly.access.Packed_MemRef_call1307507.1, align 8
  %min.iters.check1316 = icmp ult i64 %smin1315, 3
  br i1 %min.iters.check1316, label %polly.loop_header487.1.preheader, label %vector.ph1317

vector.ph1317:                                    ; preds = %polly.loop_exit489
  %n.vec1319 = and i64 %193, -4
  %broadcast.splatinsert1325 = insertelement <4 x double> poison, double %_p_scalar_500.1, i32 0
  %broadcast.splat1326 = shufflevector <4 x double> %broadcast.splatinsert1325, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1328 = insertelement <4 x double> poison, double %_p_scalar_508.1, i32 0
  %broadcast.splat1329 = shufflevector <4 x double> %broadcast.splatinsert1328, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1314 ]
  %238 = add nuw nsw i64 %index1320, %184
  %239 = add nuw nsw i64 %index1320, %polly.access.mul.Packed_MemRef_call1307493
  %240 = getelementptr double, double* %Packed_MemRef_call1307, i64 %239
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1326, %wide.load1324
  %243 = getelementptr double, double* %Packed_MemRef_call2309, i64 %239
  %244 = bitcast double* %243 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %244, align 8
  %245 = fmul fast <4 x double> %broadcast.splat1329, %wide.load1327
  %246 = shl i64 %238, 3
  %247 = add nuw nsw i64 %246, %214
  %248 = getelementptr i8, i8* %call, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  %wide.load1330 = load <4 x double>, <4 x double>* %249, align 8, !alias.scope !87, !noalias !89
  %250 = fadd fast <4 x double> %245, %242
  %251 = fmul fast <4 x double> %250, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %252 = fadd fast <4 x double> %251, %wide.load1330
  %253 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %252, <4 x double>* %253, align 8, !alias.scope !87, !noalias !89
  %index.next1321 = add i64 %index1320, 4
  %254 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %254, label %middle.block1312, label %vector.body1314, !llvm.loop !99

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1323 = icmp eq i64 %193, %n.vec1319
  br i1 %cmp.n1323, label %polly.loop_exit489.1, label %polly.loop_header487.1.preheader

polly.loop_header487.1.preheader:                 ; preds = %polly.loop_exit489, %middle.block1312
  %polly.indvar490.1.ph = phi i64 [ 0, %polly.loop_exit489 ], [ %n.vec1319, %middle.block1312 ]
  br label %polly.loop_header487.1

polly.loop_header487:                             ; preds = %polly.loop_header487.preheader, %polly.loop_header487
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_header487 ], [ %polly.indvar490.ph, %polly.loop_header487.preheader ]
  %255 = add nuw nsw i64 %polly.indvar490, %184
  %polly.access.add.Packed_MemRef_call1307494 = add nuw nsw i64 %polly.indvar490, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307495 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call1307495, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_500, %_p_scalar_496
  %polly.access.Packed_MemRef_call2309503 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call2309503, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_508, %_p_scalar_504
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %211
  %scevgep509 = getelementptr i8, i8* %call, i64 %257
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_511
  store double %p_add42.i79, double* %scevgep509510, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar490, %smin1001
  br i1 %exitcond1002.not, label %polly.loop_exit489, label %polly.loop_header487, !llvm.loop !100

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall518 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header602

polly.exiting515:                                 ; preds = %polly.loop_exit626
  tail call void @free(i8* nonnull %malloccall516)
  tail call void @free(i8* nonnull %malloccall518)
  br label %kernel_syr2k.exit

polly.loop_header602:                             ; preds = %polly.loop_exit610, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit610 ], [ 0, %polly.start514 ]
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit610 ], [ 1, %polly.start514 ]
  %258 = add i64 %indvar, 1
  %259 = mul nuw nsw i64 %polly.indvar605, 9600
  %scevgep614 = getelementptr i8, i8* %call, i64 %259
  %min.iters.check1159 = icmp ult i64 %258, 4
  br i1 %min.iters.check1159, label %polly.loop_header608.preheader, label %vector.ph1160

vector.ph1160:                                    ; preds = %polly.loop_header602
  %n.vec1162 = and i64 %258, -4
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1158 ]
  %260 = shl nuw nsw i64 %index1163, 3
  %261 = getelementptr i8, i8* %scevgep614, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  %wide.load1167 = load <4 x double>, <4 x double>* %262, align 8, !alias.scope !101, !noalias !103
  %263 = fmul fast <4 x double> %wide.load1167, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %264 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %263, <4 x double>* %264, align 8, !alias.scope !101, !noalias !103
  %index.next1164 = add i64 %index1163, 4
  %265 = icmp eq i64 %index.next1164, %n.vec1162
  br i1 %265, label %middle.block1156, label %vector.body1158, !llvm.loop !108

middle.block1156:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %258, %n.vec1162
  br i1 %cmp.n1166, label %polly.loop_exit610, label %polly.loop_header608.preheader

polly.loop_header608.preheader:                   ; preds = %polly.loop_header602, %middle.block1156
  %polly.indvar611.ph = phi i64 [ 0, %polly.loop_header602 ], [ %n.vec1162, %middle.block1156 ]
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608, %middle.block1156
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next606, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1036.not, label %polly.loop_header618.preheader, label %polly.loop_header602

polly.loop_header618.preheader:                   ; preds = %polly.loop_exit610
  %Packed_MemRef_call1517 = bitcast i8* %malloccall516 to double*
  %Packed_MemRef_call2519 = bitcast i8* %malloccall518 to double*
  br label %polly.loop_header618

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_header608
  %polly.indvar611 = phi i64 [ %polly.indvar_next612, %polly.loop_header608 ], [ %polly.indvar611.ph, %polly.loop_header608.preheader ]
  %266 = shl nuw nsw i64 %polly.indvar611, 3
  %scevgep615 = getelementptr i8, i8* %scevgep614, i64 %266
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !101, !noalias !103
  %p_mul.i = fmul fast double %_p_scalar_617, 1.200000e+00
  store double %p_mul.i, double* %scevgep615616, align 8, !alias.scope !101, !noalias !103
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next612, %polly.indvar605
  br i1 %exitcond1035.not, label %polly.loop_exit610, label %polly.loop_header608, !llvm.loop !109

polly.loop_header618:                             ; preds = %polly.loop_header618.preheader, %polly.loop_exit626
  %indvars.iv1014 = phi i64 [ 0, %polly.loop_header618.preheader ], [ %indvars.iv.next1015, %polly.loop_exit626 ]
  %polly.indvar621 = phi i64 [ 0, %polly.loop_header618.preheader ], [ %polly.indvar_next622, %polly.loop_exit626 ]
  %smin1030 = call i64 @llvm.smin.i64(i64 %indvars.iv1014, i64 -968)
  %267 = add nsw i64 %smin1030, 1000
  %268 = shl nsw i64 %polly.indvar621, 5
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_exit648
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -32
  %exitcond1034.not = icmp eq i64 %polly.indvar_next622, 32
  br i1 %exitcond1034.not, label %polly.exiting515, label %polly.loop_header618

polly.loop_header624:                             ; preds = %polly.loop_exit648, %polly.loop_header618
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit648 ], [ 1200, %polly.loop_header618 ]
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit648 ], [ 0, %polly.loop_header618 ]
  %269 = shl nsw i64 %polly.indvar627, 8
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_exit638
  %270 = mul nsw i64 %polly.indvar627, -256
  %271 = shl nsw i64 %polly.indvar627, 6
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit687
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -256
  %exitcond1033.not = icmp eq i64 %polly.indvar_next628, 5
  br i1 %exitcond1033.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header630:                             ; preds = %polly.loop_exit638, %polly.loop_header624
  %polly.indvar633 = phi i64 [ 0, %polly.loop_header624 ], [ %polly.indvar_next634, %polly.loop_exit638 ]
  %272 = add nuw nsw i64 %polly.indvar633, %268
  %polly.access.mul.Packed_MemRef_call2519 = mul nuw nsw i64 %polly.indvar633, 1200
  br label %polly.loop_header636

polly.loop_exit638:                               ; preds = %polly.loop_header636
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next634, %267
  br i1 %exitcond1017.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_header636, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_header636 ]
  %273 = add nuw nsw i64 %polly.indvar639, %269
  %polly.access.mul.call2643 = mul nuw nsw i64 %273, 1000
  %polly.access.add.call2644 = add nuw nsw i64 %272, %polly.access.mul.call2643
  %polly.access.call2645 = getelementptr double, double* %polly.access.cast.call2736, i64 %polly.access.add.call2644
  %polly.access.call2645.load = load double, double* %polly.access.call2645, align 8, !alias.scope !105, !noalias !110
  %polly.access.add.Packed_MemRef_call2519 = add nuw nsw i64 %polly.indvar639, %polly.access.mul.Packed_MemRef_call2519
  %polly.access.Packed_MemRef_call2519 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519
  store double %polly.access.call2645.load, double* %polly.access.Packed_MemRef_call2519, align 8
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next640, %indvars.iv1011
  br i1 %exitcond1013.not, label %polly.loop_exit638, label %polly.loop_header636

polly.loop_header646:                             ; preds = %polly.loop_exit687, %polly.loop_exit632
  %indvar1171 = phi i64 [ %indvar.next1172, %polly.loop_exit687 ], [ 0, %polly.loop_exit632 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit687 ], [ 0, %polly.loop_exit632 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit687 ], [ %271, %polly.loop_exit632 ]
  %274 = shl nuw nsw i64 %indvar1171, 2
  %smin1230 = call i64 @llvm.smin.i64(i64 %274, i64 255)
  %275 = add nuw nsw i64 %smin1230, 1
  %276 = shl nuw nsw i64 %indvar1171, 2
  %277 = or i64 %276, 1
  %smin1211 = call i64 @llvm.smin.i64(i64 %277, i64 255)
  %278 = add nuw nsw i64 %smin1211, 1
  %279 = shl nuw nsw i64 %indvar1171, 2
  %280 = or i64 %279, 2
  %smin1192 = call i64 @llvm.smin.i64(i64 %280, i64 255)
  %281 = add nuw nsw i64 %smin1192, 1
  %282 = shl nuw nsw i64 %indvar1171, 2
  %283 = or i64 %282, 3
  %smin1173 = call i64 @llvm.smin.i64(i64 %283, i64 255)
  %284 = shl nsw i64 %polly.indvar649, 2
  %285 = add nsw i64 %284, %270
  %286 = add nsw i64 %285, -1
  %.inv929 = icmp ugt i64 %285, 255
  %287 = select i1 %.inv929, i64 255, i64 %286
  %polly.loop_guard662 = icmp sgt i64 %287, -1
  %288 = or i64 %285, 3
  %289 = add nuw nsw i64 %285, %269
  %polly.access.mul.call1679.us = mul nuw nsw i64 %289, 1000
  %polly.indvar_next676.us = or i64 %285, 1
  %polly.loop_cond677.not.not.us = icmp ult i64 %285, %288
  %290 = add nuw nsw i64 %polly.indvar_next676.us, %269
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %290, 1000
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar_next676.us, 1
  %291 = add nuw nsw i64 %polly.indvar_next676.us.1, %269
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %291, 1000
  %polly.indvar_next676.us.2 = or i64 %285, 3
  %292 = add nuw nsw i64 %polly.indvar_next676.us.2, %269
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %292, 1000
  br i1 %polly.loop_guard662, label %polly.loop_header652.us, label %polly.loop_header652

polly.loop_header652.us:                          ; preds = %polly.loop_header646, %polly.loop_exit673.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.loop_exit673.us ], [ 0, %polly.loop_header646 ]
  %293 = add nuw nsw i64 %polly.indvar655.us, %268
  %polly.access.mul.Packed_MemRef_call1517.us = mul nuw nsw i64 %polly.indvar655.us, 1200
  br label %polly.loop_header659.us

polly.loop_header659.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header652.us ]
  %294 = add nuw nsw i64 %polly.indvar663.us, %269
  %polly.access.mul.call1667.us = mul nuw nsw i64 %294, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %293, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517.us = add nuw nsw i64 %polly.indvar663.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1517.us, align 8
  %polly.indvar_next664.us = add nuw i64 %polly.indvar663.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar663.us, %287
  br i1 %exitcond1020.not, label %polly.loop_exit661.loopexit.us, label %polly.loop_header659.us

polly.loop_exit673.us:                            ; preds = %polly.loop_header671.us.1, %polly.loop_exit661.loopexit.us
  %polly.indvar_next656.us = add nuw nsw i64 %polly.indvar655.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next656.us, %267
  br i1 %exitcond1022.not, label %polly.loop_header685.preheader, label %polly.loop_header652.us

polly.loop_exit661.loopexit.us:                   ; preds = %polly.loop_header659.us
  %polly.access.add.call1680.us = add nuw nsw i64 %293, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.us = add nuw nsw i64 %285, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1517684.us, align 8
  br i1 %polly.loop_cond677.not.not.us, label %polly.loop_header671.us.1, label %polly.loop_exit673.us

polly.loop_exit687:                               ; preds = %polly.loop_exit699.3
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 4
  %exitcond1032.not = icmp eq i64 %polly.indvar_next650, 300
  %indvar.next1172 = add i64 %indvar1171, 1
  br i1 %exitcond1032.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header652:                             ; preds = %polly.loop_header646, %polly.loop_exit673
  %polly.indvar655 = phi i64 [ %polly.indvar_next656, %polly.loop_exit673 ], [ 0, %polly.loop_header646 ]
  %295 = add nuw nsw i64 %polly.indvar655, %268
  %polly.access.mul.Packed_MemRef_call1517682 = mul nuw nsw i64 %polly.indvar655, 1200
  %polly.access.add.call1680 = add nuw nsw i64 %295, %polly.access.mul.call1679.us
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683 = add nuw nsw i64 %285, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1517684, align 8
  br i1 %polly.loop_cond677.not.not.us, label %polly.loop_header671.1, label %polly.loop_exit673

polly.loop_exit673:                               ; preds = %polly.loop_header671.1, %polly.loop_header652
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next656, %267
  br i1 %exitcond1019.not, label %polly.loop_header685.preheader, label %polly.loop_header652

polly.loop_header685.preheader:                   ; preds = %polly.loop_exit673, %polly.loop_exit673.us
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1023, i64 255)
  %296 = mul nsw i64 %polly.indvar649, 38400
  %indvars.iv.next1026 = or i64 %indvars.iv1023, 1
  %smin1027.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1026, i64 255)
  %297 = or i64 %285, 1
  %298 = or i64 %284, 1
  %299 = mul nuw nsw i64 %298, 9600
  %indvars.iv.next1026.1 = add nuw nsw i64 %indvars.iv.next1026, 1
  %smin1027.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1026.1, i64 255)
  %300 = or i64 %285, 2
  %301 = or i64 %284, 2
  %302 = mul nuw nsw i64 %301, 9600
  %303 = or i64 %285, 3
  %304 = or i64 %284, 3
  %305 = mul nuw nsw i64 %304, 9600
  br label %polly.loop_header685

polly.loop_header685:                             ; preds = %polly.loop_header685.preheader, %polly.loop_exit699.3
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit699.3 ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1517703 = mul nuw nsw i64 %polly.indvar688, 1200
  %polly.access.add.Packed_MemRef_call2519708 = add nuw nsw i64 %285, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call2519709 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708
  %_p_scalar_710 = load double, double* %polly.access.Packed_MemRef_call2519709, align 8
  %polly.access.Packed_MemRef_call1517717 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708
  %_p_scalar_718 = load double, double* %polly.access.Packed_MemRef_call1517717, align 8
  %min.iters.check1231 = icmp ult i64 %smin1230, 3
  br i1 %min.iters.check1231, label %polly.loop_header697.preheader, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header685
  %n.vec1234 = and i64 %275, -4
  %broadcast.splatinsert1240 = insertelement <4 x double> poison, double %_p_scalar_710, i32 0
  %broadcast.splat1241 = shufflevector <4 x double> %broadcast.splatinsert1240, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1243 = insertelement <4 x double> poison, double %_p_scalar_718, i32 0
  %broadcast.splat1244 = shufflevector <4 x double> %broadcast.splatinsert1243, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1236, %vector.body1229 ]
  %306 = add nuw nsw i64 %index1235, %269
  %307 = add nuw nsw i64 %index1235, %polly.access.mul.Packed_MemRef_call1517703
  %308 = getelementptr double, double* %Packed_MemRef_call1517, i64 %307
  %309 = bitcast double* %308 to <4 x double>*
  %wide.load1239 = load <4 x double>, <4 x double>* %309, align 8
  %310 = fmul fast <4 x double> %broadcast.splat1241, %wide.load1239
  %311 = getelementptr double, double* %Packed_MemRef_call2519, i64 %307
  %312 = bitcast double* %311 to <4 x double>*
  %wide.load1242 = load <4 x double>, <4 x double>* %312, align 8
  %313 = fmul fast <4 x double> %broadcast.splat1244, %wide.load1242
  %314 = shl i64 %306, 3
  %315 = add nuw nsw i64 %314, %296
  %316 = getelementptr i8, i8* %call, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %317, align 8, !alias.scope !101, !noalias !103
  %318 = fadd fast <4 x double> %313, %310
  %319 = fmul fast <4 x double> %318, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %320 = fadd fast <4 x double> %319, %wide.load1245
  %321 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %320, <4 x double>* %321, align 8, !alias.scope !101, !noalias !103
  %index.next1236 = add i64 %index1235, 4
  %322 = icmp eq i64 %index.next1236, %n.vec1234
  br i1 %322, label %middle.block1227, label %vector.body1229, !llvm.loop !112

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1238 = icmp eq i64 %275, %n.vec1234
  br i1 %cmp.n1238, label %polly.loop_exit699, label %polly.loop_header697.preheader

polly.loop_header697.preheader:                   ; preds = %polly.loop_header685, %middle.block1227
  %polly.indvar700.ph = phi i64 [ 0, %polly.loop_header685 ], [ %n.vec1234, %middle.block1227 ]
  br label %polly.loop_header697

polly.loop_exit699:                               ; preds = %polly.loop_header697, %middle.block1227
  %polly.access.add.Packed_MemRef_call2519708.1 = add nuw nsw i64 %297, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call2519709.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708.1
  %_p_scalar_710.1 = load double, double* %polly.access.Packed_MemRef_call2519709.1, align 8
  %polly.access.Packed_MemRef_call1517717.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708.1
  %_p_scalar_718.1 = load double, double* %polly.access.Packed_MemRef_call1517717.1, align 8
  %min.iters.check1212 = icmp ult i64 %smin1211, 3
  br i1 %min.iters.check1212, label %polly.loop_header697.1.preheader, label %vector.ph1213

vector.ph1213:                                    ; preds = %polly.loop_exit699
  %n.vec1215 = and i64 %278, -4
  %broadcast.splatinsert1221 = insertelement <4 x double> poison, double %_p_scalar_710.1, i32 0
  %broadcast.splat1222 = shufflevector <4 x double> %broadcast.splatinsert1221, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1224 = insertelement <4 x double> poison, double %_p_scalar_718.1, i32 0
  %broadcast.splat1225 = shufflevector <4 x double> %broadcast.splatinsert1224, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1210 ]
  %323 = add nuw nsw i64 %index1216, %269
  %324 = add nuw nsw i64 %index1216, %polly.access.mul.Packed_MemRef_call1517703
  %325 = getelementptr double, double* %Packed_MemRef_call1517, i64 %324
  %326 = bitcast double* %325 to <4 x double>*
  %wide.load1220 = load <4 x double>, <4 x double>* %326, align 8
  %327 = fmul fast <4 x double> %broadcast.splat1222, %wide.load1220
  %328 = getelementptr double, double* %Packed_MemRef_call2519, i64 %324
  %329 = bitcast double* %328 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %329, align 8
  %330 = fmul fast <4 x double> %broadcast.splat1225, %wide.load1223
  %331 = shl i64 %323, 3
  %332 = add nuw nsw i64 %331, %299
  %333 = getelementptr i8, i8* %call, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %334, align 8, !alias.scope !101, !noalias !103
  %335 = fadd fast <4 x double> %330, %327
  %336 = fmul fast <4 x double> %335, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %337 = fadd fast <4 x double> %336, %wide.load1226
  %338 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %337, <4 x double>* %338, align 8, !alias.scope !101, !noalias !103
  %index.next1217 = add i64 %index1216, 4
  %339 = icmp eq i64 %index.next1217, %n.vec1215
  br i1 %339, label %middle.block1208, label %vector.body1210, !llvm.loop !113

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1219 = icmp eq i64 %278, %n.vec1215
  br i1 %cmp.n1219, label %polly.loop_exit699.1, label %polly.loop_header697.1.preheader

polly.loop_header697.1.preheader:                 ; preds = %polly.loop_exit699, %middle.block1208
  %polly.indvar700.1.ph = phi i64 [ 0, %polly.loop_exit699 ], [ %n.vec1215, %middle.block1208 ]
  br label %polly.loop_header697.1

polly.loop_header697:                             ; preds = %polly.loop_header697.preheader, %polly.loop_header697
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_header697 ], [ %polly.indvar700.ph, %polly.loop_header697.preheader ]
  %340 = add nuw nsw i64 %polly.indvar700, %269
  %polly.access.add.Packed_MemRef_call1517704 = add nuw nsw i64 %polly.indvar700, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517705 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call1517705, align 8
  %p_mul27.i = fmul fast double %_p_scalar_710, %_p_scalar_706
  %polly.access.Packed_MemRef_call2519713 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517704
  %_p_scalar_714 = load double, double* %polly.access.Packed_MemRef_call2519713, align 8
  %p_mul37.i = fmul fast double %_p_scalar_718, %_p_scalar_714
  %341 = shl i64 %340, 3
  %342 = add nuw nsw i64 %341, %296
  %scevgep719 = getelementptr i8, i8* %call, i64 %342
  %scevgep719720 = bitcast i8* %scevgep719 to double*
  %_p_scalar_721 = load double, double* %scevgep719720, align 8, !alias.scope !101, !noalias !103
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_721
  store double %p_add42.i, double* %scevgep719720, align 8, !alias.scope !101, !noalias !103
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar700, %smin1027
  br i1 %exitcond1028.not, label %polly.loop_exit699, label %polly.loop_header697, !llvm.loop !114

polly.loop_header848:                             ; preds = %entry, %polly.loop_exit856
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit856 ], [ 0, %entry ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %entry ]
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -1168)
  %343 = shl nsw i64 %polly.indvar851, 5
  %344 = add nsw i64 %smin1063, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1066.not, label %polly.loop_header875, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %345 = mul nsw i64 %polly.indvar857, -32
  %smin = call i64 @llvm.smin.i64(i64 %345, i64 -1168)
  %346 = add nsw i64 %smin, 1200
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 -1168)
  %347 = shl nsw i64 %polly.indvar857, 5
  %348 = add nsw i64 %smin1059, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1065.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1065.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %349 = add nuw nsw i64 %polly.indvar863, %343
  %350 = trunc i64 %349 to i32
  %351 = mul nuw nsw i64 %349, 9600
  %min.iters.check = icmp eq i64 %346, 0
  br i1 %min.iters.check, label %polly.loop_header866, label %vector.ph1098

vector.ph1098:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1105 = insertelement <4 x i64> poison, i64 %347, i32 0
  %broadcast.splat1106 = shufflevector <4 x i64> %broadcast.splatinsert1105, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %350, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1098
  %index1099 = phi i64 [ 0, %vector.ph1098 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1103 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1098 ], [ %vec.ind.next1104, %vector.body1097 ]
  %352 = add nuw nsw <4 x i64> %vec.ind1103, %broadcast.splat1106
  %353 = trunc <4 x i64> %352 to <4 x i32>
  %354 = mul <4 x i32> %broadcast.splat1108, %353
  %355 = add <4 x i32> %354, <i32 3, i32 3, i32 3, i32 3>
  %356 = urem <4 x i32> %355, <i32 1200, i32 1200, i32 1200, i32 1200>
  %357 = sitofp <4 x i32> %356 to <4 x double>
  %358 = fmul fast <4 x double> %357, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %359 = extractelement <4 x i64> %352, i32 0
  %360 = shl i64 %359, 3
  %361 = add nuw nsw i64 %360, %351
  %362 = getelementptr i8, i8* %call, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %358, <4 x double>* %363, align 8, !alias.scope !115, !noalias !117
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1104 = add <4 x i64> %vec.ind1103, <i64 4, i64 4, i64 4, i64 4>
  %364 = icmp eq i64 %index.next1100, %346
  br i1 %364, label %polly.loop_exit868, label %vector.body1097, !llvm.loop !120

polly.loop_exit868:                               ; preds = %vector.body1097, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar863, %344
  br i1 %exitcond1064.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %365 = add nuw nsw i64 %polly.indvar869, %347
  %366 = trunc i64 %365 to i32
  %367 = mul i32 %366, %350
  %368 = add i32 %367, 3
  %369 = urem i32 %368, 1200
  %p_conv31.i = sitofp i32 %369 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %370 = shl i64 %365, 3
  %371 = add nuw nsw i64 %370, %351
  %scevgep872 = getelementptr i8, i8* %call, i64 %371
  %scevgep872873 = bitcast i8* %scevgep872 to double*
  store double %p_div33.i, double* %scevgep872873, align 8, !alias.scope !115, !noalias !117
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar869, %348
  br i1 %exitcond1060.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !121

polly.loop_header875:                             ; preds = %polly.loop_exit856, %polly.loop_exit883
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 -1168)
  %372 = shl nsw i64 %polly.indvar878, 5
  %373 = add nsw i64 %smin1053, 1199
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1052 = add nsw i64 %indvars.iv1051, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next879, 38
  br i1 %exitcond1056.not, label %polly.loop_header901, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %374 = mul nsw i64 %polly.indvar884, -32
  %smin1112 = call i64 @llvm.smin.i64(i64 %374, i64 -968)
  %375 = add nsw i64 %smin1112, 1000
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -968)
  %376 = shl nsw i64 %polly.indvar884, 5
  %377 = add nsw i64 %smin1049, 999
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -32
  %exitcond1055.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1055.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %polly.indvar890 = phi i64 [ 0, %polly.loop_header881 ], [ %polly.indvar_next891, %polly.loop_exit895 ]
  %378 = add nuw nsw i64 %polly.indvar890, %372
  %379 = trunc i64 %378 to i32
  %380 = mul nuw nsw i64 %378, 8000
  %min.iters.check1113 = icmp eq i64 %375, 0
  br i1 %min.iters.check1113, label %polly.loop_header893, label %vector.ph1114

vector.ph1114:                                    ; preds = %polly.loop_header887
  %broadcast.splatinsert1123 = insertelement <4 x i64> poison, i64 %376, i32 0
  %broadcast.splat1124 = shufflevector <4 x i64> %broadcast.splatinsert1123, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %vector.ph1114
  %index1117 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1118, %vector.body1111 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1114 ], [ %vec.ind.next1122, %vector.body1111 ]
  %381 = add nuw nsw <4 x i64> %vec.ind1121, %broadcast.splat1124
  %382 = trunc <4 x i64> %381 to <4 x i32>
  %383 = mul <4 x i32> %broadcast.splat1126, %382
  %384 = add <4 x i32> %383, <i32 2, i32 2, i32 2, i32 2>
  %385 = urem <4 x i32> %384, <i32 1000, i32 1000, i32 1000, i32 1000>
  %386 = sitofp <4 x i32> %385 to <4 x double>
  %387 = fmul fast <4 x double> %386, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %388 = extractelement <4 x i64> %381, i32 0
  %389 = shl i64 %388, 3
  %390 = add nuw nsw i64 %389, %380
  %391 = getelementptr i8, i8* %call2, i64 %390
  %392 = bitcast i8* %391 to <4 x double>*
  store <4 x double> %387, <4 x double>* %392, align 8, !alias.scope !119, !noalias !122
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %393 = icmp eq i64 %index.next1118, %375
  br i1 %393, label %polly.loop_exit895, label %vector.body1111, !llvm.loop !123

polly.loop_exit895:                               ; preds = %vector.body1111, %polly.loop_header893
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar890, %373
  br i1 %exitcond1054.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_header887, %polly.loop_header893
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_header893 ], [ 0, %polly.loop_header887 ]
  %394 = add nuw nsw i64 %polly.indvar896, %376
  %395 = trunc i64 %394 to i32
  %396 = mul i32 %395, %379
  %397 = add i32 %396, 2
  %398 = urem i32 %397, 1000
  %p_conv10.i = sitofp i32 %398 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %399 = shl i64 %394, 3
  %400 = add nuw nsw i64 %399, %380
  %scevgep899 = getelementptr i8, i8* %call2, i64 %400
  %scevgep899900 = bitcast i8* %scevgep899 to double*
  store double %p_div12.i, double* %scevgep899900, align 8, !alias.scope !119, !noalias !122
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar896, %377
  br i1 %exitcond1050.not, label %polly.loop_exit895, label %polly.loop_header893, !llvm.loop !124

polly.loop_header901:                             ; preds = %polly.loop_exit883, %polly.loop_exit909
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %smin1043 = call i64 @llvm.smin.i64(i64 %indvars.iv1041, i64 -1168)
  %401 = shl nsw i64 %polly.indvar904, 5
  %402 = add nsw i64 %smin1043, 1199
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -32
  %exitcond1046.not = icmp eq i64 %polly.indvar_next905, 38
  br i1 %exitcond1046.not, label %init_array.exit, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %403 = mul nsw i64 %polly.indvar910, -32
  %smin1130 = call i64 @llvm.smin.i64(i64 %403, i64 -968)
  %404 = add nsw i64 %smin1130, 1000
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 -968)
  %405 = shl nsw i64 %polly.indvar910, 5
  %406 = add nsw i64 %smin1039, 999
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, -32
  %exitcond1045.not = icmp eq i64 %polly.indvar_next911, 32
  br i1 %exitcond1045.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %polly.indvar916 = phi i64 [ 0, %polly.loop_header907 ], [ %polly.indvar_next917, %polly.loop_exit921 ]
  %407 = add nuw nsw i64 %polly.indvar916, %401
  %408 = trunc i64 %407 to i32
  %409 = mul nuw nsw i64 %407, 8000
  %min.iters.check1131 = icmp eq i64 %404, 0
  br i1 %min.iters.check1131, label %polly.loop_header919, label %vector.ph1132

vector.ph1132:                                    ; preds = %polly.loop_header913
  %broadcast.splatinsert1141 = insertelement <4 x i64> poison, i64 %405, i32 0
  %broadcast.splat1142 = shufflevector <4 x i64> %broadcast.splatinsert1141, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1132
  %index1135 = phi i64 [ 0, %vector.ph1132 ], [ %index.next1136, %vector.body1129 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1132 ], [ %vec.ind.next1140, %vector.body1129 ]
  %410 = add nuw nsw <4 x i64> %vec.ind1139, %broadcast.splat1142
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat1144, %411
  %413 = add <4 x i32> %412, <i32 1, i32 1, i32 1, i32 1>
  %414 = urem <4 x i32> %413, <i32 1200, i32 1200, i32 1200, i32 1200>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %409
  %420 = getelementptr i8, i8* %call1, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !118, !noalias !125
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next1136, %404
  br i1 %422, label %polly.loop_exit921, label %vector.body1129, !llvm.loop !126

polly.loop_exit921:                               ; preds = %vector.body1129, %polly.loop_header919
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar916, %402
  br i1 %exitcond1044.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_header913, %polly.loop_header919
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_header919 ], [ 0, %polly.loop_header913 ]
  %423 = add nuw nsw i64 %polly.indvar922, %405
  %424 = trunc i64 %423 to i32
  %425 = mul i32 %424, %408
  %426 = add i32 %425, 1
  %427 = urem i32 %426, 1200
  %p_conv.i = sitofp i32 %427 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %428 = shl i64 %423, 3
  %429 = add nuw nsw i64 %428, %409
  %scevgep926 = getelementptr i8, i8* %call1, i64 %429
  %scevgep926927 = bitcast i8* %scevgep926 to double*
  store double %p_div.i, double* %scevgep926927, align 8, !alias.scope !118, !noalias !125
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar922, %406
  br i1 %exitcond1040.not, label %polly.loop_exit921, label %polly.loop_header919, !llvm.loop !127

polly.loop_header251.1:                           ; preds = %polly.loop_header234
  %polly.access.add.call1260.1 = add nuw nsw i64 %125, %polly.access.mul.call1259.us.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar_next256.us, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.access.add.call1260.2 = add nuw nsw i64 %125, %polly.access.mul.call1259.us.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar_next256.us.1, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.access.add.call1260.3 = add nuw nsw i64 %125, %polly.access.mul.call1259.us.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar_next256.us.2, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  br label %polly.loop_exit253

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %123, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar_next256.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %123, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar_next256.us.1, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %123, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar_next256.us.2, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  br label %polly.loop_exit253.us

polly.loop_header277.1:                           ; preds = %polly.loop_header277.1.preheader, %polly.loop_header277.1
  %polly.indvar280.1 = phi i64 [ %polly.indvar_next281.1, %polly.loop_header277.1 ], [ %polly.indvar280.1.ph, %polly.loop_header277.1.preheader ]
  %430 = add nuw nsw i64 %polly.indvar280.1, %99
  %polly.access.add.Packed_MemRef_call1284.1 = add nuw nsw i64 %polly.indvar280.1, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.1
  %_p_scalar_286.1 = load double, double* %polly.access.Packed_MemRef_call1285.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_290.1, %_p_scalar_286.1
  %polly.access.Packed_MemRef_call2293.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284.1
  %_p_scalar_294.1 = load double, double* %polly.access.Packed_MemRef_call2293.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_298.1, %_p_scalar_294.1
  %431 = shl i64 %430, 3
  %432 = add nuw nsw i64 %431, %129
  %scevgep299.1 = getelementptr i8, i8* %call, i64 %432
  %scevgep299300.1 = bitcast i8* %scevgep299.1 to double*
  %_p_scalar_301.1 = load double, double* %scevgep299300.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_301.1
  store double %p_add42.i118.1, double* %scevgep299300.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281.1 = add nuw nsw i64 %polly.indvar280.1, 1
  %exitcond976.1.not = icmp eq i64 %polly.indvar280.1, %smin975.1
  br i1 %exitcond976.1.not, label %polly.loop_exit279.1, label %polly.loop_header277.1, !llvm.loop !128

polly.loop_exit279.1:                             ; preds = %polly.loop_header277.1, %middle.block1416
  %polly.access.add.Packed_MemRef_call2288.2 = add nuw nsw i64 %130, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call2289.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.2
  %_p_scalar_290.2 = load double, double* %polly.access.Packed_MemRef_call2289.2, align 8
  %polly.access.Packed_MemRef_call1297.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.2
  %_p_scalar_298.2 = load double, double* %polly.access.Packed_MemRef_call1297.2, align 8
  %min.iters.check1401 = icmp eq i64 %smin1400, 2
  br i1 %min.iters.check1401, label %polly.loop_header277.2.preheader, label %vector.ph1402

vector.ph1402:                                    ; preds = %polly.loop_exit279.1
  %n.vec1404 = and i64 %111, -4
  %broadcast.splatinsert1410 = insertelement <4 x double> poison, double %_p_scalar_290.2, i32 0
  %broadcast.splat1411 = shufflevector <4 x double> %broadcast.splatinsert1410, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1413 = insertelement <4 x double> poison, double %_p_scalar_298.2, i32 0
  %broadcast.splat1414 = shufflevector <4 x double> %broadcast.splatinsert1413, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %vector.ph1402
  %index1405 = phi i64 [ 0, %vector.ph1402 ], [ %index.next1406, %vector.body1399 ]
  %433 = add nuw nsw i64 %index1405, %99
  %434 = add nuw nsw i64 %index1405, %polly.access.mul.Packed_MemRef_call1283
  %435 = getelementptr double, double* %Packed_MemRef_call1, i64 %434
  %436 = bitcast double* %435 to <4 x double>*
  %wide.load1409 = load <4 x double>, <4 x double>* %436, align 8
  %437 = fmul fast <4 x double> %broadcast.splat1411, %wide.load1409
  %438 = getelementptr double, double* %Packed_MemRef_call2, i64 %434
  %439 = bitcast double* %438 to <4 x double>*
  %wide.load1412 = load <4 x double>, <4 x double>* %439, align 8
  %440 = fmul fast <4 x double> %broadcast.splat1414, %wide.load1412
  %441 = shl i64 %433, 3
  %442 = add nuw nsw i64 %441, %132
  %443 = getelementptr i8, i8* %call, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  %wide.load1415 = load <4 x double>, <4 x double>* %444, align 8, !alias.scope !72, !noalias !74
  %445 = fadd fast <4 x double> %440, %437
  %446 = fmul fast <4 x double> %445, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %447 = fadd fast <4 x double> %446, %wide.load1415
  %448 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %447, <4 x double>* %448, align 8, !alias.scope !72, !noalias !74
  %index.next1406 = add i64 %index1405, 4
  %449 = icmp eq i64 %index.next1406, %n.vec1404
  br i1 %449, label %middle.block1397, label %vector.body1399, !llvm.loop !129

middle.block1397:                                 ; preds = %vector.body1399
  %cmp.n1408 = icmp eq i64 %111, %n.vec1404
  br i1 %cmp.n1408, label %polly.loop_exit279.2, label %polly.loop_header277.2.preheader

polly.loop_header277.2.preheader:                 ; preds = %polly.loop_exit279.1, %middle.block1397
  %polly.indvar280.2.ph = phi i64 [ 0, %polly.loop_exit279.1 ], [ %n.vec1404, %middle.block1397 ]
  br label %polly.loop_header277.2

polly.loop_header277.2:                           ; preds = %polly.loop_header277.2.preheader, %polly.loop_header277.2
  %polly.indvar280.2 = phi i64 [ %polly.indvar_next281.2, %polly.loop_header277.2 ], [ %polly.indvar280.2.ph, %polly.loop_header277.2.preheader ]
  %450 = add nuw nsw i64 %polly.indvar280.2, %99
  %polly.access.add.Packed_MemRef_call1284.2 = add nuw nsw i64 %polly.indvar280.2, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.2
  %_p_scalar_286.2 = load double, double* %polly.access.Packed_MemRef_call1285.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_290.2, %_p_scalar_286.2
  %polly.access.Packed_MemRef_call2293.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1284.2
  %_p_scalar_294.2 = load double, double* %polly.access.Packed_MemRef_call2293.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_298.2, %_p_scalar_294.2
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %132
  %scevgep299.2 = getelementptr i8, i8* %call, i64 %452
  %scevgep299300.2 = bitcast i8* %scevgep299.2 to double*
  %_p_scalar_301.2 = load double, double* %scevgep299300.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_301.2
  store double %p_add42.i118.2, double* %scevgep299300.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next281.2 = add nuw nsw i64 %polly.indvar280.2, 1
  %exitcond976.2.not = icmp eq i64 %polly.indvar280.2, %smin975.2
  br i1 %exitcond976.2.not, label %polly.loop_exit279.2, label %polly.loop_header277.2, !llvm.loop !130

polly.loop_exit279.2:                             ; preds = %polly.loop_header277.2, %middle.block1397
  %polly.access.add.Packed_MemRef_call2288.3 = add nuw nsw i64 %133, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1297.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2288.3
  %_p_scalar_298.3 = load double, double* %polly.access.Packed_MemRef_call1297.3, align 8
  %polly.access.Packed_MemRef_call2289.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.3
  %_p_scalar_290.3 = load double, double* %polly.access.Packed_MemRef_call2289.3, align 8
  %broadcast.splatinsert1391 = insertelement <4 x double> poison, double %_p_scalar_290.3, i32 0
  %broadcast.splat1392 = shufflevector <4 x double> %broadcast.splatinsert1391, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1394 = insertelement <4 x double> poison, double %_p_scalar_298.3, i32 0
  %broadcast.splat1395 = shufflevector <4 x double> %broadcast.splatinsert1394, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %polly.loop_exit279.2
  %index1386 = phi i64 [ 0, %polly.loop_exit279.2 ], [ %index.next1387, %vector.body1378 ]
  %453 = add nuw nsw i64 %index1386, %99
  %454 = add nuw nsw i64 %index1386, %polly.access.mul.Packed_MemRef_call1283
  %455 = getelementptr double, double* %Packed_MemRef_call1, i64 %454
  %456 = bitcast double* %455 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %456, align 8
  %457 = fmul fast <4 x double> %broadcast.splat1392, %wide.load1390
  %458 = getelementptr double, double* %Packed_MemRef_call2, i64 %454
  %459 = bitcast double* %458 to <4 x double>*
  %wide.load1393 = load <4 x double>, <4 x double>* %459, align 8
  %460 = fmul fast <4 x double> %broadcast.splat1395, %wide.load1393
  %461 = shl i64 %453, 3
  %462 = add nuw nsw i64 %461, %135
  %463 = getelementptr i8, i8* %call, i64 %462
  %464 = bitcast i8* %463 to <4 x double>*
  %wide.load1396 = load <4 x double>, <4 x double>* %464, align 8, !alias.scope !72, !noalias !74
  %465 = fadd fast <4 x double> %460, %457
  %466 = fmul fast <4 x double> %465, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %467 = fadd fast <4 x double> %466, %wide.load1396
  %468 = bitcast i8* %463 to <4 x double>*
  store <4 x double> %467, <4 x double>* %468, align 8, !alias.scope !72, !noalias !74
  %index.next1387 = add i64 %index1386, 4
  %469 = or i64 %index1386, 3
  %470 = icmp eq i64 %469, %smin1381
  br i1 %470, label %polly.loop_exit279.3, label %vector.body1378, !llvm.loop !131

polly.loop_exit279.3:                             ; preds = %vector.body1378
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next269, %97
  br i1 %exitcond979.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header461.1:                           ; preds = %polly.loop_header442
  %polly.access.add.call1470.1 = add nuw nsw i64 %210, %polly.access.mul.call1469.us.1
  %polly.access.call1471.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.1
  %polly.access.call1471.load.1 = load double, double* %polly.access.call1471.1, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.1 = add nuw nsw i64 %polly.indvar_next466.us, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.1
  store double %polly.access.call1471.load.1, double* %polly.access.Packed_MemRef_call1307474.1, align 8
  %polly.access.add.call1470.2 = add nuw nsw i64 %210, %polly.access.mul.call1469.us.2
  %polly.access.call1471.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.2
  %polly.access.call1471.load.2 = load double, double* %polly.access.call1471.2, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.2 = add nuw nsw i64 %polly.indvar_next466.us.1, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.2
  store double %polly.access.call1471.load.2, double* %polly.access.Packed_MemRef_call1307474.2, align 8
  %polly.access.add.call1470.3 = add nuw nsw i64 %210, %polly.access.mul.call1469.us.3
  %polly.access.call1471.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.3
  %polly.access.call1471.load.3 = load double, double* %polly.access.call1471.3, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.3 = add nuw nsw i64 %polly.indvar_next466.us.2, %polly.access.mul.Packed_MemRef_call1307472
  %polly.access.Packed_MemRef_call1307474.3 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.3
  store double %polly.access.call1471.load.3, double* %polly.access.Packed_MemRef_call1307474.3, align 8
  br label %polly.loop_exit463

polly.loop_header461.us.1:                        ; preds = %polly.loop_exit451.loopexit.us
  %polly.access.add.call1470.us.1 = add nuw nsw i64 %208, %polly.access.mul.call1469.us.1
  %polly.access.call1471.us.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us.1
  %polly.access.call1471.load.us.1 = load double, double* %polly.access.call1471.us.1, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.us.1 = add nuw nsw i64 %polly.indvar_next466.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us.1
  store double %polly.access.call1471.load.us.1, double* %polly.access.Packed_MemRef_call1307474.us.1, align 8
  %polly.access.add.call1470.us.2 = add nuw nsw i64 %208, %polly.access.mul.call1469.us.2
  %polly.access.call1471.us.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us.2
  %polly.access.call1471.load.us.2 = load double, double* %polly.access.call1471.us.2, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.us.2 = add nuw nsw i64 %polly.indvar_next466.us.1, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us.2
  store double %polly.access.call1471.load.us.2, double* %polly.access.Packed_MemRef_call1307474.us.2, align 8
  %polly.access.add.call1470.us.3 = add nuw nsw i64 %208, %polly.access.mul.call1469.us.3
  %polly.access.call1471.us.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1470.us.3
  %polly.access.call1471.load.us.3 = load double, double* %polly.access.call1471.us.3, align 8, !alias.scope !90, !noalias !97
  %polly.access.add.Packed_MemRef_call1307473.us.3 = add nuw nsw i64 %polly.indvar_next466.us.2, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307474.us.3 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307473.us.3
  store double %polly.access.call1471.load.us.3, double* %polly.access.Packed_MemRef_call1307474.us.3, align 8
  br label %polly.loop_exit463.us

polly.loop_header487.1:                           ; preds = %polly.loop_header487.1.preheader, %polly.loop_header487.1
  %polly.indvar490.1 = phi i64 [ %polly.indvar_next491.1, %polly.loop_header487.1 ], [ %polly.indvar490.1.ph, %polly.loop_header487.1.preheader ]
  %471 = add nuw nsw i64 %polly.indvar490.1, %184
  %polly.access.add.Packed_MemRef_call1307494.1 = add nuw nsw i64 %polly.indvar490.1, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307495.1 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307494.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call1307495.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_500.1, %_p_scalar_496.1
  %polly.access.Packed_MemRef_call2309503.1 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307494.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call2309503.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_508.1, %_p_scalar_504.1
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %214
  %scevgep509.1 = getelementptr i8, i8* %call, i64 %473
  %scevgep509510.1 = bitcast i8* %scevgep509.1 to double*
  %_p_scalar_511.1 = load double, double* %scevgep509510.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_511.1
  store double %p_add42.i79.1, double* %scevgep509510.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next491.1 = add nuw nsw i64 %polly.indvar490.1, 1
  %exitcond1002.1.not = icmp eq i64 %polly.indvar490.1, %smin1001.1
  br i1 %exitcond1002.1.not, label %polly.loop_exit489.1, label %polly.loop_header487.1, !llvm.loop !132

polly.loop_exit489.1:                             ; preds = %polly.loop_header487.1, %middle.block1312
  %polly.access.add.Packed_MemRef_call2309498.2 = add nuw nsw i64 %215, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call2309499.2 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498.2
  %_p_scalar_500.2 = load double, double* %polly.access.Packed_MemRef_call2309499.2, align 8
  %polly.access.Packed_MemRef_call1307507.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498.2
  %_p_scalar_508.2 = load double, double* %polly.access.Packed_MemRef_call1307507.2, align 8
  %min.iters.check1297 = icmp eq i64 %smin1296, 2
  br i1 %min.iters.check1297, label %polly.loop_header487.2.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_exit489.1
  %n.vec1300 = and i64 %196, -4
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_500.2, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1309 = insertelement <4 x double> poison, double %_p_scalar_508.2, i32 0
  %broadcast.splat1310 = shufflevector <4 x double> %broadcast.splatinsert1309, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1295 ]
  %474 = add nuw nsw i64 %index1301, %184
  %475 = add nuw nsw i64 %index1301, %polly.access.mul.Packed_MemRef_call1307493
  %476 = getelementptr double, double* %Packed_MemRef_call1307, i64 %475
  %477 = bitcast double* %476 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %477, align 8
  %478 = fmul fast <4 x double> %broadcast.splat1307, %wide.load1305
  %479 = getelementptr double, double* %Packed_MemRef_call2309, i64 %475
  %480 = bitcast double* %479 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %480, align 8
  %481 = fmul fast <4 x double> %broadcast.splat1310, %wide.load1308
  %482 = shl i64 %474, 3
  %483 = add nuw nsw i64 %482, %217
  %484 = getelementptr i8, i8* %call, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  %wide.load1311 = load <4 x double>, <4 x double>* %485, align 8, !alias.scope !87, !noalias !89
  %486 = fadd fast <4 x double> %481, %478
  %487 = fmul fast <4 x double> %486, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %488 = fadd fast <4 x double> %487, %wide.load1311
  %489 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %488, <4 x double>* %489, align 8, !alias.scope !87, !noalias !89
  %index.next1302 = add i64 %index1301, 4
  %490 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %490, label %middle.block1293, label %vector.body1295, !llvm.loop !133

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1304 = icmp eq i64 %196, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit489.2, label %polly.loop_header487.2.preheader

polly.loop_header487.2.preheader:                 ; preds = %polly.loop_exit489.1, %middle.block1293
  %polly.indvar490.2.ph = phi i64 [ 0, %polly.loop_exit489.1 ], [ %n.vec1300, %middle.block1293 ]
  br label %polly.loop_header487.2

polly.loop_header487.2:                           ; preds = %polly.loop_header487.2.preheader, %polly.loop_header487.2
  %polly.indvar490.2 = phi i64 [ %polly.indvar_next491.2, %polly.loop_header487.2 ], [ %polly.indvar490.2.ph, %polly.loop_header487.2.preheader ]
  %491 = add nuw nsw i64 %polly.indvar490.2, %184
  %polly.access.add.Packed_MemRef_call1307494.2 = add nuw nsw i64 %polly.indvar490.2, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307495.2 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307494.2
  %_p_scalar_496.2 = load double, double* %polly.access.Packed_MemRef_call1307495.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_500.2, %_p_scalar_496.2
  %polly.access.Packed_MemRef_call2309503.2 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call1307494.2
  %_p_scalar_504.2 = load double, double* %polly.access.Packed_MemRef_call2309503.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_508.2, %_p_scalar_504.2
  %492 = shl i64 %491, 3
  %493 = add nuw nsw i64 %492, %217
  %scevgep509.2 = getelementptr i8, i8* %call, i64 %493
  %scevgep509510.2 = bitcast i8* %scevgep509.2 to double*
  %_p_scalar_511.2 = load double, double* %scevgep509510.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_511.2
  store double %p_add42.i79.2, double* %scevgep509510.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next491.2 = add nuw nsw i64 %polly.indvar490.2, 1
  %exitcond1002.2.not = icmp eq i64 %polly.indvar490.2, %smin1001.2
  br i1 %exitcond1002.2.not, label %polly.loop_exit489.2, label %polly.loop_header487.2, !llvm.loop !134

polly.loop_exit489.2:                             ; preds = %polly.loop_header487.2, %middle.block1293
  %polly.access.add.Packed_MemRef_call2309498.3 = add nuw nsw i64 %218, %polly.access.mul.Packed_MemRef_call1307493
  %polly.access.Packed_MemRef_call1307507.3 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call2309498.3
  %_p_scalar_508.3 = load double, double* %polly.access.Packed_MemRef_call1307507.3, align 8
  %polly.access.Packed_MemRef_call2309499.3 = getelementptr double, double* %Packed_MemRef_call2309, i64 %polly.access.add.Packed_MemRef_call2309498.3
  %_p_scalar_500.3 = load double, double* %polly.access.Packed_MemRef_call2309499.3, align 8
  %broadcast.splatinsert1287 = insertelement <4 x double> poison, double %_p_scalar_500.3, i32 0
  %broadcast.splat1288 = shufflevector <4 x double> %broadcast.splatinsert1287, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x double> poison, double %_p_scalar_508.3, i32 0
  %broadcast.splat1291 = shufflevector <4 x double> %broadcast.splatinsert1290, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %polly.loop_exit489.2
  %index1282 = phi i64 [ 0, %polly.loop_exit489.2 ], [ %index.next1283, %vector.body1274 ]
  %494 = add nuw nsw i64 %index1282, %184
  %495 = add nuw nsw i64 %index1282, %polly.access.mul.Packed_MemRef_call1307493
  %496 = getelementptr double, double* %Packed_MemRef_call1307, i64 %495
  %497 = bitcast double* %496 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %497, align 8
  %498 = fmul fast <4 x double> %broadcast.splat1288, %wide.load1286
  %499 = getelementptr double, double* %Packed_MemRef_call2309, i64 %495
  %500 = bitcast double* %499 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %500, align 8
  %501 = fmul fast <4 x double> %broadcast.splat1291, %wide.load1289
  %502 = shl i64 %494, 3
  %503 = add nuw nsw i64 %502, %220
  %504 = getelementptr i8, i8* %call, i64 %503
  %505 = bitcast i8* %504 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %505, align 8, !alias.scope !87, !noalias !89
  %506 = fadd fast <4 x double> %501, %498
  %507 = fmul fast <4 x double> %506, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %508 = fadd fast <4 x double> %507, %wide.load1292
  %509 = bitcast i8* %504 to <4 x double>*
  store <4 x double> %508, <4 x double>* %509, align 8, !alias.scope !87, !noalias !89
  %index.next1283 = add i64 %index1282, 4
  %510 = or i64 %index1282, 3
  %511 = icmp eq i64 %510, %smin1277
  br i1 %511, label %polly.loop_exit489.3, label %vector.body1274, !llvm.loop !135

polly.loop_exit489.3:                             ; preds = %vector.body1274
  %polly.indvar_next479 = add nuw nsw i64 %polly.indvar478, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next479, %182
  br i1 %exitcond1005.not, label %polly.loop_exit477, label %polly.loop_header475

polly.loop_header671.1:                           ; preds = %polly.loop_header652
  %polly.access.add.call1680.1 = add nuw nsw i64 %295, %polly.access.mul.call1679.us.1
  %polly.access.call1681.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.1
  %polly.access.call1681.load.1 = load double, double* %polly.access.call1681.1, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.1 = add nuw nsw i64 %polly.indvar_next676.us, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.1
  store double %polly.access.call1681.load.1, double* %polly.access.Packed_MemRef_call1517684.1, align 8
  %polly.access.add.call1680.2 = add nuw nsw i64 %295, %polly.access.mul.call1679.us.2
  %polly.access.call1681.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.2
  %polly.access.call1681.load.2 = load double, double* %polly.access.call1681.2, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.2 = add nuw nsw i64 %polly.indvar_next676.us.1, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.2
  store double %polly.access.call1681.load.2, double* %polly.access.Packed_MemRef_call1517684.2, align 8
  %polly.access.add.call1680.3 = add nuw nsw i64 %295, %polly.access.mul.call1679.us.3
  %polly.access.call1681.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.3
  %polly.access.call1681.load.3 = load double, double* %polly.access.call1681.3, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.3 = add nuw nsw i64 %polly.indvar_next676.us.2, %polly.access.mul.Packed_MemRef_call1517682
  %polly.access.Packed_MemRef_call1517684.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.3
  store double %polly.access.call1681.load.3, double* %polly.access.Packed_MemRef_call1517684.3, align 8
  br label %polly.loop_exit673

polly.loop_header671.us.1:                        ; preds = %polly.loop_exit661.loopexit.us
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.us.1 = add nuw nsw i64 %polly.indvar_next676.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1517684.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.us.2 = add nuw nsw i64 %polly.indvar_next676.us.1, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1517684.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %293, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !104, !noalias !111
  %polly.access.add.Packed_MemRef_call1517683.us.3 = add nuw nsw i64 %polly.indvar_next676.us.2, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517684.us.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1517684.us.3, align 8
  br label %polly.loop_exit673.us

polly.loop_header697.1:                           ; preds = %polly.loop_header697.1.preheader, %polly.loop_header697.1
  %polly.indvar700.1 = phi i64 [ %polly.indvar_next701.1, %polly.loop_header697.1 ], [ %polly.indvar700.1.ph, %polly.loop_header697.1.preheader ]
  %512 = add nuw nsw i64 %polly.indvar700.1, %269
  %polly.access.add.Packed_MemRef_call1517704.1 = add nuw nsw i64 %polly.indvar700.1, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517705.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517704.1
  %_p_scalar_706.1 = load double, double* %polly.access.Packed_MemRef_call1517705.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_710.1, %_p_scalar_706.1
  %polly.access.Packed_MemRef_call2519713.1 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517704.1
  %_p_scalar_714.1 = load double, double* %polly.access.Packed_MemRef_call2519713.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_718.1, %_p_scalar_714.1
  %513 = shl i64 %512, 3
  %514 = add nuw nsw i64 %513, %299
  %scevgep719.1 = getelementptr i8, i8* %call, i64 %514
  %scevgep719720.1 = bitcast i8* %scevgep719.1 to double*
  %_p_scalar_721.1 = load double, double* %scevgep719720.1, align 8, !alias.scope !101, !noalias !103
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_721.1
  store double %p_add42.i.1, double* %scevgep719720.1, align 8, !alias.scope !101, !noalias !103
  %polly.indvar_next701.1 = add nuw nsw i64 %polly.indvar700.1, 1
  %exitcond1028.1.not = icmp eq i64 %polly.indvar700.1, %smin1027.1
  br i1 %exitcond1028.1.not, label %polly.loop_exit699.1, label %polly.loop_header697.1, !llvm.loop !136

polly.loop_exit699.1:                             ; preds = %polly.loop_header697.1, %middle.block1208
  %polly.access.add.Packed_MemRef_call2519708.2 = add nuw nsw i64 %300, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call2519709.2 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708.2
  %_p_scalar_710.2 = load double, double* %polly.access.Packed_MemRef_call2519709.2, align 8
  %polly.access.Packed_MemRef_call1517717.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708.2
  %_p_scalar_718.2 = load double, double* %polly.access.Packed_MemRef_call1517717.2, align 8
  %min.iters.check1193 = icmp eq i64 %smin1192, 2
  br i1 %min.iters.check1193, label %polly.loop_header697.2.preheader, label %vector.ph1194

vector.ph1194:                                    ; preds = %polly.loop_exit699.1
  %n.vec1196 = and i64 %281, -4
  %broadcast.splatinsert1202 = insertelement <4 x double> poison, double %_p_scalar_710.2, i32 0
  %broadcast.splat1203 = shufflevector <4 x double> %broadcast.splatinsert1202, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1205 = insertelement <4 x double> poison, double %_p_scalar_718.2, i32 0
  %broadcast.splat1206 = shufflevector <4 x double> %broadcast.splatinsert1205, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1194
  %index1197 = phi i64 [ 0, %vector.ph1194 ], [ %index.next1198, %vector.body1191 ]
  %515 = add nuw nsw i64 %index1197, %269
  %516 = add nuw nsw i64 %index1197, %polly.access.mul.Packed_MemRef_call1517703
  %517 = getelementptr double, double* %Packed_MemRef_call1517, i64 %516
  %518 = bitcast double* %517 to <4 x double>*
  %wide.load1201 = load <4 x double>, <4 x double>* %518, align 8
  %519 = fmul fast <4 x double> %broadcast.splat1203, %wide.load1201
  %520 = getelementptr double, double* %Packed_MemRef_call2519, i64 %516
  %521 = bitcast double* %520 to <4 x double>*
  %wide.load1204 = load <4 x double>, <4 x double>* %521, align 8
  %522 = fmul fast <4 x double> %broadcast.splat1206, %wide.load1204
  %523 = shl i64 %515, 3
  %524 = add nuw nsw i64 %523, %302
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  %wide.load1207 = load <4 x double>, <4 x double>* %526, align 8, !alias.scope !101, !noalias !103
  %527 = fadd fast <4 x double> %522, %519
  %528 = fmul fast <4 x double> %527, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %529 = fadd fast <4 x double> %528, %wide.load1207
  %530 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %529, <4 x double>* %530, align 8, !alias.scope !101, !noalias !103
  %index.next1198 = add i64 %index1197, 4
  %531 = icmp eq i64 %index.next1198, %n.vec1196
  br i1 %531, label %middle.block1189, label %vector.body1191, !llvm.loop !137

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1200 = icmp eq i64 %281, %n.vec1196
  br i1 %cmp.n1200, label %polly.loop_exit699.2, label %polly.loop_header697.2.preheader

polly.loop_header697.2.preheader:                 ; preds = %polly.loop_exit699.1, %middle.block1189
  %polly.indvar700.2.ph = phi i64 [ 0, %polly.loop_exit699.1 ], [ %n.vec1196, %middle.block1189 ]
  br label %polly.loop_header697.2

polly.loop_header697.2:                           ; preds = %polly.loop_header697.2.preheader, %polly.loop_header697.2
  %polly.indvar700.2 = phi i64 [ %polly.indvar_next701.2, %polly.loop_header697.2 ], [ %polly.indvar700.2.ph, %polly.loop_header697.2.preheader ]
  %532 = add nuw nsw i64 %polly.indvar700.2, %269
  %polly.access.add.Packed_MemRef_call1517704.2 = add nuw nsw i64 %polly.indvar700.2, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517705.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517704.2
  %_p_scalar_706.2 = load double, double* %polly.access.Packed_MemRef_call1517705.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_710.2, %_p_scalar_706.2
  %polly.access.Packed_MemRef_call2519713.2 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call1517704.2
  %_p_scalar_714.2 = load double, double* %polly.access.Packed_MemRef_call2519713.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_718.2, %_p_scalar_714.2
  %533 = shl i64 %532, 3
  %534 = add nuw nsw i64 %533, %302
  %scevgep719.2 = getelementptr i8, i8* %call, i64 %534
  %scevgep719720.2 = bitcast i8* %scevgep719.2 to double*
  %_p_scalar_721.2 = load double, double* %scevgep719720.2, align 8, !alias.scope !101, !noalias !103
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_721.2
  store double %p_add42.i.2, double* %scevgep719720.2, align 8, !alias.scope !101, !noalias !103
  %polly.indvar_next701.2 = add nuw nsw i64 %polly.indvar700.2, 1
  %exitcond1028.2.not = icmp eq i64 %polly.indvar700.2, %smin1027.2
  br i1 %exitcond1028.2.not, label %polly.loop_exit699.2, label %polly.loop_header697.2, !llvm.loop !138

polly.loop_exit699.2:                             ; preds = %polly.loop_header697.2, %middle.block1189
  %polly.access.add.Packed_MemRef_call2519708.3 = add nuw nsw i64 %303, %polly.access.mul.Packed_MemRef_call1517703
  %polly.access.Packed_MemRef_call1517717.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call2519708.3
  %_p_scalar_718.3 = load double, double* %polly.access.Packed_MemRef_call1517717.3, align 8
  %polly.access.Packed_MemRef_call2519709.3 = getelementptr double, double* %Packed_MemRef_call2519, i64 %polly.access.add.Packed_MemRef_call2519708.3
  %_p_scalar_710.3 = load double, double* %polly.access.Packed_MemRef_call2519709.3, align 8
  %broadcast.splatinsert1183 = insertelement <4 x double> poison, double %_p_scalar_710.3, i32 0
  %broadcast.splat1184 = shufflevector <4 x double> %broadcast.splatinsert1183, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1186 = insertelement <4 x double> poison, double %_p_scalar_718.3, i32 0
  %broadcast.splat1187 = shufflevector <4 x double> %broadcast.splatinsert1186, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_exit699.2
  %index1178 = phi i64 [ 0, %polly.loop_exit699.2 ], [ %index.next1179, %vector.body1170 ]
  %535 = add nuw nsw i64 %index1178, %269
  %536 = add nuw nsw i64 %index1178, %polly.access.mul.Packed_MemRef_call1517703
  %537 = getelementptr double, double* %Packed_MemRef_call1517, i64 %536
  %538 = bitcast double* %537 to <4 x double>*
  %wide.load1182 = load <4 x double>, <4 x double>* %538, align 8
  %539 = fmul fast <4 x double> %broadcast.splat1184, %wide.load1182
  %540 = getelementptr double, double* %Packed_MemRef_call2519, i64 %536
  %541 = bitcast double* %540 to <4 x double>*
  %wide.load1185 = load <4 x double>, <4 x double>* %541, align 8
  %542 = fmul fast <4 x double> %broadcast.splat1187, %wide.load1185
  %543 = shl i64 %535, 3
  %544 = add nuw nsw i64 %543, %305
  %545 = getelementptr i8, i8* %call, i64 %544
  %546 = bitcast i8* %545 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %546, align 8, !alias.scope !101, !noalias !103
  %547 = fadd fast <4 x double> %542, %539
  %548 = fmul fast <4 x double> %547, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %549 = fadd fast <4 x double> %548, %wide.load1188
  %550 = bitcast i8* %545 to <4 x double>*
  store <4 x double> %549, <4 x double>* %550, align 8, !alias.scope !101, !noalias !103
  %index.next1179 = add i64 %index1178, 4
  %551 = or i64 %index1178, 3
  %552 = icmp eq i64 %551, %smin1173
  br i1 %552, label %polly.loop_exit699.3, label %vector.body1170, !llvm.loop !139

polly.loop_exit699.3:                             ; preds = %vector.body1170
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next689, %267
  br i1 %exitcond1031.not, label %polly.loop_exit687, label %polly.loop_header685
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
!26 = !{!"llvm.loop.tile.size", i32 256}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 32}
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
!51 = !{!"llvm.loop.tile.size", i32 4}
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
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !81, !13}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91, !92, !93}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !88, !"polly.alias.scope.Packed_MemRef_call1"}
!93 = distinct !{!93, !88, !"polly.alias.scope.Packed_MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !81, !13}
!96 = !{!87, !90, !92, !93}
!97 = !{!87, !91, !92, !93}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !81, !13}
!101 = distinct !{!101, !102, !"polly.alias.scope.MemRef_call"}
!102 = distinct !{!102, !"polly.alias.scope.domain"}
!103 = !{!104, !105, !106, !107}
!104 = distinct !{!104, !102, !"polly.alias.scope.MemRef_call1"}
!105 = distinct !{!105, !102, !"polly.alias.scope.MemRef_call2"}
!106 = distinct !{!106, !102, !"polly.alias.scope.Packed_MemRef_call1"}
!107 = distinct !{!107, !102, !"polly.alias.scope.Packed_MemRef_call2"}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !81, !13}
!110 = !{!101, !104, !106, !107}
!111 = !{!101, !105, !106, !107}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !81, !13}
!115 = distinct !{!115, !116, !"polly.alias.scope.MemRef_call"}
!116 = distinct !{!116, !"polly.alias.scope.domain"}
!117 = !{!118, !119}
!118 = distinct !{!118, !116, !"polly.alias.scope.MemRef_call1"}
!119 = distinct !{!119, !116, !"polly.alias.scope.MemRef_call2"}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!118, !115}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
!125 = !{!119, !115}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !81, !13}
!128 = distinct !{!128, !81, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !81, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !81, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !81, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !81, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !81, !13}
!139 = distinct !{!139, !13}
