; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4875.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4875.c"
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
  %call811 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1663 = bitcast i8* %call1 to double*
  %polly.access.call1672 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1672, %call2
  %polly.access.call2692 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2692, %call1
  %2 = or i1 %0, %1
  %polly.access.call712 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call712, %call2
  %4 = icmp ule i8* %polly.access.call2692, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call712, %call1
  %8 = icmp ule i8* %polly.access.call1672, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header785, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1087 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1086 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1085 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1084 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1084, %scevgep1087
  %bound1 = icmp ult i8* %scevgep1086, %scevgep1085
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
  br i1 %exitcond18.not.i, label %vector.ph1091, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1091:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1098 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1099 = shufflevector <4 x i64> %broadcast.splatinsert1098, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %vector.ph1091
  %index1092 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1096 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1091 ], [ %vec.ind.next1097, %vector.body1090 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1096, %broadcast.splat1099
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv7.i, i64 %index1092
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1097 = add <4 x i64> %vec.ind1096, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1093, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1090, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1090
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1091, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit846
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1153 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1153, label %for.body3.i46.preheader1227, label %vector.ph1154

vector.ph1154:                                    ; preds = %for.body3.i46.preheader
  %n.vec1156 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1154
  %index1157 = phi i64 [ 0, %vector.ph1154 ], [ %index.next1158, %vector.body1152 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i, i64 %index1157
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1158 = add i64 %index1157, 4
  %46 = icmp eq i64 %index.next1158, %n.vec1156
  br i1 %46, label %middle.block1150, label %vector.body1152, !llvm.loop !18

middle.block1150:                                 ; preds = %vector.body1152
  %cmp.n1160 = icmp eq i64 %indvars.iv21.i, %n.vec1156
  br i1 %cmp.n1160, label %for.inc6.i, label %for.body3.i46.preheader1227

for.body3.i46.preheader1227:                      ; preds = %for.body3.i46.preheader, %middle.block1150
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1156, %middle.block1150 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1227, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1227 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1150, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1176 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1176, label %for.body3.i60.preheader1226, label %vector.ph1177

vector.ph1177:                                    ; preds = %for.body3.i60.preheader
  %n.vec1179 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1175 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i52, i64 %index1180
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1184 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1184, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1181 = add i64 %index1180, 4
  %57 = icmp eq i64 %index.next1181, %n.vec1179
  br i1 %57, label %middle.block1173, label %vector.body1175, !llvm.loop !55

middle.block1173:                                 ; preds = %vector.body1175
  %cmp.n1183 = icmp eq i64 %indvars.iv21.i52, %n.vec1179
  br i1 %cmp.n1183, label %for.inc6.i63, label %for.body3.i60.preheader1226

for.body3.i60.preheader1226:                      ; preds = %for.body3.i60.preheader, %middle.block1173
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1179, %middle.block1173 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1226, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1226 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1173, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting282
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1202 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1202, label %for.body3.i99.preheader1225, label %vector.ph1203

vector.ph1203:                                    ; preds = %for.body3.i99.preheader
  %n.vec1205 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1203
  %index1206 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1207, %vector.body1201 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i91, i64 %index1206
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1210 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1210, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1207 = add i64 %index1206, 4
  %68 = icmp eq i64 %index.next1207, %n.vec1205
  br i1 %68, label %middle.block1199, label %vector.body1201, !llvm.loop !57

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1209 = icmp eq i64 %indvars.iv21.i91, %n.vec1205
  br i1 %cmp.n1209, label %for.inc6.i102, label %for.body3.i99.preheader1225

for.body3.i99.preheader1225:                      ; preds = %for.body3.i99.preheader, %middle.block1199
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1205, %middle.block1199 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1225, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1225 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1199, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1214 = phi i64 [ %indvar.next1215, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1214, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1216 = icmp ult i64 %88, 4
  br i1 %min.iters.check1216, label %polly.loop_header191.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %polly.loop_header
  %n.vec1219 = and i64 %88, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1213 ]
  %90 = shl nuw nsw i64 %index1220, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1224 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1224, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1221 = add i64 %index1220, 4
  %95 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %95, label %middle.block1211, label %vector.body1213, !llvm.loop !69

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1223 = icmp eq i64 %88, %n.vec1219
  br i1 %cmp.n1223, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1211
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1219, %middle.block1211 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1211
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1215 = add i64 %indvar1214, 1
  br i1 %exitcond994.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond993.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv988 = phi i64 [ 5, %polly.loop_header199.preheader ], [ %indvars.iv.next989, %polly.loop_exit207 ]
  %indvars.iv977 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next978, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nsw i64 %polly.indvar202, -80
  %98 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 80
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 5
  %exitcond992.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond992.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %99 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond991.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit219 ], [ %indvars.iv977, %polly.loop_header205 ]
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %100 = shl nsw i64 %polly.indvar214, 4
  %101 = add nsw i64 %100, %97
  %102 = icmp sgt i64 %101, 0
  %103 = select i1 %102, i64 %101, i64 0
  %polly.loop_guard = icmp slt i64 %103, 80
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv975, i64 0)
  %104 = add i64 %smax, %indvars.iv979
  %105 = sub nsw i64 %98, %100
  %106 = add nuw nsw i64 %100, 16
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, 16
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, -16
  %exitcond990.not = icmp eq i64 %polly.indvar_next215, %indvars.iv988
  br i1 %exitcond990.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv981 = phi i64 [ %104, %polly.loop_header217.preheader ], [ %indvars.iv.next982, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %103, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin985 = call i64 @llvm.smin.i64(i64 %indvars.iv981, i64 15)
  %107 = add nsw i64 %polly.indvar220, %105
  %polly.loop_guard2331079 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar220, %98
  %.not = icmp ult i64 %108, %106
  %polly.access.mul.call1242 = mul nsw i64 %108, 1000
  %109 = add nuw i64 %polly.access.mul.call1242, %99
  br i1 %polly.loop_guard2331079, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %110 = add nuw nsw i64 %polly.indvar226.us, %99
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %111 = add nuw nsw i64 %polly.indvar234.us, %100
  %polly.access.mul.call1238.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %110, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar234.us, %smin985
  br i1 %exitcond983.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %109, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next227.us, 20
  br i1 %exitcond984.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1663, i64 %109
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %107
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.access.add.call1243.1 = or i64 %109, 1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.1 = add nsw i64 %107, 1200
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.access.add.call1243.2 = or i64 %109, 2
  %polly.access.call1244.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.2
  %polly.access.call1244.load.2 = load double, double* %polly.access.call1244.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.2 = add nsw i64 %107, 2400
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  store double %polly.access.call1244.load.2, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %polly.access.add.call1243.3 = or i64 %109, 3
  %polly.access.call1244.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.3
  %polly.access.call1244.load.3 = load double, double* %polly.access.call1244.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.3 = add nsw i64 %107, 3600
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  store double %polly.access.call1244.load.3, double* %polly.access.Packed_MemRef_call1247.3, align 8
  %polly.access.add.call1243.4 = add nuw nsw i64 %109, 4
  %polly.access.call1244.4 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.4
  %polly.access.call1244.load.4 = load double, double* %polly.access.call1244.4, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.4 = add nsw i64 %107, 4800
  %polly.access.Packed_MemRef_call1247.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.4
  store double %polly.access.call1244.load.4, double* %polly.access.Packed_MemRef_call1247.4, align 8
  %polly.access.add.call1243.5 = add nuw nsw i64 %109, 5
  %polly.access.call1244.5 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.5
  %polly.access.call1244.load.5 = load double, double* %polly.access.call1244.5, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.5 = add nsw i64 %107, 6000
  %polly.access.Packed_MemRef_call1247.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.5
  store double %polly.access.call1244.load.5, double* %polly.access.Packed_MemRef_call1247.5, align 8
  %polly.access.add.call1243.6 = add nuw nsw i64 %109, 6
  %polly.access.call1244.6 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.6
  %polly.access.call1244.load.6 = load double, double* %polly.access.call1244.6, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.6 = add nsw i64 %107, 7200
  %polly.access.Packed_MemRef_call1247.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.6
  store double %polly.access.call1244.load.6, double* %polly.access.Packed_MemRef_call1247.6, align 8
  %polly.access.add.call1243.7 = add nuw nsw i64 %109, 7
  %polly.access.call1244.7 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.7
  %polly.access.call1244.load.7 = load double, double* %polly.access.call1244.7, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.7 = add nsw i64 %107, 8400
  %polly.access.Packed_MemRef_call1247.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.7
  store double %polly.access.call1244.load.7, double* %polly.access.Packed_MemRef_call1247.7, align 8
  %polly.access.add.call1243.8 = add nuw nsw i64 %109, 8
  %polly.access.call1244.8 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.8
  %polly.access.call1244.load.8 = load double, double* %polly.access.call1244.8, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.8 = add nsw i64 %107, 9600
  %polly.access.Packed_MemRef_call1247.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.8
  store double %polly.access.call1244.load.8, double* %polly.access.Packed_MemRef_call1247.8, align 8
  %polly.access.add.call1243.9 = add nuw nsw i64 %109, 9
  %polly.access.call1244.9 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.9
  %polly.access.call1244.load.9 = load double, double* %polly.access.call1244.9, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.9 = add nsw i64 %107, 10800
  %polly.access.Packed_MemRef_call1247.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.9
  store double %polly.access.call1244.load.9, double* %polly.access.Packed_MemRef_call1247.9, align 8
  %polly.access.add.call1243.10 = add nuw nsw i64 %109, 10
  %polly.access.call1244.10 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.10
  %polly.access.call1244.load.10 = load double, double* %polly.access.call1244.10, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.10 = add nsw i64 %107, 12000
  %polly.access.Packed_MemRef_call1247.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.10
  store double %polly.access.call1244.load.10, double* %polly.access.Packed_MemRef_call1247.10, align 8
  %polly.access.add.call1243.11 = add nuw nsw i64 %109, 11
  %polly.access.call1244.11 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.11
  %polly.access.call1244.load.11 = load double, double* %polly.access.call1244.11, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.11 = add nsw i64 %107, 13200
  %polly.access.Packed_MemRef_call1247.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.11
  store double %polly.access.call1244.load.11, double* %polly.access.Packed_MemRef_call1247.11, align 8
  %polly.access.add.call1243.12 = add nuw nsw i64 %109, 12
  %polly.access.call1244.12 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.12
  %polly.access.call1244.load.12 = load double, double* %polly.access.call1244.12, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.12 = add nsw i64 %107, 14400
  %polly.access.Packed_MemRef_call1247.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.12
  store double %polly.access.call1244.load.12, double* %polly.access.Packed_MemRef_call1247.12, align 8
  %polly.access.add.call1243.13 = add nuw nsw i64 %109, 13
  %polly.access.call1244.13 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.13
  %polly.access.call1244.load.13 = load double, double* %polly.access.call1244.13, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.13 = add nsw i64 %107, 15600
  %polly.access.Packed_MemRef_call1247.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.13
  store double %polly.access.call1244.load.13, double* %polly.access.Packed_MemRef_call1247.13, align 8
  %polly.access.add.call1243.14 = add nuw nsw i64 %109, 14
  %polly.access.call1244.14 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.14
  %polly.access.call1244.load.14 = load double, double* %polly.access.call1244.14, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.14 = add nsw i64 %107, 16800
  %polly.access.Packed_MemRef_call1247.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.14
  store double %polly.access.call1244.load.14, double* %polly.access.Packed_MemRef_call1247.14, align 8
  %polly.access.add.call1243.15 = add nuw nsw i64 %109, 15
  %polly.access.call1244.15 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.15
  %polly.access.call1244.load.15 = load double, double* %polly.access.call1244.15, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.15 = add nsw i64 %107, 18000
  %polly.access.Packed_MemRef_call1247.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.15
  store double %polly.access.call1244.load.15, double* %polly.access.Packed_MemRef_call1247.15, align 8
  %polly.access.add.call1243.16 = add nuw nsw i64 %109, 16
  %polly.access.call1244.16 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.16
  %polly.access.call1244.load.16 = load double, double* %polly.access.call1244.16, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.16 = add nsw i64 %107, 19200
  %polly.access.Packed_MemRef_call1247.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.16
  store double %polly.access.call1244.load.16, double* %polly.access.Packed_MemRef_call1247.16, align 8
  %polly.access.add.call1243.17 = add nuw nsw i64 %109, 17
  %polly.access.call1244.17 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.17
  %polly.access.call1244.load.17 = load double, double* %polly.access.call1244.17, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.17 = add nsw i64 %107, 20400
  %polly.access.Packed_MemRef_call1247.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.17
  store double %polly.access.call1244.load.17, double* %polly.access.Packed_MemRef_call1247.17, align 8
  %polly.access.add.call1243.18 = add nuw nsw i64 %109, 18
  %polly.access.call1244.18 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.18
  %polly.access.call1244.load.18 = load double, double* %polly.access.call1244.18, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.18 = add nsw i64 %107, 21600
  %polly.access.Packed_MemRef_call1247.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.18
  store double %polly.access.call1244.load.18, double* %polly.access.Packed_MemRef_call1247.18, align 8
  %polly.access.add.call1243.19 = add nuw nsw i64 %109, 19
  %polly.access.call1244.19 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.19
  %polly.access.call1244.load.19 = load double, double* %polly.access.call1244.19, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.19 = add nsw i64 %107, 22800
  %polly.access.Packed_MemRef_call1247.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.19
  store double %polly.access.call1244.load.19, double* %polly.access.Packed_MemRef_call1247.19, align 8
  br label %polly.loop_exit250

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 79
  %indvars.iv.next982 = add i64 %indvars.iv981, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header248.preheader:                   ; preds = %polly.merge.us
  %112 = mul i64 %108, 8000
  %113 = mul i64 %108, 9600
  br i1 %polly.loop_guard2331079, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %114 = add nuw nsw i64 %polly.indvar251.us, %99
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %115 = shl i64 %114, 3
  %116 = add i64 %115, %112
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %116
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %107
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %117 = add nuw nsw i64 %polly.indvar259.us, %100
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %115
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %119
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %113
  %scevgep276.us = getelementptr i8, i8* %call, i64 %121
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar259.us, %smin985
  br i1 %exitcond986.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next252.us, 20
  br i1 %exitcond987.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1188 = phi i64 [ %indvar.next1189, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %122 = add i64 %indvar1188, 1
  %123 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1190 = icmp ult i64 %122, 4
  br i1 %min.iters.check1190, label %polly.loop_header373.preheader, label %vector.ph1191

vector.ph1191:                                    ; preds = %polly.loop_header367
  %n.vec1193 = and i64 %122, -4
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1187 ]
  %124 = shl nuw nsw i64 %index1194, 3
  %125 = getelementptr i8, i8* %scevgep379, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1198 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !74, !noalias !76
  %127 = fmul fast <4 x double> %wide.load1198, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !74, !noalias !76
  %index.next1195 = add i64 %index1194, 4
  %129 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %129, label %middle.block1185, label %vector.body1187, !llvm.loop !80

middle.block1185:                                 ; preds = %vector.body1187
  %cmp.n1197 = icmp eq i64 %122, %n.vec1193
  br i1 %cmp.n1197, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1185
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1193, %middle.block1185 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1185
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1189 = add i64 %indvar1188, 1
  br i1 %exitcond1019.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %130
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1018.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1013 = phi i64 [ 5, %polly.loop_header383.preheader ], [ %indvars.iv.next1014, %polly.loop_exit391 ]
  %indvars.iv1001 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1002, %polly.loop_exit391 ]
  %indvars.iv996 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next997, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %131 = mul nsw i64 %polly.indvar386, -80
  %132 = mul nuw nsw i64 %polly.indvar386, 80
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit397
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, -80
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 80
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 5
  %exitcond1017.not = icmp eq i64 %polly.indvar_next387, 15
  br i1 %exitcond1017.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit397, %polly.loop_header383
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header383 ], [ %polly.indvar_next393, %polly.loop_exit397 ]
  %133 = mul nuw nsw i64 %polly.indvar392, 20
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next393, 50
  br i1 %exitcond1016.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit404 ], [ %indvars.iv1001, %polly.loop_header389 ]
  %indvars.iv998 = phi i64 [ %indvars.iv.next999, %polly.loop_exit404 ], [ %indvars.iv996, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %134 = shl nsw i64 %polly.indvar398, 4
  %135 = add nsw i64 %134, %131
  %136 = icmp sgt i64 %135, 0
  %137 = select i1 %136, i64 %135, i64 0
  %polly.loop_guard405 = icmp slt i64 %137, 80
  br i1 %polly.loop_guard405, label %polly.loop_header402.preheader, label %polly.loop_exit404

polly.loop_header402.preheader:                   ; preds = %polly.loop_header395
  %smax1000 = call i64 @llvm.smax.i64(i64 %indvars.iv998, i64 0)
  %138 = add i64 %smax1000, %indvars.iv1003
  %139 = sub nsw i64 %132, %134
  %140 = add nuw nsw i64 %134, 16
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit440, %polly.loop_header395
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, 16
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, -16
  %exitcond1015.not = icmp eq i64 %polly.indvar_next399, %indvars.iv1013
  br i1 %exitcond1015.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit440
  %indvars.iv1005 = phi i64 [ %138, %polly.loop_header402.preheader ], [ %indvars.iv.next1006, %polly.loop_exit440 ]
  %polly.indvar406 = phi i64 [ %137, %polly.loop_header402.preheader ], [ %polly.indvar_next407, %polly.loop_exit440 ]
  %smin1010 = call i64 @llvm.smin.i64(i64 %indvars.iv1005, i64 15)
  %141 = add nsw i64 %polly.indvar406, %139
  %polly.loop_guard4191080 = icmp sgt i64 %141, -1
  %142 = add nuw nsw i64 %polly.indvar406, %132
  %.not865 = icmp ult i64 %142, %140
  %polly.access.mul.call1432 = mul nsw i64 %142, 1000
  %143 = add nuw i64 %polly.access.mul.call1432, %133
  br i1 %polly.loop_guard4191080, label %polly.loop_header409.us, label %polly.loop_header402.split

polly.loop_header409.us:                          ; preds = %polly.loop_header402, %polly.merge428.us
  %polly.indvar412.us = phi i64 [ %polly.indvar_next413.us, %polly.merge428.us ], [ 0, %polly.loop_header402 ]
  %144 = add nuw nsw i64 %polly.indvar412.us, %133
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar412.us, 1200
  br label %polly.loop_header416.us

polly.loop_header416.us:                          ; preds = %polly.loop_header409.us, %polly.loop_header416.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_header416.us ], [ 0, %polly.loop_header409.us ]
  %145 = add nuw nsw i64 %polly.indvar420.us, %134
  %polly.access.mul.call1424.us = mul nuw nsw i64 %145, 1000
  %polly.access.add.call1425.us = add nuw nsw i64 %144, %polly.access.mul.call1424.us
  %polly.access.call1426.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us
  %polly.access.call1426.load.us = load double, double* %polly.access.call1426.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar420.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1426.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar420.us, %smin1010
  br i1 %exitcond1008.not, label %polly.cond427.loopexit.us, label %polly.loop_header416.us

polly.then429.us:                                 ; preds = %polly.cond427.loopexit.us
  %polly.access.add.call1433.us = add nuw nsw i64 %143, %polly.indvar412.us
  %polly.access.call1434.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us
  %polly.access.call1434.load.us = load double, double* %polly.access.call1434.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %141
  %polly.access.Packed_MemRef_call1284437.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us
  store double %polly.access.call1434.load.us, double* %polly.access.Packed_MemRef_call1284437.us, align 8
  br label %polly.merge428.us

polly.merge428.us:                                ; preds = %polly.then429.us, %polly.cond427.loopexit.us
  %polly.indvar_next413.us = add nuw nsw i64 %polly.indvar412.us, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next413.us, 20
  br i1 %exitcond1009.not, label %polly.loop_header438.preheader, label %polly.loop_header409.us

polly.cond427.loopexit.us:                        ; preds = %polly.loop_header416.us
  br i1 %.not865, label %polly.merge428.us, label %polly.then429.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %.not865, label %polly.loop_exit440, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402.split
  %polly.access.call1434 = getelementptr double, double* %polly.access.cast.call1663, i64 %143
  %polly.access.call1434.load = load double, double* %polly.access.call1434, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284437 = getelementptr double, double* %Packed_MemRef_call1284, i64 %141
  store double %polly.access.call1434.load, double* %polly.access.Packed_MemRef_call1284437, align 8
  %polly.access.add.call1433.1 = or i64 %143, 1
  %polly.access.call1434.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.1
  %polly.access.call1434.load.1 = load double, double* %polly.access.call1434.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.1 = add nsw i64 %141, 1200
  %polly.access.Packed_MemRef_call1284437.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.1
  store double %polly.access.call1434.load.1, double* %polly.access.Packed_MemRef_call1284437.1, align 8
  %polly.access.add.call1433.2 = or i64 %143, 2
  %polly.access.call1434.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.2
  %polly.access.call1434.load.2 = load double, double* %polly.access.call1434.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.2 = add nsw i64 %141, 2400
  %polly.access.Packed_MemRef_call1284437.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.2
  store double %polly.access.call1434.load.2, double* %polly.access.Packed_MemRef_call1284437.2, align 8
  %polly.access.add.call1433.3 = or i64 %143, 3
  %polly.access.call1434.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.3
  %polly.access.call1434.load.3 = load double, double* %polly.access.call1434.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.3 = add nsw i64 %141, 3600
  %polly.access.Packed_MemRef_call1284437.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.3
  store double %polly.access.call1434.load.3, double* %polly.access.Packed_MemRef_call1284437.3, align 8
  %polly.access.add.call1433.4 = add nuw nsw i64 %143, 4
  %polly.access.call1434.4 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.4
  %polly.access.call1434.load.4 = load double, double* %polly.access.call1434.4, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.4 = add nsw i64 %141, 4800
  %polly.access.Packed_MemRef_call1284437.4 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.4
  store double %polly.access.call1434.load.4, double* %polly.access.Packed_MemRef_call1284437.4, align 8
  %polly.access.add.call1433.5 = add nuw nsw i64 %143, 5
  %polly.access.call1434.5 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.5
  %polly.access.call1434.load.5 = load double, double* %polly.access.call1434.5, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.5 = add nsw i64 %141, 6000
  %polly.access.Packed_MemRef_call1284437.5 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.5
  store double %polly.access.call1434.load.5, double* %polly.access.Packed_MemRef_call1284437.5, align 8
  %polly.access.add.call1433.6 = add nuw nsw i64 %143, 6
  %polly.access.call1434.6 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.6
  %polly.access.call1434.load.6 = load double, double* %polly.access.call1434.6, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.6 = add nsw i64 %141, 7200
  %polly.access.Packed_MemRef_call1284437.6 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.6
  store double %polly.access.call1434.load.6, double* %polly.access.Packed_MemRef_call1284437.6, align 8
  %polly.access.add.call1433.7 = add nuw nsw i64 %143, 7
  %polly.access.call1434.7 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.7
  %polly.access.call1434.load.7 = load double, double* %polly.access.call1434.7, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.7 = add nsw i64 %141, 8400
  %polly.access.Packed_MemRef_call1284437.7 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.7
  store double %polly.access.call1434.load.7, double* %polly.access.Packed_MemRef_call1284437.7, align 8
  %polly.access.add.call1433.8 = add nuw nsw i64 %143, 8
  %polly.access.call1434.8 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.8
  %polly.access.call1434.load.8 = load double, double* %polly.access.call1434.8, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.8 = add nsw i64 %141, 9600
  %polly.access.Packed_MemRef_call1284437.8 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.8
  store double %polly.access.call1434.load.8, double* %polly.access.Packed_MemRef_call1284437.8, align 8
  %polly.access.add.call1433.9 = add nuw nsw i64 %143, 9
  %polly.access.call1434.9 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.9
  %polly.access.call1434.load.9 = load double, double* %polly.access.call1434.9, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.9 = add nsw i64 %141, 10800
  %polly.access.Packed_MemRef_call1284437.9 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.9
  store double %polly.access.call1434.load.9, double* %polly.access.Packed_MemRef_call1284437.9, align 8
  %polly.access.add.call1433.10 = add nuw nsw i64 %143, 10
  %polly.access.call1434.10 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.10
  %polly.access.call1434.load.10 = load double, double* %polly.access.call1434.10, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.10 = add nsw i64 %141, 12000
  %polly.access.Packed_MemRef_call1284437.10 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.10
  store double %polly.access.call1434.load.10, double* %polly.access.Packed_MemRef_call1284437.10, align 8
  %polly.access.add.call1433.11 = add nuw nsw i64 %143, 11
  %polly.access.call1434.11 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.11
  %polly.access.call1434.load.11 = load double, double* %polly.access.call1434.11, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.11 = add nsw i64 %141, 13200
  %polly.access.Packed_MemRef_call1284437.11 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.11
  store double %polly.access.call1434.load.11, double* %polly.access.Packed_MemRef_call1284437.11, align 8
  %polly.access.add.call1433.12 = add nuw nsw i64 %143, 12
  %polly.access.call1434.12 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.12
  %polly.access.call1434.load.12 = load double, double* %polly.access.call1434.12, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.12 = add nsw i64 %141, 14400
  %polly.access.Packed_MemRef_call1284437.12 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.12
  store double %polly.access.call1434.load.12, double* %polly.access.Packed_MemRef_call1284437.12, align 8
  %polly.access.add.call1433.13 = add nuw nsw i64 %143, 13
  %polly.access.call1434.13 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.13
  %polly.access.call1434.load.13 = load double, double* %polly.access.call1434.13, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.13 = add nsw i64 %141, 15600
  %polly.access.Packed_MemRef_call1284437.13 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.13
  store double %polly.access.call1434.load.13, double* %polly.access.Packed_MemRef_call1284437.13, align 8
  %polly.access.add.call1433.14 = add nuw nsw i64 %143, 14
  %polly.access.call1434.14 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.14
  %polly.access.call1434.load.14 = load double, double* %polly.access.call1434.14, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.14 = add nsw i64 %141, 16800
  %polly.access.Packed_MemRef_call1284437.14 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.14
  store double %polly.access.call1434.load.14, double* %polly.access.Packed_MemRef_call1284437.14, align 8
  %polly.access.add.call1433.15 = add nuw nsw i64 %143, 15
  %polly.access.call1434.15 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.15
  %polly.access.call1434.load.15 = load double, double* %polly.access.call1434.15, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.15 = add nsw i64 %141, 18000
  %polly.access.Packed_MemRef_call1284437.15 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.15
  store double %polly.access.call1434.load.15, double* %polly.access.Packed_MemRef_call1284437.15, align 8
  %polly.access.add.call1433.16 = add nuw nsw i64 %143, 16
  %polly.access.call1434.16 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.16
  %polly.access.call1434.load.16 = load double, double* %polly.access.call1434.16, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.16 = add nsw i64 %141, 19200
  %polly.access.Packed_MemRef_call1284437.16 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.16
  store double %polly.access.call1434.load.16, double* %polly.access.Packed_MemRef_call1284437.16, align 8
  %polly.access.add.call1433.17 = add nuw nsw i64 %143, 17
  %polly.access.call1434.17 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.17
  %polly.access.call1434.load.17 = load double, double* %polly.access.call1434.17, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.17 = add nsw i64 %141, 20400
  %polly.access.Packed_MemRef_call1284437.17 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.17
  store double %polly.access.call1434.load.17, double* %polly.access.Packed_MemRef_call1284437.17, align 8
  %polly.access.add.call1433.18 = add nuw nsw i64 %143, 18
  %polly.access.call1434.18 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.18
  %polly.access.call1434.load.18 = load double, double* %polly.access.call1434.18, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.18 = add nsw i64 %141, 21600
  %polly.access.Packed_MemRef_call1284437.18 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.18
  store double %polly.access.call1434.load.18, double* %polly.access.Packed_MemRef_call1284437.18, align 8
  %polly.access.add.call1433.19 = add nuw nsw i64 %143, 19
  %polly.access.call1434.19 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.19
  %polly.access.call1434.load.19 = load double, double* %polly.access.call1434.19, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.19 = add nsw i64 %141, 22800
  %polly.access.Packed_MemRef_call1284437.19 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.19
  store double %polly.access.call1434.load.19, double* %polly.access.Packed_MemRef_call1284437.19, align 8
  br label %polly.loop_exit440

polly.loop_exit440:                               ; preds = %polly.loop_exit447.loopexit.us, %polly.loop_header402.split, %polly.loop_header409.preheader, %polly.loop_header438.preheader
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %polly.loop_cond408 = icmp ult i64 %polly.indvar406, 79
  %indvars.iv.next1006 = add i64 %indvars.iv1005, 1
  br i1 %polly.loop_cond408, label %polly.loop_header402, label %polly.loop_exit404

polly.loop_header438.preheader:                   ; preds = %polly.merge428.us
  %146 = mul i64 %142, 8000
  %147 = mul i64 %142, 9600
  br i1 %polly.loop_guard4191080, label %polly.loop_header438.us, label %polly.loop_exit440

polly.loop_header438.us:                          ; preds = %polly.loop_header438.preheader, %polly.loop_exit447.loopexit.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_exit447.loopexit.us ], [ 0, %polly.loop_header438.preheader ]
  %148 = add nuw nsw i64 %polly.indvar441.us, %133
  %polly.access.mul.Packed_MemRef_call1284452.us = mul nuw nsw i64 %polly.indvar441.us, 1200
  %149 = shl i64 %148, 3
  %150 = add i64 %149, %146
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %150
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284452.us, %141
  %polly.access.Packed_MemRef_call1284464.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us
  %_p_scalar_465.us = load double, double* %polly.access.Packed_MemRef_call1284464.us, align 8
  br label %polly.loop_header445.us

polly.loop_header445.us:                          ; preds = %polly.loop_header438.us, %polly.loop_header445.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.loop_header445.us ], [ 0, %polly.loop_header438.us ]
  %151 = add nuw nsw i64 %polly.indvar449.us, %134
  %polly.access.add.Packed_MemRef_call1284453.us = add nuw nsw i64 %polly.indvar449.us, %polly.access.mul.Packed_MemRef_call1284452.us
  %polly.access.Packed_MemRef_call1284454.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us
  %_p_scalar_455.us = load double, double* %polly.access.Packed_MemRef_call1284454.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_458.us, %_p_scalar_455.us
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %149
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %153
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_465.us, %_p_scalar_461.us
  %154 = shl i64 %151, 3
  %155 = add i64 %154, %147
  %scevgep466.us = getelementptr i8, i8* %call, i64 %155
  %scevgep466467.us = bitcast i8* %scevgep466.us to double*
  %_p_scalar_468.us = load double, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_468.us
  store double %p_add42.i79.us, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar449.us, %smin1010
  br i1 %exitcond1011.not, label %polly.loop_exit447.loopexit.us, label %polly.loop_header445.us

polly.loop_exit447.loopexit.us:                   ; preds = %polly.loop_header445.us
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next442.us, 20
  br i1 %exitcond1012.not, label %polly.loop_exit440, label %polly.loop_header438.us

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1164 = icmp ult i64 %156, 4
  br i1 %min.iters.check1164, label %polly.loop_header563.preheader, label %vector.ph1165

vector.ph1165:                                    ; preds = %polly.loop_header557
  %n.vec1167 = and i64 %156, -4
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1169, %vector.body1163 ]
  %158 = shl nuw nsw i64 %index1168, 3
  %159 = getelementptr i8, i8* %scevgep569, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1172 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !84, !noalias !86
  %161 = fmul fast <4 x double> %wide.load1172, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !84, !noalias !86
  %index.next1169 = add i64 %index1168, 4
  %163 = icmp eq i64 %index.next1169, %n.vec1167
  br i1 %163, label %middle.block1161, label %vector.body1163, !llvm.loop !90

middle.block1161:                                 ; preds = %vector.body1163
  %cmp.n1171 = icmp eq i64 %156, %n.vec1167
  br i1 %cmp.n1171, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1161
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1167, %middle.block1161 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1161
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1044.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %164
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond1043.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !91

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %indvars.iv1038 = phi i64 [ 5, %polly.loop_header573.preheader ], [ %indvars.iv.next1039, %polly.loop_exit581 ]
  %indvars.iv1026 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1027, %polly.loop_exit581 ]
  %indvars.iv1021 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1022, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %165 = mul nsw i64 %polly.indvar576, -80
  %166 = mul nuw nsw i64 %polly.indvar576, 80
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, -80
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 80
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 5
  %exitcond1042.not = icmp eq i64 %polly.indvar_next577, 15
  br i1 %exitcond1042.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %167 = mul nuw nsw i64 %polly.indvar582, 20
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit594
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next583, 50
  br i1 %exitcond1041.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit594, %polly.loop_header579
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit594 ], [ %indvars.iv1026, %polly.loop_header579 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit594 ], [ %indvars.iv1021, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %168 = shl nsw i64 %polly.indvar588, 4
  %169 = add nsw i64 %168, %165
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  %polly.loop_guard595 = icmp slt i64 %171, 80
  br i1 %polly.loop_guard595, label %polly.loop_header592.preheader, label %polly.loop_exit594

polly.loop_header592.preheader:                   ; preds = %polly.loop_header585
  %smax1025 = call i64 @llvm.smax.i64(i64 %indvars.iv1023, i64 0)
  %172 = add i64 %smax1025, %indvars.iv1028
  %173 = sub nsw i64 %166, %168
  %174 = add nuw nsw i64 %168, 16
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit630, %polly.loop_header585
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, 16
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -16
  %exitcond1040.not = icmp eq i64 %polly.indvar_next589, %indvars.iv1038
  br i1 %exitcond1040.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit630
  %indvars.iv1030 = phi i64 [ %172, %polly.loop_header592.preheader ], [ %indvars.iv.next1031, %polly.loop_exit630 ]
  %polly.indvar596 = phi i64 [ %171, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit630 ]
  %smin1035 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 15)
  %175 = add nsw i64 %polly.indvar596, %173
  %polly.loop_guard6091081 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar596, %166
  %.not866 = icmp ult i64 %176, %174
  %polly.access.mul.call1622 = mul nsw i64 %176, 1000
  %177 = add nuw i64 %polly.access.mul.call1622, %167
  br i1 %polly.loop_guard6091081, label %polly.loop_header599.us, label %polly.loop_header592.split

polly.loop_header599.us:                          ; preds = %polly.loop_header592, %polly.merge618.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.merge618.us ], [ 0, %polly.loop_header592 ]
  %178 = add nuw nsw i64 %polly.indvar602.us, %167
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar602.us, 1200
  br label %polly.loop_header606.us

polly.loop_header606.us:                          ; preds = %polly.loop_header599.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header599.us ]
  %179 = add nuw nsw i64 %polly.indvar610.us, %168
  %polly.access.mul.call1614.us = mul nuw nsw i64 %179, 1000
  %polly.access.add.call1615.us = add nuw nsw i64 %178, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar610.us, %smin1035
  br i1 %exitcond1033.not, label %polly.cond617.loopexit.us, label %polly.loop_header606.us

polly.then619.us:                                 ; preds = %polly.cond617.loopexit.us
  %polly.access.add.call1623.us = add nuw nsw i64 %177, %polly.indvar602.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1474.us, %175
  %polly.access.Packed_MemRef_call1474627.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1474627.us, align 8
  br label %polly.merge618.us

polly.merge618.us:                                ; preds = %polly.then619.us, %polly.cond617.loopexit.us
  %polly.indvar_next603.us = add nuw nsw i64 %polly.indvar602.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next603.us, 20
  br i1 %exitcond1034.not, label %polly.loop_header628.preheader, label %polly.loop_header599.us

polly.cond617.loopexit.us:                        ; preds = %polly.loop_header606.us
  br i1 %.not866, label %polly.merge618.us, label %polly.then619.us

polly.loop_header592.split:                       ; preds = %polly.loop_header592
  br i1 %.not866, label %polly.loop_exit630, label %polly.loop_header599.preheader

polly.loop_header599.preheader:                   ; preds = %polly.loop_header592.split
  %polly.access.call1624 = getelementptr double, double* %polly.access.cast.call1663, i64 %177
  %polly.access.call1624.load = load double, double* %polly.access.call1624, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1474627 = getelementptr double, double* %Packed_MemRef_call1474, i64 %175
  store double %polly.access.call1624.load, double* %polly.access.Packed_MemRef_call1474627, align 8
  %polly.access.add.call1623.1 = or i64 %177, 1
  %polly.access.call1624.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.1
  %polly.access.call1624.load.1 = load double, double* %polly.access.call1624.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.1 = add nsw i64 %175, 1200
  %polly.access.Packed_MemRef_call1474627.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.1
  store double %polly.access.call1624.load.1, double* %polly.access.Packed_MemRef_call1474627.1, align 8
  %polly.access.add.call1623.2 = or i64 %177, 2
  %polly.access.call1624.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.2
  %polly.access.call1624.load.2 = load double, double* %polly.access.call1624.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.2 = add nsw i64 %175, 2400
  %polly.access.Packed_MemRef_call1474627.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.2
  store double %polly.access.call1624.load.2, double* %polly.access.Packed_MemRef_call1474627.2, align 8
  %polly.access.add.call1623.3 = or i64 %177, 3
  %polly.access.call1624.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.3
  %polly.access.call1624.load.3 = load double, double* %polly.access.call1624.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.3 = add nsw i64 %175, 3600
  %polly.access.Packed_MemRef_call1474627.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.3
  store double %polly.access.call1624.load.3, double* %polly.access.Packed_MemRef_call1474627.3, align 8
  %polly.access.add.call1623.4 = add nuw nsw i64 %177, 4
  %polly.access.call1624.4 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.4
  %polly.access.call1624.load.4 = load double, double* %polly.access.call1624.4, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.4 = add nsw i64 %175, 4800
  %polly.access.Packed_MemRef_call1474627.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.4
  store double %polly.access.call1624.load.4, double* %polly.access.Packed_MemRef_call1474627.4, align 8
  %polly.access.add.call1623.5 = add nuw nsw i64 %177, 5
  %polly.access.call1624.5 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.5
  %polly.access.call1624.load.5 = load double, double* %polly.access.call1624.5, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.5 = add nsw i64 %175, 6000
  %polly.access.Packed_MemRef_call1474627.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.5
  store double %polly.access.call1624.load.5, double* %polly.access.Packed_MemRef_call1474627.5, align 8
  %polly.access.add.call1623.6 = add nuw nsw i64 %177, 6
  %polly.access.call1624.6 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.6
  %polly.access.call1624.load.6 = load double, double* %polly.access.call1624.6, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.6 = add nsw i64 %175, 7200
  %polly.access.Packed_MemRef_call1474627.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.6
  store double %polly.access.call1624.load.6, double* %polly.access.Packed_MemRef_call1474627.6, align 8
  %polly.access.add.call1623.7 = add nuw nsw i64 %177, 7
  %polly.access.call1624.7 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.7
  %polly.access.call1624.load.7 = load double, double* %polly.access.call1624.7, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.7 = add nsw i64 %175, 8400
  %polly.access.Packed_MemRef_call1474627.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.7
  store double %polly.access.call1624.load.7, double* %polly.access.Packed_MemRef_call1474627.7, align 8
  %polly.access.add.call1623.8 = add nuw nsw i64 %177, 8
  %polly.access.call1624.8 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.8
  %polly.access.call1624.load.8 = load double, double* %polly.access.call1624.8, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.8 = add nsw i64 %175, 9600
  %polly.access.Packed_MemRef_call1474627.8 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.8
  store double %polly.access.call1624.load.8, double* %polly.access.Packed_MemRef_call1474627.8, align 8
  %polly.access.add.call1623.9 = add nuw nsw i64 %177, 9
  %polly.access.call1624.9 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.9
  %polly.access.call1624.load.9 = load double, double* %polly.access.call1624.9, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.9 = add nsw i64 %175, 10800
  %polly.access.Packed_MemRef_call1474627.9 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.9
  store double %polly.access.call1624.load.9, double* %polly.access.Packed_MemRef_call1474627.9, align 8
  %polly.access.add.call1623.10 = add nuw nsw i64 %177, 10
  %polly.access.call1624.10 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.10
  %polly.access.call1624.load.10 = load double, double* %polly.access.call1624.10, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.10 = add nsw i64 %175, 12000
  %polly.access.Packed_MemRef_call1474627.10 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.10
  store double %polly.access.call1624.load.10, double* %polly.access.Packed_MemRef_call1474627.10, align 8
  %polly.access.add.call1623.11 = add nuw nsw i64 %177, 11
  %polly.access.call1624.11 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.11
  %polly.access.call1624.load.11 = load double, double* %polly.access.call1624.11, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.11 = add nsw i64 %175, 13200
  %polly.access.Packed_MemRef_call1474627.11 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.11
  store double %polly.access.call1624.load.11, double* %polly.access.Packed_MemRef_call1474627.11, align 8
  %polly.access.add.call1623.12 = add nuw nsw i64 %177, 12
  %polly.access.call1624.12 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.12
  %polly.access.call1624.load.12 = load double, double* %polly.access.call1624.12, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.12 = add nsw i64 %175, 14400
  %polly.access.Packed_MemRef_call1474627.12 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.12
  store double %polly.access.call1624.load.12, double* %polly.access.Packed_MemRef_call1474627.12, align 8
  %polly.access.add.call1623.13 = add nuw nsw i64 %177, 13
  %polly.access.call1624.13 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.13
  %polly.access.call1624.load.13 = load double, double* %polly.access.call1624.13, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.13 = add nsw i64 %175, 15600
  %polly.access.Packed_MemRef_call1474627.13 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.13
  store double %polly.access.call1624.load.13, double* %polly.access.Packed_MemRef_call1474627.13, align 8
  %polly.access.add.call1623.14 = add nuw nsw i64 %177, 14
  %polly.access.call1624.14 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.14
  %polly.access.call1624.load.14 = load double, double* %polly.access.call1624.14, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.14 = add nsw i64 %175, 16800
  %polly.access.Packed_MemRef_call1474627.14 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.14
  store double %polly.access.call1624.load.14, double* %polly.access.Packed_MemRef_call1474627.14, align 8
  %polly.access.add.call1623.15 = add nuw nsw i64 %177, 15
  %polly.access.call1624.15 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.15
  %polly.access.call1624.load.15 = load double, double* %polly.access.call1624.15, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.15 = add nsw i64 %175, 18000
  %polly.access.Packed_MemRef_call1474627.15 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.15
  store double %polly.access.call1624.load.15, double* %polly.access.Packed_MemRef_call1474627.15, align 8
  %polly.access.add.call1623.16 = add nuw nsw i64 %177, 16
  %polly.access.call1624.16 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.16
  %polly.access.call1624.load.16 = load double, double* %polly.access.call1624.16, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.16 = add nsw i64 %175, 19200
  %polly.access.Packed_MemRef_call1474627.16 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.16
  store double %polly.access.call1624.load.16, double* %polly.access.Packed_MemRef_call1474627.16, align 8
  %polly.access.add.call1623.17 = add nuw nsw i64 %177, 17
  %polly.access.call1624.17 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.17
  %polly.access.call1624.load.17 = load double, double* %polly.access.call1624.17, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.17 = add nsw i64 %175, 20400
  %polly.access.Packed_MemRef_call1474627.17 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.17
  store double %polly.access.call1624.load.17, double* %polly.access.Packed_MemRef_call1474627.17, align 8
  %polly.access.add.call1623.18 = add nuw nsw i64 %177, 18
  %polly.access.call1624.18 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.18
  %polly.access.call1624.load.18 = load double, double* %polly.access.call1624.18, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.18 = add nsw i64 %175, 21600
  %polly.access.Packed_MemRef_call1474627.18 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.18
  store double %polly.access.call1624.load.18, double* %polly.access.Packed_MemRef_call1474627.18, align 8
  %polly.access.add.call1623.19 = add nuw nsw i64 %177, 19
  %polly.access.call1624.19 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.19
  %polly.access.call1624.load.19 = load double, double* %polly.access.call1624.19, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.19 = add nsw i64 %175, 22800
  %polly.access.Packed_MemRef_call1474627.19 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.19
  store double %polly.access.call1624.load.19, double* %polly.access.Packed_MemRef_call1474627.19, align 8
  br label %polly.loop_exit630

polly.loop_exit630:                               ; preds = %polly.loop_exit637.loopexit.us, %polly.loop_header592.split, %polly.loop_header599.preheader, %polly.loop_header628.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598 = icmp ult i64 %polly.indvar596, 79
  %indvars.iv.next1031 = add i64 %indvars.iv1030, 1
  br i1 %polly.loop_cond598, label %polly.loop_header592, label %polly.loop_exit594

polly.loop_header628.preheader:                   ; preds = %polly.merge618.us
  %180 = mul i64 %176, 8000
  %181 = mul i64 %176, 9600
  br i1 %polly.loop_guard6091081, label %polly.loop_header628.us, label %polly.loop_exit630

polly.loop_header628.us:                          ; preds = %polly.loop_header628.preheader, %polly.loop_exit637.loopexit.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.loop_exit637.loopexit.us ], [ 0, %polly.loop_header628.preheader ]
  %182 = add nuw nsw i64 %polly.indvar631.us, %167
  %polly.access.mul.Packed_MemRef_call1474642.us = mul nuw nsw i64 %polly.indvar631.us, 1200
  %183 = shl i64 %182, 3
  %184 = add i64 %183, %180
  %scevgep646.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1474642.us, %175
  %polly.access.Packed_MemRef_call1474654.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1474654.us, align 8
  br label %polly.loop_header635.us

polly.loop_header635.us:                          ; preds = %polly.loop_header628.us, %polly.loop_header635.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_header635.us ], [ 0, %polly.loop_header628.us ]
  %185 = add nuw nsw i64 %polly.indvar639.us, %168
  %polly.access.add.Packed_MemRef_call1474643.us = add nuw nsw i64 %polly.indvar639.us, %polly.access.mul.Packed_MemRef_call1474642.us
  %polly.access.Packed_MemRef_call1474644.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1474644.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_648.us, %_p_scalar_645.us
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %183
  %scevgep649.us = getelementptr i8, i8* %call2, i64 %187
  %scevgep649650.us = bitcast i8* %scevgep649.us to double*
  %_p_scalar_651.us = load double, double* %scevgep649650.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %188 = shl i64 %185, 3
  %189 = add i64 %188, %181
  %scevgep656.us = getelementptr i8, i8* %call, i64 %189
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_658.us
  store double %p_add42.i.us, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar639.us, %smin1035
  br i1 %exitcond1036.not, label %polly.loop_exit637.loopexit.us, label %polly.loop_header635.us

polly.loop_exit637.loopexit.us:                   ; preds = %polly.loop_header635.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next632.us, 20
  br i1 %exitcond1037.not, label %polly.loop_exit630, label %polly.loop_header628.us

polly.loop_header785:                             ; preds = %entry, %polly.loop_exit793
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit793 ], [ 0, %entry ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %entry ]
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %190 = shl nsw i64 %polly.indvar788, 5
  %191 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1074.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond1074.not, label %polly.loop_header812, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %192 = mul nsw i64 %polly.indvar794, -32
  %smin = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin, 1200
  %smin1067 = call i64 @llvm.smin.i64(i64 %indvars.iv1065, i64 -1168)
  %194 = shl nsw i64 %polly.indvar794, 5
  %195 = add nsw i64 %smin1067, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -32
  %exitcond1073.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond1073.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %196 = add nuw nsw i64 %polly.indvar800, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header803, label %vector.ph1103

vector.ph1103:                                    ; preds = %polly.loop_header797
  %broadcast.splatinsert1110 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat1111 = shufflevector <4 x i64> %broadcast.splatinsert1110, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1103
  %index1104 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1105, %vector.body1102 ]
  %vec.ind1108 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1103 ], [ %vec.ind.next1109, %vector.body1102 ]
  %199 = add nuw nsw <4 x i64> %vec.ind1108, %broadcast.splat1111
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat1113, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !94, !noalias !96
  %index.next1105 = add i64 %index1104, 4
  %vec.ind.next1109 = add <4 x i64> %vec.ind1108, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next1105, %193
  br i1 %211, label %polly.loop_exit805, label %vector.body1102, !llvm.loop !99

polly.loop_exit805:                               ; preds = %vector.body1102, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar800, %191
  br i1 %exitcond1072.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %212 = add nuw nsw i64 %polly.indvar806, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep809 = getelementptr i8, i8* %call, i64 %218
  %scevgep809810 = bitcast i8* %scevgep809 to double*
  store double %p_div33.i, double* %scevgep809810, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar806, %195
  br i1 %exitcond1068.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !100

polly.loop_header812:                             ; preds = %polly.loop_exit793, %polly.loop_exit820
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit820 ], [ 0, %polly.loop_exit793 ]
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_exit793 ]
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -1168)
  %219 = shl nsw i64 %polly.indvar815, 5
  %220 = add nsw i64 %smin1061, 1199
  br label %polly.loop_header818

polly.loop_exit820:                               ; preds = %polly.loop_exit826
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1064.not = icmp eq i64 %polly.indvar_next816, 38
  br i1 %exitcond1064.not, label %polly.loop_header838, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_exit826, %polly.loop_header812
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit826 ], [ 0, %polly.loop_header812 ]
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_header812 ]
  %221 = mul nsw i64 %polly.indvar821, -32
  %smin1117 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin1117, 1000
  %smin1057 = call i64 @llvm.smin.i64(i64 %indvars.iv1055, i64 -968)
  %223 = shl nsw i64 %polly.indvar821, 5
  %224 = add nsw i64 %smin1057, 999
  br label %polly.loop_header824

polly.loop_exit826:                               ; preds = %polly.loop_exit832
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next822, 32
  br i1 %exitcond1063.not, label %polly.loop_exit820, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_exit832, %polly.loop_header818
  %polly.indvar827 = phi i64 [ 0, %polly.loop_header818 ], [ %polly.indvar_next828, %polly.loop_exit832 ]
  %225 = add nuw nsw i64 %polly.indvar827, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check1118 = icmp eq i64 %222, 0
  br i1 %min.iters.check1118, label %polly.loop_header830, label %vector.ph1119

vector.ph1119:                                    ; preds = %polly.loop_header824
  %broadcast.splatinsert1128 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat1129 = shufflevector <4 x i64> %broadcast.splatinsert1128, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1130 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat1131 = shufflevector <4 x i32> %broadcast.splatinsert1130, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1119
  %index1122 = phi i64 [ 0, %vector.ph1119 ], [ %index.next1123, %vector.body1116 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1119 ], [ %vec.ind.next1127, %vector.body1116 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1126, %broadcast.splat1129
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1131, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !98, !noalias !101
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1123, %222
  br i1 %240, label %polly.loop_exit832, label %vector.body1116, !llvm.loop !102

polly.loop_exit832:                               ; preds = %vector.body1116, %polly.loop_header830
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar827, %220
  br i1 %exitcond1062.not, label %polly.loop_exit826, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_header824, %polly.loop_header830
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_header830 ], [ 0, %polly.loop_header824 ]
  %241 = add nuw nsw i64 %polly.indvar833, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep836 = getelementptr i8, i8* %call2, i64 %247
  %scevgep836837 = bitcast i8* %scevgep836 to double*
  store double %p_div12.i, double* %scevgep836837, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar833, %224
  br i1 %exitcond1058.not, label %polly.loop_exit832, label %polly.loop_header830, !llvm.loop !103

polly.loop_header838:                             ; preds = %polly.loop_exit820, %polly.loop_exit846
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit846 ], [ 0, %polly.loop_exit820 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_exit820 ]
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -1168)
  %248 = shl nsw i64 %polly.indvar841, 5
  %249 = add nsw i64 %smin1051, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1054.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1054.not, label %init_array.exit, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %250 = mul nsw i64 %polly.indvar847, -32
  %smin1135 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin1135, 1000
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1045, i64 -968)
  %252 = shl nsw i64 %polly.indvar847, 5
  %253 = add nsw i64 %smin1047, 999
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1053.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %254 = add nuw nsw i64 %polly.indvar853, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check1136 = icmp eq i64 %251, 0
  br i1 %min.iters.check1136, label %polly.loop_header856, label %vector.ph1137

vector.ph1137:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1146 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat1147 = shufflevector <4 x i64> %broadcast.splatinsert1146, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %vector.ph1137
  %index1140 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1141, %vector.body1134 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1137 ], [ %vec.ind.next1145, %vector.body1134 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1144, %broadcast.splat1147
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1149, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !97, !noalias !104
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1141, %251
  br i1 %269, label %polly.loop_exit858, label %vector.body1134, !llvm.loop !105

polly.loop_exit858:                               ; preds = %vector.body1134, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar853, %249
  br i1 %exitcond1052.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %270 = add nuw nsw i64 %polly.indvar859, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep863 = getelementptr i8, i8* %call1, i64 %276
  %scevgep863864 = bitcast i8* %scevgep863 to double*
  store double %p_div.i, double* %scevgep863864, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar859, %253
  br i1 %exitcond1048.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !106
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 80}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
