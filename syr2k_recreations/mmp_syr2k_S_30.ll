; ModuleID = 'syr2k_recreations//mmp_syr2k_S_30.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_30.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #6
  %call687 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1548 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1548, %call2
  %polly.access.call2568 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2568, %call1
  %2 = or i1 %0, %1
  %polly.access.call588 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call588, %call2
  %4 = icmp ule i8* %polly.access.call2568, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call588, %call1
  %8 = icmp ule i8* %polly.access.call1548, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header673, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep871 = getelementptr i8, i8* %call2, i64 %12
  %scevgep870 = getelementptr i8, i8* %call2, i64 %11
  %scevgep869 = getelementptr i8, i8* %call1, i64 %12
  %scevgep868 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep868, %scevgep871
  %bound1 = icmp ult i8* %scevgep870, %scevgep869
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
  %16 = urem <4 x i32> %15, <i32 80, i32 80, i32 80, i32 80>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %19 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 60, i32 60, i32 60, i32 60>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %25 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 60
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 80
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 1.250000e-02
  %arrayidx6.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 60
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 0x3F91111111111111
  %arrayidx16.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 60
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 80
  br i1 %exitcond18.not.i, label %vector.ph875, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph875:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert882 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat883 = shufflevector <4 x i64> %broadcast.splatinsert882, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body874

vector.body874:                                   ; preds = %vector.body874, %vector.ph875
  %index876 = phi i64 [ 0, %vector.ph875 ], [ %index.next877, %vector.body874 ]
  %vec.ind880 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph875 ], [ %vec.ind.next881, %vector.body874 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind880, %broadcast.splat883
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv7.i, i64 %index876
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next877 = add i64 %index876, 4
  %vec.ind.next881 = add <4 x i64> %vec.ind880, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next877, 80
  br i1 %40, label %for.inc41.i, label %vector.body874, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body874
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph875, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit734.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header475, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1231, label %vector.ph1157

vector.ph1157:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1157
  %index1158 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1159, %vector.body1156 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv21.i, i64 %index1158
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1159 = add i64 %index1158, 4
  %46 = icmp eq i64 %index.next1159, %n.vec
  br i1 %46, label %middle.block1154, label %vector.body1156, !llvm.loop !18

middle.block1154:                                 ; preds = %vector.body1156
  %cmp.n1161 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1161, label %for.inc6.i, label %for.body3.i46.preheader1231

for.body3.i46.preheader1231:                      ; preds = %for.body3.i46.preheader, %middle.block1154
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1154 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1231, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1231 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1154, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 80
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit505.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header329, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1177 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1177, label %for.body3.i60.preheader1229, label %vector.ph1178

vector.ph1178:                                    ; preds = %for.body3.i60.preheader
  %n.vec1180 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1176 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv21.i52, i64 %index1181
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1185 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1185, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1182 = add i64 %index1181, 4
  %57 = icmp eq i64 %index.next1182, %n.vec1180
  br i1 %57, label %middle.block1174, label %vector.body1176, !llvm.loop !54

middle.block1174:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %indvars.iv21.i52, %n.vec1180
  br i1 %cmp.n1184, label %for.inc6.i63, label %for.body3.i60.preheader1229

for.body3.i60.preheader1229:                      ; preds = %for.body3.i60.preheader, %middle.block1174
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1180, %middle.block1174 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1229, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1229 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1174, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 80
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit359.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1203 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1203, label %for.body3.i99.preheader1227, label %vector.ph1204

vector.ph1204:                                    ; preds = %for.body3.i99.preheader
  %n.vec1206 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1202 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv21.i91, i64 %index1207
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1211 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1211, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1208 = add i64 %index1207, 4
  %68 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %68, label %middle.block1200, label %vector.body1202, !llvm.loop !56

middle.block1200:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %indvars.iv21.i91, %n.vec1206
  br i1 %cmp.n1210, label %for.inc6.i102, label %for.body3.i99.preheader1227

for.body3.i99.preheader1227:                      ; preds = %for.body3.i99.preheader, %middle.block1200
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1206, %middle.block1200 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1227, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1227 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1200, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 80
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %79 = mul nuw nsw i64 %indvars.iv4.i, 80
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %80 = add nuw nsw i64 %indvars.iv.i41, %79
  %81 = trunc i64 %80 to i32
  %rem.i42 = urem i32 %81, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call687, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1215 = phi i64 [ %indvar.next1216, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1215, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1217 = icmp ult i64 %88, 4
  br i1 %min.iters.check1217, label %polly.loop_header191.preheader, label %vector.ph1218

vector.ph1218:                                    ; preds = %polly.loop_header
  %n.vec1220 = and i64 %88, -4
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %vector.ph1218
  %index1221 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1222, %vector.body1214 ]
  %90 = shl nuw nsw i64 %index1221, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1225 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1225, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1222 = add i64 %index1221, 4
  %95 = icmp eq i64 %index.next1222, %n.vec1220
  br i1 %95, label %middle.block1212, label %vector.body1214, !llvm.loop !67

middle.block1212:                                 ; preds = %vector.body1214
  %cmp.n1224 = icmp eq i64 %88, %n.vec1220
  br i1 %cmp.n1224, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1212
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1220, %middle.block1212 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1212
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond755.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1216 = add i64 %indvar1215, 1
  br i1 %exitcond755.not, label %polly.loop_header205, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond754.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond754.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header205:                             ; preds = %polly.loop_exit193, %polly.loop_exit213
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %polly.indvar208, 3
  %scevgep223 = getelementptr i8, i8* %call1, i64 %97
  %scevgep227 = getelementptr i8, i8* %call2, i64 %97
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond752.not = icmp eq i64 %polly.indvar_next209, 60
  br i1 %exitcond752.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 19)
  %98 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep228 = getelementptr i8, i8* %scevgep227, i64 %98
  %scevgep228229 = bitcast i8* %scevgep228 to double*
  %scevgep236 = getelementptr i8, i8* %scevgep223, i64 %98
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %99 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep239 = getelementptr i8, i8* %call, i64 %99
  %_p_scalar_230.pre = load double, double* %scevgep228229, align 8, !alias.scope !66, !noalias !70
  %_p_scalar_238.pre = load double, double* %scevgep236237, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond751.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond751.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %100 = mul nuw nsw i64 %polly.indvar220, 480
  %scevgep224 = getelementptr i8, i8* %scevgep223, i64 %100
  %scevgep224225 = bitcast i8* %scevgep224 to double*
  %_p_scalar_226 = load double, double* %scevgep224225, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_230.pre, %_p_scalar_226
  %scevgep232 = getelementptr i8, i8* %scevgep227, i64 %100
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_238.pre, %_p_scalar_234
  %101 = shl i64 %polly.indvar220, 3
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %101
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_242
  store double %p_add42.i118, double* %scevgep240241, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar220, %smin
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header329:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit337
  %indvar1189 = phi i64 [ %indvar.next1190, %polly.loop_exit337 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar332 = phi i64 [ %polly.indvar_next333, %polly.loop_exit337 ], [ 1, %kernel_syr2k.exit ]
  %102 = add i64 %indvar1189, 1
  %103 = mul nuw nsw i64 %polly.indvar332, 640
  %scevgep341 = getelementptr i8, i8* %call, i64 %103
  %min.iters.check1191 = icmp ult i64 %102, 4
  br i1 %min.iters.check1191, label %polly.loop_header335.preheader, label %vector.ph1192

vector.ph1192:                                    ; preds = %polly.loop_header329
  %n.vec1194 = and i64 %102, -4
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1192
  %index1195 = phi i64 [ 0, %vector.ph1192 ], [ %index.next1196, %vector.body1188 ]
  %104 = shl nuw nsw i64 %index1195, 3
  %105 = getelementptr i8, i8* %scevgep341, i64 %104
  %106 = bitcast i8* %105 to <4 x double>*
  %wide.load1199 = load <4 x double>, <4 x double>* %106, align 8, !alias.scope !72, !noalias !74
  %107 = fmul fast <4 x double> %wide.load1199, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %108 = bitcast i8* %105 to <4 x double>*
  store <4 x double> %107, <4 x double>* %108, align 8, !alias.scope !72, !noalias !74
  %index.next1196 = add i64 %index1195, 4
  %109 = icmp eq i64 %index.next1196, %n.vec1194
  br i1 %109, label %middle.block1186, label %vector.body1188, !llvm.loop !77

middle.block1186:                                 ; preds = %vector.body1188
  %cmp.n1198 = icmp eq i64 %102, %n.vec1194
  br i1 %cmp.n1198, label %polly.loop_exit337, label %polly.loop_header335.preheader

polly.loop_header335.preheader:                   ; preds = %polly.loop_header329, %middle.block1186
  %polly.indvar338.ph = phi i64 [ 0, %polly.loop_header329 ], [ %n.vec1194, %middle.block1186 ]
  br label %polly.loop_header335

polly.loop_exit337:                               ; preds = %polly.loop_header335, %middle.block1186
  %polly.indvar_next333 = add nuw nsw i64 %polly.indvar332, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next333, 80
  %indvar.next1190 = add i64 %indvar1189, 1
  br i1 %exitcond766.not, label %polly.loop_header351, label %polly.loop_header329

polly.loop_header335:                             ; preds = %polly.loop_header335.preheader, %polly.loop_header335
  %polly.indvar338 = phi i64 [ %polly.indvar_next339, %polly.loop_header335 ], [ %polly.indvar338.ph, %polly.loop_header335.preheader ]
  %110 = shl nuw nsw i64 %polly.indvar338, 3
  %scevgep342 = getelementptr i8, i8* %scevgep341, i64 %110
  %scevgep342343 = bitcast i8* %scevgep342 to double*
  %_p_scalar_344 = load double, double* %scevgep342343, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_344, 1.200000e+00
  store double %p_mul.i57, double* %scevgep342343, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next339 = add nuw nsw i64 %polly.indvar338, 1
  %exitcond765.not = icmp eq i64 %polly.indvar_next339, %polly.indvar332
  br i1 %exitcond765.not, label %polly.loop_exit337, label %polly.loop_header335, !llvm.loop !78

polly.loop_header351:                             ; preds = %polly.loop_exit337, %polly.loop_exit359
  %polly.indvar354 = phi i64 [ %polly.indvar_next355, %polly.loop_exit359 ], [ 0, %polly.loop_exit337 ]
  %111 = shl nuw nsw i64 %polly.indvar354, 3
  %scevgep369 = getelementptr i8, i8* %call1, i64 %111
  %scevgep373 = getelementptr i8, i8* %call2, i64 %111
  br label %polly.loop_header357

polly.loop_exit359:                               ; preds = %polly.loop_exit365
  %polly.indvar_next355 = add nuw nsw i64 %polly.indvar354, 1
  %exitcond763.not = icmp eq i64 %polly.indvar_next355, 60
  br i1 %exitcond763.not, label %polly.loop_header351.1, label %polly.loop_header351

polly.loop_header357:                             ; preds = %polly.loop_exit365, %polly.loop_header351
  %indvars.iv756 = phi i64 [ %indvars.iv.next757, %polly.loop_exit365 ], [ 0, %polly.loop_header351 ]
  %polly.indvar360 = phi i64 [ %polly.indvar_next361, %polly.loop_exit365 ], [ 0, %polly.loop_header351 ]
  %smin758 = call i64 @llvm.smin.i64(i64 %indvars.iv756, i64 19)
  %112 = mul nuw nsw i64 %polly.indvar360, 480
  %scevgep374 = getelementptr i8, i8* %scevgep373, i64 %112
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %scevgep382 = getelementptr i8, i8* %scevgep369, i64 %112
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %113 = mul nuw nsw i64 %polly.indvar360, 640
  %scevgep385 = getelementptr i8, i8* %call, i64 %113
  %_p_scalar_376.pre = load double, double* %scevgep374375, align 8, !alias.scope !76, !noalias !79
  %_p_scalar_384.pre = load double, double* %scevgep382383, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header363

polly.loop_exit365:                               ; preds = %polly.loop_header363
  %polly.indvar_next361 = add nuw nsw i64 %polly.indvar360, 1
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 1
  %exitcond762.not = icmp eq i64 %indvars.iv.next757, 80
  br i1 %exitcond762.not, label %polly.loop_exit359, label %polly.loop_header357

polly.loop_header363:                             ; preds = %polly.loop_header363, %polly.loop_header357
  %polly.indvar366 = phi i64 [ 0, %polly.loop_header357 ], [ %polly.indvar_next367, %polly.loop_header363 ]
  %114 = mul nuw nsw i64 %polly.indvar366, 480
  %scevgep370 = getelementptr i8, i8* %scevgep369, i64 %114
  %scevgep370371 = bitcast i8* %scevgep370 to double*
  %_p_scalar_372 = load double, double* %scevgep370371, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_376.pre, %_p_scalar_372
  %scevgep378 = getelementptr i8, i8* %scevgep373, i64 %114
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_384.pre, %_p_scalar_380
  %115 = shl i64 %polly.indvar366, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %115
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_388
  store double %p_add42.i79, double* %scevgep386387, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond759.not = icmp eq i64 %polly.indvar366, %smin758
  br i1 %exitcond759.not, label %polly.loop_exit365, label %polly.loop_header363

polly.loop_header475:                             ; preds = %init_array.exit, %polly.loop_exit483
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit483 ], [ 0, %init_array.exit ]
  %polly.indvar478 = phi i64 [ %polly.indvar_next479, %polly.loop_exit483 ], [ 1, %init_array.exit ]
  %116 = add i64 %indvar, 1
  %117 = mul nuw nsw i64 %polly.indvar478, 640
  %scevgep487 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1165 = icmp ult i64 %116, 4
  br i1 %min.iters.check1165, label %polly.loop_header481.preheader, label %vector.ph1166

vector.ph1166:                                    ; preds = %polly.loop_header475
  %n.vec1168 = and i64 %116, -4
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %vector.ph1166
  %index1169 = phi i64 [ 0, %vector.ph1166 ], [ %index.next1170, %vector.body1164 ]
  %118 = shl nuw nsw i64 %index1169, 3
  %119 = getelementptr i8, i8* %scevgep487, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1173 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !81, !noalias !83
  %121 = fmul fast <4 x double> %wide.load1173, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !81, !noalias !83
  %index.next1170 = add i64 %index1169, 4
  %123 = icmp eq i64 %index.next1170, %n.vec1168
  br i1 %123, label %middle.block1162, label %vector.body1164, !llvm.loop !86

middle.block1162:                                 ; preds = %vector.body1164
  %cmp.n1172 = icmp eq i64 %116, %n.vec1168
  br i1 %cmp.n1172, label %polly.loop_exit483, label %polly.loop_header481.preheader

polly.loop_header481.preheader:                   ; preds = %polly.loop_header475, %middle.block1162
  %polly.indvar484.ph = phi i64 [ 0, %polly.loop_header475 ], [ %n.vec1168, %middle.block1162 ]
  br label %polly.loop_header481

polly.loop_exit483:                               ; preds = %polly.loop_header481, %middle.block1162
  %polly.indvar_next479 = add nuw nsw i64 %polly.indvar478, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next479, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond777.not, label %polly.loop_header497, label %polly.loop_header475

polly.loop_header481:                             ; preds = %polly.loop_header481.preheader, %polly.loop_header481
  %polly.indvar484 = phi i64 [ %polly.indvar_next485, %polly.loop_header481 ], [ %polly.indvar484.ph, %polly.loop_header481.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar484, 3
  %scevgep488 = getelementptr i8, i8* %scevgep487, i64 %124
  %scevgep488489 = bitcast i8* %scevgep488 to double*
  %_p_scalar_490 = load double, double* %scevgep488489, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_490, 1.200000e+00
  store double %p_mul.i, double* %scevgep488489, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next485 = add nuw nsw i64 %polly.indvar484, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next485, %polly.indvar478
  br i1 %exitcond776.not, label %polly.loop_exit483, label %polly.loop_header481, !llvm.loop !87

polly.loop_header497:                             ; preds = %polly.loop_exit483, %polly.loop_exit505
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_exit505 ], [ 0, %polly.loop_exit483 ]
  %125 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep515 = getelementptr i8, i8* %call1, i64 %125
  %scevgep519 = getelementptr i8, i8* %call2, i64 %125
  br label %polly.loop_header503

polly.loop_exit505:                               ; preds = %polly.loop_exit511
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond774.not = icmp eq i64 %polly.indvar_next501, 60
  br i1 %exitcond774.not, label %polly.loop_header497.1, label %polly.loop_header497

polly.loop_header503:                             ; preds = %polly.loop_exit511, %polly.loop_header497
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %polly.loop_exit511 ], [ 0, %polly.loop_header497 ]
  %polly.indvar506 = phi i64 [ %polly.indvar_next507, %polly.loop_exit511 ], [ 0, %polly.loop_header497 ]
  %smin769 = call i64 @llvm.smin.i64(i64 %indvars.iv767, i64 19)
  %126 = mul nuw nsw i64 %polly.indvar506, 480
  %scevgep520 = getelementptr i8, i8* %scevgep519, i64 %126
  %scevgep520521 = bitcast i8* %scevgep520 to double*
  %scevgep528 = getelementptr i8, i8* %scevgep515, i64 %126
  %scevgep528529 = bitcast i8* %scevgep528 to double*
  %127 = mul nuw nsw i64 %polly.indvar506, 640
  %scevgep531 = getelementptr i8, i8* %call, i64 %127
  %_p_scalar_522.pre = load double, double* %scevgep520521, align 8, !alias.scope !85, !noalias !88
  %_p_scalar_530.pre = load double, double* %scevgep528529, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header509

polly.loop_exit511:                               ; preds = %polly.loop_header509
  %polly.indvar_next507 = add nuw nsw i64 %polly.indvar506, 1
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1
  %exitcond773.not = icmp eq i64 %indvars.iv.next768, 80
  br i1 %exitcond773.not, label %polly.loop_exit505, label %polly.loop_header503

polly.loop_header509:                             ; preds = %polly.loop_header509, %polly.loop_header503
  %polly.indvar512 = phi i64 [ 0, %polly.loop_header503 ], [ %polly.indvar_next513, %polly.loop_header509 ]
  %128 = mul nuw nsw i64 %polly.indvar512, 480
  %scevgep516 = getelementptr i8, i8* %scevgep515, i64 %128
  %scevgep516517 = bitcast i8* %scevgep516 to double*
  %_p_scalar_518 = load double, double* %scevgep516517, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_522.pre, %_p_scalar_518
  %scevgep524 = getelementptr i8, i8* %scevgep519, i64 %128
  %scevgep524525 = bitcast i8* %scevgep524 to double*
  %_p_scalar_526 = load double, double* %scevgep524525, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_530.pre, %_p_scalar_526
  %129 = shl i64 %polly.indvar512, 3
  %scevgep532 = getelementptr i8, i8* %scevgep531, i64 %129
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_534
  store double %p_add42.i, double* %scevgep532533, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond770.not = icmp eq i64 %polly.indvar512, %smin769
  br i1 %exitcond770.not, label %polly.loop_exit511, label %polly.loop_header509

polly.loop_header673:                             ; preds = %entry, %polly.loop_exit681
  %polly.indvar676 = phi i64 [ %polly.indvar_next677, %polly.loop_exit681 ], [ 0, %entry ]
  %130 = mul nuw nsw i64 %polly.indvar676, 640
  %131 = trunc i64 %polly.indvar676 to i32
  %broadcast.splatinsert896 = insertelement <4 x i32> poison, i32 %131, i32 0
  %broadcast.splat897 = shufflevector <4 x i32> %broadcast.splatinsert896, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %polly.loop_header673
  %index888 = phi i64 [ 0, %polly.loop_header673 ], [ %index.next889, %vector.body886 ]
  %vec.ind894 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header673 ], [ %vec.ind.next895, %vector.body886 ]
  %132 = mul <4 x i32> %vec.ind894, %broadcast.splat897
  %133 = add <4 x i32> %132, <i32 3, i32 3, i32 3, i32 3>
  %134 = urem <4 x i32> %133, <i32 80, i32 80, i32 80, i32 80>
  %135 = sitofp <4 x i32> %134 to <4 x double>
  %136 = fmul fast <4 x double> %135, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %137 = shl i64 %index888, 3
  %138 = add nuw nsw i64 %137, %130
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %136, <4 x double>* %140, align 8, !alias.scope !90, !noalias !92
  %index.next889 = add i64 %index888, 4
  %vec.ind.next895 = add <4 x i32> %vec.ind894, <i32 4, i32 4, i32 4, i32 4>
  %141 = icmp eq i64 %index.next889, 32
  br i1 %141, label %polly.loop_exit681, label %vector.body886, !llvm.loop !95

polly.loop_exit681:                               ; preds = %vector.body886
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next677, 32
  br i1 %exitcond797.not, label %polly.loop_header673.1, label %polly.loop_header673

polly.loop_header700:                             ; preds = %polly.loop_exit681.2.2, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_exit681.2.2 ]
  %142 = mul nuw nsw i64 %polly.indvar703, 480
  %143 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert1010 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat1011 = shufflevector <4 x i32> %broadcast.splatinsert1010, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header700
  %index1002 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1008 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next1009, %vector.body1000 ]
  %144 = mul <4 x i32> %vec.ind1008, %broadcast.splat1011
  %145 = add <4 x i32> %144, <i32 2, i32 2, i32 2, i32 2>
  %146 = urem <4 x i32> %145, <i32 60, i32 60, i32 60, i32 60>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index1002, 3
  %150 = add i64 %149, %142
  %151 = getelementptr i8, i8* %call2, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !94, !noalias !96
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1009 = add <4 x i32> %vec.ind1008, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next1003, 32
  br i1 %153, label %polly.loop_exit708, label %vector.body1000, !llvm.loop !97

polly.loop_exit708:                               ; preds = %vector.body1000
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond788.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header726:                             ; preds = %polly.loop_exit708.1.2, %polly.loop_exit734
  %polly.indvar729 = phi i64 [ %polly.indvar_next730, %polly.loop_exit734 ], [ 0, %polly.loop_exit708.1.2 ]
  %154 = mul nuw nsw i64 %polly.indvar729, 480
  %155 = trunc i64 %polly.indvar729 to i32
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header726
  %index1080 = phi i64 [ 0, %polly.loop_header726 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1086 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header726 ], [ %vec.ind.next1087, %vector.body1078 ]
  %156 = mul <4 x i32> %vec.ind1086, %broadcast.splat1089
  %157 = add <4 x i32> %156, <i32 1, i32 1, i32 1, i32 1>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %161 = shl i64 %index1080, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call1, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !93, !noalias !98
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1087 = add <4 x i32> %vec.ind1086, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1081, 32
  br i1 %165, label %polly.loop_exit734, label %vector.body1078, !llvm.loop !99

polly.loop_exit734:                               ; preds = %vector.body1078
  %polly.indvar_next730 = add nuw nsw i64 %polly.indvar729, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next730, 32
  br i1 %exitcond782.not, label %polly.loop_header726.1, label %polly.loop_header726

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %166 = shl nuw nsw i64 %polly.indvar208.1, 3
  %scevgep223.1 = getelementptr i8, i8* %call1, i64 %166
  %scevgep227.1 = getelementptr i8, i8* %call2, i64 %166
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_header205.1 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 20, %polly.loop_header205.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 19)
  %167 = mul nuw nsw i64 %polly.indvar214.1, 480
  %scevgep228.1 = getelementptr i8, i8* %scevgep227.1, i64 %167
  %scevgep228229.1 = bitcast i8* %scevgep228.1 to double*
  %scevgep236.1 = getelementptr i8, i8* %scevgep223.1, i64 %167
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %168 = mul nuw nsw i64 %polly.indvar214.1, 640
  %scevgep239.1 = getelementptr i8, i8* %call, i64 %168
  %_p_scalar_230.pre.1 = load double, double* %scevgep228229.1, align 8, !alias.scope !66, !noalias !70
  %_p_scalar_238.pre.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %169 = add nuw nsw i64 %polly.indvar220.1, 20
  %170 = mul nuw nsw i64 %169, 480
  %scevgep224.1 = getelementptr i8, i8* %scevgep223.1, i64 %170
  %scevgep224225.1 = bitcast i8* %scevgep224.1 to double*
  %_p_scalar_226.1 = load double, double* %scevgep224225.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_230.pre.1, %_p_scalar_226.1
  %scevgep232.1 = getelementptr i8, i8* %scevgep227.1, i64 %170
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_238.pre.1, %_p_scalar_234.1
  %171 = shl i64 %169, 3
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %171
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_242.1
  store double %p_add42.i118.1, double* %scevgep240241.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar220.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond751.1.not = icmp eq i64 %indvars.iv.next.1, 60
  br i1 %exitcond751.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %exitcond752.1.not = icmp eq i64 %polly.indvar_next209.1, 60
  br i1 %exitcond752.1.not, label %polly.loop_header205.2, label %polly.loop_header205.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit213.2
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit213.2 ], [ 0, %polly.loop_exit213.1 ]
  %172 = shl nuw nsw i64 %polly.indvar208.2, 3
  %scevgep223.2 = getelementptr i8, i8* %call1, i64 %172
  %scevgep227.2 = getelementptr i8, i8* %call2, i64 %172
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_header205.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_header205.2 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 40, %polly.loop_header205.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 19)
  %173 = mul nuw nsw i64 %polly.indvar214.2, 480
  %scevgep228.2 = getelementptr i8, i8* %scevgep227.2, i64 %173
  %scevgep228229.2 = bitcast i8* %scevgep228.2 to double*
  %scevgep236.2 = getelementptr i8, i8* %scevgep223.2, i64 %173
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %174 = mul nuw nsw i64 %polly.indvar214.2, 640
  %scevgep239.2 = getelementptr i8, i8* %call, i64 %174
  %_p_scalar_230.pre.2 = load double, double* %scevgep228229.2, align 8, !alias.scope !66, !noalias !70
  %_p_scalar_238.pre.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %175 = add nuw nsw i64 %polly.indvar220.2, 40
  %176 = mul nuw nsw i64 %175, 480
  %scevgep224.2 = getelementptr i8, i8* %scevgep223.2, i64 %176
  %scevgep224225.2 = bitcast i8* %scevgep224.2 to double*
  %_p_scalar_226.2 = load double, double* %scevgep224225.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_230.pre.2, %_p_scalar_226.2
  %scevgep232.2 = getelementptr i8, i8* %scevgep227.2, i64 %176
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_238.pre.2, %_p_scalar_234.2
  %177 = shl i64 %175, 3
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %177
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_242.2
  store double %p_add42.i118.2, double* %scevgep240241.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar220.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_header217.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond751.2.not = icmp eq i64 %indvars.iv.next.2, 40
  br i1 %exitcond751.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_exit219.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %exitcond752.2.not = icmp eq i64 %polly.indvar_next209.2, 60
  br i1 %exitcond752.2.not, label %polly.loop_header205.3, label %polly.loop_header205.2

polly.loop_header205.3:                           ; preds = %polly.loop_exit213.2, %polly.loop_exit213.3
  %polly.indvar208.3 = phi i64 [ %polly.indvar_next209.3, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit213.2 ]
  %178 = shl nuw nsw i64 %polly.indvar208.3, 3
  %scevgep223.3 = getelementptr i8, i8* %call1, i64 %178
  %scevgep227.3 = getelementptr i8, i8* %call2, i64 %178
  br label %polly.loop_header211.3

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.3, %polly.loop_header205.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_header205.3 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 60, %polly.loop_header205.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 19)
  %179 = mul nuw nsw i64 %polly.indvar214.3, 480
  %scevgep228.3 = getelementptr i8, i8* %scevgep227.3, i64 %179
  %scevgep228229.3 = bitcast i8* %scevgep228.3 to double*
  %scevgep236.3 = getelementptr i8, i8* %scevgep223.3, i64 %179
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %180 = mul nuw nsw i64 %polly.indvar214.3, 640
  %scevgep239.3 = getelementptr i8, i8* %call, i64 %180
  %_p_scalar_230.pre.3 = load double, double* %scevgep228229.3, align 8, !alias.scope !66, !noalias !70
  %_p_scalar_238.pre.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_header217.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_header217.3 ]
  %181 = add nuw nsw i64 %polly.indvar220.3, 60
  %182 = mul nuw nsw i64 %181, 480
  %scevgep224.3 = getelementptr i8, i8* %scevgep223.3, i64 %182
  %scevgep224225.3 = bitcast i8* %scevgep224.3 to double*
  %_p_scalar_226.3 = load double, double* %scevgep224225.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_230.pre.3, %_p_scalar_226.3
  %scevgep232.3 = getelementptr i8, i8* %scevgep227.3, i64 %182
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_238.pre.3, %_p_scalar_234.3
  %183 = shl i64 %181, 3
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %183
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_242.3
  store double %p_add42.i118.3, double* %scevgep240241.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar220.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond751.3.not = icmp eq i64 %indvars.iv.next.3, 20
  br i1 %exitcond751.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %exitcond752.3.not = icmp eq i64 %polly.indvar_next209.3, 60
  br i1 %exitcond752.3.not, label %kernel_syr2k.exit129, label %polly.loop_header205.3

polly.loop_header351.1:                           ; preds = %polly.loop_exit359, %polly.loop_exit359.1
  %polly.indvar354.1 = phi i64 [ %polly.indvar_next355.1, %polly.loop_exit359.1 ], [ 0, %polly.loop_exit359 ]
  %184 = shl nuw nsw i64 %polly.indvar354.1, 3
  %scevgep369.1 = getelementptr i8, i8* %call1, i64 %184
  %scevgep373.1 = getelementptr i8, i8* %call2, i64 %184
  br label %polly.loop_header357.1

polly.loop_header357.1:                           ; preds = %polly.loop_exit365.1, %polly.loop_header351.1
  %indvars.iv756.1 = phi i64 [ %indvars.iv.next757.1, %polly.loop_exit365.1 ], [ 0, %polly.loop_header351.1 ]
  %polly.indvar360.1 = phi i64 [ %polly.indvar_next361.1, %polly.loop_exit365.1 ], [ 20, %polly.loop_header351.1 ]
  %smin758.1 = call i64 @llvm.smin.i64(i64 %indvars.iv756.1, i64 19)
  %185 = mul nuw nsw i64 %polly.indvar360.1, 480
  %scevgep374.1 = getelementptr i8, i8* %scevgep373.1, i64 %185
  %scevgep374375.1 = bitcast i8* %scevgep374.1 to double*
  %scevgep382.1 = getelementptr i8, i8* %scevgep369.1, i64 %185
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %186 = mul nuw nsw i64 %polly.indvar360.1, 640
  %scevgep385.1 = getelementptr i8, i8* %call, i64 %186
  %_p_scalar_376.pre.1 = load double, double* %scevgep374375.1, align 8, !alias.scope !76, !noalias !79
  %_p_scalar_384.pre.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header363.1

polly.loop_header363.1:                           ; preds = %polly.loop_header363.1, %polly.loop_header357.1
  %polly.indvar366.1 = phi i64 [ 0, %polly.loop_header357.1 ], [ %polly.indvar_next367.1, %polly.loop_header363.1 ]
  %187 = add nuw nsw i64 %polly.indvar366.1, 20
  %188 = mul nuw nsw i64 %187, 480
  %scevgep370.1 = getelementptr i8, i8* %scevgep369.1, i64 %188
  %scevgep370371.1 = bitcast i8* %scevgep370.1 to double*
  %_p_scalar_372.1 = load double, double* %scevgep370371.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_376.pre.1, %_p_scalar_372.1
  %scevgep378.1 = getelementptr i8, i8* %scevgep373.1, i64 %188
  %scevgep378379.1 = bitcast i8* %scevgep378.1 to double*
  %_p_scalar_380.1 = load double, double* %scevgep378379.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_384.pre.1, %_p_scalar_380.1
  %189 = shl i64 %187, 3
  %scevgep386.1 = getelementptr i8, i8* %scevgep385.1, i64 %189
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_388.1
  store double %p_add42.i79.1, double* %scevgep386387.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next367.1 = add nuw nsw i64 %polly.indvar366.1, 1
  %exitcond759.1.not = icmp eq i64 %polly.indvar366.1, %smin758.1
  br i1 %exitcond759.1.not, label %polly.loop_exit365.1, label %polly.loop_header363.1

polly.loop_exit365.1:                             ; preds = %polly.loop_header363.1
  %polly.indvar_next361.1 = add nuw nsw i64 %polly.indvar360.1, 1
  %indvars.iv.next757.1 = add nuw nsw i64 %indvars.iv756.1, 1
  %exitcond762.1.not = icmp eq i64 %indvars.iv.next757.1, 60
  br i1 %exitcond762.1.not, label %polly.loop_exit359.1, label %polly.loop_header357.1

polly.loop_exit359.1:                             ; preds = %polly.loop_exit365.1
  %polly.indvar_next355.1 = add nuw nsw i64 %polly.indvar354.1, 1
  %exitcond763.1.not = icmp eq i64 %polly.indvar_next355.1, 60
  br i1 %exitcond763.1.not, label %polly.loop_header351.2, label %polly.loop_header351.1

polly.loop_header351.2:                           ; preds = %polly.loop_exit359.1, %polly.loop_exit359.2
  %polly.indvar354.2 = phi i64 [ %polly.indvar_next355.2, %polly.loop_exit359.2 ], [ 0, %polly.loop_exit359.1 ]
  %190 = shl nuw nsw i64 %polly.indvar354.2, 3
  %scevgep369.2 = getelementptr i8, i8* %call1, i64 %190
  %scevgep373.2 = getelementptr i8, i8* %call2, i64 %190
  br label %polly.loop_header357.2

polly.loop_header357.2:                           ; preds = %polly.loop_exit365.2, %polly.loop_header351.2
  %indvars.iv756.2 = phi i64 [ %indvars.iv.next757.2, %polly.loop_exit365.2 ], [ 0, %polly.loop_header351.2 ]
  %polly.indvar360.2 = phi i64 [ %polly.indvar_next361.2, %polly.loop_exit365.2 ], [ 40, %polly.loop_header351.2 ]
  %smin758.2 = call i64 @llvm.smin.i64(i64 %indvars.iv756.2, i64 19)
  %191 = mul nuw nsw i64 %polly.indvar360.2, 480
  %scevgep374.2 = getelementptr i8, i8* %scevgep373.2, i64 %191
  %scevgep374375.2 = bitcast i8* %scevgep374.2 to double*
  %scevgep382.2 = getelementptr i8, i8* %scevgep369.2, i64 %191
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %192 = mul nuw nsw i64 %polly.indvar360.2, 640
  %scevgep385.2 = getelementptr i8, i8* %call, i64 %192
  %_p_scalar_376.pre.2 = load double, double* %scevgep374375.2, align 8, !alias.scope !76, !noalias !79
  %_p_scalar_384.pre.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header363.2

polly.loop_header363.2:                           ; preds = %polly.loop_header363.2, %polly.loop_header357.2
  %polly.indvar366.2 = phi i64 [ 0, %polly.loop_header357.2 ], [ %polly.indvar_next367.2, %polly.loop_header363.2 ]
  %193 = add nuw nsw i64 %polly.indvar366.2, 40
  %194 = mul nuw nsw i64 %193, 480
  %scevgep370.2 = getelementptr i8, i8* %scevgep369.2, i64 %194
  %scevgep370371.2 = bitcast i8* %scevgep370.2 to double*
  %_p_scalar_372.2 = load double, double* %scevgep370371.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_376.pre.2, %_p_scalar_372.2
  %scevgep378.2 = getelementptr i8, i8* %scevgep373.2, i64 %194
  %scevgep378379.2 = bitcast i8* %scevgep378.2 to double*
  %_p_scalar_380.2 = load double, double* %scevgep378379.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_384.pre.2, %_p_scalar_380.2
  %195 = shl i64 %193, 3
  %scevgep386.2 = getelementptr i8, i8* %scevgep385.2, i64 %195
  %scevgep386387.2 = bitcast i8* %scevgep386.2 to double*
  %_p_scalar_388.2 = load double, double* %scevgep386387.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_388.2
  store double %p_add42.i79.2, double* %scevgep386387.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next367.2 = add nuw nsw i64 %polly.indvar366.2, 1
  %exitcond759.2.not = icmp eq i64 %polly.indvar366.2, %smin758.2
  br i1 %exitcond759.2.not, label %polly.loop_exit365.2, label %polly.loop_header363.2

polly.loop_exit365.2:                             ; preds = %polly.loop_header363.2
  %polly.indvar_next361.2 = add nuw nsw i64 %polly.indvar360.2, 1
  %indvars.iv.next757.2 = add nuw nsw i64 %indvars.iv756.2, 1
  %exitcond762.2.not = icmp eq i64 %indvars.iv.next757.2, 40
  br i1 %exitcond762.2.not, label %polly.loop_exit359.2, label %polly.loop_header357.2

polly.loop_exit359.2:                             ; preds = %polly.loop_exit365.2
  %polly.indvar_next355.2 = add nuw nsw i64 %polly.indvar354.2, 1
  %exitcond763.2.not = icmp eq i64 %polly.indvar_next355.2, 60
  br i1 %exitcond763.2.not, label %polly.loop_header351.3, label %polly.loop_header351.2

polly.loop_header351.3:                           ; preds = %polly.loop_exit359.2, %polly.loop_exit359.3
  %polly.indvar354.3 = phi i64 [ %polly.indvar_next355.3, %polly.loop_exit359.3 ], [ 0, %polly.loop_exit359.2 ]
  %196 = shl nuw nsw i64 %polly.indvar354.3, 3
  %scevgep369.3 = getelementptr i8, i8* %call1, i64 %196
  %scevgep373.3 = getelementptr i8, i8* %call2, i64 %196
  br label %polly.loop_header357.3

polly.loop_header357.3:                           ; preds = %polly.loop_exit365.3, %polly.loop_header351.3
  %indvars.iv756.3 = phi i64 [ %indvars.iv.next757.3, %polly.loop_exit365.3 ], [ 0, %polly.loop_header351.3 ]
  %polly.indvar360.3 = phi i64 [ %polly.indvar_next361.3, %polly.loop_exit365.3 ], [ 60, %polly.loop_header351.3 ]
  %smin758.3 = call i64 @llvm.smin.i64(i64 %indvars.iv756.3, i64 19)
  %197 = mul nuw nsw i64 %polly.indvar360.3, 480
  %scevgep374.3 = getelementptr i8, i8* %scevgep373.3, i64 %197
  %scevgep374375.3 = bitcast i8* %scevgep374.3 to double*
  %scevgep382.3 = getelementptr i8, i8* %scevgep369.3, i64 %197
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %198 = mul nuw nsw i64 %polly.indvar360.3, 640
  %scevgep385.3 = getelementptr i8, i8* %call, i64 %198
  %_p_scalar_376.pre.3 = load double, double* %scevgep374375.3, align 8, !alias.scope !76, !noalias !79
  %_p_scalar_384.pre.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header363.3

polly.loop_header363.3:                           ; preds = %polly.loop_header363.3, %polly.loop_header357.3
  %polly.indvar366.3 = phi i64 [ 0, %polly.loop_header357.3 ], [ %polly.indvar_next367.3, %polly.loop_header363.3 ]
  %199 = add nuw nsw i64 %polly.indvar366.3, 60
  %200 = mul nuw nsw i64 %199, 480
  %scevgep370.3 = getelementptr i8, i8* %scevgep369.3, i64 %200
  %scevgep370371.3 = bitcast i8* %scevgep370.3 to double*
  %_p_scalar_372.3 = load double, double* %scevgep370371.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_376.pre.3, %_p_scalar_372.3
  %scevgep378.3 = getelementptr i8, i8* %scevgep373.3, i64 %200
  %scevgep378379.3 = bitcast i8* %scevgep378.3 to double*
  %_p_scalar_380.3 = load double, double* %scevgep378379.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_384.pre.3, %_p_scalar_380.3
  %201 = shl i64 %199, 3
  %scevgep386.3 = getelementptr i8, i8* %scevgep385.3, i64 %201
  %scevgep386387.3 = bitcast i8* %scevgep386.3 to double*
  %_p_scalar_388.3 = load double, double* %scevgep386387.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_388.3
  store double %p_add42.i79.3, double* %scevgep386387.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next367.3 = add nuw nsw i64 %polly.indvar366.3, 1
  %exitcond759.3.not = icmp eq i64 %polly.indvar366.3, %smin758.3
  br i1 %exitcond759.3.not, label %polly.loop_exit365.3, label %polly.loop_header363.3

polly.loop_exit365.3:                             ; preds = %polly.loop_header363.3
  %polly.indvar_next361.3 = add nuw nsw i64 %polly.indvar360.3, 1
  %indvars.iv.next757.3 = add nuw nsw i64 %indvars.iv756.3, 1
  %exitcond762.3.not = icmp eq i64 %indvars.iv.next757.3, 20
  br i1 %exitcond762.3.not, label %polly.loop_exit359.3, label %polly.loop_header357.3

polly.loop_exit359.3:                             ; preds = %polly.loop_exit365.3
  %polly.indvar_next355.3 = add nuw nsw i64 %polly.indvar354.3, 1
  %exitcond763.3.not = icmp eq i64 %polly.indvar_next355.3, 60
  br i1 %exitcond763.3.not, label %kernel_syr2k.exit90, label %polly.loop_header351.3

polly.loop_header497.1:                           ; preds = %polly.loop_exit505, %polly.loop_exit505.1
  %polly.indvar500.1 = phi i64 [ %polly.indvar_next501.1, %polly.loop_exit505.1 ], [ 0, %polly.loop_exit505 ]
  %202 = shl nuw nsw i64 %polly.indvar500.1, 3
  %scevgep515.1 = getelementptr i8, i8* %call1, i64 %202
  %scevgep519.1 = getelementptr i8, i8* %call2, i64 %202
  br label %polly.loop_header503.1

polly.loop_header503.1:                           ; preds = %polly.loop_exit511.1, %polly.loop_header497.1
  %indvars.iv767.1 = phi i64 [ %indvars.iv.next768.1, %polly.loop_exit511.1 ], [ 0, %polly.loop_header497.1 ]
  %polly.indvar506.1 = phi i64 [ %polly.indvar_next507.1, %polly.loop_exit511.1 ], [ 20, %polly.loop_header497.1 ]
  %smin769.1 = call i64 @llvm.smin.i64(i64 %indvars.iv767.1, i64 19)
  %203 = mul nuw nsw i64 %polly.indvar506.1, 480
  %scevgep520.1 = getelementptr i8, i8* %scevgep519.1, i64 %203
  %scevgep520521.1 = bitcast i8* %scevgep520.1 to double*
  %scevgep528.1 = getelementptr i8, i8* %scevgep515.1, i64 %203
  %scevgep528529.1 = bitcast i8* %scevgep528.1 to double*
  %204 = mul nuw nsw i64 %polly.indvar506.1, 640
  %scevgep531.1 = getelementptr i8, i8* %call, i64 %204
  %_p_scalar_522.pre.1 = load double, double* %scevgep520521.1, align 8, !alias.scope !85, !noalias !88
  %_p_scalar_530.pre.1 = load double, double* %scevgep528529.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header509.1

polly.loop_header509.1:                           ; preds = %polly.loop_header509.1, %polly.loop_header503.1
  %polly.indvar512.1 = phi i64 [ 0, %polly.loop_header503.1 ], [ %polly.indvar_next513.1, %polly.loop_header509.1 ]
  %205 = add nuw nsw i64 %polly.indvar512.1, 20
  %206 = mul nuw nsw i64 %205, 480
  %scevgep516.1 = getelementptr i8, i8* %scevgep515.1, i64 %206
  %scevgep516517.1 = bitcast i8* %scevgep516.1 to double*
  %_p_scalar_518.1 = load double, double* %scevgep516517.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_522.pre.1, %_p_scalar_518.1
  %scevgep524.1 = getelementptr i8, i8* %scevgep519.1, i64 %206
  %scevgep524525.1 = bitcast i8* %scevgep524.1 to double*
  %_p_scalar_526.1 = load double, double* %scevgep524525.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_530.pre.1, %_p_scalar_526.1
  %207 = shl i64 %205, 3
  %scevgep532.1 = getelementptr i8, i8* %scevgep531.1, i64 %207
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_534.1
  store double %p_add42.i.1, double* %scevgep532533.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next513.1 = add nuw nsw i64 %polly.indvar512.1, 1
  %exitcond770.1.not = icmp eq i64 %polly.indvar512.1, %smin769.1
  br i1 %exitcond770.1.not, label %polly.loop_exit511.1, label %polly.loop_header509.1

polly.loop_exit511.1:                             ; preds = %polly.loop_header509.1
  %polly.indvar_next507.1 = add nuw nsw i64 %polly.indvar506.1, 1
  %indvars.iv.next768.1 = add nuw nsw i64 %indvars.iv767.1, 1
  %exitcond773.1.not = icmp eq i64 %indvars.iv.next768.1, 60
  br i1 %exitcond773.1.not, label %polly.loop_exit505.1, label %polly.loop_header503.1

polly.loop_exit505.1:                             ; preds = %polly.loop_exit511.1
  %polly.indvar_next501.1 = add nuw nsw i64 %polly.indvar500.1, 1
  %exitcond774.1.not = icmp eq i64 %polly.indvar_next501.1, 60
  br i1 %exitcond774.1.not, label %polly.loop_header497.2, label %polly.loop_header497.1

polly.loop_header497.2:                           ; preds = %polly.loop_exit505.1, %polly.loop_exit505.2
  %polly.indvar500.2 = phi i64 [ %polly.indvar_next501.2, %polly.loop_exit505.2 ], [ 0, %polly.loop_exit505.1 ]
  %208 = shl nuw nsw i64 %polly.indvar500.2, 3
  %scevgep515.2 = getelementptr i8, i8* %call1, i64 %208
  %scevgep519.2 = getelementptr i8, i8* %call2, i64 %208
  br label %polly.loop_header503.2

polly.loop_header503.2:                           ; preds = %polly.loop_exit511.2, %polly.loop_header497.2
  %indvars.iv767.2 = phi i64 [ %indvars.iv.next768.2, %polly.loop_exit511.2 ], [ 0, %polly.loop_header497.2 ]
  %polly.indvar506.2 = phi i64 [ %polly.indvar_next507.2, %polly.loop_exit511.2 ], [ 40, %polly.loop_header497.2 ]
  %smin769.2 = call i64 @llvm.smin.i64(i64 %indvars.iv767.2, i64 19)
  %209 = mul nuw nsw i64 %polly.indvar506.2, 480
  %scevgep520.2 = getelementptr i8, i8* %scevgep519.2, i64 %209
  %scevgep520521.2 = bitcast i8* %scevgep520.2 to double*
  %scevgep528.2 = getelementptr i8, i8* %scevgep515.2, i64 %209
  %scevgep528529.2 = bitcast i8* %scevgep528.2 to double*
  %210 = mul nuw nsw i64 %polly.indvar506.2, 640
  %scevgep531.2 = getelementptr i8, i8* %call, i64 %210
  %_p_scalar_522.pre.2 = load double, double* %scevgep520521.2, align 8, !alias.scope !85, !noalias !88
  %_p_scalar_530.pre.2 = load double, double* %scevgep528529.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header509.2

polly.loop_header509.2:                           ; preds = %polly.loop_header509.2, %polly.loop_header503.2
  %polly.indvar512.2 = phi i64 [ 0, %polly.loop_header503.2 ], [ %polly.indvar_next513.2, %polly.loop_header509.2 ]
  %211 = add nuw nsw i64 %polly.indvar512.2, 40
  %212 = mul nuw nsw i64 %211, 480
  %scevgep516.2 = getelementptr i8, i8* %scevgep515.2, i64 %212
  %scevgep516517.2 = bitcast i8* %scevgep516.2 to double*
  %_p_scalar_518.2 = load double, double* %scevgep516517.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_522.pre.2, %_p_scalar_518.2
  %scevgep524.2 = getelementptr i8, i8* %scevgep519.2, i64 %212
  %scevgep524525.2 = bitcast i8* %scevgep524.2 to double*
  %_p_scalar_526.2 = load double, double* %scevgep524525.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_530.pre.2, %_p_scalar_526.2
  %213 = shl i64 %211, 3
  %scevgep532.2 = getelementptr i8, i8* %scevgep531.2, i64 %213
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_534.2
  store double %p_add42.i.2, double* %scevgep532533.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next513.2 = add nuw nsw i64 %polly.indvar512.2, 1
  %exitcond770.2.not = icmp eq i64 %polly.indvar512.2, %smin769.2
  br i1 %exitcond770.2.not, label %polly.loop_exit511.2, label %polly.loop_header509.2

polly.loop_exit511.2:                             ; preds = %polly.loop_header509.2
  %polly.indvar_next507.2 = add nuw nsw i64 %polly.indvar506.2, 1
  %indvars.iv.next768.2 = add nuw nsw i64 %indvars.iv767.2, 1
  %exitcond773.2.not = icmp eq i64 %indvars.iv.next768.2, 40
  br i1 %exitcond773.2.not, label %polly.loop_exit505.2, label %polly.loop_header503.2

polly.loop_exit505.2:                             ; preds = %polly.loop_exit511.2
  %polly.indvar_next501.2 = add nuw nsw i64 %polly.indvar500.2, 1
  %exitcond774.2.not = icmp eq i64 %polly.indvar_next501.2, 60
  br i1 %exitcond774.2.not, label %polly.loop_header497.3, label %polly.loop_header497.2

polly.loop_header497.3:                           ; preds = %polly.loop_exit505.2, %polly.loop_exit505.3
  %polly.indvar500.3 = phi i64 [ %polly.indvar_next501.3, %polly.loop_exit505.3 ], [ 0, %polly.loop_exit505.2 ]
  %214 = shl nuw nsw i64 %polly.indvar500.3, 3
  %scevgep515.3 = getelementptr i8, i8* %call1, i64 %214
  %scevgep519.3 = getelementptr i8, i8* %call2, i64 %214
  br label %polly.loop_header503.3

polly.loop_header503.3:                           ; preds = %polly.loop_exit511.3, %polly.loop_header497.3
  %indvars.iv767.3 = phi i64 [ %indvars.iv.next768.3, %polly.loop_exit511.3 ], [ 0, %polly.loop_header497.3 ]
  %polly.indvar506.3 = phi i64 [ %polly.indvar_next507.3, %polly.loop_exit511.3 ], [ 60, %polly.loop_header497.3 ]
  %smin769.3 = call i64 @llvm.smin.i64(i64 %indvars.iv767.3, i64 19)
  %215 = mul nuw nsw i64 %polly.indvar506.3, 480
  %scevgep520.3 = getelementptr i8, i8* %scevgep519.3, i64 %215
  %scevgep520521.3 = bitcast i8* %scevgep520.3 to double*
  %scevgep528.3 = getelementptr i8, i8* %scevgep515.3, i64 %215
  %scevgep528529.3 = bitcast i8* %scevgep528.3 to double*
  %216 = mul nuw nsw i64 %polly.indvar506.3, 640
  %scevgep531.3 = getelementptr i8, i8* %call, i64 %216
  %_p_scalar_522.pre.3 = load double, double* %scevgep520521.3, align 8, !alias.scope !85, !noalias !88
  %_p_scalar_530.pre.3 = load double, double* %scevgep528529.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header509.3

polly.loop_header509.3:                           ; preds = %polly.loop_header509.3, %polly.loop_header503.3
  %polly.indvar512.3 = phi i64 [ 0, %polly.loop_header503.3 ], [ %polly.indvar_next513.3, %polly.loop_header509.3 ]
  %217 = add nuw nsw i64 %polly.indvar512.3, 60
  %218 = mul nuw nsw i64 %217, 480
  %scevgep516.3 = getelementptr i8, i8* %scevgep515.3, i64 %218
  %scevgep516517.3 = bitcast i8* %scevgep516.3 to double*
  %_p_scalar_518.3 = load double, double* %scevgep516517.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_522.pre.3, %_p_scalar_518.3
  %scevgep524.3 = getelementptr i8, i8* %scevgep519.3, i64 %218
  %scevgep524525.3 = bitcast i8* %scevgep524.3 to double*
  %_p_scalar_526.3 = load double, double* %scevgep524525.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_530.pre.3, %_p_scalar_526.3
  %219 = shl i64 %217, 3
  %scevgep532.3 = getelementptr i8, i8* %scevgep531.3, i64 %219
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_534.3
  store double %p_add42.i.3, double* %scevgep532533.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next513.3 = add nuw nsw i64 %polly.indvar512.3, 1
  %exitcond770.3.not = icmp eq i64 %polly.indvar512.3, %smin769.3
  br i1 %exitcond770.3.not, label %polly.loop_exit511.3, label %polly.loop_header509.3

polly.loop_exit511.3:                             ; preds = %polly.loop_header509.3
  %polly.indvar_next507.3 = add nuw nsw i64 %polly.indvar506.3, 1
  %indvars.iv.next768.3 = add nuw nsw i64 %indvars.iv767.3, 1
  %exitcond773.3.not = icmp eq i64 %indvars.iv.next768.3, 20
  br i1 %exitcond773.3.not, label %polly.loop_exit505.3, label %polly.loop_header503.3

polly.loop_exit505.3:                             ; preds = %polly.loop_exit511.3
  %polly.indvar_next501.3 = add nuw nsw i64 %polly.indvar500.3, 1
  %exitcond774.3.not = icmp eq i64 %polly.indvar_next501.3, 60
  br i1 %exitcond774.3.not, label %kernel_syr2k.exit, label %polly.loop_header497.3

polly.loop_header726.1:                           ; preds = %polly.loop_exit734, %polly.loop_exit734.1
  %polly.indvar729.1 = phi i64 [ %polly.indvar_next730.1, %polly.loop_exit734.1 ], [ 0, %polly.loop_exit734 ]
  %220 = mul nuw nsw i64 %polly.indvar729.1, 480
  %221 = trunc i64 %polly.indvar729.1 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %polly.loop_header726.1
  %index1094 = phi i64 [ 0, %polly.loop_header726.1 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1098 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header726.1 ], [ %vec.ind.next1099, %vector.body1092 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1098, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1101, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !93, !noalias !98
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1099 = add <4 x i64> %vec.ind1098, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1095, 28
  br i1 %234, label %polly.loop_exit734.1, label %vector.body1092, !llvm.loop !100

polly.loop_exit734.1:                             ; preds = %vector.body1092
  %polly.indvar_next730.1 = add nuw nsw i64 %polly.indvar729.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next730.1, 32
  br i1 %exitcond782.1.not, label %polly.loop_header726.1805, label %polly.loop_header726.1

polly.loop_header726.1805:                        ; preds = %polly.loop_exit734.1, %polly.loop_exit734.1816
  %polly.indvar729.1804 = phi i64 [ %polly.indvar_next730.1814, %polly.loop_exit734.1816 ], [ 0, %polly.loop_exit734.1 ]
  %235 = add nuw nsw i64 %polly.indvar729.1804, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header726.1805
  %index1106 = phi i64 [ 0, %polly.loop_header726.1805 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1112 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header726.1805 ], [ %vec.ind.next1113, %vector.body1104 ]
  %238 = mul <4 x i32> %vec.ind1112, %broadcast.splat1115
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1106, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !93, !noalias !98
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1113 = add <4 x i32> %vec.ind1112, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1107, 32
  br i1 %247, label %polly.loop_exit734.1816, label %vector.body1104, !llvm.loop !101

polly.loop_exit734.1816:                          ; preds = %vector.body1104
  %polly.indvar_next730.1814 = add nuw nsw i64 %polly.indvar729.1804, 1
  %exitcond782.1815.not = icmp eq i64 %polly.indvar_next730.1814, 32
  br i1 %exitcond782.1815.not, label %polly.loop_header726.1.1, label %polly.loop_header726.1805

polly.loop_header726.1.1:                         ; preds = %polly.loop_exit734.1816, %polly.loop_exit734.1.1
  %polly.indvar729.1.1 = phi i64 [ %polly.indvar_next730.1.1, %polly.loop_exit734.1.1 ], [ 0, %polly.loop_exit734.1816 ]
  %248 = add nuw nsw i64 %polly.indvar729.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header726.1.1
  %index1120 = phi i64 [ 0, %polly.loop_header726.1.1 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1124 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header726.1.1 ], [ %vec.ind.next1125, %vector.body1118 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1124, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1127, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !93, !noalias !98
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1125 = add <4 x i64> %vec.ind1124, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1121, 28
  br i1 %263, label %polly.loop_exit734.1.1, label %vector.body1118, !llvm.loop !102

polly.loop_exit734.1.1:                           ; preds = %vector.body1118
  %polly.indvar_next730.1.1 = add nuw nsw i64 %polly.indvar729.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar_next730.1.1, 32
  br i1 %exitcond782.1.1.not, label %polly.loop_header726.2, label %polly.loop_header726.1.1

polly.loop_header726.2:                           ; preds = %polly.loop_exit734.1.1, %polly.loop_exit734.2
  %polly.indvar729.2 = phi i64 [ %polly.indvar_next730.2, %polly.loop_exit734.2 ], [ 0, %polly.loop_exit734.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar729.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header726.2
  %index1132 = phi i64 [ 0, %polly.loop_header726.2 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1138 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header726.2 ], [ %vec.ind.next1139, %vector.body1130 ]
  %267 = mul <4 x i32> %vec.ind1138, %broadcast.splat1141
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1132, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !93, !noalias !98
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1139 = add <4 x i32> %vec.ind1138, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1133, 32
  br i1 %276, label %polly.loop_exit734.2, label %vector.body1130, !llvm.loop !103

polly.loop_exit734.2:                             ; preds = %vector.body1130
  %polly.indvar_next730.2 = add nuw nsw i64 %polly.indvar729.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar_next730.2, 16
  br i1 %exitcond782.2.not, label %polly.loop_header726.1.2, label %polly.loop_header726.2

polly.loop_header726.1.2:                         ; preds = %polly.loop_exit734.2, %polly.loop_exit734.1.2
  %polly.indvar729.1.2 = phi i64 [ %polly.indvar_next730.1.2, %polly.loop_exit734.1.2 ], [ 0, %polly.loop_exit734.2 ]
  %277 = add nuw nsw i64 %polly.indvar729.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header726.1.2
  %index1146 = phi i64 [ 0, %polly.loop_header726.1.2 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1150 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header726.1.2 ], [ %vec.ind.next1151, %vector.body1144 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1150, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1153, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !93, !noalias !98
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1151 = add <4 x i64> %vec.ind1150, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1147, 28
  br i1 %292, label %polly.loop_exit734.1.2, label %vector.body1144, !llvm.loop !104

polly.loop_exit734.1.2:                           ; preds = %vector.body1144
  %polly.indvar_next730.1.2 = add nuw nsw i64 %polly.indvar729.1.2, 1
  %exitcond782.1.2.not = icmp eq i64 %polly.indvar_next730.1.2, 16
  br i1 %exitcond782.1.2.not, label %init_array.exit, label %polly.loop_header726.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %293 = mul nuw nsw i64 %polly.indvar703.1, 480
  %294 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %polly.loop_header700.1
  %index1016 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next1017, %vector.body1014 ]
  %vec.ind1020 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next1021, %vector.body1014 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1020, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1023, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !94, !noalias !96
  %index.next1017 = add i64 %index1016, 4
  %vec.ind.next1021 = add <4 x i64> %vec.ind1020, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1017, 28
  br i1 %307, label %polly.loop_exit708.1, label %vector.body1014, !llvm.loop !105

polly.loop_exit708.1:                             ; preds = %vector.body1014
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond788.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond788.1.not, label %polly.loop_header700.1819, label %polly.loop_header700.1

polly.loop_header700.1819:                        ; preds = %polly.loop_exit708.1, %polly.loop_exit708.1830
  %polly.indvar703.1818 = phi i64 [ %polly.indvar_next704.1828, %polly.loop_exit708.1830 ], [ 0, %polly.loop_exit708.1 ]
  %308 = add nuw nsw i64 %polly.indvar703.1818, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1036 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1037 = shufflevector <4 x i32> %broadcast.splatinsert1036, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header700.1819
  %index1028 = phi i64 [ 0, %polly.loop_header700.1819 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1034 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1819 ], [ %vec.ind.next1035, %vector.body1026 ]
  %311 = mul <4 x i32> %vec.ind1034, %broadcast.splat1037
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1028, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !94, !noalias !96
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1035 = add <4 x i32> %vec.ind1034, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1029, 32
  br i1 %320, label %polly.loop_exit708.1830, label %vector.body1026, !llvm.loop !106

polly.loop_exit708.1830:                          ; preds = %vector.body1026
  %polly.indvar_next704.1828 = add nuw nsw i64 %polly.indvar703.1818, 1
  %exitcond788.1829.not = icmp eq i64 %polly.indvar_next704.1828, 32
  br i1 %exitcond788.1829.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1819

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1830, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1830 ]
  %321 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %polly.loop_header700.1.1
  %index1042 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1046 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next1047, %vector.body1040 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1046, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1049, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !94, !noalias !96
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1047 = add <4 x i64> %vec.ind1046, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1043, 28
  br i1 %336, label %polly.loop_exit708.1.1, label %vector.body1040, !llvm.loop !107

polly.loop_exit708.1.1:                           ; preds = %vector.body1040
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond788.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond788.1.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar703.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %polly.loop_header700.2
  %index1054 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next1055, %vector.body1052 ]
  %vec.ind1060 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2 ], [ %vec.ind.next1061, %vector.body1052 ]
  %340 = mul <4 x i32> %vec.ind1060, %broadcast.splat1063
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1054, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !94, !noalias !96
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1061 = add <4 x i32> %vec.ind1060, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1055, 32
  br i1 %349, label %polly.loop_exit708.2, label %vector.body1052, !llvm.loop !108

polly.loop_exit708.2:                             ; preds = %vector.body1052
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond788.2.not = icmp eq i64 %polly.indvar_next704.2, 16
  br i1 %exitcond788.2.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2 ]
  %350 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %polly.loop_header700.1.2
  %index1068 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1069, %vector.body1066 ]
  %vec.ind1072 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1073, %vector.body1066 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1072, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1075, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !94, !noalias !96
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1073 = add <4 x i64> %vec.ind1072, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1069, 28
  br i1 %365, label %polly.loop_exit708.1.2, label %vector.body1066, !llvm.loop !109

polly.loop_exit708.1.2:                           ; preds = %vector.body1066
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond788.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond788.1.2.not, label %polly.loop_header726, label %polly.loop_header700.1.2

polly.loop_header673.1:                           ; preds = %polly.loop_exit681, %polly.loop_exit681.1
  %polly.indvar676.1 = phi i64 [ %polly.indvar_next677.1, %polly.loop_exit681.1 ], [ 0, %polly.loop_exit681 ]
  %366 = mul nuw nsw i64 %polly.indvar676.1, 640
  %367 = trunc i64 %polly.indvar676.1 to i32
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body900

vector.body900:                                   ; preds = %vector.body900, %polly.loop_header673.1
  %index902 = phi i64 [ 0, %polly.loop_header673.1 ], [ %index.next903, %vector.body900 ]
  %vec.ind906 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header673.1 ], [ %vec.ind.next907, %vector.body900 ]
  %368 = add nuw nsw <4 x i64> %vec.ind906, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat909, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !90, !noalias !92
  %index.next903 = add i64 %index902, 4
  %vec.ind.next907 = add <4 x i64> %vec.ind906, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next903, 32
  br i1 %380, label %polly.loop_exit681.1, label %vector.body900, !llvm.loop !110

polly.loop_exit681.1:                             ; preds = %vector.body900
  %polly.indvar_next677.1 = add nuw nsw i64 %polly.indvar676.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next677.1, 32
  br i1 %exitcond797.1.not, label %polly.loop_header673.2, label %polly.loop_header673.1

polly.loop_header673.2:                           ; preds = %polly.loop_exit681.1, %polly.loop_exit681.2
  %polly.indvar676.2 = phi i64 [ %polly.indvar_next677.2, %polly.loop_exit681.2 ], [ 0, %polly.loop_exit681.1 ]
  %381 = mul nuw nsw i64 %polly.indvar676.2, 640
  %382 = trunc i64 %polly.indvar676.2 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %polly.loop_header673.2
  %index914 = phi i64 [ 0, %polly.loop_header673.2 ], [ %index.next915, %vector.body912 ]
  %vec.ind918 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header673.2 ], [ %vec.ind.next919, %vector.body912 ]
  %383 = add nuw nsw <4 x i64> %vec.ind918, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat921, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !90, !noalias !92
  %index.next915 = add i64 %index914, 4
  %vec.ind.next919 = add <4 x i64> %vec.ind918, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next915, 16
  br i1 %395, label %polly.loop_exit681.2, label %vector.body912, !llvm.loop !111

polly.loop_exit681.2:                             ; preds = %vector.body912
  %polly.indvar_next677.2 = add nuw nsw i64 %polly.indvar676.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar_next677.2, 32
  br i1 %exitcond797.2.not, label %polly.loop_header673.1833, label %polly.loop_header673.2

polly.loop_header673.1833:                        ; preds = %polly.loop_exit681.2, %polly.loop_exit681.1844
  %polly.indvar676.1832 = phi i64 [ %polly.indvar_next677.1842, %polly.loop_exit681.1844 ], [ 0, %polly.loop_exit681.2 ]
  %396 = add nuw nsw i64 %polly.indvar676.1832, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert934 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat935 = shufflevector <4 x i32> %broadcast.splatinsert934, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %polly.loop_header673.1833
  %index926 = phi i64 [ 0, %polly.loop_header673.1833 ], [ %index.next927, %vector.body924 ]
  %vec.ind932 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header673.1833 ], [ %vec.ind.next933, %vector.body924 ]
  %399 = mul <4 x i32> %vec.ind932, %broadcast.splat935
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index926, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !90, !noalias !92
  %index.next927 = add i64 %index926, 4
  %vec.ind.next933 = add <4 x i32> %vec.ind932, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next927, 32
  br i1 %408, label %polly.loop_exit681.1844, label %vector.body924, !llvm.loop !112

polly.loop_exit681.1844:                          ; preds = %vector.body924
  %polly.indvar_next677.1842 = add nuw nsw i64 %polly.indvar676.1832, 1
  %exitcond797.1843.not = icmp eq i64 %polly.indvar_next677.1842, 32
  br i1 %exitcond797.1843.not, label %polly.loop_header673.1.1, label %polly.loop_header673.1833

polly.loop_header673.1.1:                         ; preds = %polly.loop_exit681.1844, %polly.loop_exit681.1.1
  %polly.indvar676.1.1 = phi i64 [ %polly.indvar_next677.1.1, %polly.loop_exit681.1.1 ], [ 0, %polly.loop_exit681.1844 ]
  %409 = add nuw nsw i64 %polly.indvar676.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert946 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat947 = shufflevector <4 x i32> %broadcast.splatinsert946, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %polly.loop_header673.1.1
  %index940 = phi i64 [ 0, %polly.loop_header673.1.1 ], [ %index.next941, %vector.body938 ]
  %vec.ind944 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header673.1.1 ], [ %vec.ind.next945, %vector.body938 ]
  %412 = add nuw nsw <4 x i64> %vec.ind944, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat947, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !90, !noalias !92
  %index.next941 = add i64 %index940, 4
  %vec.ind.next945 = add <4 x i64> %vec.ind944, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next941, 32
  br i1 %424, label %polly.loop_exit681.1.1, label %vector.body938, !llvm.loop !113

polly.loop_exit681.1.1:                           ; preds = %vector.body938
  %polly.indvar_next677.1.1 = add nuw nsw i64 %polly.indvar676.1.1, 1
  %exitcond797.1.1.not = icmp eq i64 %polly.indvar_next677.1.1, 32
  br i1 %exitcond797.1.1.not, label %polly.loop_header673.2.1, label %polly.loop_header673.1.1

polly.loop_header673.2.1:                         ; preds = %polly.loop_exit681.1.1, %polly.loop_exit681.2.1
  %polly.indvar676.2.1 = phi i64 [ %polly.indvar_next677.2.1, %polly.loop_exit681.2.1 ], [ 0, %polly.loop_exit681.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar676.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %polly.loop_header673.2.1
  %index952 = phi i64 [ 0, %polly.loop_header673.2.1 ], [ %index.next953, %vector.body950 ]
  %vec.ind956 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header673.2.1 ], [ %vec.ind.next957, %vector.body950 ]
  %428 = add nuw nsw <4 x i64> %vec.ind956, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat959, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !90, !noalias !92
  %index.next953 = add i64 %index952, 4
  %vec.ind.next957 = add <4 x i64> %vec.ind956, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next953, 16
  br i1 %440, label %polly.loop_exit681.2.1, label %vector.body950, !llvm.loop !114

polly.loop_exit681.2.1:                           ; preds = %vector.body950
  %polly.indvar_next677.2.1 = add nuw nsw i64 %polly.indvar676.2.1, 1
  %exitcond797.2.1.not = icmp eq i64 %polly.indvar_next677.2.1, 32
  br i1 %exitcond797.2.1.not, label %polly.loop_header673.2847, label %polly.loop_header673.2.1

polly.loop_header673.2847:                        ; preds = %polly.loop_exit681.2.1, %polly.loop_exit681.2858
  %polly.indvar676.2846 = phi i64 [ %polly.indvar_next677.2856, %polly.loop_exit681.2858 ], [ 0, %polly.loop_exit681.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar676.2846, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert972 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat973 = shufflevector <4 x i32> %broadcast.splatinsert972, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header673.2847
  %index964 = phi i64 [ 0, %polly.loop_header673.2847 ], [ %index.next965, %vector.body962 ]
  %vec.ind970 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header673.2847 ], [ %vec.ind.next971, %vector.body962 ]
  %444 = mul <4 x i32> %vec.ind970, %broadcast.splat973
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index964, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !90, !noalias !92
  %index.next965 = add i64 %index964, 4
  %vec.ind.next971 = add <4 x i32> %vec.ind970, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next965, 32
  br i1 %453, label %polly.loop_exit681.2858, label %vector.body962, !llvm.loop !115

polly.loop_exit681.2858:                          ; preds = %vector.body962
  %polly.indvar_next677.2856 = add nuw nsw i64 %polly.indvar676.2846, 1
  %exitcond797.2857.not = icmp eq i64 %polly.indvar_next677.2856, 16
  br i1 %exitcond797.2857.not, label %polly.loop_header673.1.2, label %polly.loop_header673.2847

polly.loop_header673.1.2:                         ; preds = %polly.loop_exit681.2858, %polly.loop_exit681.1.2
  %polly.indvar676.1.2 = phi i64 [ %polly.indvar_next677.1.2, %polly.loop_exit681.1.2 ], [ 0, %polly.loop_exit681.2858 ]
  %454 = add nuw nsw i64 %polly.indvar676.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %polly.loop_header673.1.2
  %index978 = phi i64 [ 0, %polly.loop_header673.1.2 ], [ %index.next979, %vector.body976 ]
  %vec.ind982 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header673.1.2 ], [ %vec.ind.next983, %vector.body976 ]
  %457 = add nuw nsw <4 x i64> %vec.ind982, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat985, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !90, !noalias !92
  %index.next979 = add i64 %index978, 4
  %vec.ind.next983 = add <4 x i64> %vec.ind982, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next979, 32
  br i1 %469, label %polly.loop_exit681.1.2, label %vector.body976, !llvm.loop !116

polly.loop_exit681.1.2:                           ; preds = %vector.body976
  %polly.indvar_next677.1.2 = add nuw nsw i64 %polly.indvar676.1.2, 1
  %exitcond797.1.2.not = icmp eq i64 %polly.indvar_next677.1.2, 16
  br i1 %exitcond797.1.2.not, label %polly.loop_header673.2.2, label %polly.loop_header673.1.2

polly.loop_header673.2.2:                         ; preds = %polly.loop_exit681.1.2, %polly.loop_exit681.2.2
  %polly.indvar676.2.2 = phi i64 [ %polly.indvar_next677.2.2, %polly.loop_exit681.2.2 ], [ 0, %polly.loop_exit681.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar676.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %polly.loop_header673.2.2
  %index990 = phi i64 [ 0, %polly.loop_header673.2.2 ], [ %index.next991, %vector.body988 ]
  %vec.ind994 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header673.2.2 ], [ %vec.ind.next995, %vector.body988 ]
  %473 = add nuw nsw <4 x i64> %vec.ind994, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat997, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !90, !noalias !92
  %index.next991 = add i64 %index990, 4
  %vec.ind.next995 = add <4 x i64> %vec.ind994, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next991, 16
  br i1 %485, label %polly.loop_exit681.2.2, label %vector.body988, !llvm.loop !117

polly.loop_exit681.2.2:                           ; preds = %vector.body988
  %polly.indvar_next677.2.2 = add nuw nsw i64 %polly.indvar676.2.2, 1
  %exitcond797.2.2.not = icmp eq i64 %polly.indvar_next677.2.2, 16
  br i1 %exitcond797.2.2.not, label %polly.loop_header700, label %polly.loop_header673.2.2
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 20}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 80}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 128}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
