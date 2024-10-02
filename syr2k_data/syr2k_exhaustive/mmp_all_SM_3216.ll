; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3216.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3216.c"
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
  %call821 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1673 = bitcast i8* %call1 to double*
  %polly.access.call1682 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1682, %call2
  %polly.access.call2702 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2702, %call1
  %2 = or i1 %0, %1
  %polly.access.call722 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call722, %call2
  %4 = icmp ule i8* %polly.access.call2702, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call722, %call1
  %8 = icmp ule i8* %polly.access.call1682, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header795, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1121 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1120 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1119 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1118 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1118, %scevgep1121
  %bound1 = icmp ult i8* %scevgep1120, %scevgep1119
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
  br i1 %exitcond18.not.i, label %vector.ph1125, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1125:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1132 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1133 = shufflevector <4 x i64> %broadcast.splatinsert1132, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %vector.ph1125
  %index1126 = phi i64 [ 0, %vector.ph1125 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1125 ], [ %vec.ind.next1131, %vector.body1124 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1130, %broadcast.splat1133
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv7.i, i64 %index1126
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1127, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1124, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1124
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1125, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit856
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start479, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1187 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1187, label %for.body3.i46.preheader1264, label %vector.ph1188

vector.ph1188:                                    ; preds = %for.body3.i46.preheader
  %n.vec1190 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1186 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i, i64 %index1191
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1192 = add i64 %index1191, 4
  %46 = icmp eq i64 %index.next1192, %n.vec1190
  br i1 %46, label %middle.block1184, label %vector.body1186, !llvm.loop !18

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1194 = icmp eq i64 %indvars.iv21.i, %n.vec1190
  br i1 %cmp.n1194, label %for.inc6.i, label %for.body3.i46.preheader1264

for.body3.i46.preheader1264:                      ; preds = %for.body3.i46.preheader, %middle.block1184
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1190, %middle.block1184 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1264, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1264 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1184, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting480
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1210 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1210, label %for.body3.i60.preheader1262, label %vector.ph1211

vector.ph1211:                                    ; preds = %for.body3.i60.preheader
  %n.vec1213 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1209 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i52, i64 %index1214
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1215 = add i64 %index1214, 4
  %57 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %57, label %middle.block1207, label %vector.body1209, !llvm.loop !59

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %indvars.iv21.i52, %n.vec1213
  br i1 %cmp.n1217, label %for.inc6.i63, label %for.body3.i60.preheader1262

for.body3.i60.preheader1262:                      ; preds = %for.body3.i60.preheader, %middle.block1207
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1213, %middle.block1207 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1262, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1262 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1207, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting288
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1236 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1236, label %for.body3.i99.preheader1260, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i99.preheader
  %n.vec1239 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1235 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i91, i64 %index1240
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1241 = add i64 %index1240, 4
  %68 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %68, label %middle.block1233, label %vector.body1235, !llvm.loop !61

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1243 = icmp eq i64 %indvars.iv21.i91, %n.vec1239
  br i1 %cmp.n1243, label %for.inc6.i102, label %for.body3.i99.preheader1260

for.body3.i99.preheader1260:                      ; preds = %for.body3.i99.preheader, %middle.block1233
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1239, %middle.block1233 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1260, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1260 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1233, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call821, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1248 = phi i64 [ %indvar.next1249, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1248, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1250 = icmp ult i64 %88, 4
  br i1 %min.iters.check1250, label %polly.loop_header191.preheader, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header
  %n.vec1253 = and i64 %88, -4
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1247 ]
  %90 = shl nuw nsw i64 %index1254, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1258, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1255 = add i64 %index1254, 4
  %95 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %95, label %middle.block1245, label %vector.body1247, !llvm.loop !73

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1257 = icmp eq i64 %88, %n.vec1253
  br i1 %cmp.n1257, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1245
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1253, %middle.block1245 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1245
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1249 = add i64 %indvar1248, 1
  br i1 %exitcond1018.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1017.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1012 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -936)
  %97 = add nsw i64 %smin1012, 1000
  %98 = shl nsw i64 %polly.indvar202, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %exitcond1016.not = icmp eq i64 %polly.indvar_next203, 16
  br i1 %exitcond1016.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = mul nsw i64 %polly.indvar208, -32
  %100 = shl nsw i64 %polly.indvar208, 5
  %101 = add nsw i64 %99, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -32
  %exitcond1015.not = icmp eq i64 %polly.indvar_next209, 38
  br i1 %exitcond1015.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit250 ], [ %indvars.iv1006, %polly.loop_header205 ]
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit250 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smin1010 = call i64 @llvm.smin.i64(i64 %indvars.iv1008, i64 -1168)
  %102 = add nsw i64 %smin1010, 1199
  %smax = call i64 @llvm.smax.i64(i64 %102, i64 0)
  %103 = shl nsw i64 %polly.indvar214, 5
  %104 = add nsw i64 %103, %99
  %.inv.not = icmp eq i64 %104, 0
  %105 = or i64 %104, 31
  %106 = icmp ult i64 %101, %105
  %107 = select i1 %106, i64 %101, i64 %105
  %polly.loop_guard237.not = icmp ugt i64 %104, %107
  br i1 %.inv.not, label %polly.loop_header211.split, label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %108 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %109 = add nuw nsw i64 %polly.indvar226.us, %100
  %polly.access.mul.call1230.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %108, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next227.us, 32
  br i1 %exitcond997.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %104, %polly.loop_exit225.loopexit.us ]
  %110 = add nuw nsw i64 %polly.indvar238.us, %100
  %polly.access.mul.call1242.us = mul nuw nsw i64 %110, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %108, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp ult i64 %polly.indvar238.us, %107
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_exit225.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond999.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard237.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header248.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 32
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -32
  %exitcond1014.not = icmp eq i64 %polly.indvar_next215, 38
  br i1 %exitcond1014.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211.split ]
  %111 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236.us, %polly.loop_exit236, %polly.loop_header211.split
  %112 = mul nsw i64 %polly.indvar214, -32
  %polly.loop_guard2581107 = icmp sgt i64 %112, -1200
  br i1 %polly.loop_guard2581107, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %113 = add nuw nsw i64 %polly.indvar251.us, %98
  %polly.access.mul.Packed_MemRef_call1268.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %114 = shl i64 %113, 3
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_exit264.us
  %indvars.iv1002 = phi i64 [ %indvars.iv1000, %polly.loop_header248.us ], [ %indvars.iv.next1003, %polly.loop_exit264.us ]
  %polly.indvar259.us = phi i64 [ 0, %polly.loop_header248.us ], [ %polly.indvar_next260.us, %polly.loop_exit264.us ]
  %smin1004 = call i64 @llvm.smin.i64(i64 %indvars.iv1002, i64 31)
  %115 = add nuw nsw i64 %polly.indvar259.us, %104
  %116 = add nuw nsw i64 %polly.indvar259.us, %103
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep272.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1279.us = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279.us
  %_p_scalar_281.us = load double, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %119 = mul nuw nsw i64 %116, 9600
  br label %polly.loop_header262.us

polly.loop_header262.us:                          ; preds = %polly.loop_header262.us, %polly.loop_header255.us
  %polly.indvar265.us = phi i64 [ 0, %polly.loop_header255.us ], [ %polly.indvar_next266.us, %polly.loop_header262.us ]
  %120 = add nuw nsw i64 %polly.indvar265.us, %100
  %polly.access.add.Packed_MemRef_call1269.us = add nuw nsw i64 %polly.indvar265.us, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_274.us, %_p_scalar_271.us
  %121 = mul nuw nsw i64 %120, 8000
  %122 = add nuw nsw i64 %121, %114
  %scevgep275.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep275276.us = bitcast i8* %scevgep275.us to double*
  %_p_scalar_277.us = load double, double* %scevgep275276.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_281.us, %_p_scalar_277.us
  %123 = shl i64 %120, 3
  %124 = add nuw nsw i64 %123, %119
  %scevgep282.us = getelementptr i8, i8* %call, i64 %124
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_284.us
  store double %p_add42.i118.us, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next266.us = add nuw nsw i64 %polly.indvar265.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar265.us, %smin1004
  br i1 %exitcond1005.not, label %polly.loop_exit264.us, label %polly.loop_header262.us

polly.loop_exit264.us:                            ; preds = %polly.loop_header262.us
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar259.us, %smax
  br i1 %exitcond1011.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_exit264.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next252.us, %97
  br i1 %exitcond1013.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %104, %polly.loop_header217 ]
  %125 = add nuw nsw i64 %polly.indvar238, %100
  %polly.access.mul.call1242 = mul nuw nsw i64 %125, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %111, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp ult i64 %polly.indvar238, %107
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1222 = phi i64 [ %indvar.next1223, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %126 = add i64 %indvar1222, 1
  %127 = mul nuw nsw i64 %polly.indvar376, 9600
  %scevgep385 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1224 = icmp ult i64 %126, 4
  br i1 %min.iters.check1224, label %polly.loop_header379.preheader, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header373
  %n.vec1227 = and i64 %126, -4
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1221 ]
  %128 = shl nuw nsw i64 %index1228, 3
  %129 = getelementptr i8, i8* %scevgep385, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %131 = fmul fast <4 x double> %wide.load1232, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !78, !noalias !80
  %index.next1229 = add i64 %index1228, 4
  %133 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %133, label %middle.block1219, label %vector.body1221, !llvm.loop !84

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1231 = icmp eq i64 %126, %n.vec1227
  br i1 %cmp.n1231, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1219
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1227, %middle.block1219 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1219
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next377, 1200
  %indvar.next1223 = add i64 %indvar1222, 1
  br i1 %exitcond1045.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %134
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1044.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !85

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %indvars.iv1019 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %indvars.iv.next1020, %polly.loop_exit397 ]
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next393, %polly.loop_exit397 ]
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 -936)
  %135 = add nsw i64 %smin1039, 1000
  %136 = shl nsw i64 %polly.indvar392, 6
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit403
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -64
  %exitcond1043.not = icmp eq i64 %polly.indvar_next393, 16
  br i1 %exitcond1043.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit403, %polly.loop_header389
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %polly.loop_exit403 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header389 ]
  %137 = mul nsw i64 %polly.indvar398, -32
  %138 = shl nsw i64 %polly.indvar398, 5
  %139 = add nsw i64 %137, 1199
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit442
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -32
  %exitcond1042.not = icmp eq i64 %polly.indvar_next399, 38
  br i1 %exitcond1042.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_exit442, %polly.loop_header395
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit442 ], [ %indvars.iv1032, %polly.loop_header395 ]
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit442 ], [ 0, %polly.loop_header395 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit442 ], [ %polly.indvar398, %polly.loop_header395 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -1168)
  %140 = add nsw i64 %smin1036, 1199
  %smax1037 = call i64 @llvm.smax.i64(i64 %140, i64 0)
  %141 = shl nsw i64 %polly.indvar404, 5
  %142 = add nsw i64 %141, %137
  %.inv875.not = icmp eq i64 %142, 0
  %143 = or i64 %142, 31
  %144 = icmp ult i64 %139, %143
  %145 = select i1 %144, i64 %139, i64 %143
  %polly.loop_guard429.not = icmp ugt i64 %142, %145
  br i1 %.inv875.not, label %polly.loop_header401.split, label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header401, %polly.loop_exit428.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit428.us ], [ 0, %polly.loop_header401 ]
  %146 = add nuw nsw i64 %polly.indvar410.us, %136
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar410.us, 1200
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header407.us, %polly.loop_header414.us
  %polly.indvar418.us = phi i64 [ %polly.indvar_next419.us, %polly.loop_header414.us ], [ 0, %polly.loop_header407.us ]
  %147 = add nuw nsw i64 %polly.indvar418.us, %138
  %polly.access.mul.call1422.us = mul nuw nsw i64 %147, 1000
  %polly.access.add.call1423.us = add nuw nsw i64 %146, %polly.access.mul.call1422.us
  %polly.access.call1424.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1423.us
  %polly.access.call1424.load.us = load double, double* %polly.access.call1424.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us = add nuw nsw i64 %polly.indvar418.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us
  store double %polly.access.call1424.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.indvar_next419.us = add nuw i64 %polly.indvar418.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next419.us, 32
  br i1 %exitcond1023.not, label %polly.loop_exit416.loopexit.us, label %polly.loop_header414.us

polly.loop_header426.us:                          ; preds = %polly.loop_exit416.loopexit.us, %polly.loop_header426.us
  %polly.indvar430.us = phi i64 [ %polly.indvar_next431.us, %polly.loop_header426.us ], [ %142, %polly.loop_exit416.loopexit.us ]
  %148 = add nuw nsw i64 %polly.indvar430.us, %138
  %polly.access.mul.call1434.us = mul nuw nsw i64 %148, 1000
  %polly.access.add.call1435.us = add nuw nsw i64 %146, %polly.access.mul.call1434.us
  %polly.access.call1436.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435.us
  %polly.access.call1436.load.us = load double, double* %polly.access.call1436.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438.us = add nuw nsw i64 %polly.indvar430.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290439.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438.us
  store double %polly.access.call1436.load.us, double* %polly.access.Packed_MemRef_call1290439.us, align 8
  %polly.indvar_next431.us = add nuw nsw i64 %polly.indvar430.us, 1
  %polly.loop_cond432.not.not.us = icmp ult i64 %polly.indvar430.us, %145
  br i1 %polly.loop_cond432.not.not.us, label %polly.loop_header426.us, label %polly.loop_exit428.us

polly.loop_exit428.us:                            ; preds = %polly.loop_header426.us, %polly.loop_exit416.loopexit.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next411.us, %135
  br i1 %exitcond1025.not, label %polly.loop_header440.preheader, label %polly.loop_header407.us

polly.loop_exit416.loopexit.us:                   ; preds = %polly.loop_header414.us
  br i1 %polly.loop_guard429.not, label %polly.loop_exit428.us, label %polly.loop_header426.us

polly.loop_header401.split:                       ; preds = %polly.loop_header401
  br i1 %polly.loop_guard429.not, label %polly.loop_header440.preheader, label %polly.loop_header407

polly.loop_exit442:                               ; preds = %polly.loop_exit449.loopexit.us, %polly.loop_header440.preheader
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 32
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1041.not = icmp eq i64 %polly.indvar_next405, 38
  br i1 %exitcond1041.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header407:                             ; preds = %polly.loop_header401.split, %polly.loop_exit428
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit428 ], [ 0, %polly.loop_header401.split ]
  %149 = add nuw nsw i64 %polly.indvar410, %136
  %polly.access.mul.Packed_MemRef_call1290437 = mul nuw nsw i64 %polly.indvar410, 1200
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_header426
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next411, %135
  br i1 %exitcond1022.not, label %polly.loop_header440.preheader, label %polly.loop_header407

polly.loop_header440.preheader:                   ; preds = %polly.loop_exit428.us, %polly.loop_exit428, %polly.loop_header401.split
  %150 = mul nsw i64 %polly.indvar404, -32
  %polly.loop_guard4501108 = icmp sgt i64 %150, -1200
  br i1 %polly.loop_guard4501108, label %polly.loop_header440.us, label %polly.loop_exit442

polly.loop_header440.us:                          ; preds = %polly.loop_header440.preheader, %polly.loop_exit449.loopexit.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_exit449.loopexit.us ], [ 0, %polly.loop_header440.preheader ]
  %151 = add nuw nsw i64 %polly.indvar443.us, %136
  %polly.access.mul.Packed_MemRef_call1290460.us = mul nuw nsw i64 %polly.indvar443.us, 1200
  %152 = shl i64 %151, 3
  br label %polly.loop_header447.us

polly.loop_header447.us:                          ; preds = %polly.loop_header440.us, %polly.loop_exit456.us
  %indvars.iv1028 = phi i64 [ %indvars.iv1026, %polly.loop_header440.us ], [ %indvars.iv.next1029, %polly.loop_exit456.us ]
  %polly.indvar451.us = phi i64 [ 0, %polly.loop_header440.us ], [ %polly.indvar_next452.us, %polly.loop_exit456.us ]
  %smin1030 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 31)
  %153 = add nuw nsw i64 %polly.indvar451.us, %142
  %154 = add nuw nsw i64 %polly.indvar451.us, %141
  %155 = mul nuw nsw i64 %154, 8000
  %156 = add nuw nsw i64 %155, %152
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %156
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290471.us = add nuw nsw i64 %153, %polly.access.mul.Packed_MemRef_call1290460.us
  %polly.access.Packed_MemRef_call1290472.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290471.us
  %_p_scalar_473.us = load double, double* %polly.access.Packed_MemRef_call1290472.us, align 8
  %157 = mul nuw nsw i64 %154, 9600
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header454.us, %polly.loop_header447.us
  %polly.indvar457.us = phi i64 [ 0, %polly.loop_header447.us ], [ %polly.indvar_next458.us, %polly.loop_header454.us ]
  %158 = add nuw nsw i64 %polly.indvar457.us, %138
  %polly.access.add.Packed_MemRef_call1290461.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1290460.us
  %polly.access.Packed_MemRef_call1290462.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290461.us
  %_p_scalar_463.us = load double, double* %polly.access.Packed_MemRef_call1290462.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_466.us, %_p_scalar_463.us
  %159 = mul nuw nsw i64 %158, 8000
  %160 = add nuw nsw i64 %159, %152
  %scevgep467.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_473.us, %_p_scalar_469.us
  %161 = shl i64 %158, 3
  %162 = add nuw nsw i64 %161, %157
  %scevgep474.us = getelementptr i8, i8* %call, i64 %162
  %scevgep474475.us = bitcast i8* %scevgep474.us to double*
  %_p_scalar_476.us = load double, double* %scevgep474475.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_476.us
  store double %p_add42.i79.us, double* %scevgep474475.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar457.us, %smin1030
  br i1 %exitcond1031.not, label %polly.loop_exit456.us, label %polly.loop_header454.us

polly.loop_exit456.us:                            ; preds = %polly.loop_header454.us
  %polly.indvar_next452.us = add nuw nsw i64 %polly.indvar451.us, 1
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar451.us, %smax1037
  br i1 %exitcond1038.not, label %polly.loop_exit449.loopexit.us, label %polly.loop_header447.us

polly.loop_exit449.loopexit.us:                   ; preds = %polly.loop_exit456.us
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next444.us, %135
  br i1 %exitcond1040.not, label %polly.loop_exit442, label %polly.loop_header440.us

polly.loop_header426:                             ; preds = %polly.loop_header407, %polly.loop_header426
  %polly.indvar430 = phi i64 [ %polly.indvar_next431, %polly.loop_header426 ], [ %142, %polly.loop_header407 ]
  %163 = add nuw nsw i64 %polly.indvar430, %138
  %polly.access.mul.call1434 = mul nuw nsw i64 %163, 1000
  %polly.access.add.call1435 = add nuw nsw i64 %149, %polly.access.mul.call1434
  %polly.access.call1436 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1435
  %polly.access.call1436.load = load double, double* %polly.access.call1436, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290438 = add nuw nsw i64 %polly.indvar430, %polly.access.mul.Packed_MemRef_call1290437
  %polly.access.Packed_MemRef_call1290439 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290438
  store double %polly.access.call1436.load, double* %polly.access.Packed_MemRef_call1290439, align 8
  %polly.indvar_next431 = add nuw nsw i64 %polly.indvar430, 1
  %polly.loop_cond432.not.not = icmp ult i64 %polly.indvar430, %145
  br i1 %polly.loop_cond432.not.not, label %polly.loop_header426, label %polly.loop_exit428

polly.start479:                                   ; preds = %init_array.exit
  %malloccall481 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header565

polly.exiting480:                                 ; preds = %polly.loop_exit589
  tail call void @free(i8* %malloccall481)
  br label %kernel_syr2k.exit

polly.loop_header565:                             ; preds = %polly.loop_exit573, %polly.start479
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit573 ], [ 0, %polly.start479 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 1, %polly.start479 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar568, 9600
  %scevgep577 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1198 = icmp ult i64 %164, 4
  br i1 %min.iters.check1198, label %polly.loop_header571.preheader, label %vector.ph1199

vector.ph1199:                                    ; preds = %polly.loop_header565
  %n.vec1201 = and i64 %164, -4
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1199
  %index1202 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1203, %vector.body1197 ]
  %166 = shl nuw nsw i64 %index1202, 3
  %167 = getelementptr i8, i8* %scevgep577, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1206 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !88, !noalias !90
  %169 = fmul fast <4 x double> %wide.load1206, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !88, !noalias !90
  %index.next1203 = add i64 %index1202, 4
  %171 = icmp eq i64 %index.next1203, %n.vec1201
  br i1 %171, label %middle.block1195, label %vector.body1197, !llvm.loop !94

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1205 = icmp eq i64 %164, %n.vec1201
  br i1 %cmp.n1205, label %polly.loop_exit573, label %polly.loop_header571.preheader

polly.loop_header571.preheader:                   ; preds = %polly.loop_header565, %middle.block1195
  %polly.indvar574.ph = phi i64 [ 0, %polly.loop_header565 ], [ %n.vec1201, %middle.block1195 ]
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_header571, %middle.block1195
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next569, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1072.not, label %polly.loop_header581.preheader, label %polly.loop_header565

polly.loop_header581.preheader:                   ; preds = %polly.loop_exit573
  %Packed_MemRef_call1482 = bitcast i8* %malloccall481 to double*
  br label %polly.loop_header581

polly.loop_header571:                             ; preds = %polly.loop_header571.preheader, %polly.loop_header571
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_header571 ], [ %polly.indvar574.ph, %polly.loop_header571.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar574, 3
  %scevgep578 = getelementptr i8, i8* %scevgep577, i64 %172
  %scevgep578579 = bitcast i8* %scevgep578 to double*
  %_p_scalar_580 = load double, double* %scevgep578579, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_580, 1.200000e+00
  store double %p_mul.i, double* %scevgep578579, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next575, %polly.indvar568
  br i1 %exitcond1071.not, label %polly.loop_exit573, label %polly.loop_header571, !llvm.loop !95

polly.loop_header581:                             ; preds = %polly.loop_header581.preheader, %polly.loop_exit589
  %indvars.iv1046 = phi i64 [ 0, %polly.loop_header581.preheader ], [ %indvars.iv.next1047, %polly.loop_exit589 ]
  %polly.indvar584 = phi i64 [ 0, %polly.loop_header581.preheader ], [ %polly.indvar_next585, %polly.loop_exit589 ]
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 -936)
  %173 = add nsw i64 %smin1066, 1000
  %174 = shl nsw i64 %polly.indvar584, 6
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit595
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -64
  %exitcond1070.not = icmp eq i64 %polly.indvar_next585, 16
  br i1 %exitcond1070.not, label %polly.exiting480, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit595, %polly.loop_header581
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit595 ], [ 0, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ 0, %polly.loop_header581 ]
  %175 = mul nsw i64 %polly.indvar590, -32
  %176 = shl nsw i64 %polly.indvar590, 5
  %177 = add nsw i64 %175, 1199
  br label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_exit634
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1069.not = icmp eq i64 %polly.indvar_next591, 38
  br i1 %exitcond1069.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_exit634, %polly.loop_header587
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit634 ], [ %indvars.iv1059, %polly.loop_header587 ]
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit634 ], [ 0, %polly.loop_header587 ]
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_exit634 ], [ %polly.indvar590, %polly.loop_header587 ]
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -1168)
  %178 = add nsw i64 %smin1063, 1199
  %smax1064 = call i64 @llvm.smax.i64(i64 %178, i64 0)
  %179 = shl nsw i64 %polly.indvar596, 5
  %180 = add nsw i64 %179, %175
  %.inv876.not = icmp eq i64 %180, 0
  %181 = or i64 %180, 31
  %182 = icmp ult i64 %177, %181
  %183 = select i1 %182, i64 %177, i64 %181
  %polly.loop_guard621.not = icmp ugt i64 %180, %183
  br i1 %.inv876.not, label %polly.loop_header593.split, label %polly.loop_header599.us

polly.loop_header599.us:                          ; preds = %polly.loop_header593, %polly.loop_exit620.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.loop_exit620.us ], [ 0, %polly.loop_header593 ]
  %184 = add nuw nsw i64 %polly.indvar602.us, %174
  %polly.access.mul.Packed_MemRef_call1482.us = mul nuw nsw i64 %polly.indvar602.us, 1200
  br label %polly.loop_header606.us

polly.loop_header606.us:                          ; preds = %polly.loop_header599.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header599.us ]
  %185 = add nuw nsw i64 %polly.indvar610.us, %176
  %polly.access.mul.call1614.us = mul nuw nsw i64 %185, 1000
  %polly.access.add.call1615.us = add nuw nsw i64 %184, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1482.us
  %polly.access.Packed_MemRef_call1482.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1482.us, align 8
  %polly.indvar_next611.us = add nuw i64 %polly.indvar610.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next611.us, 32
  br i1 %exitcond1050.not, label %polly.loop_exit608.loopexit.us, label %polly.loop_header606.us

polly.loop_header618.us:                          ; preds = %polly.loop_exit608.loopexit.us, %polly.loop_header618.us
  %polly.indvar622.us = phi i64 [ %polly.indvar_next623.us, %polly.loop_header618.us ], [ %180, %polly.loop_exit608.loopexit.us ]
  %186 = add nuw nsw i64 %polly.indvar622.us, %176
  %polly.access.mul.call1626.us = mul nuw nsw i64 %186, 1000
  %polly.access.add.call1627.us = add nuw nsw i64 %184, %polly.access.mul.call1626.us
  %polly.access.call1628.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627.us
  %polly.access.call1628.load.us = load double, double* %polly.access.call1628.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630.us = add nuw nsw i64 %polly.indvar622.us, %polly.access.mul.Packed_MemRef_call1482.us
  %polly.access.Packed_MemRef_call1482631.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630.us
  store double %polly.access.call1628.load.us, double* %polly.access.Packed_MemRef_call1482631.us, align 8
  %polly.indvar_next623.us = add nuw nsw i64 %polly.indvar622.us, 1
  %polly.loop_cond624.not.not.us = icmp ult i64 %polly.indvar622.us, %183
  br i1 %polly.loop_cond624.not.not.us, label %polly.loop_header618.us, label %polly.loop_exit620.us

polly.loop_exit620.us:                            ; preds = %polly.loop_header618.us, %polly.loop_exit608.loopexit.us
  %polly.indvar_next603.us = add nuw nsw i64 %polly.indvar602.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next603.us, %173
  br i1 %exitcond1052.not, label %polly.loop_header632.preheader, label %polly.loop_header599.us

polly.loop_exit608.loopexit.us:                   ; preds = %polly.loop_header606.us
  br i1 %polly.loop_guard621.not, label %polly.loop_exit620.us, label %polly.loop_header618.us

polly.loop_header593.split:                       ; preds = %polly.loop_header593
  br i1 %polly.loop_guard621.not, label %polly.loop_header632.preheader, label %polly.loop_header599

polly.loop_exit634:                               ; preds = %polly.loop_exit641.loopexit.us, %polly.loop_header632.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 32
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next597, 38
  br i1 %exitcond1068.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_header599:                             ; preds = %polly.loop_header593.split, %polly.loop_exit620
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit620 ], [ 0, %polly.loop_header593.split ]
  %187 = add nuw nsw i64 %polly.indvar602, %174
  %polly.access.mul.Packed_MemRef_call1482629 = mul nuw nsw i64 %polly.indvar602, 1200
  br label %polly.loop_header618

polly.loop_exit620:                               ; preds = %polly.loop_header618
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next603, %173
  br i1 %exitcond1049.not, label %polly.loop_header632.preheader, label %polly.loop_header599

polly.loop_header632.preheader:                   ; preds = %polly.loop_exit620.us, %polly.loop_exit620, %polly.loop_header593.split
  %188 = mul nsw i64 %polly.indvar596, -32
  %polly.loop_guard6421109 = icmp sgt i64 %188, -1200
  br i1 %polly.loop_guard6421109, label %polly.loop_header632.us, label %polly.loop_exit634

polly.loop_header632.us:                          ; preds = %polly.loop_header632.preheader, %polly.loop_exit641.loopexit.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_exit641.loopexit.us ], [ 0, %polly.loop_header632.preheader ]
  %189 = add nuw nsw i64 %polly.indvar635.us, %174
  %polly.access.mul.Packed_MemRef_call1482652.us = mul nuw nsw i64 %polly.indvar635.us, 1200
  %190 = shl i64 %189, 3
  br label %polly.loop_header639.us

polly.loop_header639.us:                          ; preds = %polly.loop_header632.us, %polly.loop_exit648.us
  %indvars.iv1055 = phi i64 [ %indvars.iv1053, %polly.loop_header632.us ], [ %indvars.iv.next1056, %polly.loop_exit648.us ]
  %polly.indvar643.us = phi i64 [ 0, %polly.loop_header632.us ], [ %polly.indvar_next644.us, %polly.loop_exit648.us ]
  %smin1057 = call i64 @llvm.smin.i64(i64 %indvars.iv1055, i64 31)
  %191 = add nuw nsw i64 %polly.indvar643.us, %180
  %192 = add nuw nsw i64 %polly.indvar643.us, %179
  %193 = mul nuw nsw i64 %192, 8000
  %194 = add nuw nsw i64 %193, %190
  %scevgep656.us = getelementptr i8, i8* %call2, i64 %194
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1482663.us = add nuw nsw i64 %191, %polly.access.mul.Packed_MemRef_call1482652.us
  %polly.access.Packed_MemRef_call1482664.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482663.us
  %_p_scalar_665.us = load double, double* %polly.access.Packed_MemRef_call1482664.us, align 8
  %195 = mul nuw nsw i64 %192, 9600
  br label %polly.loop_header646.us

polly.loop_header646.us:                          ; preds = %polly.loop_header646.us, %polly.loop_header639.us
  %polly.indvar649.us = phi i64 [ 0, %polly.loop_header639.us ], [ %polly.indvar_next650.us, %polly.loop_header646.us ]
  %196 = add nuw nsw i64 %polly.indvar649.us, %176
  %polly.access.add.Packed_MemRef_call1482653.us = add nuw nsw i64 %polly.indvar649.us, %polly.access.mul.Packed_MemRef_call1482652.us
  %polly.access.Packed_MemRef_call1482654.us = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1482654.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_658.us, %_p_scalar_655.us
  %197 = mul nuw nsw i64 %196, 8000
  %198 = add nuw nsw i64 %197, %190
  %scevgep659.us = getelementptr i8, i8* %call2, i64 %198
  %scevgep659660.us = bitcast i8* %scevgep659.us to double*
  %_p_scalar_661.us = load double, double* %scevgep659660.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_665.us, %_p_scalar_661.us
  %199 = shl i64 %196, 3
  %200 = add nuw nsw i64 %199, %195
  %scevgep666.us = getelementptr i8, i8* %call, i64 %200
  %scevgep666667.us = bitcast i8* %scevgep666.us to double*
  %_p_scalar_668.us = load double, double* %scevgep666667.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_668.us
  store double %p_add42.i.us, double* %scevgep666667.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar649.us, %smin1057
  br i1 %exitcond1058.not, label %polly.loop_exit648.us, label %polly.loop_header646.us

polly.loop_exit648.us:                            ; preds = %polly.loop_header646.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar643.us, %smax1064
  br i1 %exitcond1065.not, label %polly.loop_exit641.loopexit.us, label %polly.loop_header639.us

polly.loop_exit641.loopexit.us:                   ; preds = %polly.loop_exit648.us
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next636.us, %173
  br i1 %exitcond1067.not, label %polly.loop_exit634, label %polly.loop_header632.us

polly.loop_header618:                             ; preds = %polly.loop_header599, %polly.loop_header618
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_header618 ], [ %180, %polly.loop_header599 ]
  %201 = add nuw nsw i64 %polly.indvar622, %176
  %polly.access.mul.call1626 = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1627 = add nuw nsw i64 %187, %polly.access.mul.call1626
  %polly.access.call1628 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1627
  %polly.access.call1628.load = load double, double* %polly.access.call1628, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1482630 = add nuw nsw i64 %polly.indvar622, %polly.access.mul.Packed_MemRef_call1482629
  %polly.access.Packed_MemRef_call1482631 = getelementptr double, double* %Packed_MemRef_call1482, i64 %polly.access.add.Packed_MemRef_call1482630
  store double %polly.access.call1628.load, double* %polly.access.Packed_MemRef_call1482631, align 8
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %polly.loop_cond624.not.not = icmp ult i64 %polly.indvar622, %183
  br i1 %polly.loop_cond624.not.not, label %polly.loop_header618, label %polly.loop_exit620

polly.loop_header795:                             ; preds = %entry, %polly.loop_exit803
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit803 ], [ 0, %entry ]
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_exit803 ], [ 0, %entry ]
  %smin1099 = call i64 @llvm.smin.i64(i64 %indvars.iv1097, i64 -1168)
  %202 = shl nsw i64 %polly.indvar798, 5
  %203 = add nsw i64 %smin1099, 1199
  br label %polly.loop_header801

polly.loop_exit803:                               ; preds = %polly.loop_exit809
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %indvars.iv.next1098 = add nsw i64 %indvars.iv1097, -32
  %exitcond1102.not = icmp eq i64 %polly.indvar_next799, 38
  br i1 %exitcond1102.not, label %polly.loop_header822, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_exit809, %polly.loop_header795
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit809 ], [ 0, %polly.loop_header795 ]
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_exit809 ], [ 0, %polly.loop_header795 ]
  %204 = mul nsw i64 %polly.indvar804, -32
  %smin = call i64 @llvm.smin.i64(i64 %204, i64 -1168)
  %205 = add nsw i64 %smin, 1200
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1168)
  %206 = shl nsw i64 %polly.indvar804, 5
  %207 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header807

polly.loop_exit809:                               ; preds = %polly.loop_exit815
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -32
  %exitcond1101.not = icmp eq i64 %polly.indvar_next805, 38
  br i1 %exitcond1101.not, label %polly.loop_exit803, label %polly.loop_header801

polly.loop_header807:                             ; preds = %polly.loop_exit815, %polly.loop_header801
  %polly.indvar810 = phi i64 [ 0, %polly.loop_header801 ], [ %polly.indvar_next811, %polly.loop_exit815 ]
  %208 = add nuw nsw i64 %polly.indvar810, %202
  %209 = trunc i64 %208 to i32
  %210 = mul nuw nsw i64 %208, 9600
  %min.iters.check = icmp eq i64 %205, 0
  br i1 %min.iters.check, label %polly.loop_header813, label %vector.ph1137

vector.ph1137:                                    ; preds = %polly.loop_header807
  %broadcast.splatinsert1144 = insertelement <4 x i64> poison, i64 %206, i32 0
  %broadcast.splat1145 = shufflevector <4 x i64> %broadcast.splatinsert1144, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1137
  %index1138 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1137 ], [ %vec.ind.next1143, %vector.body1136 ]
  %211 = add nuw nsw <4 x i64> %vec.ind1142, %broadcast.splat1145
  %212 = trunc <4 x i64> %211 to <4 x i32>
  %213 = mul <4 x i32> %broadcast.splat1147, %212
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 1200, i32 1200, i32 1200, i32 1200>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %218 = extractelement <4 x i64> %211, i32 0
  %219 = shl i64 %218, 3
  %220 = add nuw nsw i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %217, <4 x double>* %222, align 8, !alias.scope !98, !noalias !100
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %223 = icmp eq i64 %index.next1139, %205
  br i1 %223, label %polly.loop_exit815, label %vector.body1136, !llvm.loop !103

polly.loop_exit815:                               ; preds = %vector.body1136, %polly.loop_header813
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar810, %203
  br i1 %exitcond1100.not, label %polly.loop_exit809, label %polly.loop_header807

polly.loop_header813:                             ; preds = %polly.loop_header807, %polly.loop_header813
  %polly.indvar816 = phi i64 [ %polly.indvar_next817, %polly.loop_header813 ], [ 0, %polly.loop_header807 ]
  %224 = add nuw nsw i64 %polly.indvar816, %206
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %225, %209
  %227 = add i32 %226, 3
  %228 = urem i32 %227, 1200
  %p_conv31.i = sitofp i32 %228 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %229 = shl i64 %224, 3
  %230 = add nuw nsw i64 %229, %210
  %scevgep819 = getelementptr i8, i8* %call, i64 %230
  %scevgep819820 = bitcast i8* %scevgep819 to double*
  store double %p_div33.i, double* %scevgep819820, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next817 = add nuw nsw i64 %polly.indvar816, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar816, %207
  br i1 %exitcond1096.not, label %polly.loop_exit815, label %polly.loop_header813, !llvm.loop !104

polly.loop_header822:                             ; preds = %polly.loop_exit803, %polly.loop_exit830
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit830 ], [ 0, %polly.loop_exit803 ]
  %polly.indvar825 = phi i64 [ %polly.indvar_next826, %polly.loop_exit830 ], [ 0, %polly.loop_exit803 ]
  %smin1089 = call i64 @llvm.smin.i64(i64 %indvars.iv1087, i64 -1168)
  %231 = shl nsw i64 %polly.indvar825, 5
  %232 = add nsw i64 %smin1089, 1199
  br label %polly.loop_header828

polly.loop_exit830:                               ; preds = %polly.loop_exit836
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, -32
  %exitcond1092.not = icmp eq i64 %polly.indvar_next826, 38
  br i1 %exitcond1092.not, label %polly.loop_header848, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_exit836, %polly.loop_header822
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %233 = mul nsw i64 %polly.indvar831, -32
  %smin1151 = call i64 @llvm.smin.i64(i64 %233, i64 -968)
  %234 = add nsw i64 %smin1151, 1000
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -968)
  %235 = shl nsw i64 %polly.indvar831, 5
  %236 = add nsw i64 %smin1085, 999
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1091.not = icmp eq i64 %polly.indvar_next832, 32
  br i1 %exitcond1091.not, label %polly.loop_exit830, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %polly.indvar837 = phi i64 [ 0, %polly.loop_header828 ], [ %polly.indvar_next838, %polly.loop_exit842 ]
  %237 = add nuw nsw i64 %polly.indvar837, %231
  %238 = trunc i64 %237 to i32
  %239 = mul nuw nsw i64 %237, 8000
  %min.iters.check1152 = icmp eq i64 %234, 0
  br i1 %min.iters.check1152, label %polly.loop_header840, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header834
  %broadcast.splatinsert1162 = insertelement <4 x i64> poison, i64 %235, i32 0
  %broadcast.splat1163 = shufflevector <4 x i64> %broadcast.splatinsert1162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1157, %vector.body1150 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1161, %vector.body1150 ]
  %240 = add nuw nsw <4 x i64> %vec.ind1160, %broadcast.splat1163
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat1165, %241
  %243 = add <4 x i32> %242, <i32 2, i32 2, i32 2, i32 2>
  %244 = urem <4 x i32> %243, <i32 1000, i32 1000, i32 1000, i32 1000>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %239
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !102, !noalias !105
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next1157, %234
  br i1 %252, label %polly.loop_exit842, label %vector.body1150, !llvm.loop !106

polly.loop_exit842:                               ; preds = %vector.body1150, %polly.loop_header840
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar837, %232
  br i1 %exitcond1090.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_header834, %polly.loop_header840
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_header840 ], [ 0, %polly.loop_header834 ]
  %253 = add nuw nsw i64 %polly.indvar843, %235
  %254 = trunc i64 %253 to i32
  %255 = mul i32 %254, %238
  %256 = add i32 %255, 2
  %257 = urem i32 %256, 1000
  %p_conv10.i = sitofp i32 %257 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %258 = shl i64 %253, 3
  %259 = add nuw nsw i64 %258, %239
  %scevgep846 = getelementptr i8, i8* %call2, i64 %259
  %scevgep846847 = bitcast i8* %scevgep846 to double*
  store double %p_div12.i, double* %scevgep846847, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar843, %236
  br i1 %exitcond1086.not, label %polly.loop_exit842, label %polly.loop_header840, !llvm.loop !107

polly.loop_header848:                             ; preds = %polly.loop_exit830, %polly.loop_exit856
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit856 ], [ 0, %polly.loop_exit830 ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %polly.loop_exit830 ]
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1077, i64 -1168)
  %260 = shl nsw i64 %polly.indvar851, 5
  %261 = add nsw i64 %smin1079, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -32
  %exitcond1082.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1082.not, label %init_array.exit, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %262 = mul nsw i64 %polly.indvar857, -32
  %smin1169 = call i64 @llvm.smin.i64(i64 %262, i64 -968)
  %263 = add nsw i64 %smin1169, 1000
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -968)
  %264 = shl nsw i64 %polly.indvar857, 5
  %265 = add nsw i64 %smin1075, 999
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1081.not = icmp eq i64 %polly.indvar_next858, 32
  br i1 %exitcond1081.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %266 = add nuw nsw i64 %polly.indvar863, %260
  %267 = trunc i64 %266 to i32
  %268 = mul nuw nsw i64 %266, 8000
  %min.iters.check1170 = icmp eq i64 %263, 0
  br i1 %min.iters.check1170, label %polly.loop_header866, label %vector.ph1171

vector.ph1171:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1180 = insertelement <4 x i64> poison, i64 %264, i32 0
  %broadcast.splat1181 = shufflevector <4 x i64> %broadcast.splatinsert1180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1175, %vector.body1168 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1171 ], [ %vec.ind.next1179, %vector.body1168 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1178, %broadcast.splat1181
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1183, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 1200, i32 1200, i32 1200, i32 1200>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %268
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !101, !noalias !108
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next1175, %263
  br i1 %281, label %polly.loop_exit868, label %vector.body1168, !llvm.loop !109

polly.loop_exit868:                               ; preds = %vector.body1168, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar863, %261
  br i1 %exitcond1080.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %282 = add nuw nsw i64 %polly.indvar869, %264
  %283 = trunc i64 %282 to i32
  %284 = mul i32 %283, %267
  %285 = add i32 %284, 1
  %286 = urem i32 %285, 1200
  %p_conv.i = sitofp i32 %286 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %287 = shl i64 %282, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep873 = getelementptr i8, i8* %call1, i64 %288
  %scevgep873874 = bitcast i8* %scevgep873 to double*
  store double %p_div.i, double* %scevgep873874, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar869, %265
  br i1 %exitcond1076.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !110
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !25, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
