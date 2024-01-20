; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4471.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4471.c"
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
  %call801 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1653 = bitcast i8* %call1 to double*
  %polly.access.call1662 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1662, %call2
  %polly.access.call2682 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2682, %call1
  %2 = or i1 %0, %1
  %polly.access.call702 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call702, %call2
  %4 = icmp ule i8* %polly.access.call2682, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call702, %call1
  %8 = icmp ule i8* %polly.access.call1662, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header775, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv7.i, i64 %index1085
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit836
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start464, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i, i64 %index1150
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting465
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start277, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i52, i64 %index1173
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting278
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i91, i64 %index1199
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call801, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond983.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond983.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond982.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond982.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv978 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next979, %polly.loop_exit207 ]
  %indvars.iv967 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next968, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv978, 5
  %98 = mul nsw i64 %polly.indvar202, -20
  %99 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 20
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 2
  %exitcond981.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond981.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %polly.loop_exit213 ], [ %indvars.iv967, %polly.loop_header199 ]
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %100 = mul nuw nsw i64 %polly.indvar208, 50
  %101 = add nsw i64 %100, %98
  %102 = icmp sgt i64 %101, 0
  %103 = select i1 %102, i64 %101, i64 0
  %polly.loop_guard = icmp slt i64 %103, 20
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv965, i64 0)
  %104 = add i64 %smax, %indvars.iv969
  %105 = sub nsw i64 %99, %100
  %106 = add nuw nsw i64 %100, 50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit244, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, 50
  %indvars.iv.next970 = add nsw i64 %indvars.iv969, -50
  %exitcond980.not = icmp eq i64 %polly.indvar208, %97
  br i1 %exitcond980.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit244
  %indvars.iv971 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next972, %polly.loop_exit244 ]
  %polly.indvar214 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit244 ]
  %smin975 = call i64 @llvm.smin.i64(i64 %indvars.iv971, i64 49)
  %107 = add nsw i64 %polly.indvar214, %105
  %polly.loop_guard2271066 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar214, %99
  %.not = icmp ult i64 %108, %106
  %polly.access.mul.call1236 = mul nsw i64 %108, 1000
  br i1 %polly.loop_guard2271066, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %109 = add nuw nsw i64 %polly.indvar228.us, %100
  %polly.access.mul.call1232.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1233.us = add nuw nsw i64 %polly.access.mul.call1232.us, %polly.indvar220.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond973.not = icmp eq i64 %polly.indvar228.us, %smin975
  br i1 %exitcond973.not, label %polly.cond.loopexit.us, label %polly.loop_header224.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1236
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1240.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond974.not, label %polly.loop_header242.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header224.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %.not, label %polly.loop_exit244, label %polly.loop_header217

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header211.split, %polly.loop_header242.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 19
  %indvars.iv.next972 = add i64 %indvars.iv971, 1
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1237 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1236
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.Packed_MemRef_call1240 = add nsw i64 %polly.access.mul.Packed_MemRef_call1239, %107
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header217

polly.loop_header242.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %110 = mul i64 %108, 8000
  %111 = mul i64 %108, 9600
  br i1 %polly.loop_guard2271066, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %112 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep260.us = getelementptr i8, i8* %call2, i64 %112
  %polly.access.mul.Packed_MemRef_call1256.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  %scevgep261.us = getelementptr i8, i8* %scevgep260.us, i64 %110
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1269.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1256.us, %107
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_header249.us, %polly.loop_header242.us
  %polly.indvar253.us = phi i64 [ 0, %polly.loop_header242.us ], [ %polly.indvar_next254.us, %polly.loop_header249.us ]
  %113 = add nuw nsw i64 %polly.indvar253.us, %100
  %polly.access.add.Packed_MemRef_call1257.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1256.us
  %polly.access.Packed_MemRef_call1258.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call1258.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_263.us, %_p_scalar_259.us
  %114 = mul nuw nsw i64 %113, 8000
  %scevgep265.us = getelementptr i8, i8* %scevgep260.us, i64 %114
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_271.us, %_p_scalar_267.us
  %115 = shl i64 %113, 3
  %116 = add i64 %115, %111
  %scevgep272.us = getelementptr i8, i8* %call, i64 %116
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_274.us
  store double %p_add42.i118.us, double* %scevgep272273.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond976.not = icmp eq i64 %polly.indvar253.us, %smin975
  br i1 %exitcond976.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_header249.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next246.us, 1000
  br i1 %exitcond977.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.start277:                                   ; preds = %kernel_syr2k.exit
  %malloccall279 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header363

polly.exiting278:                                 ; preds = %polly.loop_exit388
  tail call void @free(i8* %malloccall279)
  br label %kernel_syr2k.exit90

polly.loop_header363:                             ; preds = %polly.loop_exit371, %polly.start277
  %indvar1181 = phi i64 [ %indvar.next1182, %polly.loop_exit371 ], [ 0, %polly.start277 ]
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 1, %polly.start277 ]
  %117 = add i64 %indvar1181, 1
  %118 = mul nuw nsw i64 %polly.indvar366, 9600
  %scevgep375 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1183 = icmp ult i64 %117, 4
  br i1 %min.iters.check1183, label %polly.loop_header369.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header363
  %n.vec1186 = and i64 %117, -4
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1180 ]
  %119 = shl nuw nsw i64 %index1187, 3
  %120 = getelementptr i8, i8* %scevgep375, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !74, !noalias !76
  %122 = fmul fast <4 x double> %wide.load1191, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %index.next1188 = add i64 %index1187, 4
  %124 = icmp eq i64 %index.next1188, %n.vec1186
  br i1 %124, label %middle.block1178, label %vector.body1180, !llvm.loop !80

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1190 = icmp eq i64 %117, %n.vec1186
  br i1 %cmp.n1190, label %polly.loop_exit371, label %polly.loop_header369.preheader

polly.loop_header369.preheader:                   ; preds = %polly.loop_header363, %middle.block1178
  %polly.indvar372.ph = phi i64 [ 0, %polly.loop_header363 ], [ %n.vec1186, %middle.block1178 ]
  br label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_header369, %middle.block1178
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next367, 1200
  %indvar.next1182 = add i64 %indvar1181, 1
  br i1 %exitcond1007.not, label %polly.loop_header379.preheader, label %polly.loop_header363

polly.loop_header379.preheader:                   ; preds = %polly.loop_exit371
  %Packed_MemRef_call1280 = bitcast i8* %malloccall279 to double*
  br label %polly.loop_header379

polly.loop_header369:                             ; preds = %polly.loop_header369.preheader, %polly.loop_header369
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_header369 ], [ %polly.indvar372.ph, %polly.loop_header369.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar372, 3
  %scevgep376 = getelementptr i8, i8* %scevgep375, i64 %125
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_378, 1.200000e+00
  store double %p_mul.i57, double* %scevgep376377, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next373, %polly.indvar366
  br i1 %exitcond1006.not, label %polly.loop_exit371, label %polly.loop_header369, !llvm.loop !81

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_exit388
  %indvars.iv1002 = phi i64 [ 1, %polly.loop_header379.preheader ], [ %indvars.iv.next1003, %polly.loop_exit388 ]
  %indvars.iv990 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next991, %polly.loop_exit388 ]
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %indvars.iv.next986, %polly.loop_exit388 ]
  %polly.indvar382 = phi i64 [ 0, %polly.loop_header379.preheader ], [ %polly.indvar_next383, %polly.loop_exit388 ]
  %126 = udiv i64 %indvars.iv1002, 5
  %127 = mul nsw i64 %polly.indvar382, -20
  %128 = mul nuw nsw i64 %polly.indvar382, 20
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit395
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, -20
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 20
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 2
  %exitcond1005.not = icmp eq i64 %polly.indvar_next383, 60
  br i1 %exitcond1005.not, label %polly.exiting278, label %polly.loop_header379

polly.loop_header386:                             ; preds = %polly.loop_exit395, %polly.loop_header379
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit395 ], [ %indvars.iv990, %polly.loop_header379 ]
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit395 ], [ %indvars.iv985, %polly.loop_header379 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit395 ], [ 0, %polly.loop_header379 ]
  %129 = mul nuw nsw i64 %polly.indvar389, 50
  %130 = add nsw i64 %129, %127
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %polly.loop_guard396 = icmp slt i64 %132, 20
  br i1 %polly.loop_guard396, label %polly.loop_header393.preheader, label %polly.loop_exit395

polly.loop_header393.preheader:                   ; preds = %polly.loop_header386
  %smax989 = call i64 @llvm.smax.i64(i64 %indvars.iv987, i64 0)
  %133 = add i64 %smax989, %indvars.iv992
  %134 = sub nsw i64 %128, %129
  %135 = add nuw nsw i64 %129, 50
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit431, %polly.loop_header386
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, 50
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, -50
  %exitcond1004.not = icmp eq i64 %polly.indvar389, %126
  br i1 %exitcond1004.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header393:                             ; preds = %polly.loop_header393.preheader, %polly.loop_exit431
  %indvars.iv994 = phi i64 [ %133, %polly.loop_header393.preheader ], [ %indvars.iv.next995, %polly.loop_exit431 ]
  %polly.indvar397 = phi i64 [ %132, %polly.loop_header393.preheader ], [ %polly.indvar_next398, %polly.loop_exit431 ]
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv994, i64 49)
  %136 = add nsw i64 %polly.indvar397, %134
  %polly.loop_guard4101067 = icmp sgt i64 %136, -1
  %137 = add nuw nsw i64 %polly.indvar397, %128
  %.not855 = icmp ult i64 %137, %135
  %polly.access.mul.call1423 = mul nsw i64 %137, 1000
  br i1 %polly.loop_guard4101067, label %polly.loop_header400.us, label %polly.loop_header393.split

polly.loop_header400.us:                          ; preds = %polly.loop_header393, %polly.merge419.us
  %polly.indvar403.us = phi i64 [ %polly.indvar_next404.us, %polly.merge419.us ], [ 0, %polly.loop_header393 ]
  %polly.access.mul.Packed_MemRef_call1280.us = mul nuw nsw i64 %polly.indvar403.us, 1200
  br label %polly.loop_header407.us

polly.loop_header407.us:                          ; preds = %polly.loop_header400.us, %polly.loop_header407.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_header407.us ], [ 0, %polly.loop_header400.us ]
  %138 = add nuw nsw i64 %polly.indvar411.us, %129
  %polly.access.mul.call1415.us = mul nuw nsw i64 %138, 1000
  %polly.access.add.call1416.us = add nuw nsw i64 %polly.access.mul.call1415.us, %polly.indvar403.us
  %polly.access.call1417.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1416.us
  %polly.access.call1417.load.us = load double, double* %polly.access.call1417.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar411.us, %polly.access.mul.Packed_MemRef_call1280.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280.us
  store double %polly.access.call1417.load.us, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar411.us, %smin999
  br i1 %exitcond997.not, label %polly.cond418.loopexit.us, label %polly.loop_header407.us

polly.then420.us:                                 ; preds = %polly.cond418.loopexit.us
  %polly.access.add.call1424.us = add nuw nsw i64 %polly.indvar403.us, %polly.access.mul.call1423
  %polly.access.call1425.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1424.us
  %polly.access.call1425.load.us = load double, double* %polly.access.call1425.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1280427.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280.us, %136
  %polly.access.Packed_MemRef_call1280428.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280427.us
  store double %polly.access.call1425.load.us, double* %polly.access.Packed_MemRef_call1280428.us, align 8
  br label %polly.merge419.us

polly.merge419.us:                                ; preds = %polly.then420.us, %polly.cond418.loopexit.us
  %polly.indvar_next404.us = add nuw nsw i64 %polly.indvar403.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next404.us, 1000
  br i1 %exitcond998.not, label %polly.loop_header429.preheader, label %polly.loop_header400.us

polly.cond418.loopexit.us:                        ; preds = %polly.loop_header407.us
  br i1 %.not855, label %polly.merge419.us, label %polly.then420.us

polly.loop_header393.split:                       ; preds = %polly.loop_header393
  br i1 %.not855, label %polly.loop_exit431, label %polly.loop_header400

polly.loop_exit431:                               ; preds = %polly.loop_exit438.loopexit.us, %polly.loop_header393.split, %polly.loop_header429.preheader
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %polly.loop_cond399 = icmp ult i64 %polly.indvar397, 19
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  br i1 %polly.loop_cond399, label %polly.loop_header393, label %polly.loop_exit395

polly.loop_header400:                             ; preds = %polly.loop_header393.split, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ 0, %polly.loop_header393.split ]
  %polly.access.add.call1424 = add nuw nsw i64 %polly.indvar403, %polly.access.mul.call1423
  %polly.access.call1425 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1424
  %polly.access.call1425.load = load double, double* %polly.access.call1425, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1280426 = mul nuw nsw i64 %polly.indvar403, 1200
  %polly.access.add.Packed_MemRef_call1280427 = add nsw i64 %polly.access.mul.Packed_MemRef_call1280426, %136
  %polly.access.Packed_MemRef_call1280428 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280427
  store double %polly.access.call1425.load, double* %polly.access.Packed_MemRef_call1280428, align 8
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next404, 1000
  br i1 %exitcond984.not, label %polly.loop_header429.preheader, label %polly.loop_header400

polly.loop_header429.preheader:                   ; preds = %polly.loop_header400, %polly.merge419.us
  %139 = mul i64 %137, 8000
  %140 = mul i64 %137, 9600
  br i1 %polly.loop_guard4101067, label %polly.loop_header429.us, label %polly.loop_exit431

polly.loop_header429.us:                          ; preds = %polly.loop_header429.preheader, %polly.loop_exit438.loopexit.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.loop_exit438.loopexit.us ], [ 0, %polly.loop_header429.preheader ]
  %141 = shl nuw nsw i64 %polly.indvar432.us, 3
  %scevgep447.us = getelementptr i8, i8* %call2, i64 %141
  %polly.access.mul.Packed_MemRef_call1280443.us = mul nuw nsw i64 %polly.indvar432.us, 1200
  %scevgep448.us = getelementptr i8, i8* %scevgep447.us, i64 %139
  %scevgep448449.us = bitcast i8* %scevgep448.us to double*
  %_p_scalar_450.us = load double, double* %scevgep448449.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1280456.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1280443.us, %136
  %polly.access.Packed_MemRef_call1280457.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280456.us
  %_p_scalar_458.us = load double, double* %polly.access.Packed_MemRef_call1280457.us, align 8
  br label %polly.loop_header436.us

polly.loop_header436.us:                          ; preds = %polly.loop_header436.us, %polly.loop_header429.us
  %polly.indvar440.us = phi i64 [ 0, %polly.loop_header429.us ], [ %polly.indvar_next441.us, %polly.loop_header436.us ]
  %142 = add nuw nsw i64 %polly.indvar440.us, %129
  %polly.access.add.Packed_MemRef_call1280444.us = add nuw nsw i64 %polly.indvar440.us, %polly.access.mul.Packed_MemRef_call1280443.us
  %polly.access.Packed_MemRef_call1280445.us = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280444.us
  %_p_scalar_446.us = load double, double* %polly.access.Packed_MemRef_call1280445.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_450.us, %_p_scalar_446.us
  %143 = mul nuw nsw i64 %142, 8000
  %scevgep452.us = getelementptr i8, i8* %scevgep447.us, i64 %143
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_458.us, %_p_scalar_454.us
  %144 = shl i64 %142, 3
  %145 = add i64 %144, %140
  %scevgep459.us = getelementptr i8, i8* %call, i64 %145
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_461.us
  store double %p_add42.i79.us, double* %scevgep459460.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next441.us = add nuw nsw i64 %polly.indvar440.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar440.us, %smin999
  br i1 %exitcond1000.not, label %polly.loop_exit438.loopexit.us, label %polly.loop_header436.us

polly.loop_exit438.loopexit.us:                   ; preds = %polly.loop_header436.us
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next433.us, 1000
  br i1 %exitcond1001.not, label %polly.loop_exit431, label %polly.loop_header429.us

polly.start464:                                   ; preds = %init_array.exit
  %malloccall466 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header550

polly.exiting465:                                 ; preds = %polly.loop_exit575
  tail call void @free(i8* %malloccall466)
  br label %kernel_syr2k.exit

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.start464
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit558 ], [ 0, %polly.start464 ]
  %polly.indvar553 = phi i64 [ %polly.indvar_next554, %polly.loop_exit558 ], [ 1, %polly.start464 ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar553, 9600
  %scevgep562 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1157 = icmp ult i64 %146, 4
  br i1 %min.iters.check1157, label %polly.loop_header556.preheader, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header550
  %n.vec1160 = and i64 %146, -4
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1156 ]
  %148 = shl nuw nsw i64 %index1161, 3
  %149 = getelementptr i8, i8* %scevgep562, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1165 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %151 = fmul fast <4 x double> %wide.load1165, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !84, !noalias !86
  %index.next1162 = add i64 %index1161, 4
  %153 = icmp eq i64 %index.next1162, %n.vec1160
  br i1 %153, label %middle.block1154, label %vector.body1156, !llvm.loop !90

middle.block1154:                                 ; preds = %vector.body1156
  %cmp.n1164 = icmp eq i64 %146, %n.vec1160
  br i1 %cmp.n1164, label %polly.loop_exit558, label %polly.loop_header556.preheader

polly.loop_header556.preheader:                   ; preds = %polly.loop_header550, %middle.block1154
  %polly.indvar559.ph = phi i64 [ 0, %polly.loop_header550 ], [ %n.vec1160, %middle.block1154 ]
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556, %middle.block1154
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next554, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1031.not, label %polly.loop_header566.preheader, label %polly.loop_header550

polly.loop_header566.preheader:                   ; preds = %polly.loop_exit558
  %Packed_MemRef_call1467 = bitcast i8* %malloccall466 to double*
  br label %polly.loop_header566

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_header556
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_header556 ], [ %polly.indvar559.ph, %polly.loop_header556.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar559, 3
  %scevgep563 = getelementptr i8, i8* %scevgep562, i64 %154
  %scevgep563564 = bitcast i8* %scevgep563 to double*
  %_p_scalar_565 = load double, double* %scevgep563564, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_565, 1.200000e+00
  store double %p_mul.i, double* %scevgep563564, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next560, %polly.indvar553
  br i1 %exitcond1030.not, label %polly.loop_exit558, label %polly.loop_header556, !llvm.loop !91

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_exit575
  %indvars.iv1026 = phi i64 [ 1, %polly.loop_header566.preheader ], [ %indvars.iv.next1027, %polly.loop_exit575 ]
  %indvars.iv1014 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %indvars.iv.next1015, %polly.loop_exit575 ]
  %indvars.iv1009 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %indvars.iv.next1010, %polly.loop_exit575 ]
  %polly.indvar569 = phi i64 [ 0, %polly.loop_header566.preheader ], [ %polly.indvar_next570, %polly.loop_exit575 ]
  %155 = udiv i64 %indvars.iv1026, 5
  %156 = mul nsw i64 %polly.indvar569, -20
  %157 = mul nuw nsw i64 %polly.indvar569, 20
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, -20
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 20
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 2
  %exitcond1029.not = icmp eq i64 %polly.indvar_next570, 60
  br i1 %exitcond1029.not, label %polly.exiting465, label %polly.loop_header566

polly.loop_header573:                             ; preds = %polly.loop_exit582, %polly.loop_header566
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit582 ], [ %indvars.iv1014, %polly.loop_header566 ]
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit582 ], [ %indvars.iv1009, %polly.loop_header566 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ 0, %polly.loop_header566 ]
  %158 = mul nuw nsw i64 %polly.indvar576, 50
  %159 = add nsw i64 %158, %156
  %160 = icmp sgt i64 %159, 0
  %161 = select i1 %160, i64 %159, i64 0
  %polly.loop_guard583 = icmp slt i64 %161, 20
  br i1 %polly.loop_guard583, label %polly.loop_header580.preheader, label %polly.loop_exit582

polly.loop_header580.preheader:                   ; preds = %polly.loop_header573
  %smax1013 = call i64 @llvm.smax.i64(i64 %indvars.iv1011, i64 0)
  %162 = add i64 %smax1013, %indvars.iv1016
  %163 = sub nsw i64 %157, %158
  %164 = add nuw nsw i64 %158, 50
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit618, %polly.loop_header573
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, 50
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -50
  %exitcond1028.not = icmp eq i64 %polly.indvar576, %155
  br i1 %exitcond1028.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header580:                             ; preds = %polly.loop_header580.preheader, %polly.loop_exit618
  %indvars.iv1018 = phi i64 [ %162, %polly.loop_header580.preheader ], [ %indvars.iv.next1019, %polly.loop_exit618 ]
  %polly.indvar584 = phi i64 [ %161, %polly.loop_header580.preheader ], [ %polly.indvar_next585, %polly.loop_exit618 ]
  %smin1023 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 49)
  %165 = add nsw i64 %polly.indvar584, %163
  %polly.loop_guard5971068 = icmp sgt i64 %165, -1
  %166 = add nuw nsw i64 %polly.indvar584, %157
  %.not856 = icmp ult i64 %166, %164
  %polly.access.mul.call1610 = mul nsw i64 %166, 1000
  br i1 %polly.loop_guard5971068, label %polly.loop_header587.us, label %polly.loop_header580.split

polly.loop_header587.us:                          ; preds = %polly.loop_header580, %polly.merge606.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.merge606.us ], [ 0, %polly.loop_header580 ]
  %polly.access.mul.Packed_MemRef_call1467.us = mul nuw nsw i64 %polly.indvar590.us, 1200
  br label %polly.loop_header594.us

polly.loop_header594.us:                          ; preds = %polly.loop_header587.us, %polly.loop_header594.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header594.us ], [ 0, %polly.loop_header587.us ]
  %167 = add nuw nsw i64 %polly.indvar598.us, %158
  %polly.access.mul.call1602.us = mul nuw nsw i64 %167, 1000
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.access.mul.call1602.us, %polly.indvar590.us
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1467.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call1467.us
  %polly.access.Packed_MemRef_call1467.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1467.us, align 8
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar598.us, %smin1023
  br i1 %exitcond1021.not, label %polly.cond605.loopexit.us, label %polly.loop_header594.us

polly.then607.us:                                 ; preds = %polly.cond605.loopexit.us
  %polly.access.add.call1611.us = add nuw nsw i64 %polly.indvar590.us, %polly.access.mul.call1610
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1467614.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1467.us, %165
  %polly.access.Packed_MemRef_call1467615.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467614.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1467615.us, align 8
  br label %polly.merge606.us

polly.merge606.us:                                ; preds = %polly.then607.us, %polly.cond605.loopexit.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next591.us, 1000
  br i1 %exitcond1022.not, label %polly.loop_header616.preheader, label %polly.loop_header587.us

polly.cond605.loopexit.us:                        ; preds = %polly.loop_header594.us
  br i1 %.not856, label %polly.merge606.us, label %polly.then607.us

polly.loop_header580.split:                       ; preds = %polly.loop_header580
  br i1 %.not856, label %polly.loop_exit618, label %polly.loop_header587

polly.loop_exit618:                               ; preds = %polly.loop_exit625.loopexit.us, %polly.loop_header580.split, %polly.loop_header616.preheader
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586 = icmp ult i64 %polly.indvar584, 19
  %indvars.iv.next1019 = add i64 %indvars.iv1018, 1
  br i1 %polly.loop_cond586, label %polly.loop_header580, label %polly.loop_exit582

polly.loop_header587:                             ; preds = %polly.loop_header580.split, %polly.loop_header587
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_header587 ], [ 0, %polly.loop_header580.split ]
  %polly.access.add.call1611 = add nuw nsw i64 %polly.indvar590, %polly.access.mul.call1610
  %polly.access.call1612 = getelementptr double, double* %polly.access.cast.call1653, i64 %polly.access.add.call1611
  %polly.access.call1612.load = load double, double* %polly.access.call1612, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1467613 = mul nuw nsw i64 %polly.indvar590, 1200
  %polly.access.add.Packed_MemRef_call1467614 = add nsw i64 %polly.access.mul.Packed_MemRef_call1467613, %165
  %polly.access.Packed_MemRef_call1467615 = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467614
  store double %polly.access.call1612.load, double* %polly.access.Packed_MemRef_call1467615, align 8
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next591, 1000
  br i1 %exitcond1008.not, label %polly.loop_header616.preheader, label %polly.loop_header587

polly.loop_header616.preheader:                   ; preds = %polly.loop_header587, %polly.merge606.us
  %168 = mul i64 %166, 8000
  %169 = mul i64 %166, 9600
  br i1 %polly.loop_guard5971068, label %polly.loop_header616.us, label %polly.loop_exit618

polly.loop_header616.us:                          ; preds = %polly.loop_header616.preheader, %polly.loop_exit625.loopexit.us
  %polly.indvar619.us = phi i64 [ %polly.indvar_next620.us, %polly.loop_exit625.loopexit.us ], [ 0, %polly.loop_header616.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar619.us, 3
  %scevgep634.us = getelementptr i8, i8* %call2, i64 %170
  %polly.access.mul.Packed_MemRef_call1467630.us = mul nuw nsw i64 %polly.indvar619.us, 1200
  %scevgep635.us = getelementptr i8, i8* %scevgep634.us, i64 %168
  %scevgep635636.us = bitcast i8* %scevgep635.us to double*
  %_p_scalar_637.us = load double, double* %scevgep635636.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1467643.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1467630.us, %165
  %polly.access.Packed_MemRef_call1467644.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467643.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1467644.us, align 8
  br label %polly.loop_header623.us

polly.loop_header623.us:                          ; preds = %polly.loop_header623.us, %polly.loop_header616.us
  %polly.indvar627.us = phi i64 [ 0, %polly.loop_header616.us ], [ %polly.indvar_next628.us, %polly.loop_header623.us ]
  %171 = add nuw nsw i64 %polly.indvar627.us, %158
  %polly.access.add.Packed_MemRef_call1467631.us = add nuw nsw i64 %polly.indvar627.us, %polly.access.mul.Packed_MemRef_call1467630.us
  %polly.access.Packed_MemRef_call1467632.us = getelementptr double, double* %Packed_MemRef_call1467, i64 %polly.access.add.Packed_MemRef_call1467631.us
  %_p_scalar_633.us = load double, double* %polly.access.Packed_MemRef_call1467632.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_637.us, %_p_scalar_633.us
  %172 = mul nuw nsw i64 %171, 8000
  %scevgep639.us = getelementptr i8, i8* %scevgep634.us, i64 %172
  %scevgep639640.us = bitcast i8* %scevgep639.us to double*
  %_p_scalar_641.us = load double, double* %scevgep639640.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_645.us, %_p_scalar_641.us
  %173 = shl i64 %171, 3
  %174 = add i64 %173, %169
  %scevgep646.us = getelementptr i8, i8* %call, i64 %174
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_648.us
  store double %p_add42.i.us, double* %scevgep646647.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next628.us = add nuw nsw i64 %polly.indvar627.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar627.us, %smin1023
  br i1 %exitcond1024.not, label %polly.loop_exit625.loopexit.us, label %polly.loop_header623.us

polly.loop_exit625.loopexit.us:                   ; preds = %polly.loop_header623.us
  %polly.indvar_next620.us = add nuw nsw i64 %polly.indvar619.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next620.us, 1000
  br i1 %exitcond1025.not, label %polly.loop_exit618, label %polly.loop_header616.us

polly.loop_header775:                             ; preds = %entry, %polly.loop_exit783
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit783 ], [ 0, %entry ]
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %entry ]
  %smin1058 = call i64 @llvm.smin.i64(i64 %indvars.iv1056, i64 -1168)
  %175 = shl nsw i64 %polly.indvar778, 5
  %176 = add nsw i64 %smin1058, 1199
  br label %polly.loop_header781

polly.loop_exit783:                               ; preds = %polly.loop_exit789
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -32
  %exitcond1061.not = icmp eq i64 %polly.indvar_next779, 38
  br i1 %exitcond1061.not, label %polly.loop_header802, label %polly.loop_header775

polly.loop_header781:                             ; preds = %polly.loop_exit789, %polly.loop_header775
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit789 ], [ 0, %polly.loop_header775 ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %polly.loop_header775 ]
  %177 = mul nsw i64 %polly.indvar784, -32
  %smin = call i64 @llvm.smin.i64(i64 %177, i64 -1168)
  %178 = add nsw i64 %smin, 1200
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 -1168)
  %179 = shl nsw i64 %polly.indvar784, 5
  %180 = add nsw i64 %smin1054, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -32
  %exitcond1060.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond1060.not, label %polly.loop_exit783, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %polly.indvar790 = phi i64 [ 0, %polly.loop_header781 ], [ %polly.indvar_next791, %polly.loop_exit795 ]
  %181 = add nuw nsw i64 %polly.indvar790, %175
  %182 = trunc i64 %181 to i32
  %183 = mul nuw nsw i64 %181, 9600
  %min.iters.check = icmp eq i64 %178, 0
  br i1 %min.iters.check, label %polly.loop_header793, label %vector.ph1096

vector.ph1096:                                    ; preds = %polly.loop_header787
  %broadcast.splatinsert1103 = insertelement <4 x i64> poison, i64 %179, i32 0
  %broadcast.splat1104 = shufflevector <4 x i64> %broadcast.splatinsert1103, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1096
  %index1097 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1096 ], [ %vec.ind.next1102, %vector.body1095 ]
  %184 = add nuw nsw <4 x i64> %vec.ind1101, %broadcast.splat1104
  %185 = trunc <4 x i64> %184 to <4 x i32>
  %186 = mul <4 x i32> %broadcast.splat1106, %185
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 1200, i32 1200, i32 1200, i32 1200>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %191 = extractelement <4 x i64> %184, i32 0
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %183
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %190, <4 x double>* %195, align 8, !alias.scope !94, !noalias !96
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %196 = icmp eq i64 %index.next1098, %178
  br i1 %196, label %polly.loop_exit795, label %vector.body1095, !llvm.loop !99

polly.loop_exit795:                               ; preds = %vector.body1095, %polly.loop_header793
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar790, %176
  br i1 %exitcond1059.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_header787, %polly.loop_header793
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_header793 ], [ 0, %polly.loop_header787 ]
  %197 = add nuw nsw i64 %polly.indvar796, %179
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, %182
  %200 = add i32 %199, 3
  %201 = urem i32 %200, 1200
  %p_conv31.i = sitofp i32 %201 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %202 = shl i64 %197, 3
  %203 = add nuw nsw i64 %202, %183
  %scevgep799 = getelementptr i8, i8* %call, i64 %203
  %scevgep799800 = bitcast i8* %scevgep799 to double*
  store double %p_div33.i, double* %scevgep799800, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar796, %180
  br i1 %exitcond1055.not, label %polly.loop_exit795, label %polly.loop_header793, !llvm.loop !100

polly.loop_header802:                             ; preds = %polly.loop_exit783, %polly.loop_exit810
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit810 ], [ 0, %polly.loop_exit783 ]
  %polly.indvar805 = phi i64 [ %polly.indvar_next806, %polly.loop_exit810 ], [ 0, %polly.loop_exit783 ]
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 -1168)
  %204 = shl nsw i64 %polly.indvar805, 5
  %205 = add nsw i64 %smin1048, 1199
  br label %polly.loop_header808

polly.loop_exit810:                               ; preds = %polly.loop_exit816
  %polly.indvar_next806 = add nuw nsw i64 %polly.indvar805, 1
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -32
  %exitcond1051.not = icmp eq i64 %polly.indvar_next806, 38
  br i1 %exitcond1051.not, label %polly.loop_header828, label %polly.loop_header802

polly.loop_header808:                             ; preds = %polly.loop_exit816, %polly.loop_header802
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit816 ], [ 0, %polly.loop_header802 ]
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_header802 ]
  %206 = mul nsw i64 %polly.indvar811, -32
  %smin1110 = call i64 @llvm.smin.i64(i64 %206, i64 -968)
  %207 = add nsw i64 %smin1110, 1000
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 -968)
  %208 = shl nsw i64 %polly.indvar811, 5
  %209 = add nsw i64 %smin1044, 999
  br label %polly.loop_header814

polly.loop_exit816:                               ; preds = %polly.loop_exit822
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -32
  %exitcond1050.not = icmp eq i64 %polly.indvar_next812, 32
  br i1 %exitcond1050.not, label %polly.loop_exit810, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_exit822, %polly.loop_header808
  %polly.indvar817 = phi i64 [ 0, %polly.loop_header808 ], [ %polly.indvar_next818, %polly.loop_exit822 ]
  %210 = add nuw nsw i64 %polly.indvar817, %204
  %211 = trunc i64 %210 to i32
  %212 = mul nuw nsw i64 %210, 8000
  %min.iters.check1111 = icmp eq i64 %207, 0
  br i1 %min.iters.check1111, label %polly.loop_header820, label %vector.ph1112

vector.ph1112:                                    ; preds = %polly.loop_header814
  %broadcast.splatinsert1121 = insertelement <4 x i64> poison, i64 %208, i32 0
  %broadcast.splat1122 = shufflevector <4 x i64> %broadcast.splatinsert1121, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1112
  %index1115 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1116, %vector.body1109 ]
  %vec.ind1119 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1112 ], [ %vec.ind.next1120, %vector.body1109 ]
  %213 = add nuw nsw <4 x i64> %vec.ind1119, %broadcast.splat1122
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat1124, %214
  %216 = add <4 x i32> %215, <i32 2, i32 2, i32 2, i32 2>
  %217 = urem <4 x i32> %216, <i32 1000, i32 1000, i32 1000, i32 1000>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !98, !noalias !101
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1120 = add <4 x i64> %vec.ind1119, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next1116, %207
  br i1 %225, label %polly.loop_exit822, label %vector.body1109, !llvm.loop !102

polly.loop_exit822:                               ; preds = %vector.body1109, %polly.loop_header820
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar817, %205
  br i1 %exitcond1049.not, label %polly.loop_exit816, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_header814, %polly.loop_header820
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_header820 ], [ 0, %polly.loop_header814 ]
  %226 = add nuw nsw i64 %polly.indvar823, %208
  %227 = trunc i64 %226 to i32
  %228 = mul i32 %227, %211
  %229 = add i32 %228, 2
  %230 = urem i32 %229, 1000
  %p_conv10.i = sitofp i32 %230 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %231 = shl i64 %226, 3
  %232 = add nuw nsw i64 %231, %212
  %scevgep826 = getelementptr i8, i8* %call2, i64 %232
  %scevgep826827 = bitcast i8* %scevgep826 to double*
  store double %p_div12.i, double* %scevgep826827, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar823, %209
  br i1 %exitcond1045.not, label %polly.loop_exit822, label %polly.loop_header820, !llvm.loop !103

polly.loop_header828:                             ; preds = %polly.loop_exit810, %polly.loop_exit836
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit836 ], [ 0, %polly.loop_exit810 ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_exit810 ]
  %smin1038 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 -1168)
  %233 = shl nsw i64 %polly.indvar831, 5
  %234 = add nsw i64 %smin1038, 1199
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -32
  %exitcond1041.not = icmp eq i64 %polly.indvar_next832, 38
  br i1 %exitcond1041.not, label %init_array.exit, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_header828 ]
  %235 = mul nsw i64 %polly.indvar837, -32
  %smin1128 = call i64 @llvm.smin.i64(i64 %235, i64 -968)
  %236 = add nsw i64 %smin1128, 1000
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 -968)
  %237 = shl nsw i64 %polly.indvar837, 5
  %238 = add nsw i64 %smin1034, 999
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -32
  %exitcond1040.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond1040.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %polly.indvar843 = phi i64 [ 0, %polly.loop_header834 ], [ %polly.indvar_next844, %polly.loop_exit848 ]
  %239 = add nuw nsw i64 %polly.indvar843, %233
  %240 = trunc i64 %239 to i32
  %241 = mul nuw nsw i64 %239, 8000
  %min.iters.check1129 = icmp eq i64 %236, 0
  br i1 %min.iters.check1129, label %polly.loop_header846, label %vector.ph1130

vector.ph1130:                                    ; preds = %polly.loop_header840
  %broadcast.splatinsert1139 = insertelement <4 x i64> poison, i64 %237, i32 0
  %broadcast.splat1140 = shufflevector <4 x i64> %broadcast.splatinsert1139, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %vector.ph1130
  %index1133 = phi i64 [ 0, %vector.ph1130 ], [ %index.next1134, %vector.body1127 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1130 ], [ %vec.ind.next1138, %vector.body1127 ]
  %242 = add nuw nsw <4 x i64> %vec.ind1137, %broadcast.splat1140
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat1142, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 1200, i32 1200, i32 1200, i32 1200>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add nuw nsw i64 %250, %241
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !97, !noalias !104
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next1134, %236
  br i1 %254, label %polly.loop_exit848, label %vector.body1127, !llvm.loop !105

polly.loop_exit848:                               ; preds = %vector.body1127, %polly.loop_header846
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar843, %234
  br i1 %exitcond1039.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_header840, %polly.loop_header846
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_header846 ], [ 0, %polly.loop_header840 ]
  %255 = add nuw nsw i64 %polly.indvar849, %237
  %256 = trunc i64 %255 to i32
  %257 = mul i32 %256, %240
  %258 = add i32 %257, 1
  %259 = urem i32 %258, 1200
  %p_conv.i = sitofp i32 %259 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %260 = shl i64 %255, 3
  %261 = add nuw nsw i64 %260, %241
  %scevgep853 = getelementptr i8, i8* %call1, i64 %261
  %scevgep853854 = bitcast i8* %scevgep853 to double*
  store double %p_div.i, double* %scevgep853854, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar849, %238
  br i1 %exitcond1035.not, label %polly.loop_exit848, label %polly.loop_header846, !llvm.loop !106
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
!48 = !{!"llvm.loop.tile.size", i32 20}
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
