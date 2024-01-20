; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3504.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3504.c"
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
  %call809 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1661 = bitcast i8* %call1 to double*
  %polly.access.call1670 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1670, %call2
  %polly.access.call2690 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2690, %call1
  %2 = or i1 %0, %1
  %polly.access.call710 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call710, %call2
  %4 = icmp ule i8* %polly.access.call2690, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call710, %call1
  %8 = icmp ule i8* %polly.access.call1670, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header783, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1091 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1090 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1089 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1088 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1088, %scevgep1091
  %bound1 = icmp ult i8* %scevgep1090, %scevgep1089
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
  br i1 %exitcond18.not.i, label %vector.ph1095, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1095:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1102 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1103 = shufflevector <4 x i64> %broadcast.splatinsert1102, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1095
  %index1096 = phi i64 [ 0, %vector.ph1095 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1095 ], [ %vec.ind.next1101, %vector.body1094 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1100, %broadcast.splat1103
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv7.i, i64 %index1096
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1097, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1094, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1094
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1095, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit844
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1158 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1158, label %for.body3.i46.preheader1235, label %vector.ph1159

vector.ph1159:                                    ; preds = %for.body3.i46.preheader
  %n.vec1161 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1159
  %index1162 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1163, %vector.body1157 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %index1162
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1163 = add i64 %index1162, 4
  %46 = icmp eq i64 %index.next1163, %n.vec1161
  br i1 %46, label %middle.block1155, label %vector.body1157, !llvm.loop !18

middle.block1155:                                 ; preds = %vector.body1157
  %cmp.n1165 = icmp eq i64 %indvars.iv21.i, %n.vec1161
  br i1 %cmp.n1165, label %for.inc6.i, label %for.body3.i46.preheader1235

for.body3.i46.preheader1235:                      ; preds = %for.body3.i46.preheader, %middle.block1155
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1161, %middle.block1155 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1235, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1235 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1155, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1181 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1181, label %for.body3.i60.preheader1233, label %vector.ph1182

vector.ph1182:                                    ; preds = %for.body3.i60.preheader
  %n.vec1184 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1180 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %index1185
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1189 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1189, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1186 = add i64 %index1185, 4
  %57 = icmp eq i64 %index.next1186, %n.vec1184
  br i1 %57, label %middle.block1178, label %vector.body1180, !llvm.loop !59

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1188 = icmp eq i64 %indvars.iv21.i52, %n.vec1184
  br i1 %cmp.n1188, label %for.inc6.i63, label %for.body3.i60.preheader1233

for.body3.i60.preheader1233:                      ; preds = %for.body3.i60.preheader, %middle.block1178
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1184, %middle.block1178 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1233, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1233 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1178, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1207 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1207, label %for.body3.i99.preheader1231, label %vector.ph1208

vector.ph1208:                                    ; preds = %for.body3.i99.preheader
  %n.vec1210 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1206 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %index1211
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1215 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1215, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %68 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %68, label %middle.block1204, label %vector.body1206, !llvm.loop !61

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i91, %n.vec1210
  br i1 %cmp.n1214, label %for.inc6.i102, label %for.body3.i99.preheader1231

for.body3.i99.preheader1231:                      ; preds = %for.body3.i99.preheader, %middle.block1204
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1210, %middle.block1204 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1231, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1231 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1204, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1219 = phi i64 [ %indvar.next1220, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1219, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1221 = icmp ult i64 %88, 4
  br i1 %min.iters.check1221, label %polly.loop_header191.preheader, label %vector.ph1222

vector.ph1222:                                    ; preds = %polly.loop_header
  %n.vec1224 = and i64 %88, -4
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1218 ]
  %90 = shl nuw nsw i64 %index1225, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1226 = add i64 %index1225, 4
  %95 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %95, label %middle.block1216, label %vector.body1218, !llvm.loop !73

middle.block1216:                                 ; preds = %vector.body1218
  %cmp.n1228 = icmp eq i64 %88, %n.vec1224
  br i1 %cmp.n1228, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1216
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1224, %middle.block1216 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1216
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1220 = add i64 %indvar1219, 1
  br i1 %exitcond1000.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond999.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond999.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv990 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nsw i64 %polly.indvar202, -64
  %98 = shl nsw i64 %polly.indvar202, 6
  %99 = add nsw i64 %97, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit244
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next991 = add nsw i64 %indvars.iv990, -64
  %exitcond998.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond998.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit244, %polly.loop_header199
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit244 ], [ %indvars.iv990, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit244 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit244 ], [ %polly.indvar202, %polly.loop_header199 ]
  %smin994 = call i64 @llvm.smin.i64(i64 %indvars.iv992, i64 -1136)
  %100 = add nsw i64 %smin994, 1199
  %smax = call i64 @llvm.smax.i64(i64 %100, i64 0)
  %101 = shl nsw i64 %polly.indvar208, 6
  %102 = add nsw i64 %101, %97
  %.inv.not = icmp eq i64 %102, 0
  %103 = or i64 %102, 63
  %104 = icmp ult i64 %99, %103
  %105 = select i1 %104, i64 %99, i64 %103
  %polly.loop_guard231.not = icmp ugt i64 %102, %105
  br i1 %.inv.not, label %polly.loop_header205.split, label %polly.loop_header211.us

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit230.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit230.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %106 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.call1224.us = mul nuw nsw i64 %106, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw i64 %polly.indvar220.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next221.us, 64
  br i1 %exitcond985.not, label %polly.loop_exit219.loopexit.us, label %polly.loop_header217.us

polly.loop_header228.us:                          ; preds = %polly.loop_exit219.loopexit.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %102, %polly.loop_exit219.loopexit.us ]
  %107 = add nuw nsw i64 %polly.indvar232.us, %98
  %polly.access.mul.call1236.us = mul nuw nsw i64 %107, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %polly.loop_cond234.not.not.us = icmp ult i64 %polly.indvar232.us, %105
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us, label %polly.loop_exit230.us

polly.loop_exit230.us:                            ; preds = %polly.loop_header228.us, %polly.loop_exit219.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond986.not, label %polly.loop_header242.preheader, label %polly.loop_header211.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_header217.us
  br i1 %polly.loop_guard231.not, label %polly.loop_exit230.us, label %polly.loop_header228.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  br i1 %polly.loop_guard231.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_exit244:                               ; preds = %polly.loop_exit251.loopexit.us, %polly.loop_header242.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, -64
  %exitcond997.not = icmp eq i64 %polly.indvar_next209, 19
  br i1 %exitcond997.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.loop_exit230
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit230 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_header242.preheader:                   ; preds = %polly.loop_exit230.us, %polly.loop_exit230, %polly.loop_header205.split
  %108 = mul nsw i64 %polly.indvar208, -64
  %polly.loop_guard2521077 = icmp sgt i64 %108, -1200
  br i1 %polly.loop_guard2521077, label %polly.loop_header242.us, label %polly.loop_exit244

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader, %polly.loop_exit251.loopexit.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_exit251.loopexit.us ], [ 0, %polly.loop_header242.preheader ]
  %109 = shl nuw nsw i64 %polly.indvar245.us, 3
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %109
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar245.us, 1200
  br label %polly.loop_header249.us

polly.loop_header249.us:                          ; preds = %polly.loop_exit258.us, %polly.loop_header242.us
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit258.us ], [ %indvars.iv, %polly.loop_header242.us ]
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit258.us ], [ 0, %polly.loop_header242.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 63)
  %110 = add nuw nsw i64 %polly.indvar253.us, %102
  %111 = add nuw nsw i64 %polly.indvar253.us, %101
  %112 = mul nuw nsw i64 %111, 8000
  %scevgep267.us = getelementptr i8, i8* %scevgep266.us, i64 %112
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.us = add nuw nsw i64 %110, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  %113 = mul nuw nsw i64 %111, 9600
  br label %polly.loop_header256.us

polly.loop_header256.us:                          ; preds = %polly.loop_header256.us, %polly.loop_header249.us
  %polly.indvar259.us = phi i64 [ 0, %polly.loop_header249.us ], [ %polly.indvar_next260.us, %polly.loop_header256.us ]
  %114 = add nuw nsw i64 %polly.indvar259.us, %98
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %115 = mul nuw nsw i64 %114, 8000
  %scevgep271.us = getelementptr i8, i8* %scevgep266.us, i64 %115
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %116 = shl i64 %114, 3
  %117 = add nuw nsw i64 %116, %113
  %scevgep278.us = getelementptr i8, i8* %call, i64 %117
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar259.us, %smin
  br i1 %exitcond989.not, label %polly.loop_exit258.us, label %polly.loop_header256.us

polly.loop_exit258.us:                            ; preds = %polly.loop_header256.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 1
  %exitcond995.not = icmp eq i64 %polly.indvar253.us, %smax
  br i1 %exitcond995.not, label %polly.loop_exit251.loopexit.us, label %polly.loop_header249.us

polly.loop_exit251.loopexit.us:                   ; preds = %polly.loop_exit258.us
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next246.us, 1000
  br i1 %exitcond996.not, label %polly.loop_exit244, label %polly.loop_header242.us

polly.loop_header228:                             ; preds = %polly.loop_header211, %polly.loop_header228
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header228 ], [ %102, %polly.loop_header211 ]
  %118 = add nuw nsw i64 %polly.indvar232, %98
  %polly.access.mul.call1236 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.indvar232, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %polly.loop_cond234.not.not = icmp ult i64 %polly.indvar232, %105
  br i1 %polly.loop_cond234.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1193 = phi i64 [ %indvar.next1194, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %119 = add i64 %indvar1193, 1
  %120 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1195 = icmp ult i64 %119, 4
  br i1 %min.iters.check1195, label %polly.loop_header375.preheader, label %vector.ph1196

vector.ph1196:                                    ; preds = %polly.loop_header369
  %n.vec1198 = and i64 %119, -4
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1192 ]
  %121 = shl nuw nsw i64 %index1199, 3
  %122 = getelementptr i8, i8* %scevgep381, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !78, !noalias !80
  %124 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !78, !noalias !80
  %index.next1200 = add i64 %index1199, 4
  %126 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %126, label %middle.block1190, label %vector.body1192, !llvm.loop !84

middle.block1190:                                 ; preds = %vector.body1192
  %cmp.n1202 = icmp eq i64 %119, %n.vec1198
  br i1 %cmp.n1202, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1190
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1198, %middle.block1190 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1190
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1194 = add i64 %indvar1193, 1
  br i1 %exitcond1021.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %127
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1020.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !85

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1010 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1011, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %128 = mul nsw i64 %polly.indvar388, -64
  %129 = shl nsw i64 %polly.indvar388, 6
  %130 = add nsw i64 %128, 1199
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit432
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1011 = add nsw i64 %indvars.iv1010, -64
  %exitcond1019.not = icmp eq i64 %polly.indvar_next389, 19
  br i1 %exitcond1019.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit432, %polly.loop_header385
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit432 ], [ %indvars.iv1010, %polly.loop_header385 ]
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit432 ], [ 0, %polly.loop_header385 ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit432 ], [ %polly.indvar388, %polly.loop_header385 ]
  %smin1014 = call i64 @llvm.smin.i64(i64 %indvars.iv1012, i64 -1136)
  %131 = add nsw i64 %smin1014, 1199
  %smax1015 = call i64 @llvm.smax.i64(i64 %131, i64 0)
  %132 = shl nsw i64 %polly.indvar394, 6
  %133 = add nsw i64 %132, %128
  %.inv863.not = icmp eq i64 %133, 0
  %134 = or i64 %133, 63
  %135 = icmp ult i64 %130, %134
  %136 = select i1 %135, i64 %130, i64 %134
  %polly.loop_guard419.not = icmp ugt i64 %133, %136
  br i1 %.inv863.not, label %polly.loop_header391.split, label %polly.loop_header397.us

polly.loop_header397.us:                          ; preds = %polly.loop_header391, %polly.loop_exit418.us
  %polly.indvar400.us = phi i64 [ %polly.indvar_next401.us, %polly.loop_exit418.us ], [ 0, %polly.loop_header391 ]
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar400.us, 1200
  br label %polly.loop_header404.us

polly.loop_header404.us:                          ; preds = %polly.loop_header397.us, %polly.loop_header404.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.loop_header404.us ], [ 0, %polly.loop_header397.us ]
  %137 = add nuw nsw i64 %polly.indvar408.us, %129
  %polly.access.mul.call1412.us = mul nuw nsw i64 %137, 1000
  %polly.access.add.call1413.us = add nuw nsw i64 %polly.access.mul.call1412.us, %polly.indvar400.us
  %polly.access.call1414.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1413.us
  %polly.access.call1414.load.us = load double, double* %polly.access.call1414.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar408.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1414.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next409.us = add nuw i64 %polly.indvar408.us, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next409.us, 64
  br i1 %exitcond1002.not, label %polly.loop_exit406.loopexit.us, label %polly.loop_header404.us

polly.loop_header416.us:                          ; preds = %polly.loop_exit406.loopexit.us, %polly.loop_header416.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_header416.us ], [ %133, %polly.loop_exit406.loopexit.us ]
  %138 = add nuw nsw i64 %polly.indvar420.us, %129
  %polly.access.mul.call1424.us = mul nuw nsw i64 %138, 1000
  %polly.access.add.call1425.us = add nuw nsw i64 %polly.access.mul.call1424.us, %polly.indvar400.us
  %polly.access.call1426.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1425.us
  %polly.access.call1426.load.us = load double, double* %polly.access.call1426.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286428.us = add nuw nsw i64 %polly.indvar420.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286429.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286428.us
  store double %polly.access.call1426.load.us, double* %polly.access.Packed_MemRef_call1286429.us, align 8
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %polly.loop_cond422.not.not.us = icmp ult i64 %polly.indvar420.us, %136
  br i1 %polly.loop_cond422.not.not.us, label %polly.loop_header416.us, label %polly.loop_exit418.us

polly.loop_exit418.us:                            ; preds = %polly.loop_header416.us, %polly.loop_exit406.loopexit.us
  %polly.indvar_next401.us = add nuw nsw i64 %polly.indvar400.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next401.us, 1000
  br i1 %exitcond1003.not, label %polly.loop_header430.preheader, label %polly.loop_header397.us

polly.loop_exit406.loopexit.us:                   ; preds = %polly.loop_header404.us
  br i1 %polly.loop_guard419.not, label %polly.loop_exit418.us, label %polly.loop_header416.us

polly.loop_header391.split:                       ; preds = %polly.loop_header391
  br i1 %polly.loop_guard419.not, label %polly.loop_header430.preheader, label %polly.loop_header397

polly.loop_exit432:                               ; preds = %polly.loop_exit439.loopexit.us, %polly.loop_header430.preheader
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 64
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -64
  %exitcond1018.not = icmp eq i64 %polly.indvar_next395, 19
  br i1 %exitcond1018.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_header391.split, %polly.loop_exit418
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit418 ], [ 0, %polly.loop_header391.split ]
  %polly.access.mul.Packed_MemRef_call1286427 = mul nuw nsw i64 %polly.indvar400, 1200
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_header416
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next401, 1000
  br i1 %exitcond1001.not, label %polly.loop_header430.preheader, label %polly.loop_header397

polly.loop_header430.preheader:                   ; preds = %polly.loop_exit418.us, %polly.loop_exit418, %polly.loop_header391.split
  %139 = mul nsw i64 %polly.indvar394, -64
  %polly.loop_guard4401078 = icmp sgt i64 %139, -1200
  br i1 %polly.loop_guard4401078, label %polly.loop_header430.us, label %polly.loop_exit432

polly.loop_header430.us:                          ; preds = %polly.loop_header430.preheader, %polly.loop_exit439.loopexit.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit439.loopexit.us ], [ 0, %polly.loop_header430.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar433.us, 3
  %scevgep454.us = getelementptr i8, i8* %call2, i64 %140
  %polly.access.mul.Packed_MemRef_call1286450.us = mul nuw nsw i64 %polly.indvar433.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_exit446.us, %polly.loop_header430.us
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit446.us ], [ %indvars.iv1004, %polly.loop_header430.us ]
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_exit446.us ], [ 0, %polly.loop_header430.us ]
  %smin1008 = call i64 @llvm.smin.i64(i64 %indvars.iv1006, i64 63)
  %141 = add nuw nsw i64 %polly.indvar441.us, %133
  %142 = add nuw nsw i64 %polly.indvar441.us, %132
  %143 = mul nuw nsw i64 %142, 8000
  %scevgep455.us = getelementptr i8, i8* %scevgep454.us, i64 %143
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.us = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call1286450.us
  %polly.access.Packed_MemRef_call1286464.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.us
  %_p_scalar_465.us = load double, double* %polly.access.Packed_MemRef_call1286464.us, align 8
  %144 = mul nuw nsw i64 %142, 9600
  br label %polly.loop_header444.us

polly.loop_header444.us:                          ; preds = %polly.loop_header444.us, %polly.loop_header437.us
  %polly.indvar447.us = phi i64 [ 0, %polly.loop_header437.us ], [ %polly.indvar_next448.us, %polly.loop_header444.us ]
  %145 = add nuw nsw i64 %polly.indvar447.us, %129
  %polly.access.add.Packed_MemRef_call1286451.us = add nuw nsw i64 %polly.indvar447.us, %polly.access.mul.Packed_MemRef_call1286450.us
  %polly.access.Packed_MemRef_call1286452.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286451.us
  %_p_scalar_453.us = load double, double* %polly.access.Packed_MemRef_call1286452.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_457.us, %_p_scalar_453.us
  %146 = mul nuw nsw i64 %145, 8000
  %scevgep459.us = getelementptr i8, i8* %scevgep454.us, i64 %146
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_465.us, %_p_scalar_461.us
  %147 = shl i64 %145, 3
  %148 = add nuw nsw i64 %147, %144
  %scevgep466.us = getelementptr i8, i8* %call, i64 %148
  %scevgep466467.us = bitcast i8* %scevgep466.us to double*
  %_p_scalar_468.us = load double, double* %scevgep466467.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_468.us
  store double %p_add42.i79.us, double* %scevgep466467.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next448.us = add nuw nsw i64 %polly.indvar447.us, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar447.us, %smin1008
  br i1 %exitcond1009.not, label %polly.loop_exit446.us, label %polly.loop_header444.us

polly.loop_exit446.us:                            ; preds = %polly.loop_header444.us
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar441.us, %smax1015
  br i1 %exitcond1016.not, label %polly.loop_exit439.loopexit.us, label %polly.loop_header437.us

polly.loop_exit439.loopexit.us:                   ; preds = %polly.loop_exit446.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next434.us, 1000
  br i1 %exitcond1017.not, label %polly.loop_exit432, label %polly.loop_header430.us

polly.loop_header416:                             ; preds = %polly.loop_header397, %polly.loop_header416
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_header416 ], [ %133, %polly.loop_header397 ]
  %149 = add nuw nsw i64 %polly.indvar420, %129
  %polly.access.mul.call1424 = mul nuw nsw i64 %149, 1000
  %polly.access.add.call1425 = add nuw nsw i64 %polly.access.mul.call1424, %polly.indvar400
  %polly.access.call1426 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1425
  %polly.access.call1426.load = load double, double* %polly.access.call1426, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286428 = add nuw nsw i64 %polly.indvar420, %polly.access.mul.Packed_MemRef_call1286427
  %polly.access.Packed_MemRef_call1286429 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286428
  store double %polly.access.call1426.load, double* %polly.access.Packed_MemRef_call1286429, align 8
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422.not.not = icmp ult i64 %polly.indvar420, %136
  br i1 %polly.loop_cond422.not.not, label %polly.loop_header416, label %polly.loop_exit418

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1169 = icmp ult i64 %150, 4
  br i1 %min.iters.check1169, label %polly.loop_header563.preheader, label %vector.ph1170

vector.ph1170:                                    ; preds = %polly.loop_header557
  %n.vec1172 = and i64 %150, -4
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1170
  %index1173 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1174, %vector.body1168 ]
  %152 = shl nuw nsw i64 %index1173, 3
  %153 = getelementptr i8, i8* %scevgep569, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1177 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !88, !noalias !90
  %155 = fmul fast <4 x double> %wide.load1177, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !88, !noalias !90
  %index.next1174 = add i64 %index1173, 4
  %157 = icmp eq i64 %index.next1174, %n.vec1172
  br i1 %157, label %middle.block1166, label %vector.body1168, !llvm.loop !94

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1176 = icmp eq i64 %150, %n.vec1172
  br i1 %cmp.n1176, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1166
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1172, %middle.block1166 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1166
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1042.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %158
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond1041.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !95

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %indvars.iv1031 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1032, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %159 = mul nsw i64 %polly.indvar576, -64
  %160 = shl nsw i64 %polly.indvar576, 6
  %161 = add nsw i64 %159, 1199
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit620
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1032 = add nsw i64 %indvars.iv1031, -64
  %exitcond1040.not = icmp eq i64 %polly.indvar_next577, 19
  br i1 %exitcond1040.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit620, %polly.loop_header573
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit620 ], [ %indvars.iv1031, %polly.loop_header573 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit620 ], [ 0, %polly.loop_header573 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit620 ], [ %polly.indvar576, %polly.loop_header573 ]
  %smin1035 = call i64 @llvm.smin.i64(i64 %indvars.iv1033, i64 -1136)
  %162 = add nsw i64 %smin1035, 1199
  %smax1036 = call i64 @llvm.smax.i64(i64 %162, i64 0)
  %163 = shl nsw i64 %polly.indvar582, 6
  %164 = add nsw i64 %163, %159
  %.inv864.not = icmp eq i64 %164, 0
  %165 = or i64 %164, 63
  %166 = icmp ult i64 %161, %165
  %167 = select i1 %166, i64 %161, i64 %165
  %polly.loop_guard607.not = icmp ugt i64 %164, %167
  br i1 %.inv864.not, label %polly.loop_header579.split, label %polly.loop_header585.us

polly.loop_header585.us:                          ; preds = %polly.loop_header579, %polly.loop_exit606.us
  %polly.indvar588.us = phi i64 [ %polly.indvar_next589.us, %polly.loop_exit606.us ], [ 0, %polly.loop_header579 ]
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar588.us, 1200
  br label %polly.loop_header592.us

polly.loop_header592.us:                          ; preds = %polly.loop_header585.us, %polly.loop_header592.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_header592.us ], [ 0, %polly.loop_header585.us ]
  %168 = add nuw nsw i64 %polly.indvar596.us, %160
  %polly.access.mul.call1600.us = mul nuw nsw i64 %168, 1000
  %polly.access.add.call1601.us = add nuw nsw i64 %polly.access.mul.call1600.us, %polly.indvar588.us
  %polly.access.call1602.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1601.us
  %polly.access.call1602.load.us = load double, double* %polly.access.call1602.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us = add nuw nsw i64 %polly.indvar596.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us
  store double %polly.access.call1602.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next597.us = add nuw i64 %polly.indvar596.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next597.us, 64
  br i1 %exitcond1023.not, label %polly.loop_exit594.loopexit.us, label %polly.loop_header592.us

polly.loop_header604.us:                          ; preds = %polly.loop_exit594.loopexit.us, %polly.loop_header604.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_header604.us ], [ %164, %polly.loop_exit594.loopexit.us ]
  %169 = add nuw nsw i64 %polly.indvar608.us, %160
  %polly.access.mul.call1612.us = mul nuw nsw i64 %169, 1000
  %polly.access.add.call1613.us = add nuw nsw i64 %polly.access.mul.call1612.us, %polly.indvar588.us
  %polly.access.call1614.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1613.us
  %polly.access.call1614.load.us = load double, double* %polly.access.call1614.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474616.us = add nuw nsw i64 %polly.indvar608.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474617.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474616.us
  store double %polly.access.call1614.load.us, double* %polly.access.Packed_MemRef_call1474617.us, align 8
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %polly.loop_cond610.not.not.us = icmp ult i64 %polly.indvar608.us, %167
  br i1 %polly.loop_cond610.not.not.us, label %polly.loop_header604.us, label %polly.loop_exit606.us

polly.loop_exit606.us:                            ; preds = %polly.loop_header604.us, %polly.loop_exit594.loopexit.us
  %polly.indvar_next589.us = add nuw nsw i64 %polly.indvar588.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next589.us, 1000
  br i1 %exitcond1024.not, label %polly.loop_header618.preheader, label %polly.loop_header585.us

polly.loop_exit594.loopexit.us:                   ; preds = %polly.loop_header592.us
  br i1 %polly.loop_guard607.not, label %polly.loop_exit606.us, label %polly.loop_header604.us

polly.loop_header579.split:                       ; preds = %polly.loop_header579
  br i1 %polly.loop_guard607.not, label %polly.loop_header618.preheader, label %polly.loop_header585

polly.loop_exit620:                               ; preds = %polly.loop_exit627.loopexit.us, %polly.loop_header618.preheader
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 64
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -64
  %exitcond1039.not = icmp eq i64 %polly.indvar_next583, 19
  br i1 %exitcond1039.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_header579.split, %polly.loop_exit606
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit606 ], [ 0, %polly.loop_header579.split ]
  %polly.access.mul.Packed_MemRef_call1474615 = mul nuw nsw i64 %polly.indvar588, 1200
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next589, 1000
  br i1 %exitcond1022.not, label %polly.loop_header618.preheader, label %polly.loop_header585

polly.loop_header618.preheader:                   ; preds = %polly.loop_exit606.us, %polly.loop_exit606, %polly.loop_header579.split
  %170 = mul nsw i64 %polly.indvar582, -64
  %polly.loop_guard6281079 = icmp sgt i64 %170, -1200
  br i1 %polly.loop_guard6281079, label %polly.loop_header618.us, label %polly.loop_exit620

polly.loop_header618.us:                          ; preds = %polly.loop_header618.preheader, %polly.loop_exit627.loopexit.us
  %polly.indvar621.us = phi i64 [ %polly.indvar_next622.us, %polly.loop_exit627.loopexit.us ], [ 0, %polly.loop_header618.preheader ]
  %171 = shl nuw nsw i64 %polly.indvar621.us, 3
  %scevgep642.us = getelementptr i8, i8* %call2, i64 %171
  %polly.access.mul.Packed_MemRef_call1474638.us = mul nuw nsw i64 %polly.indvar621.us, 1200
  br label %polly.loop_header625.us

polly.loop_header625.us:                          ; preds = %polly.loop_exit634.us, %polly.loop_header618.us
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %polly.loop_exit634.us ], [ %indvars.iv1025, %polly.loop_header618.us ]
  %polly.indvar629.us = phi i64 [ %polly.indvar_next630.us, %polly.loop_exit634.us ], [ 0, %polly.loop_header618.us ]
  %smin1029 = call i64 @llvm.smin.i64(i64 %indvars.iv1027, i64 63)
  %172 = add nuw nsw i64 %polly.indvar629.us, %164
  %173 = add nuw nsw i64 %polly.indvar629.us, %163
  %174 = mul nuw nsw i64 %173, 8000
  %scevgep643.us = getelementptr i8, i8* %scevgep642.us, i64 %174
  %scevgep643644.us = bitcast i8* %scevgep643.us to double*
  %_p_scalar_645.us = load double, double* %scevgep643644.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.us = add nuw nsw i64 %172, %polly.access.mul.Packed_MemRef_call1474638.us
  %polly.access.Packed_MemRef_call1474652.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1474652.us, align 8
  %175 = mul nuw nsw i64 %173, 9600
  br label %polly.loop_header632.us

polly.loop_header632.us:                          ; preds = %polly.loop_header632.us, %polly.loop_header625.us
  %polly.indvar635.us = phi i64 [ 0, %polly.loop_header625.us ], [ %polly.indvar_next636.us, %polly.loop_header632.us ]
  %176 = add nuw nsw i64 %polly.indvar635.us, %160
  %polly.access.add.Packed_MemRef_call1474639.us = add nuw nsw i64 %polly.indvar635.us, %polly.access.mul.Packed_MemRef_call1474638.us
  %polly.access.Packed_MemRef_call1474640.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474639.us
  %_p_scalar_641.us = load double, double* %polly.access.Packed_MemRef_call1474640.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_645.us, %_p_scalar_641.us
  %177 = mul nuw nsw i64 %176, 8000
  %scevgep647.us = getelementptr i8, i8* %scevgep642.us, i64 %177
  %scevgep647648.us = bitcast i8* %scevgep647.us to double*
  %_p_scalar_649.us = load double, double* %scevgep647648.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_653.us, %_p_scalar_649.us
  %178 = shl i64 %176, 3
  %179 = add nuw nsw i64 %178, %175
  %scevgep654.us = getelementptr i8, i8* %call, i64 %179
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_656.us
  store double %p_add42.i.us, double* %scevgep654655.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar635.us, %smin1029
  br i1 %exitcond1030.not, label %polly.loop_exit634.us, label %polly.loop_header632.us

polly.loop_exit634.us:                            ; preds = %polly.loop_header632.us
  %polly.indvar_next630.us = add nuw nsw i64 %polly.indvar629.us, 1
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar629.us, %smax1036
  br i1 %exitcond1037.not, label %polly.loop_exit627.loopexit.us, label %polly.loop_header625.us

polly.loop_exit627.loopexit.us:                   ; preds = %polly.loop_exit634.us
  %polly.indvar_next622.us = add nuw nsw i64 %polly.indvar621.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next622.us, 1000
  br i1 %exitcond1038.not, label %polly.loop_exit620, label %polly.loop_header618.us

polly.loop_header604:                             ; preds = %polly.loop_header585, %polly.loop_header604
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header604 ], [ %164, %polly.loop_header585 ]
  %180 = add nuw nsw i64 %polly.indvar608, %160
  %polly.access.mul.call1612 = mul nuw nsw i64 %180, 1000
  %polly.access.add.call1613 = add nuw nsw i64 %polly.access.mul.call1612, %polly.indvar588
  %polly.access.call1614 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1613
  %polly.access.call1614.load = load double, double* %polly.access.call1614, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474616 = add nuw nsw i64 %polly.indvar608, %polly.access.mul.Packed_MemRef_call1474615
  %polly.access.Packed_MemRef_call1474617 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474616
  store double %polly.access.call1614.load, double* %polly.access.Packed_MemRef_call1474617, align 8
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %polly.loop_cond610.not.not = icmp ult i64 %polly.indvar608, %167
  br i1 %polly.loop_cond610.not.not, label %polly.loop_header604, label %polly.loop_exit606

polly.loop_header783:                             ; preds = %entry, %polly.loop_exit791
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit791 ], [ 0, %entry ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %entry ]
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -1168)
  %181 = shl nsw i64 %polly.indvar786, 5
  %182 = add nsw i64 %smin1069, 1199
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next787, 38
  br i1 %exitcond1072.not, label %polly.loop_header810, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %183 = mul nsw i64 %polly.indvar792, -32
  %smin1107 = call i64 @llvm.smin.i64(i64 %183, i64 -1168)
  %184 = add nsw i64 %smin1107, 1200
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %185 = shl nsw i64 %polly.indvar792, 5
  %186 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header795

polly.loop_exit797:                               ; preds = %polly.loop_exit803
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1071.not = icmp eq i64 %polly.indvar_next793, 38
  br i1 %exitcond1071.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_exit803, %polly.loop_header789
  %polly.indvar798 = phi i64 [ 0, %polly.loop_header789 ], [ %polly.indvar_next799, %polly.loop_exit803 ]
  %187 = add nuw nsw i64 %polly.indvar798, %181
  %188 = trunc i64 %187 to i32
  %189 = mul nuw nsw i64 %187, 9600
  %min.iters.check = icmp eq i64 %184, 0
  br i1 %min.iters.check, label %polly.loop_header801, label %vector.ph1108

vector.ph1108:                                    ; preds = %polly.loop_header795
  %broadcast.splatinsert1115 = insertelement <4 x i64> poison, i64 %185, i32 0
  %broadcast.splat1116 = shufflevector <4 x i64> %broadcast.splatinsert1115, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %vector.ph1108
  %index1109 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1110, %vector.body1106 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1108 ], [ %vec.ind.next1114, %vector.body1106 ]
  %190 = add nuw nsw <4 x i64> %vec.ind1113, %broadcast.splat1116
  %191 = trunc <4 x i64> %190 to <4 x i32>
  %192 = mul <4 x i32> %broadcast.splat1118, %191
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 1200, i32 1200, i32 1200, i32 1200>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %197 = extractelement <4 x i64> %190, i32 0
  %198 = shl i64 %197, 3
  %199 = add nuw nsw i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %196, <4 x double>* %201, align 8, !alias.scope !98, !noalias !100
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %202 = icmp eq i64 %index.next1110, %184
  br i1 %202, label %polly.loop_exit803, label %vector.body1106, !llvm.loop !103

polly.loop_exit803:                               ; preds = %vector.body1106, %polly.loop_header801
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar798, %182
  br i1 %exitcond1070.not, label %polly.loop_exit797, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_header795, %polly.loop_header801
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_header801 ], [ 0, %polly.loop_header795 ]
  %203 = add nuw nsw i64 %polly.indvar804, %185
  %204 = trunc i64 %203 to i32
  %205 = mul i32 %204, %188
  %206 = add i32 %205, 3
  %207 = urem i32 %206, 1200
  %p_conv31.i = sitofp i32 %207 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %208 = shl i64 %203, 3
  %209 = add nuw nsw i64 %208, %189
  %scevgep807 = getelementptr i8, i8* %call, i64 %209
  %scevgep807808 = bitcast i8* %scevgep807 to double*
  store double %p_div33.i, double* %scevgep807808, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar804, %186
  br i1 %exitcond1066.not, label %polly.loop_exit803, label %polly.loop_header801, !llvm.loop !104

polly.loop_header810:                             ; preds = %polly.loop_exit791, %polly.loop_exit818
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %polly.indvar813 = phi i64 [ %polly.indvar_next814, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 -1168)
  %210 = shl nsw i64 %polly.indvar813, 5
  %211 = add nsw i64 %smin1059, 1199
  br label %polly.loop_header816

polly.loop_exit818:                               ; preds = %polly.loop_exit824
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next814, 38
  br i1 %exitcond1062.not, label %polly.loop_header836, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_exit824, %polly.loop_header810
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %212 = mul nsw i64 %polly.indvar819, -32
  %smin1122 = call i64 @llvm.smin.i64(i64 %212, i64 -968)
  %213 = add nsw i64 %smin1122, 1000
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1053, i64 -968)
  %214 = shl nsw i64 %polly.indvar819, 5
  %215 = add nsw i64 %smin1055, 999
  br label %polly.loop_header822

polly.loop_exit824:                               ; preds = %polly.loop_exit830
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -32
  %exitcond1061.not = icmp eq i64 %polly.indvar_next820, 32
  br i1 %exitcond1061.not, label %polly.loop_exit818, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_exit830, %polly.loop_header816
  %polly.indvar825 = phi i64 [ 0, %polly.loop_header816 ], [ %polly.indvar_next826, %polly.loop_exit830 ]
  %216 = add nuw nsw i64 %polly.indvar825, %210
  %217 = trunc i64 %216 to i32
  %218 = mul nuw nsw i64 %216, 8000
  %min.iters.check1123 = icmp eq i64 %213, 0
  br i1 %min.iters.check1123, label %polly.loop_header828, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header822
  %broadcast.splatinsert1133 = insertelement <4 x i64> poison, i64 %214, i32 0
  %broadcast.splat1134 = shufflevector <4 x i64> %broadcast.splatinsert1133, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1124
  %index1127 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1128, %vector.body1121 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1132, %vector.body1121 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1131, %broadcast.splat1134
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1136, %220
  %222 = add <4 x i32> %221, <i32 2, i32 2, i32 2, i32 2>
  %223 = urem <4 x i32> %222, <i32 1000, i32 1000, i32 1000, i32 1000>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %218
  %229 = getelementptr i8, i8* %call2, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !102, !noalias !105
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1128, %213
  br i1 %231, label %polly.loop_exit830, label %vector.body1121, !llvm.loop !106

polly.loop_exit830:                               ; preds = %vector.body1121, %polly.loop_header828
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar825, %211
  br i1 %exitcond1060.not, label %polly.loop_exit824, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_header822, %polly.loop_header828
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_header828 ], [ 0, %polly.loop_header822 ]
  %232 = add nuw nsw i64 %polly.indvar831, %214
  %233 = trunc i64 %232 to i32
  %234 = mul i32 %233, %217
  %235 = add i32 %234, 2
  %236 = urem i32 %235, 1000
  %p_conv10.i = sitofp i32 %236 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %237 = shl i64 %232, 3
  %238 = add nuw nsw i64 %237, %218
  %scevgep834 = getelementptr i8, i8* %call2, i64 %238
  %scevgep834835 = bitcast i8* %scevgep834 to double*
  store double %p_div12.i, double* %scevgep834835, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar831, %215
  br i1 %exitcond1056.not, label %polly.loop_exit830, label %polly.loop_header828, !llvm.loop !107

polly.loop_header836:                             ; preds = %polly.loop_exit818, %polly.loop_exit844
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -1168)
  %239 = shl nsw i64 %polly.indvar839, 5
  %240 = add nsw i64 %smin1049, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1052.not, label %init_array.exit, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %241 = mul nsw i64 %polly.indvar845, -32
  %smin1140 = call i64 @llvm.smin.i64(i64 %241, i64 -968)
  %242 = add nsw i64 %smin1140, 1000
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 -968)
  %243 = shl nsw i64 %polly.indvar845, 5
  %244 = add nsw i64 %smin1045, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %exitcond1051.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond1051.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %245 = add nuw nsw i64 %polly.indvar851, %239
  %246 = trunc i64 %245 to i32
  %247 = mul nuw nsw i64 %245, 8000
  %min.iters.check1141 = icmp eq i64 %242, 0
  br i1 %min.iters.check1141, label %polly.loop_header854, label %vector.ph1142

vector.ph1142:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1151 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat1152 = shufflevector <4 x i64> %broadcast.splatinsert1151, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %vector.ph1142
  %index1145 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1146, %vector.body1139 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1142 ], [ %vec.ind.next1150, %vector.body1139 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1149, %broadcast.splat1152
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1154, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 1200, i32 1200, i32 1200, i32 1200>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %247
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !101, !noalias !108
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1146, %242
  br i1 %260, label %polly.loop_exit856, label %vector.body1139, !llvm.loop !109

polly.loop_exit856:                               ; preds = %vector.body1139, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar851, %240
  br i1 %exitcond1050.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %261 = add nuw nsw i64 %polly.indvar857, %243
  %262 = trunc i64 %261 to i32
  %263 = mul i32 %262, %246
  %264 = add i32 %263, 1
  %265 = urem i32 %264, 1200
  %p_conv.i = sitofp i32 %265 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %266 = shl i64 %261, 3
  %267 = add nuw nsw i64 %266, %247
  %scevgep861 = getelementptr i8, i8* %call1, i64 %267
  %scevgep861862 = bitcast i8* %scevgep861 to double*
  store double %p_div.i, double* %scevgep861862, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar857, %244
  br i1 %exitcond1046.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
