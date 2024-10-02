; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4955.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4955.c"
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
  %call807 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1659 = bitcast i8* %call1 to double*
  %polly.access.call1668 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1668, %call2
  %polly.access.call2688 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2688, %call1
  %2 = or i1 %0, %1
  %polly.access.call708 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call708, %call2
  %4 = icmp ule i8* %polly.access.call2688, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call708, %call1
  %8 = icmp ule i8* %polly.access.call1668, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header781, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1080 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1079 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1078 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1077 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1077, %scevgep1080
  %bound1 = icmp ult i8* %scevgep1079, %scevgep1078
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
  br i1 %exitcond18.not.i, label %vector.ph1084, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1084:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1091 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1092 = shufflevector <4 x i64> %broadcast.splatinsert1091, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %vector.ph1084
  %index1085 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1084 ], [ %vec.ind.next1090, %vector.body1083 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1089, %broadcast.splat1092
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv7.i, i64 %index1085
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1086, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1083, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1083
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1084, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit842
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start468, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1146 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1146, label %for.body3.i46.preheader1223, label %vector.ph1147

vector.ph1147:                                    ; preds = %for.body3.i46.preheader
  %n.vec1149 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1147
  %index1150 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1151, %vector.body1145 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %index1150
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1151 = add i64 %index1150, 4
  %46 = icmp eq i64 %index.next1151, %n.vec1149
  br i1 %46, label %middle.block1143, label %vector.body1145, !llvm.loop !18

middle.block1143:                                 ; preds = %vector.body1145
  %cmp.n1153 = icmp eq i64 %indvars.iv21.i, %n.vec1149
  br i1 %cmp.n1153, label %for.inc6.i, label %for.body3.i46.preheader1223

for.body3.i46.preheader1223:                      ; preds = %for.body3.i46.preheader, %middle.block1143
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1149, %middle.block1143 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1223, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1223 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1143, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting469
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1169 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1169, label %for.body3.i60.preheader1221, label %vector.ph1170

vector.ph1170:                                    ; preds = %for.body3.i60.preheader
  %n.vec1172 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1170
  %index1173 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1174, %vector.body1168 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1173
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1177 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1177, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1174 = add i64 %index1173, 4
  %57 = icmp eq i64 %index.next1174, %n.vec1172
  br i1 %57, label %middle.block1166, label %vector.body1168, !llvm.loop !55

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1176 = icmp eq i64 %indvars.iv21.i52, %n.vec1172
  br i1 %cmp.n1176, label %for.inc6.i63, label %for.body3.i60.preheader1221

for.body3.i60.preheader1221:                      ; preds = %for.body3.i60.preheader, %middle.block1166
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1172, %middle.block1166 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1221, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1221 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1166, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1195, label %for.body3.i99.preheader1219, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i99.preheader
  %n.vec1198 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1199
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %68 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %68, label %middle.block1192, label %vector.body1194, !llvm.loop !57

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i91, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i102, label %for.body3.i99.preheader1219

for.body3.i99.preheader1219:                      ; preds = %for.body3.i99.preheader, %middle.block1192
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1219, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1219 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1192, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1207 = phi i64 [ %indvar.next1208, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1207, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1209 = icmp ult i64 %88, 4
  br i1 %min.iters.check1209, label %polly.loop_header191.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header
  %n.vec1212 = and i64 %88, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %90 = shl nuw nsw i64 %index1213, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1214 = add i64 %index1213, 4
  %95 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %95, label %middle.block1204, label %vector.body1206, !llvm.loop !69

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %88, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1204
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1204
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond989.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond988.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond988.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv976 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next977, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 1
  %98 = trunc i64 %97 to i8
  %pexp.p_div_q.lhs.trunc = add i8 %98, 2
  %pexp.p_div_q865 = udiv i8 %pexp.p_div_q.lhs.trunc, 5
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q865 to i64
  %99 = sub nsw i64 %97, %pexp.p_div_q.zext
  %polly.loop_guard = icmp sgt i64 %99, -2
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %100 = mul nsw i64 %polly.indvar202, -80
  %101 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit214, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 80
  %exitcond987.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond987.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit214
  %indvars.iv978 = phi i64 [ %indvars.iv976, %polly.loop_header205.preheader ], [ %indvars.iv.next979, %polly.loop_exit214 ]
  %indvars.iv974 = phi i64 [ %indvars.iv, %polly.loop_header205.preheader ], [ %indvars.iv.next975, %polly.loop_exit214 ]
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit214 ]
  %102 = mul nuw nsw i64 %polly.indvar208, 50
  %103 = add nsw i64 %102, %100
  %104 = icmp sgt i64 %103, 0
  %105 = select i1 %104, i64 %103, i64 0
  %polly.loop_guard215 = icmp slt i64 %105, 80
  br i1 %polly.loop_guard215, label %polly.loop_header212.preheader, label %polly.loop_exit214

polly.loop_header212.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv974, i64 0)
  %106 = add i64 %smax, %indvars.iv978
  %107 = sub nsw i64 %101, %102
  %108 = add nuw nsw i64 %102, 50
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit246, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210.not = icmp sgt i64 %polly.indvar208, %99
  %indvars.iv.next975 = add nsw i64 %indvars.iv974, 50
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -50
  br i1 %polly.loop_cond210.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header212:                             ; preds = %polly.loop_header212.preheader, %polly.loop_exit246
  %indvars.iv980 = phi i64 [ %106, %polly.loop_header212.preheader ], [ %indvars.iv.next981, %polly.loop_exit246 ]
  %polly.indvar216 = phi i64 [ %105, %polly.loop_header212.preheader ], [ %polly.indvar_next217, %polly.loop_exit246 ]
  %smin984 = call i64 @llvm.smin.i64(i64 %indvars.iv980, i64 49)
  %109 = add nsw i64 %polly.indvar216, %107
  %polly.loop_guard2291066 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar216, %101
  %.not = icmp ult i64 %110, %108
  %polly.access.mul.call1238 = mul nsw i64 %110, 1000
  br i1 %polly.loop_guard2291066, label %polly.loop_header219.us, label %polly.loop_header212.split

polly.loop_header219.us:                          ; preds = %polly.loop_header212, %polly.merge.us
  %polly.indvar222.us = phi i64 [ %polly.indvar_next223.us, %polly.merge.us ], [ 0, %polly.loop_header212 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar222.us, 1200
  br label %polly.loop_header226.us

polly.loop_header226.us:                          ; preds = %polly.loop_header219.us, %polly.loop_header226.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header226.us ], [ 0, %polly.loop_header219.us ]
  %111 = add nuw nsw i64 %polly.indvar230.us, %102
  %polly.access.mul.call1234.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.access.mul.call1234.us, %polly.indvar222.us
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar230.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar230.us, %smin984
  br i1 %exitcond982.not, label %polly.cond.loopexit.us, label %polly.loop_header226.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1239.us = add nuw nsw i64 %polly.indvar222.us, %polly.access.mul.call1238
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1242.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %109
  %polly.access.Packed_MemRef_call1243.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1242.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1243.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next223.us, 1000
  br i1 %exitcond983.not, label %polly.loop_header244.preheader, label %polly.loop_header219.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header226.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header212.split:                       ; preds = %polly.loop_header212
  br i1 %.not, label %polly.loop_exit246, label %polly.loop_header219

polly.loop_exit246:                               ; preds = %polly.loop_exit253.loopexit.us, %polly.loop_header212.split, %polly.loop_header244.preheader
  %polly.indvar_next217 = add nuw nsw i64 %polly.indvar216, 1
  %polly.loop_cond218 = icmp ult i64 %polly.indvar216, 79
  %indvars.iv.next981 = add i64 %indvars.iv980, 1
  br i1 %polly.loop_cond218, label %polly.loop_header212, label %polly.loop_exit214

polly.loop_header219:                             ; preds = %polly.loop_header212.split, %polly.loop_header219
  %polly.indvar222 = phi i64 [ %polly.indvar_next223, %polly.loop_header219 ], [ 0, %polly.loop_header212.split ]
  %polly.access.add.call1239 = add nuw nsw i64 %polly.indvar222, %polly.access.mul.call1238
  %polly.access.call1240 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1239
  %polly.access.call1240.load = load double, double* %polly.access.call1240, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1241 = mul nuw nsw i64 %polly.indvar222, 1200
  %polly.access.add.Packed_MemRef_call1242 = add nsw i64 %polly.access.mul.Packed_MemRef_call1241, %109
  %polly.access.Packed_MemRef_call1243 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1242
  store double %polly.access.call1240.load, double* %polly.access.Packed_MemRef_call1243, align 8
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next223, 1000
  br i1 %exitcond.not, label %polly.loop_header244.preheader, label %polly.loop_header219

polly.loop_header244.preheader:                   ; preds = %polly.loop_header219, %polly.merge.us
  %112 = mul i64 %110, 8000
  %113 = mul i64 %110, 9600
  br i1 %polly.loop_guard2291066, label %polly.loop_header244.us, label %polly.loop_exit246

polly.loop_header244.us:                          ; preds = %polly.loop_header244.preheader, %polly.loop_exit253.loopexit.us
  %polly.indvar247.us = phi i64 [ %polly.indvar_next248.us, %polly.loop_exit253.loopexit.us ], [ 0, %polly.loop_header244.preheader ]
  %114 = shl nuw nsw i64 %polly.indvar247.us, 3
  %scevgep262.us = getelementptr i8, i8* %call2, i64 %114
  %polly.access.mul.Packed_MemRef_call1258.us = mul nuw nsw i64 %polly.indvar247.us, 1200
  %scevgep263.us = getelementptr i8, i8* %scevgep262.us, i64 %112
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1258.us, %109
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header251.us

polly.loop_header251.us:                          ; preds = %polly.loop_header251.us, %polly.loop_header244.us
  %polly.indvar255.us = phi i64 [ 0, %polly.loop_header244.us ], [ %polly.indvar_next256.us, %polly.loop_header251.us ]
  %115 = add nuw nsw i64 %polly.indvar255.us, %102
  %polly.access.add.Packed_MemRef_call1259.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1258.us
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call1260.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_265.us, %_p_scalar_261.us
  %116 = mul nuw nsw i64 %115, 8000
  %scevgep267.us = getelementptr i8, i8* %scevgep262.us, i64 %116
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %117 = shl i64 %115, 3
  %118 = add i64 %117, %113
  %scevgep274.us = getelementptr i8, i8* %call, i64 %118
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar255.us, %smin984
  br i1 %exitcond985.not, label %polly.loop_exit253.loopexit.us, label %polly.loop_header251.us

polly.loop_exit253.loopexit.us:                   ; preds = %polly.loop_header251.us
  %polly.indvar_next248.us = add nuw nsw i64 %polly.indvar247.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next248.us, 1000
  br i1 %exitcond986.not, label %polly.loop_exit246, label %polly.loop_header244.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1181 = phi i64 [ %indvar.next1182, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %119 = add i64 %indvar1181, 1
  %120 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1183 = icmp ult i64 %119, 4
  br i1 %min.iters.check1183, label %polly.loop_header371.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header365
  %n.vec1186 = and i64 %119, -4
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1180 ]
  %121 = shl nuw nsw i64 %index1187, 3
  %122 = getelementptr i8, i8* %scevgep377, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %124 = fmul fast <4 x double> %wide.load1191, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %index.next1188 = add i64 %index1187, 4
  %126 = icmp eq i64 %index.next1188, %n.vec1186
  br i1 %126, label %middle.block1178, label %vector.body1180, !llvm.loop !80

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1190 = icmp eq i64 %119, %n.vec1186
  br i1 %cmp.n1190, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1178
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1186, %middle.block1178 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1178
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1182 = add i64 %indvar1181, 1
  br i1 %exitcond1010.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %127
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1009.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !81

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit391
  %indvars.iv996 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next997, %polly.loop_exit391 ]
  %indvars.iv991 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next992, %polly.loop_exit391 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit391 ]
  %128 = shl nuw nsw i64 %polly.indvar384, 1
  %129 = trunc i64 %128 to i8
  %pexp.p_div_q387.lhs.trunc = add i8 %129, 2
  %pexp.p_div_q387864 = udiv i8 %pexp.p_div_q387.lhs.trunc, 5
  %pexp.p_div_q387.zext = zext i8 %pexp.p_div_q387864 to i64
  %130 = sub nsw i64 %128, %pexp.p_div_q387.zext
  %polly.loop_guard392 = icmp sgt i64 %130, -2
  br i1 %polly.loop_guard392, label %polly.loop_header389.preheader, label %polly.loop_exit391

polly.loop_header389.preheader:                   ; preds = %polly.loop_header381
  %131 = mul nsw i64 %polly.indvar384, -80
  %132 = mul nuw nsw i64 %polly.indvar384, 80
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit399, %polly.loop_header381
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next992 = add nsw i64 %indvars.iv991, -80
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 80
  %exitcond1008.not = icmp eq i64 %polly.indvar_next385, 15
  br i1 %exitcond1008.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit399
  %indvars.iv998 = phi i64 [ %indvars.iv996, %polly.loop_header389.preheader ], [ %indvars.iv.next999, %polly.loop_exit399 ]
  %indvars.iv993 = phi i64 [ %indvars.iv991, %polly.loop_header389.preheader ], [ %indvars.iv.next994, %polly.loop_exit399 ]
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next394, %polly.loop_exit399 ]
  %133 = mul nuw nsw i64 %polly.indvar393, 50
  %134 = add nsw i64 %133, %131
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard400 = icmp slt i64 %136, 80
  br i1 %polly.loop_guard400, label %polly.loop_header397.preheader, label %polly.loop_exit399

polly.loop_header397.preheader:                   ; preds = %polly.loop_header389
  %smax995 = call i64 @llvm.smax.i64(i64 %indvars.iv993, i64 0)
  %137 = add i64 %smax995, %indvars.iv998
  %138 = sub nsw i64 %132, %133
  %139 = add nuw nsw i64 %133, 50
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit435, %polly.loop_header389
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %polly.loop_cond395.not = icmp sgt i64 %polly.indvar393, %130
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, 50
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, -50
  br i1 %polly.loop_cond395.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header397:                             ; preds = %polly.loop_header397.preheader, %polly.loop_exit435
  %indvars.iv1000 = phi i64 [ %137, %polly.loop_header397.preheader ], [ %indvars.iv.next1001, %polly.loop_exit435 ]
  %polly.indvar401 = phi i64 [ %136, %polly.loop_header397.preheader ], [ %polly.indvar_next402, %polly.loop_exit435 ]
  %smin1005 = call i64 @llvm.smin.i64(i64 %indvars.iv1000, i64 49)
  %140 = add nsw i64 %polly.indvar401, %138
  %polly.loop_guard4141067 = icmp sgt i64 %140, -1
  %141 = add nuw nsw i64 %polly.indvar401, %132
  %.not861 = icmp ult i64 %141, %139
  %polly.access.mul.call1427 = mul nsw i64 %141, 1000
  br i1 %polly.loop_guard4141067, label %polly.loop_header404.us, label %polly.loop_header397.split

polly.loop_header404.us:                          ; preds = %polly.loop_header397, %polly.merge423.us
  %polly.indvar407.us = phi i64 [ %polly.indvar_next408.us, %polly.merge423.us ], [ 0, %polly.loop_header397 ]
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar407.us, 1200
  br label %polly.loop_header411.us

polly.loop_header411.us:                          ; preds = %polly.loop_header404.us, %polly.loop_header411.us
  %polly.indvar415.us = phi i64 [ %polly.indvar_next416.us, %polly.loop_header411.us ], [ 0, %polly.loop_header404.us ]
  %142 = add nuw nsw i64 %polly.indvar415.us, %133
  %polly.access.mul.call1419.us = mul nuw nsw i64 %142, 1000
  %polly.access.add.call1420.us = add nuw nsw i64 %polly.access.mul.call1419.us, %polly.indvar407.us
  %polly.access.call1421.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1420.us
  %polly.access.call1421.load.us = load double, double* %polly.access.call1421.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar415.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1421.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next416.us = add nuw nsw i64 %polly.indvar415.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar415.us, %smin1005
  br i1 %exitcond1003.not, label %polly.cond422.loopexit.us, label %polly.loop_header411.us

polly.then424.us:                                 ; preds = %polly.cond422.loopexit.us
  %polly.access.add.call1428.us = add nuw nsw i64 %polly.indvar407.us, %polly.access.mul.call1427
  %polly.access.call1429.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1428.us
  %polly.access.call1429.load.us = load double, double* %polly.access.call1429.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282431.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %140
  %polly.access.Packed_MemRef_call1282432.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282431.us
  store double %polly.access.call1429.load.us, double* %polly.access.Packed_MemRef_call1282432.us, align 8
  br label %polly.merge423.us

polly.merge423.us:                                ; preds = %polly.then424.us, %polly.cond422.loopexit.us
  %polly.indvar_next408.us = add nuw nsw i64 %polly.indvar407.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next408.us, 1000
  br i1 %exitcond1004.not, label %polly.loop_header433.preheader, label %polly.loop_header404.us

polly.cond422.loopexit.us:                        ; preds = %polly.loop_header411.us
  br i1 %.not861, label %polly.merge423.us, label %polly.then424.us

polly.loop_header397.split:                       ; preds = %polly.loop_header397
  br i1 %.not861, label %polly.loop_exit435, label %polly.loop_header404

polly.loop_exit435:                               ; preds = %polly.loop_exit442.loopexit.us, %polly.loop_header397.split, %polly.loop_header433.preheader
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %polly.loop_cond403 = icmp ult i64 %polly.indvar401, 79
  %indvars.iv.next1001 = add i64 %indvars.iv1000, 1
  br i1 %polly.loop_cond403, label %polly.loop_header397, label %polly.loop_exit399

polly.loop_header404:                             ; preds = %polly.loop_header397.split, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ 0, %polly.loop_header397.split ]
  %polly.access.add.call1428 = add nuw nsw i64 %polly.indvar407, %polly.access.mul.call1427
  %polly.access.call1429 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1428
  %polly.access.call1429.load = load double, double* %polly.access.call1429, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1282430 = mul nuw nsw i64 %polly.indvar407, 1200
  %polly.access.add.Packed_MemRef_call1282431 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282430, %140
  %polly.access.Packed_MemRef_call1282432 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282431
  store double %polly.access.call1429.load, double* %polly.access.Packed_MemRef_call1282432, align 8
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next408, 1000
  br i1 %exitcond990.not, label %polly.loop_header433.preheader, label %polly.loop_header404

polly.loop_header433.preheader:                   ; preds = %polly.loop_header404, %polly.merge423.us
  %143 = mul i64 %141, 8000
  %144 = mul i64 %141, 9600
  br i1 %polly.loop_guard4141067, label %polly.loop_header433.us, label %polly.loop_exit435

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader, %polly.loop_exit442.loopexit.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_exit442.loopexit.us ], [ 0, %polly.loop_header433.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar436.us, 3
  %scevgep451.us = getelementptr i8, i8* %call2, i64 %145
  %polly.access.mul.Packed_MemRef_call1282447.us = mul nuw nsw i64 %polly.indvar436.us, 1200
  %scevgep452.us = getelementptr i8, i8* %scevgep451.us, i64 %143
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282447.us, %140
  %polly.access.Packed_MemRef_call1282461.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us
  %_p_scalar_462.us = load double, double* %polly.access.Packed_MemRef_call1282461.us, align 8
  br label %polly.loop_header440.us

polly.loop_header440.us:                          ; preds = %polly.loop_header440.us, %polly.loop_header433.us
  %polly.indvar444.us = phi i64 [ 0, %polly.loop_header433.us ], [ %polly.indvar_next445.us, %polly.loop_header440.us ]
  %146 = add nuw nsw i64 %polly.indvar444.us, %133
  %polly.access.add.Packed_MemRef_call1282448.us = add nuw nsw i64 %polly.indvar444.us, %polly.access.mul.Packed_MemRef_call1282447.us
  %polly.access.Packed_MemRef_call1282449.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282448.us
  %_p_scalar_450.us = load double, double* %polly.access.Packed_MemRef_call1282449.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_450.us
  %147 = mul nuw nsw i64 %146, 8000
  %scevgep456.us = getelementptr i8, i8* %scevgep451.us, i64 %147
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %148 = shl i64 %146, 3
  %149 = add i64 %148, %144
  %scevgep463.us = getelementptr i8, i8* %call, i64 %149
  %scevgep463464.us = bitcast i8* %scevgep463.us to double*
  %_p_scalar_465.us = load double, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_465.us
  store double %p_add42.i79.us, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next445.us = add nuw nsw i64 %polly.indvar444.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar444.us, %smin1005
  br i1 %exitcond1006.not, label %polly.loop_exit442.loopexit.us, label %polly.loop_header440.us

polly.loop_exit442.loopexit.us:                   ; preds = %polly.loop_header440.us
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next437.us, 1000
  br i1 %exitcond1007.not, label %polly.loop_exit435, label %polly.loop_header433.us

polly.start468:                                   ; preds = %init_array.exit
  %malloccall470 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header554

polly.exiting469:                                 ; preds = %polly.loop_exit580
  tail call void @free(i8* %malloccall470)
  br label %kernel_syr2k.exit

polly.loop_header554:                             ; preds = %polly.loop_exit562, %polly.start468
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit562 ], [ 0, %polly.start468 ]
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_exit562 ], [ 1, %polly.start468 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar557, 9600
  %scevgep566 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1157 = icmp ult i64 %150, 4
  br i1 %min.iters.check1157, label %polly.loop_header560.preheader, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header554
  %n.vec1160 = and i64 %150, -4
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1156 ]
  %152 = shl nuw nsw i64 %index1161, 3
  %153 = getelementptr i8, i8* %scevgep566, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1165 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !84, !noalias !86
  %155 = fmul fast <4 x double> %wide.load1165, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %index.next1162 = add i64 %index1161, 4
  %157 = icmp eq i64 %index.next1162, %n.vec1160
  br i1 %157, label %middle.block1154, label %vector.body1156, !llvm.loop !90

middle.block1154:                                 ; preds = %vector.body1156
  %cmp.n1164 = icmp eq i64 %150, %n.vec1160
  br i1 %cmp.n1164, label %polly.loop_exit562, label %polly.loop_header560.preheader

polly.loop_header560.preheader:                   ; preds = %polly.loop_header554, %middle.block1154
  %polly.indvar563.ph = phi i64 [ 0, %polly.loop_header554 ], [ %n.vec1160, %middle.block1154 ]
  br label %polly.loop_header560

polly.loop_exit562:                               ; preds = %polly.loop_header560, %middle.block1154
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next558, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1031.not, label %polly.loop_header570.preheader, label %polly.loop_header554

polly.loop_header570.preheader:                   ; preds = %polly.loop_exit562
  %Packed_MemRef_call1471 = bitcast i8* %malloccall470 to double*
  br label %polly.loop_header570

polly.loop_header560:                             ; preds = %polly.loop_header560.preheader, %polly.loop_header560
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_header560 ], [ %polly.indvar563.ph, %polly.loop_header560.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar563, 3
  %scevgep567 = getelementptr i8, i8* %scevgep566, i64 %158
  %scevgep567568 = bitcast i8* %scevgep567 to double*
  %_p_scalar_569 = load double, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_569, 1.200000e+00
  store double %p_mul.i, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next564, %polly.indvar557
  br i1 %exitcond1030.not, label %polly.loop_exit562, label %polly.loop_header560, !llvm.loop !91

polly.loop_header570:                             ; preds = %polly.loop_header570.preheader, %polly.loop_exit580
  %indvars.iv1017 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1018, %polly.loop_exit580 ]
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1013, %polly.loop_exit580 ]
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %polly.indvar_next574, %polly.loop_exit580 ]
  %159 = shl nuw nsw i64 %polly.indvar573, 1
  %160 = trunc i64 %159 to i8
  %pexp.p_div_q576.lhs.trunc = add i8 %160, 2
  %pexp.p_div_q576863 = udiv i8 %pexp.p_div_q576.lhs.trunc, 5
  %pexp.p_div_q576.zext = zext i8 %pexp.p_div_q576863 to i64
  %161 = sub nsw i64 %159, %pexp.p_div_q576.zext
  %polly.loop_guard581 = icmp sgt i64 %161, -2
  br i1 %polly.loop_guard581, label %polly.loop_header578.preheader, label %polly.loop_exit580

polly.loop_header578.preheader:                   ; preds = %polly.loop_header570
  %162 = mul nsw i64 %polly.indvar573, -80
  %163 = mul nuw nsw i64 %polly.indvar573, 80
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588, %polly.loop_header570
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -80
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 80
  %exitcond1029.not = icmp eq i64 %polly.indvar_next574, 15
  br i1 %exitcond1029.not, label %polly.exiting469, label %polly.loop_header570

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit588
  %indvars.iv1019 = phi i64 [ %indvars.iv1017, %polly.loop_header578.preheader ], [ %indvars.iv.next1020, %polly.loop_exit588 ]
  %indvars.iv1014 = phi i64 [ %indvars.iv1012, %polly.loop_header578.preheader ], [ %indvars.iv.next1015, %polly.loop_exit588 ]
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next583, %polly.loop_exit588 ]
  %164 = mul nuw nsw i64 %polly.indvar582, 50
  %165 = add nsw i64 %164, %162
  %166 = icmp sgt i64 %165, 0
  %167 = select i1 %166, i64 %165, i64 0
  %polly.loop_guard589 = icmp slt i64 %167, 80
  br i1 %polly.loop_guard589, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %smax1016 = call i64 @llvm.smax.i64(i64 %indvars.iv1014, i64 0)
  %168 = add i64 %smax1016, %indvars.iv1019
  %169 = sub nsw i64 %163, %164
  %170 = add nuw nsw i64 %164, 50
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit624, %polly.loop_header578
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %polly.loop_cond584.not = icmp sgt i64 %polly.indvar582, %161
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, 50
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -50
  br i1 %polly.loop_cond584.not, label %polly.loop_exit580, label %polly.loop_header578

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit624
  %indvars.iv1021 = phi i64 [ %168, %polly.loop_header586.preheader ], [ %indvars.iv.next1022, %polly.loop_exit624 ]
  %polly.indvar590 = phi i64 [ %167, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit624 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1021, i64 49)
  %171 = add nsw i64 %polly.indvar590, %169
  %polly.loop_guard6031068 = icmp sgt i64 %171, -1
  %172 = add nuw nsw i64 %polly.indvar590, %163
  %.not862 = icmp ult i64 %172, %170
  %polly.access.mul.call1616 = mul nsw i64 %172, 1000
  br i1 %polly.loop_guard6031068, label %polly.loop_header593.us, label %polly.loop_header586.split

polly.loop_header593.us:                          ; preds = %polly.loop_header586, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header586 ]
  %polly.access.mul.Packed_MemRef_call1471.us = mul nuw nsw i64 %polly.indvar596.us, 1200
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %173 = add nuw nsw i64 %polly.indvar604.us, %164
  %polly.access.mul.call1608.us = mul nuw nsw i64 %173, 1000
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar596.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1471.us
  %polly.access.Packed_MemRef_call1471.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1471.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar604.us, %smin1026
  br i1 %exitcond1024.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %polly.indvar596.us, %polly.access.mul.call1616
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1471.us, %171
  %polly.access.Packed_MemRef_call1471621.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1471621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next597.us, 1000
  br i1 %exitcond1025.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not862, label %polly.merge612.us, label %polly.then613.us

polly.loop_header586.split:                       ; preds = %polly.loop_header586
  br i1 %.not862, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header586.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592 = icmp ult i64 %polly.indvar590, 79
  %indvars.iv.next1022 = add i64 %indvars.iv1021, 1
  br i1 %polly.loop_cond592, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header593:                             ; preds = %polly.loop_header586.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header586.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %polly.indvar596, %polly.access.mul.call1616
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1471619 = mul nuw nsw i64 %polly.indvar596, 1200
  %polly.access.add.Packed_MemRef_call1471620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1471619, %171
  %polly.access.Packed_MemRef_call1471621 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1471621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next597, 1000
  br i1 %exitcond1011.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %174 = mul i64 %172, 8000
  %175 = mul i64 %172, 9600
  br i1 %polly.loop_guard6031068, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar625.us, 3
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %176
  %polly.access.mul.Packed_MemRef_call1471636.us = mul nuw nsw i64 %polly.indvar625.us, 1200
  %scevgep641.us = getelementptr i8, i8* %scevgep640.us, i64 %174
  %scevgep641642.us = bitcast i8* %scevgep641.us to double*
  %_p_scalar_643.us = load double, double* %scevgep641642.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1471636.us, %171
  %polly.access.Packed_MemRef_call1471650.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1471650.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header629.us, %polly.loop_header622.us
  %polly.indvar633.us = phi i64 [ 0, %polly.loop_header622.us ], [ %polly.indvar_next634.us, %polly.loop_header629.us ]
  %177 = add nuw nsw i64 %polly.indvar633.us, %164
  %polly.access.add.Packed_MemRef_call1471637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1471636.us
  %polly.access.Packed_MemRef_call1471638.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1471638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_643.us, %_p_scalar_639.us
  %178 = mul nuw nsw i64 %177, 8000
  %scevgep645.us = getelementptr i8, i8* %scevgep640.us, i64 %178
  %scevgep645646.us = bitcast i8* %scevgep645.us to double*
  %_p_scalar_647.us = load double, double* %scevgep645646.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_651.us, %_p_scalar_647.us
  %179 = shl i64 %177, 3
  %180 = add i64 %179, %175
  %scevgep652.us = getelementptr i8, i8* %call, i64 %180
  %scevgep652653.us = bitcast i8* %scevgep652.us to double*
  %_p_scalar_654.us = load double, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_654.us
  store double %p_add42.i.us, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar633.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next626.us, 1000
  br i1 %exitcond1028.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header781:                             ; preds = %entry, %polly.loop_exit789
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit789 ], [ 0, %entry ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %entry ]
  %smin1058 = call i64 @llvm.smin.i64(i64 %indvars.iv1056, i64 -1168)
  %181 = shl nsw i64 %polly.indvar784, 5
  %182 = add nsw i64 %smin1058, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -32
  %exitcond1061.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond1061.not, label %polly.loop_header808, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %183 = mul nsw i64 %polly.indvar790, -32
  %smin = call i64 @llvm.smin.i64(i64 %183, i64 -1168)
  %184 = add nsw i64 %smin, 1200
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 -1168)
  %185 = shl nsw i64 %polly.indvar790, 5
  %186 = add nsw i64 %smin1054, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -32
  %exitcond1060.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1060.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %polly.indvar796 = phi i64 [ 0, %polly.loop_header787 ], [ %polly.indvar_next797, %polly.loop_exit801 ]
  %187 = add nuw nsw i64 %polly.indvar796, %181
  %188 = trunc i64 %187 to i32
  %189 = mul nuw nsw i64 %187, 9600
  %min.iters.check = icmp eq i64 %184, 0
  br i1 %min.iters.check, label %polly.loop_header799, label %vector.ph1096

vector.ph1096:                                    ; preds = %polly.loop_header793
  %broadcast.splatinsert1103 = insertelement <4 x i64> poison, i64 %185, i32 0
  %broadcast.splat1104 = shufflevector <4 x i64> %broadcast.splatinsert1103, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1096
  %index1097 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1096 ], [ %vec.ind.next1102, %vector.body1095 ]
  %190 = add nuw nsw <4 x i64> %vec.ind1101, %broadcast.splat1104
  %191 = trunc <4 x i64> %190 to <4 x i32>
  %192 = mul <4 x i32> %broadcast.splat1106, %191
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 1200, i32 1200, i32 1200, i32 1200>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %197 = extractelement <4 x i64> %190, i32 0
  %198 = shl i64 %197, 3
  %199 = add nuw nsw i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %196, <4 x double>* %201, align 8, !alias.scope !94, !noalias !96
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %202 = icmp eq i64 %index.next1098, %184
  br i1 %202, label %polly.loop_exit801, label %vector.body1095, !llvm.loop !99

polly.loop_exit801:                               ; preds = %vector.body1095, %polly.loop_header799
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar796, %182
  br i1 %exitcond1059.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_header793, %polly.loop_header799
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_header799 ], [ 0, %polly.loop_header793 ]
  %203 = add nuw nsw i64 %polly.indvar802, %185
  %204 = trunc i64 %203 to i32
  %205 = mul i32 %204, %188
  %206 = add i32 %205, 3
  %207 = urem i32 %206, 1200
  %p_conv31.i = sitofp i32 %207 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %208 = shl i64 %203, 3
  %209 = add nuw nsw i64 %208, %189
  %scevgep805 = getelementptr i8, i8* %call, i64 %209
  %scevgep805806 = bitcast i8* %scevgep805 to double*
  store double %p_div33.i, double* %scevgep805806, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar802, %186
  br i1 %exitcond1055.not, label %polly.loop_exit801, label %polly.loop_header799, !llvm.loop !100

polly.loop_header808:                             ; preds = %polly.loop_exit789, %polly.loop_exit816
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 -1168)
  %210 = shl nsw i64 %polly.indvar811, 5
  %211 = add nsw i64 %smin1048, 1199
  br label %polly.loop_header814

polly.loop_exit816:                               ; preds = %polly.loop_exit822
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -32
  %exitcond1051.not = icmp eq i64 %polly.indvar_next812, 38
  br i1 %exitcond1051.not, label %polly.loop_header834, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_exit822, %polly.loop_header808
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %212 = mul nsw i64 %polly.indvar817, -32
  %smin1110 = call i64 @llvm.smin.i64(i64 %212, i64 -968)
  %213 = add nsw i64 %smin1110, 1000
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 -968)
  %214 = shl nsw i64 %polly.indvar817, 5
  %215 = add nsw i64 %smin1044, 999
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -32
  %exitcond1050.not = icmp eq i64 %polly.indvar_next818, 32
  br i1 %exitcond1050.not, label %polly.loop_exit816, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %polly.indvar823 = phi i64 [ 0, %polly.loop_header814 ], [ %polly.indvar_next824, %polly.loop_exit828 ]
  %216 = add nuw nsw i64 %polly.indvar823, %210
  %217 = trunc i64 %216 to i32
  %218 = mul nuw nsw i64 %216, 8000
  %min.iters.check1111 = icmp eq i64 %213, 0
  br i1 %min.iters.check1111, label %polly.loop_header826, label %vector.ph1112

vector.ph1112:                                    ; preds = %polly.loop_header820
  %broadcast.splatinsert1121 = insertelement <4 x i64> poison, i64 %214, i32 0
  %broadcast.splat1122 = shufflevector <4 x i64> %broadcast.splatinsert1121, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1112
  %index1115 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1116, %vector.body1109 ]
  %vec.ind1119 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1112 ], [ %vec.ind.next1120, %vector.body1109 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1119, %broadcast.splat1122
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1124, %220
  %222 = add <4 x i32> %221, <i32 2, i32 2, i32 2, i32 2>
  %223 = urem <4 x i32> %222, <i32 1000, i32 1000, i32 1000, i32 1000>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %218
  %229 = getelementptr i8, i8* %call2, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !98, !noalias !101
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1120 = add <4 x i64> %vec.ind1119, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1116, %213
  br i1 %231, label %polly.loop_exit828, label %vector.body1109, !llvm.loop !102

polly.loop_exit828:                               ; preds = %vector.body1109, %polly.loop_header826
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar823, %211
  br i1 %exitcond1049.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_header820, %polly.loop_header826
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_header826 ], [ 0, %polly.loop_header820 ]
  %232 = add nuw nsw i64 %polly.indvar829, %214
  %233 = trunc i64 %232 to i32
  %234 = mul i32 %233, %217
  %235 = add i32 %234, 2
  %236 = urem i32 %235, 1000
  %p_conv10.i = sitofp i32 %236 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %237 = shl i64 %232, 3
  %238 = add nuw nsw i64 %237, %218
  %scevgep832 = getelementptr i8, i8* %call2, i64 %238
  %scevgep832833 = bitcast i8* %scevgep832 to double*
  store double %p_div12.i, double* %scevgep832833, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar829, %215
  br i1 %exitcond1045.not, label %polly.loop_exit828, label %polly.loop_header826, !llvm.loop !103

polly.loop_header834:                             ; preds = %polly.loop_exit816, %polly.loop_exit842
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %smin1038 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 -1168)
  %239 = shl nsw i64 %polly.indvar837, 5
  %240 = add nsw i64 %smin1038, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -32
  %exitcond1041.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1041.not, label %init_array.exit, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %241 = mul nsw i64 %polly.indvar843, -32
  %smin1128 = call i64 @llvm.smin.i64(i64 %241, i64 -968)
  %242 = add nsw i64 %smin1128, 1000
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 -968)
  %243 = shl nsw i64 %polly.indvar843, 5
  %244 = add nsw i64 %smin1034, 999
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -32
  %exitcond1040.not = icmp eq i64 %polly.indvar_next844, 32
  br i1 %exitcond1040.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %polly.indvar849 = phi i64 [ 0, %polly.loop_header840 ], [ %polly.indvar_next850, %polly.loop_exit854 ]
  %245 = add nuw nsw i64 %polly.indvar849, %239
  %246 = trunc i64 %245 to i32
  %247 = mul nuw nsw i64 %245, 8000
  %min.iters.check1129 = icmp eq i64 %242, 0
  br i1 %min.iters.check1129, label %polly.loop_header852, label %vector.ph1130

vector.ph1130:                                    ; preds = %polly.loop_header846
  %broadcast.splatinsert1139 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat1140 = shufflevector <4 x i64> %broadcast.splatinsert1139, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %vector.ph1130
  %index1133 = phi i64 [ 0, %vector.ph1130 ], [ %index.next1134, %vector.body1127 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1130 ], [ %vec.ind.next1138, %vector.body1127 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1137, %broadcast.splat1140
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1142, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 1200, i32 1200, i32 1200, i32 1200>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %247
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !97, !noalias !104
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1134, %242
  br i1 %260, label %polly.loop_exit854, label %vector.body1127, !llvm.loop !105

polly.loop_exit854:                               ; preds = %vector.body1127, %polly.loop_header852
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar849, %240
  br i1 %exitcond1039.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_header846, %polly.loop_header852
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_header852 ], [ 0, %polly.loop_header846 ]
  %261 = add nuw nsw i64 %polly.indvar855, %243
  %262 = trunc i64 %261 to i32
  %263 = mul i32 %262, %246
  %264 = add i32 %263, 1
  %265 = urem i32 %264, 1200
  %p_conv.i = sitofp i32 %265 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %266 = shl i64 %261, 3
  %267 = add nuw nsw i64 %266, %247
  %scevgep859 = getelementptr i8, i8* %call1, i64 %267
  %scevgep859860 = bitcast i8* %scevgep859 to double*
  store double %p_div.i, double* %scevgep859860, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar855, %244
  br i1 %exitcond1035.not, label %polly.loop_exit854, label %polly.loop_header852, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
