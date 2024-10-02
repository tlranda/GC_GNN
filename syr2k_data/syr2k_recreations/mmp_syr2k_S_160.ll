; ModuleID = 'syr2k_recreations//mmp_syr2k_S_160.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_160.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #5
  %call684 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1545 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1545, %call2
  %polly.access.call2565 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2565, %call1
  %2 = or i1 %0, %1
  %polly.access.call585 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call585, %call2
  %4 = icmp ule i8* %polly.access.call2565, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call585, %call1
  %8 = icmp ule i8* %polly.access.call1545, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header670, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep856 = getelementptr i8, i8* %call2, i64 %12
  %scevgep855 = getelementptr i8, i8* %call2, i64 %11
  %scevgep854 = getelementptr i8, i8* %call1, i64 %12
  %scevgep853 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep853, %scevgep856
  %bound1 = icmp ult i8* %scevgep855, %scevgep854
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
  br i1 %exitcond18.not.i, label %vector.ph860, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph860:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert867 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat868 = shufflevector <4 x i64> %broadcast.splatinsert867, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph860
  %index861 = phi i64 [ 0, %vector.ph860 ], [ %index.next862, %vector.body859 ]
  %vec.ind865 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph860 ], [ %vec.ind.next866, %vector.body859 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind865, %broadcast.splat868
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv7.i, i64 %index861
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next862 = add i64 %index861, 4
  %vec.ind.next866 = add <4 x i64> %vec.ind865, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next862, 80
  br i1 %40, label %for.inc41.i, label %vector.body859, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body859
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph860, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit731.1.2
  tail call void (...) @polybench_timer_start() #5
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header473, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1216, label %vector.ph1142

vector.ph1142:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1142
  %index1143 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1144, %vector.body1141 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i, i64 %index1143
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1144 = add i64 %index1143, 4
  %46 = icmp eq i64 %index.next1144, %n.vec
  br i1 %46, label %middle.block1139, label %vector.body1141, !llvm.loop !18

middle.block1139:                                 ; preds = %vector.body1141
  %cmp.n1146 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1146, label %for.inc6.i, label %for.body3.i46.preheader1216

for.body3.i46.preheader1216:                      ; preds = %for.body3.i46.preheader, %middle.block1139
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1139 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1216, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1216 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1139, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit503.1
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header328, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1162 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1162, label %for.body3.i60.preheader1214, label %vector.ph1163

vector.ph1163:                                    ; preds = %for.body3.i60.preheader
  %n.vec1165 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %vector.ph1163
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1167, %vector.body1161 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i52, i64 %index1166
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1170 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1170, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1167 = add i64 %index1166, 4
  %57 = icmp eq i64 %index.next1167, %n.vec1165
  br i1 %57, label %middle.block1159, label %vector.body1161, !llvm.loop !51

middle.block1159:                                 ; preds = %vector.body1161
  %cmp.n1169 = icmp eq i64 %indvars.iv21.i52, %n.vec1165
  br i1 %cmp.n1169, label %for.inc6.i63, label %for.body3.i60.preheader1214

for.body3.i60.preheader1214:                      ; preds = %for.body3.i60.preheader, %middle.block1159
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1165, %middle.block1159 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1214, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1214 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1159, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit358.1
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1188 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1188, label %for.body3.i99.preheader1212, label %vector.ph1189

vector.ph1189:                                    ; preds = %for.body3.i99.preheader
  %n.vec1191 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1193, %vector.body1187 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i91, i64 %index1192
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1196 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1196, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1193 = add i64 %index1192, 4
  %68 = icmp eq i64 %index.next1193, %n.vec1191
  br i1 %68, label %middle.block1185, label %vector.body1187, !llvm.loop !53

middle.block1185:                                 ; preds = %vector.body1187
  %cmp.n1195 = icmp eq i64 %indvars.iv21.i91, %n.vec1191
  br i1 %cmp.n1195, label %for.inc6.i102, label %for.body3.i99.preheader1212

for.body3.i99.preheader1212:                      ; preds = %for.body3.i99.preheader, %middle.block1185
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1191, %middle.block1185 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1212, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1212 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1185, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.1
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #6
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call684, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #6
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #6
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #5
  tail call void @free(i8* %call1) #5
  tail call void @free(i8* %call2) #5
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1200 = phi i64 [ %indvar.next1201, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1200, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1202 = icmp ult i64 %88, 4
  br i1 %min.iters.check1202, label %polly.loop_header191.preheader, label %vector.ph1203

vector.ph1203:                                    ; preds = %polly.loop_header
  %n.vec1205 = and i64 %88, -4
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %vector.ph1203
  %index1206 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1207, %vector.body1199 ]
  %90 = shl nuw nsw i64 %index1206, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1210 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1210, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1207 = add i64 %index1206, 4
  %95 = icmp eq i64 %index.next1207, %n.vec1205
  br i1 %95, label %middle.block1197, label %vector.body1199, !llvm.loop !64

middle.block1197:                                 ; preds = %vector.body1199
  %cmp.n1209 = icmp eq i64 %88, %n.vec1205
  br i1 %cmp.n1209, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1197
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1205, %middle.block1197 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1197
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond749.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1201 = add i64 %indvar1200, 1
  br i1 %exitcond749.not, label %polly.loop_header205, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond748.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond748.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header205:                             ; preds = %polly.loop_exit193, %polly.loop_exit213
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 1, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %98 = mul nuw nsw i64 %polly.indvar208, 640
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond747.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond747.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep223 = getelementptr i8, i8* %call1, i64 %99
  %scevgep227 = getelementptr i8, i8* %call2, i64 %99
  %scevgep228 = getelementptr i8, i8* %scevgep227, i64 %97
  %scevgep228229 = bitcast i8* %scevgep228 to double*
  %_p_scalar_230 = load double, double* %scevgep228229, align 8, !alias.scope !63, !noalias !67
  %scevgep236 = getelementptr i8, i8* %scevgep223, i64 %97
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond746.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond746.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %100 = mul nuw nsw i64 %polly.indvar220, 480
  %scevgep224 = getelementptr i8, i8* %scevgep223, i64 %100
  %scevgep224225 = bitcast i8* %scevgep224 to double*
  %_p_scalar_226 = load double, double* %scevgep224225, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_230, %_p_scalar_226
  %scevgep232 = getelementptr i8, i8* %scevgep227, i64 %100
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_238, %_p_scalar_234
  %101 = shl nuw nsw i64 %polly.indvar220, 3
  %102 = add nuw nsw i64 %101, %98
  %scevgep239 = getelementptr i8, i8* %call, i64 %102
  %scevgep239240 = bitcast i8* %scevgep239 to double*
  %_p_scalar_241 = load double, double* %scevgep239240, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_241
  store double %p_add42.i118, double* %scevgep239240, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header328:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit336
  %indvar1174 = phi i64 [ %indvar.next1175, %polly.loop_exit336 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar331 = phi i64 [ %polly.indvar_next332, %polly.loop_exit336 ], [ 1, %kernel_syr2k.exit ]
  %103 = add i64 %indvar1174, 1
  %104 = mul nuw nsw i64 %polly.indvar331, 640
  %scevgep340 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1176 = icmp ult i64 %103, 4
  br i1 %min.iters.check1176, label %polly.loop_header334.preheader, label %vector.ph1177

vector.ph1177:                                    ; preds = %polly.loop_header328
  %n.vec1179 = and i64 %103, -4
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1173 ]
  %105 = shl nuw nsw i64 %index1180, 3
  %106 = getelementptr i8, i8* %scevgep340, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1184 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !69, !noalias !71
  %108 = fmul fast <4 x double> %wide.load1184, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !69, !noalias !71
  %index.next1181 = add i64 %index1180, 4
  %110 = icmp eq i64 %index.next1181, %n.vec1179
  br i1 %110, label %middle.block1171, label %vector.body1173, !llvm.loop !74

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1183 = icmp eq i64 %103, %n.vec1179
  br i1 %cmp.n1183, label %polly.loop_exit336, label %polly.loop_header334.preheader

polly.loop_header334.preheader:                   ; preds = %polly.loop_header328, %middle.block1171
  %polly.indvar337.ph = phi i64 [ 0, %polly.loop_header328 ], [ %n.vec1179, %middle.block1171 ]
  br label %polly.loop_header334

polly.loop_exit336:                               ; preds = %polly.loop_header334, %middle.block1171
  %polly.indvar_next332 = add nuw nsw i64 %polly.indvar331, 1
  %exitcond756.not = icmp eq i64 %polly.indvar_next332, 80
  %indvar.next1175 = add i64 %indvar1174, 1
  br i1 %exitcond756.not, label %polly.loop_header350, label %polly.loop_header328

polly.loop_header334:                             ; preds = %polly.loop_header334.preheader, %polly.loop_header334
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_header334 ], [ %polly.indvar337.ph, %polly.loop_header334.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar337, 3
  %scevgep341 = getelementptr i8, i8* %scevgep340, i64 %111
  %scevgep341342 = bitcast i8* %scevgep341 to double*
  %_p_scalar_343 = load double, double* %scevgep341342, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_343, 1.200000e+00
  store double %p_mul.i57, double* %scevgep341342, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond755.not = icmp eq i64 %polly.indvar_next338, %polly.indvar331
  br i1 %exitcond755.not, label %polly.loop_exit336, label %polly.loop_header334, !llvm.loop !75

polly.loop_header350:                             ; preds = %polly.loop_exit336, %polly.loop_exit358
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %polly.loop_exit358 ], [ 1, %polly.loop_exit336 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit336 ]
  %112 = mul nuw nsw i64 %polly.indvar353, 480
  %113 = mul nuw nsw i64 %polly.indvar353, 640
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit364
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1
  %exitcond754.not = icmp eq i64 %polly.indvar_next354, 50
  br i1 %exitcond754.not, label %polly.loop_header350.1, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.loop_header350
  %polly.indvar359 = phi i64 [ 0, %polly.loop_header350 ], [ %polly.indvar_next360, %polly.loop_exit364 ]
  %114 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep368 = getelementptr i8, i8* %call1, i64 %114
  %scevgep372 = getelementptr i8, i8* %call2, i64 %114
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %112
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !73, !noalias !76
  %scevgep381 = getelementptr i8, i8* %scevgep368, i64 %112
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond753.not = icmp eq i64 %polly.indvar_next360, 60
  br i1 %exitcond753.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_header362, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_header362 ]
  %115 = mul nuw nsw i64 %polly.indvar365, 480
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %115
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_375, %_p_scalar_371
  %scevgep377 = getelementptr i8, i8* %scevgep372, i64 %115
  %scevgep377378 = bitcast i8* %scevgep377 to double*
  %_p_scalar_379 = load double, double* %scevgep377378, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_383, %_p_scalar_379
  %116 = shl nuw nsw i64 %polly.indvar365, 3
  %117 = add nuw nsw i64 %116, %113
  %scevgep384 = getelementptr i8, i8* %call, i64 %117
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_386
  store double %p_add42.i79, double* %scevgep384385, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond752.not = icmp eq i64 %polly.indvar_next366, %indvars.iv750
  br i1 %exitcond752.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header473:                             ; preds = %init_array.exit, %polly.loop_exit481
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit481 ], [ 0, %init_array.exit ]
  %polly.indvar476 = phi i64 [ %polly.indvar_next477, %polly.loop_exit481 ], [ 1, %init_array.exit ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar476, 640
  %scevgep485 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1150 = icmp ult i64 %118, 4
  br i1 %min.iters.check1150, label %polly.loop_header479.preheader, label %vector.ph1151

vector.ph1151:                                    ; preds = %polly.loop_header473
  %n.vec1153 = and i64 %118, -4
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %vector.ph1151
  %index1154 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1155, %vector.body1149 ]
  %120 = shl nuw nsw i64 %index1154, 3
  %121 = getelementptr i8, i8* %scevgep485, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1158 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !78, !noalias !80
  %123 = fmul fast <4 x double> %wide.load1158, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !78, !noalias !80
  %index.next1155 = add i64 %index1154, 4
  %125 = icmp eq i64 %index.next1155, %n.vec1153
  br i1 %125, label %middle.block1147, label %vector.body1149, !llvm.loop !83

middle.block1147:                                 ; preds = %vector.body1149
  %cmp.n1157 = icmp eq i64 %118, %n.vec1153
  br i1 %cmp.n1157, label %polly.loop_exit481, label %polly.loop_header479.preheader

polly.loop_header479.preheader:                   ; preds = %polly.loop_header473, %middle.block1147
  %polly.indvar482.ph = phi i64 [ 0, %polly.loop_header473 ], [ %n.vec1153, %middle.block1147 ]
  br label %polly.loop_header479

polly.loop_exit481:                               ; preds = %polly.loop_header479, %middle.block1147
  %polly.indvar_next477 = add nuw nsw i64 %polly.indvar476, 1
  %exitcond763.not = icmp eq i64 %polly.indvar_next477, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond763.not, label %polly.loop_header495, label %polly.loop_header473

polly.loop_header479:                             ; preds = %polly.loop_header479.preheader, %polly.loop_header479
  %polly.indvar482 = phi i64 [ %polly.indvar_next483, %polly.loop_header479 ], [ %polly.indvar482.ph, %polly.loop_header479.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar482, 3
  %scevgep486 = getelementptr i8, i8* %scevgep485, i64 %126
  %scevgep486487 = bitcast i8* %scevgep486 to double*
  %_p_scalar_488 = load double, double* %scevgep486487, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_488, 1.200000e+00
  store double %p_mul.i, double* %scevgep486487, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next483 = add nuw nsw i64 %polly.indvar482, 1
  %exitcond762.not = icmp eq i64 %polly.indvar_next483, %polly.indvar476
  br i1 %exitcond762.not, label %polly.loop_exit481, label %polly.loop_header479, !llvm.loop !84

polly.loop_header495:                             ; preds = %polly.loop_exit481, %polly.loop_exit503
  %indvars.iv757 = phi i64 [ %indvars.iv.next758, %polly.loop_exit503 ], [ 1, %polly.loop_exit481 ]
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_exit503 ], [ 0, %polly.loop_exit481 ]
  %127 = mul nuw nsw i64 %polly.indvar498, 480
  %128 = mul nuw nsw i64 %polly.indvar498, 640
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_exit509
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1
  %exitcond761.not = icmp eq i64 %polly.indvar_next499, 50
  br i1 %exitcond761.not, label %polly.loop_header495.1, label %polly.loop_header495

polly.loop_header501:                             ; preds = %polly.loop_exit509, %polly.loop_header495
  %polly.indvar504 = phi i64 [ 0, %polly.loop_header495 ], [ %polly.indvar_next505, %polly.loop_exit509 ]
  %129 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep513 = getelementptr i8, i8* %call1, i64 %129
  %scevgep517 = getelementptr i8, i8* %call2, i64 %129
  %scevgep518 = getelementptr i8, i8* %scevgep517, i64 %127
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !82, !noalias !85
  %scevgep526 = getelementptr i8, i8* %scevgep513, i64 %127
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header507

polly.loop_exit509:                               ; preds = %polly.loop_header507
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond760.not = icmp eq i64 %polly.indvar_next505, 60
  br i1 %exitcond760.not, label %polly.loop_exit503, label %polly.loop_header501

polly.loop_header507:                             ; preds = %polly.loop_header507, %polly.loop_header501
  %polly.indvar510 = phi i64 [ 0, %polly.loop_header501 ], [ %polly.indvar_next511, %polly.loop_header507 ]
  %130 = mul nuw nsw i64 %polly.indvar510, 480
  %scevgep514 = getelementptr i8, i8* %scevgep513, i64 %130
  %scevgep514515 = bitcast i8* %scevgep514 to double*
  %_p_scalar_516 = load double, double* %scevgep514515, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_520, %_p_scalar_516
  %scevgep522 = getelementptr i8, i8* %scevgep517, i64 %130
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_528, %_p_scalar_524
  %131 = shl nuw nsw i64 %polly.indvar510, 3
  %132 = add nuw nsw i64 %131, %128
  %scevgep529 = getelementptr i8, i8* %call, i64 %132
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_531
  store double %p_add42.i, double* %scevgep529530, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %exitcond759.not = icmp eq i64 %polly.indvar_next511, %indvars.iv757
  br i1 %exitcond759.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_header670:                             ; preds = %entry, %polly.loop_exit678
  %polly.indvar673 = phi i64 [ %polly.indvar_next674, %polly.loop_exit678 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar673, 640
  %134 = trunc i64 %polly.indvar673 to i32
  %broadcast.splatinsert881 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat882 = shufflevector <4 x i32> %broadcast.splatinsert881, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %polly.loop_header670
  %index873 = phi i64 [ 0, %polly.loop_header670 ], [ %index.next874, %vector.body871 ]
  %vec.ind879 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header670 ], [ %vec.ind.next880, %vector.body871 ]
  %135 = mul <4 x i32> %vec.ind879, %broadcast.splat882
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index873, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !87, !noalias !89
  %index.next874 = add i64 %index873, 4
  %vec.ind.next880 = add <4 x i32> %vec.ind879, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next874, 32
  br i1 %144, label %polly.loop_exit678, label %vector.body871, !llvm.loop !92

polly.loop_exit678:                               ; preds = %vector.body871
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next674, 32
  br i1 %exitcond782.not, label %polly.loop_header670.1, label %polly.loop_header670

polly.loop_header697:                             ; preds = %polly.loop_exit678.2.2, %polly.loop_exit705
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_exit705 ], [ 0, %polly.loop_exit678.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar700, 480
  %146 = trunc i64 %polly.indvar700 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %polly.loop_header697
  %index987 = phi i64 [ 0, %polly.loop_header697 ], [ %index.next988, %vector.body985 ]
  %vec.ind993 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header697 ], [ %vec.ind.next994, %vector.body985 ]
  %147 = mul <4 x i32> %vec.ind993, %broadcast.splat996
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index987, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !91, !noalias !93
  %index.next988 = add i64 %index987, 4
  %vec.ind.next994 = add <4 x i32> %vec.ind993, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next988, 32
  br i1 %156, label %polly.loop_exit705, label %vector.body985, !llvm.loop !94

polly.loop_exit705:                               ; preds = %vector.body985
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond773.not = icmp eq i64 %polly.indvar_next701, 32
  br i1 %exitcond773.not, label %polly.loop_header697.1, label %polly.loop_header697

polly.loop_header723:                             ; preds = %polly.loop_exit705.1.2, %polly.loop_exit731
  %polly.indvar726 = phi i64 [ %polly.indvar_next727, %polly.loop_exit731 ], [ 0, %polly.loop_exit705.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar726, 480
  %158 = trunc i64 %polly.indvar726 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %polly.loop_header723
  %index1065 = phi i64 [ 0, %polly.loop_header723 ], [ %index.next1066, %vector.body1063 ]
  %vec.ind1071 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header723 ], [ %vec.ind.next1072, %vector.body1063 ]
  %159 = mul <4 x i32> %vec.ind1071, %broadcast.splat1074
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1065, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !90, !noalias !95
  %index.next1066 = add i64 %index1065, 4
  %vec.ind.next1072 = add <4 x i32> %vec.ind1071, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1066, 32
  br i1 %168, label %polly.loop_exit731, label %vector.body1063, !llvm.loop !96

polly.loop_exit731:                               ; preds = %vector.body1063
  %polly.indvar_next727 = add nuw nsw i64 %polly.indvar726, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next727, 32
  br i1 %exitcond767.not, label %polly.loop_header723.1, label %polly.loop_header723

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit213.1 ], [ 51, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %169 = add nuw nsw i64 %polly.indvar208.1, 50
  %170 = mul nuw nsw i64 %169, 480
  %171 = mul nuw nsw i64 %169, 640
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %172 = shl nuw nsw i64 %polly.indvar214.1, 3
  %scevgep223.1 = getelementptr i8, i8* %call1, i64 %172
  %scevgep227.1 = getelementptr i8, i8* %call2, i64 %172
  %scevgep228.1 = getelementptr i8, i8* %scevgep227.1, i64 %170
  %scevgep228229.1 = bitcast i8* %scevgep228.1 to double*
  %_p_scalar_230.1 = load double, double* %scevgep228229.1, align 8, !alias.scope !63, !noalias !67
  %scevgep236.1 = getelementptr i8, i8* %scevgep223.1, i64 %170
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %173 = mul nuw nsw i64 %polly.indvar220.1, 480
  %scevgep224.1 = getelementptr i8, i8* %scevgep223.1, i64 %173
  %scevgep224225.1 = bitcast i8* %scevgep224.1 to double*
  %_p_scalar_226.1 = load double, double* %scevgep224225.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_230.1, %_p_scalar_226.1
  %scevgep232.1 = getelementptr i8, i8* %scevgep227.1, i64 %173
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_238.1, %_p_scalar_234.1
  %174 = shl nuw nsw i64 %polly.indvar220.1, 3
  %175 = add nuw nsw i64 %174, %171
  %scevgep239.1 = getelementptr i8, i8* %call, i64 %175
  %scevgep239240.1 = bitcast i8* %scevgep239.1 to double*
  %_p_scalar_241.1 = load double, double* %scevgep239240.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_241.1
  store double %p_add42.i118.1, double* %scevgep239240.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond746.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond746.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond747.1.not = icmp eq i64 %polly.indvar_next209.1, 30
  br i1 %exitcond747.1.not, label %kernel_syr2k.exit129, label %polly.loop_header205.1

polly.loop_header350.1:                           ; preds = %polly.loop_exit358, %polly.loop_exit358.1
  %indvars.iv750.1 = phi i64 [ %indvars.iv.next751.1, %polly.loop_exit358.1 ], [ 51, %polly.loop_exit358 ]
  %polly.indvar353.1 = phi i64 [ %polly.indvar_next354.1, %polly.loop_exit358.1 ], [ 0, %polly.loop_exit358 ]
  %176 = add nuw nsw i64 %polly.indvar353.1, 50
  %177 = mul nuw nsw i64 %176, 480
  %178 = mul nuw nsw i64 %176, 640
  br label %polly.loop_header356.1

polly.loop_header356.1:                           ; preds = %polly.loop_exit364.1, %polly.loop_header350.1
  %polly.indvar359.1 = phi i64 [ 0, %polly.loop_header350.1 ], [ %polly.indvar_next360.1, %polly.loop_exit364.1 ]
  %179 = shl nuw nsw i64 %polly.indvar359.1, 3
  %scevgep368.1 = getelementptr i8, i8* %call1, i64 %179
  %scevgep372.1 = getelementptr i8, i8* %call2, i64 %179
  %scevgep373.1 = getelementptr i8, i8* %scevgep372.1, i64 %177
  %scevgep373374.1 = bitcast i8* %scevgep373.1 to double*
  %_p_scalar_375.1 = load double, double* %scevgep373374.1, align 8, !alias.scope !73, !noalias !76
  %scevgep381.1 = getelementptr i8, i8* %scevgep368.1, i64 %177
  %scevgep381382.1 = bitcast i8* %scevgep381.1 to double*
  %_p_scalar_383.1 = load double, double* %scevgep381382.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header362.1

polly.loop_header362.1:                           ; preds = %polly.loop_header362.1, %polly.loop_header356.1
  %polly.indvar365.1 = phi i64 [ 0, %polly.loop_header356.1 ], [ %polly.indvar_next366.1, %polly.loop_header362.1 ]
  %180 = mul nuw nsw i64 %polly.indvar365.1, 480
  %scevgep369.1 = getelementptr i8, i8* %scevgep368.1, i64 %180
  %scevgep369370.1 = bitcast i8* %scevgep369.1 to double*
  %_p_scalar_371.1 = load double, double* %scevgep369370.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_375.1, %_p_scalar_371.1
  %scevgep377.1 = getelementptr i8, i8* %scevgep372.1, i64 %180
  %scevgep377378.1 = bitcast i8* %scevgep377.1 to double*
  %_p_scalar_379.1 = load double, double* %scevgep377378.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_383.1, %_p_scalar_379.1
  %181 = shl nuw nsw i64 %polly.indvar365.1, 3
  %182 = add nuw nsw i64 %181, %178
  %scevgep384.1 = getelementptr i8, i8* %call, i64 %182
  %scevgep384385.1 = bitcast i8* %scevgep384.1 to double*
  %_p_scalar_386.1 = load double, double* %scevgep384385.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_386.1
  store double %p_add42.i79.1, double* %scevgep384385.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next366.1 = add nuw nsw i64 %polly.indvar365.1, 1
  %exitcond752.1.not = icmp eq i64 %polly.indvar_next366.1, %indvars.iv750.1
  br i1 %exitcond752.1.not, label %polly.loop_exit364.1, label %polly.loop_header362.1

polly.loop_exit364.1:                             ; preds = %polly.loop_header362.1
  %polly.indvar_next360.1 = add nuw nsw i64 %polly.indvar359.1, 1
  %exitcond753.1.not = icmp eq i64 %polly.indvar_next360.1, 60
  br i1 %exitcond753.1.not, label %polly.loop_exit358.1, label %polly.loop_header356.1

polly.loop_exit358.1:                             ; preds = %polly.loop_exit364.1
  %polly.indvar_next354.1 = add nuw nsw i64 %polly.indvar353.1, 1
  %indvars.iv.next751.1 = add nuw nsw i64 %indvars.iv750.1, 1
  %exitcond754.1.not = icmp eq i64 %polly.indvar_next354.1, 30
  br i1 %exitcond754.1.not, label %kernel_syr2k.exit90, label %polly.loop_header350.1

polly.loop_header495.1:                           ; preds = %polly.loop_exit503, %polly.loop_exit503.1
  %indvars.iv757.1 = phi i64 [ %indvars.iv.next758.1, %polly.loop_exit503.1 ], [ 51, %polly.loop_exit503 ]
  %polly.indvar498.1 = phi i64 [ %polly.indvar_next499.1, %polly.loop_exit503.1 ], [ 0, %polly.loop_exit503 ]
  %183 = add nuw nsw i64 %polly.indvar498.1, 50
  %184 = mul nuw nsw i64 %183, 480
  %185 = mul nuw nsw i64 %183, 640
  br label %polly.loop_header501.1

polly.loop_header501.1:                           ; preds = %polly.loop_exit509.1, %polly.loop_header495.1
  %polly.indvar504.1 = phi i64 [ 0, %polly.loop_header495.1 ], [ %polly.indvar_next505.1, %polly.loop_exit509.1 ]
  %186 = shl nuw nsw i64 %polly.indvar504.1, 3
  %scevgep513.1 = getelementptr i8, i8* %call1, i64 %186
  %scevgep517.1 = getelementptr i8, i8* %call2, i64 %186
  %scevgep518.1 = getelementptr i8, i8* %scevgep517.1, i64 %184
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !82, !noalias !85
  %scevgep526.1 = getelementptr i8, i8* %scevgep513.1, i64 %184
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header507.1

polly.loop_header507.1:                           ; preds = %polly.loop_header507.1, %polly.loop_header501.1
  %polly.indvar510.1 = phi i64 [ 0, %polly.loop_header501.1 ], [ %polly.indvar_next511.1, %polly.loop_header507.1 ]
  %187 = mul nuw nsw i64 %polly.indvar510.1, 480
  %scevgep514.1 = getelementptr i8, i8* %scevgep513.1, i64 %187
  %scevgep514515.1 = bitcast i8* %scevgep514.1 to double*
  %_p_scalar_516.1 = load double, double* %scevgep514515.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_520.1, %_p_scalar_516.1
  %scevgep522.1 = getelementptr i8, i8* %scevgep517.1, i64 %187
  %scevgep522523.1 = bitcast i8* %scevgep522.1 to double*
  %_p_scalar_524.1 = load double, double* %scevgep522523.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_524.1
  %188 = shl nuw nsw i64 %polly.indvar510.1, 3
  %189 = add nuw nsw i64 %188, %185
  %scevgep529.1 = getelementptr i8, i8* %call, i64 %189
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_531.1
  store double %p_add42.i.1, double* %scevgep529530.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next511.1 = add nuw nsw i64 %polly.indvar510.1, 1
  %exitcond759.1.not = icmp eq i64 %polly.indvar_next511.1, %indvars.iv757.1
  br i1 %exitcond759.1.not, label %polly.loop_exit509.1, label %polly.loop_header507.1

polly.loop_exit509.1:                             ; preds = %polly.loop_header507.1
  %polly.indvar_next505.1 = add nuw nsw i64 %polly.indvar504.1, 1
  %exitcond760.1.not = icmp eq i64 %polly.indvar_next505.1, 60
  br i1 %exitcond760.1.not, label %polly.loop_exit503.1, label %polly.loop_header501.1

polly.loop_exit503.1:                             ; preds = %polly.loop_exit509.1
  %polly.indvar_next499.1 = add nuw nsw i64 %polly.indvar498.1, 1
  %indvars.iv.next758.1 = add nuw nsw i64 %indvars.iv757.1, 1
  %exitcond761.1.not = icmp eq i64 %polly.indvar_next499.1, 30
  br i1 %exitcond761.1.not, label %kernel_syr2k.exit, label %polly.loop_header495.1

polly.loop_header723.1:                           ; preds = %polly.loop_exit731, %polly.loop_exit731.1
  %polly.indvar726.1 = phi i64 [ %polly.indvar_next727.1, %polly.loop_exit731.1 ], [ 0, %polly.loop_exit731 ]
  %190 = mul nuw nsw i64 %polly.indvar726.1, 480
  %191 = trunc i64 %polly.indvar726.1 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header723.1
  %index1079 = phi i64 [ 0, %polly.loop_header723.1 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header723.1 ], [ %vec.ind.next1084, %vector.body1077 ]
  %192 = add nuw nsw <4 x i64> %vec.ind1083, <i64 32, i64 32, i64 32, i64 32>
  %193 = trunc <4 x i64> %192 to <4 x i32>
  %194 = mul <4 x i32> %broadcast.splat1086, %193
  %195 = add <4 x i32> %194, <i32 1, i32 1, i32 1, i32 1>
  %196 = urem <4 x i32> %195, <i32 80, i32 80, i32 80, i32 80>
  %197 = sitofp <4 x i32> %196 to <4 x double>
  %198 = fmul fast <4 x double> %197, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %199 = extractelement <4 x i64> %192, i32 0
  %200 = shl i64 %199, 3
  %201 = add i64 %200, %190
  %202 = getelementptr i8, i8* %call1, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %198, <4 x double>* %203, align 8, !alias.scope !90, !noalias !95
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %204 = icmp eq i64 %index.next1080, 28
  br i1 %204, label %polly.loop_exit731.1, label %vector.body1077, !llvm.loop !97

polly.loop_exit731.1:                             ; preds = %vector.body1077
  %polly.indvar_next727.1 = add nuw nsw i64 %polly.indvar726.1, 1
  %exitcond767.1.not = icmp eq i64 %polly.indvar_next727.1, 32
  br i1 %exitcond767.1.not, label %polly.loop_header723.1790, label %polly.loop_header723.1

polly.loop_header723.1790:                        ; preds = %polly.loop_exit731.1, %polly.loop_exit731.1801
  %polly.indvar726.1789 = phi i64 [ %polly.indvar_next727.1799, %polly.loop_exit731.1801 ], [ 0, %polly.loop_exit731.1 ]
  %205 = add nuw nsw i64 %polly.indvar726.1789, 32
  %206 = mul nuw nsw i64 %205, 480
  %207 = trunc i64 %205 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %207, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header723.1790
  %index1091 = phi i64 [ 0, %polly.loop_header723.1790 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header723.1790 ], [ %vec.ind.next1098, %vector.body1089 ]
  %208 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %209 = add <4 x i32> %208, <i32 1, i32 1, i32 1, i32 1>
  %210 = urem <4 x i32> %209, <i32 80, i32 80, i32 80, i32 80>
  %211 = sitofp <4 x i32> %210 to <4 x double>
  %212 = fmul fast <4 x double> %211, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %213 = shl i64 %index1091, 3
  %214 = add i64 %213, %206
  %215 = getelementptr i8, i8* %call1, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %212, <4 x double>* %216, align 8, !alias.scope !90, !noalias !95
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %217 = icmp eq i64 %index.next1092, 32
  br i1 %217, label %polly.loop_exit731.1801, label %vector.body1089, !llvm.loop !98

polly.loop_exit731.1801:                          ; preds = %vector.body1089
  %polly.indvar_next727.1799 = add nuw nsw i64 %polly.indvar726.1789, 1
  %exitcond767.1800.not = icmp eq i64 %polly.indvar_next727.1799, 32
  br i1 %exitcond767.1800.not, label %polly.loop_header723.1.1, label %polly.loop_header723.1790

polly.loop_header723.1.1:                         ; preds = %polly.loop_exit731.1801, %polly.loop_exit731.1.1
  %polly.indvar726.1.1 = phi i64 [ %polly.indvar_next727.1.1, %polly.loop_exit731.1.1 ], [ 0, %polly.loop_exit731.1801 ]
  %218 = add nuw nsw i64 %polly.indvar726.1.1, 32
  %219 = mul nuw nsw i64 %218, 480
  %220 = trunc i64 %218 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header723.1.1
  %index1105 = phi i64 [ 0, %polly.loop_header723.1.1 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header723.1.1 ], [ %vec.ind.next1110, %vector.body1103 ]
  %221 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %222 = trunc <4 x i64> %221 to <4 x i32>
  %223 = mul <4 x i32> %broadcast.splat1112, %222
  %224 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %225 = urem <4 x i32> %224, <i32 80, i32 80, i32 80, i32 80>
  %226 = sitofp <4 x i32> %225 to <4 x double>
  %227 = fmul fast <4 x double> %226, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %228 = extractelement <4 x i64> %221, i32 0
  %229 = shl i64 %228, 3
  %230 = add i64 %229, %219
  %231 = getelementptr i8, i8* %call1, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %227, <4 x double>* %232, align 8, !alias.scope !90, !noalias !95
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %233 = icmp eq i64 %index.next1106, 28
  br i1 %233, label %polly.loop_exit731.1.1, label %vector.body1103, !llvm.loop !99

polly.loop_exit731.1.1:                           ; preds = %vector.body1103
  %polly.indvar_next727.1.1 = add nuw nsw i64 %polly.indvar726.1.1, 1
  %exitcond767.1.1.not = icmp eq i64 %polly.indvar_next727.1.1, 32
  br i1 %exitcond767.1.1.not, label %polly.loop_header723.2, label %polly.loop_header723.1.1

polly.loop_header723.2:                           ; preds = %polly.loop_exit731.1.1, %polly.loop_exit731.2
  %polly.indvar726.2 = phi i64 [ %polly.indvar_next727.2, %polly.loop_exit731.2 ], [ 0, %polly.loop_exit731.1.1 ]
  %234 = add nuw nsw i64 %polly.indvar726.2, 64
  %235 = mul nuw nsw i64 %234, 480
  %236 = trunc i64 %234 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header723.2
  %index1117 = phi i64 [ 0, %polly.loop_header723.2 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1123 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header723.2 ], [ %vec.ind.next1124, %vector.body1115 ]
  %237 = mul <4 x i32> %vec.ind1123, %broadcast.splat1126
  %238 = add <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %239 = urem <4 x i32> %238, <i32 80, i32 80, i32 80, i32 80>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %242 = shl i64 %index1117, 3
  %243 = add i64 %242, %235
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %241, <4 x double>* %245, align 8, !alias.scope !90, !noalias !95
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1124 = add <4 x i32> %vec.ind1123, <i32 4, i32 4, i32 4, i32 4>
  %246 = icmp eq i64 %index.next1118, 32
  br i1 %246, label %polly.loop_exit731.2, label %vector.body1115, !llvm.loop !100

polly.loop_exit731.2:                             ; preds = %vector.body1115
  %polly.indvar_next727.2 = add nuw nsw i64 %polly.indvar726.2, 1
  %exitcond767.2.not = icmp eq i64 %polly.indvar_next727.2, 16
  br i1 %exitcond767.2.not, label %polly.loop_header723.1.2, label %polly.loop_header723.2

polly.loop_header723.1.2:                         ; preds = %polly.loop_exit731.2, %polly.loop_exit731.1.2
  %polly.indvar726.1.2 = phi i64 [ %polly.indvar_next727.1.2, %polly.loop_exit731.1.2 ], [ 0, %polly.loop_exit731.2 ]
  %247 = add nuw nsw i64 %polly.indvar726.1.2, 64
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header723.1.2
  %index1131 = phi i64 [ 0, %polly.loop_header723.1.2 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header723.1.2 ], [ %vec.ind.next1136, %vector.body1129 ]
  %250 = add nuw nsw <4 x i64> %vec.ind1135, <i64 32, i64 32, i64 32, i64 32>
  %251 = trunc <4 x i64> %250 to <4 x i32>
  %252 = mul <4 x i32> %broadcast.splat1138, %251
  %253 = add <4 x i32> %252, <i32 1, i32 1, i32 1, i32 1>
  %254 = urem <4 x i32> %253, <i32 80, i32 80, i32 80, i32 80>
  %255 = sitofp <4 x i32> %254 to <4 x double>
  %256 = fmul fast <4 x double> %255, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %257 = extractelement <4 x i64> %250, i32 0
  %258 = shl i64 %257, 3
  %259 = add i64 %258, %248
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %256, <4 x double>* %261, align 8, !alias.scope !90, !noalias !95
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %262 = icmp eq i64 %index.next1132, 28
  br i1 %262, label %polly.loop_exit731.1.2, label %vector.body1129, !llvm.loop !101

polly.loop_exit731.1.2:                           ; preds = %vector.body1129
  %polly.indvar_next727.1.2 = add nuw nsw i64 %polly.indvar726.1.2, 1
  %exitcond767.1.2.not = icmp eq i64 %polly.indvar_next727.1.2, 16
  br i1 %exitcond767.1.2.not, label %init_array.exit, label %polly.loop_header723.1.2

polly.loop_header697.1:                           ; preds = %polly.loop_exit705, %polly.loop_exit705.1
  %polly.indvar700.1 = phi i64 [ %polly.indvar_next701.1, %polly.loop_exit705.1 ], [ 0, %polly.loop_exit705 ]
  %263 = mul nuw nsw i64 %polly.indvar700.1, 480
  %264 = trunc i64 %polly.indvar700.1 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header697.1
  %index1001 = phi i64 [ 0, %polly.loop_header697.1 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1005 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header697.1 ], [ %vec.ind.next1006, %vector.body999 ]
  %265 = add nuw nsw <4 x i64> %vec.ind1005, <i64 32, i64 32, i64 32, i64 32>
  %266 = trunc <4 x i64> %265 to <4 x i32>
  %267 = mul <4 x i32> %broadcast.splat1008, %266
  %268 = add <4 x i32> %267, <i32 2, i32 2, i32 2, i32 2>
  %269 = urem <4 x i32> %268, <i32 60, i32 60, i32 60, i32 60>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %272 = extractelement <4 x i64> %265, i32 0
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %263
  %275 = getelementptr i8, i8* %call2, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %271, <4 x double>* %276, align 8, !alias.scope !91, !noalias !93
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1006 = add <4 x i64> %vec.ind1005, <i64 4, i64 4, i64 4, i64 4>
  %277 = icmp eq i64 %index.next1002, 28
  br i1 %277, label %polly.loop_exit705.1, label %vector.body999, !llvm.loop !102

polly.loop_exit705.1:                             ; preds = %vector.body999
  %polly.indvar_next701.1 = add nuw nsw i64 %polly.indvar700.1, 1
  %exitcond773.1.not = icmp eq i64 %polly.indvar_next701.1, 32
  br i1 %exitcond773.1.not, label %polly.loop_header697.1804, label %polly.loop_header697.1

polly.loop_header697.1804:                        ; preds = %polly.loop_exit705.1, %polly.loop_exit705.1815
  %polly.indvar700.1803 = phi i64 [ %polly.indvar_next701.1813, %polly.loop_exit705.1815 ], [ 0, %polly.loop_exit705.1 ]
  %278 = add nuw nsw i64 %polly.indvar700.1803, 32
  %279 = mul nuw nsw i64 %278, 480
  %280 = trunc i64 %278 to i32
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header697.1804
  %index1013 = phi i64 [ 0, %polly.loop_header697.1804 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1019 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header697.1804 ], [ %vec.ind.next1020, %vector.body1011 ]
  %281 = mul <4 x i32> %vec.ind1019, %broadcast.splat1022
  %282 = add <4 x i32> %281, <i32 2, i32 2, i32 2, i32 2>
  %283 = urem <4 x i32> %282, <i32 60, i32 60, i32 60, i32 60>
  %284 = sitofp <4 x i32> %283 to <4 x double>
  %285 = fmul fast <4 x double> %284, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %286 = shl i64 %index1013, 3
  %287 = add i64 %286, %279
  %288 = getelementptr i8, i8* %call2, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %285, <4 x double>* %289, align 8, !alias.scope !91, !noalias !93
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1020 = add <4 x i32> %vec.ind1019, <i32 4, i32 4, i32 4, i32 4>
  %290 = icmp eq i64 %index.next1014, 32
  br i1 %290, label %polly.loop_exit705.1815, label %vector.body1011, !llvm.loop !103

polly.loop_exit705.1815:                          ; preds = %vector.body1011
  %polly.indvar_next701.1813 = add nuw nsw i64 %polly.indvar700.1803, 1
  %exitcond773.1814.not = icmp eq i64 %polly.indvar_next701.1813, 32
  br i1 %exitcond773.1814.not, label %polly.loop_header697.1.1, label %polly.loop_header697.1804

polly.loop_header697.1.1:                         ; preds = %polly.loop_exit705.1815, %polly.loop_exit705.1.1
  %polly.indvar700.1.1 = phi i64 [ %polly.indvar_next701.1.1, %polly.loop_exit705.1.1 ], [ 0, %polly.loop_exit705.1815 ]
  %291 = add nuw nsw i64 %polly.indvar700.1.1, 32
  %292 = mul nuw nsw i64 %291, 480
  %293 = trunc i64 %291 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %polly.loop_header697.1.1
  %index1027 = phi i64 [ 0, %polly.loop_header697.1.1 ], [ %index.next1028, %vector.body1025 ]
  %vec.ind1031 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header697.1.1 ], [ %vec.ind.next1032, %vector.body1025 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1031, <i64 32, i64 32, i64 32, i64 32>
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1034, %295
  %297 = add <4 x i32> %296, <i32 2, i32 2, i32 2, i32 2>
  %298 = urem <4 x i32> %297, <i32 60, i32 60, i32 60, i32 60>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add i64 %302, %292
  %304 = getelementptr i8, i8* %call2, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !91, !noalias !93
  %index.next1028 = add i64 %index1027, 4
  %vec.ind.next1032 = add <4 x i64> %vec.ind1031, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1028, 28
  br i1 %306, label %polly.loop_exit705.1.1, label %vector.body1025, !llvm.loop !104

polly.loop_exit705.1.1:                           ; preds = %vector.body1025
  %polly.indvar_next701.1.1 = add nuw nsw i64 %polly.indvar700.1.1, 1
  %exitcond773.1.1.not = icmp eq i64 %polly.indvar_next701.1.1, 32
  br i1 %exitcond773.1.1.not, label %polly.loop_header697.2, label %polly.loop_header697.1.1

polly.loop_header697.2:                           ; preds = %polly.loop_exit705.1.1, %polly.loop_exit705.2
  %polly.indvar700.2 = phi i64 [ %polly.indvar_next701.2, %polly.loop_exit705.2 ], [ 0, %polly.loop_exit705.1.1 ]
  %307 = add nuw nsw i64 %polly.indvar700.2, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header697.2
  %index1039 = phi i64 [ 0, %polly.loop_header697.2 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1045 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header697.2 ], [ %vec.ind.next1046, %vector.body1037 ]
  %310 = mul <4 x i32> %vec.ind1045, %broadcast.splat1048
  %311 = add <4 x i32> %310, <i32 2, i32 2, i32 2, i32 2>
  %312 = urem <4 x i32> %311, <i32 60, i32 60, i32 60, i32 60>
  %313 = sitofp <4 x i32> %312 to <4 x double>
  %314 = fmul fast <4 x double> %313, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %315 = shl i64 %index1039, 3
  %316 = add i64 %315, %308
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %314, <4 x double>* %318, align 8, !alias.scope !91, !noalias !93
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1046 = add <4 x i32> %vec.ind1045, <i32 4, i32 4, i32 4, i32 4>
  %319 = icmp eq i64 %index.next1040, 32
  br i1 %319, label %polly.loop_exit705.2, label %vector.body1037, !llvm.loop !105

polly.loop_exit705.2:                             ; preds = %vector.body1037
  %polly.indvar_next701.2 = add nuw nsw i64 %polly.indvar700.2, 1
  %exitcond773.2.not = icmp eq i64 %polly.indvar_next701.2, 16
  br i1 %exitcond773.2.not, label %polly.loop_header697.1.2, label %polly.loop_header697.2

polly.loop_header697.1.2:                         ; preds = %polly.loop_exit705.2, %polly.loop_exit705.1.2
  %polly.indvar700.1.2 = phi i64 [ %polly.indvar_next701.1.2, %polly.loop_exit705.1.2 ], [ 0, %polly.loop_exit705.2 ]
  %320 = add nuw nsw i64 %polly.indvar700.1.2, 64
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1059 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1060 = shufflevector <4 x i32> %broadcast.splatinsert1059, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header697.1.2
  %index1053 = phi i64 [ 0, %polly.loop_header697.1.2 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1057 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header697.1.2 ], [ %vec.ind.next1058, %vector.body1051 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1057, <i64 32, i64 32, i64 32, i64 32>
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1060, %324
  %326 = add <4 x i32> %325, <i32 2, i32 2, i32 2, i32 2>
  %327 = urem <4 x i32> %326, <i32 60, i32 60, i32 60, i32 60>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add i64 %331, %321
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !91, !noalias !93
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1058 = add <4 x i64> %vec.ind1057, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1054, 28
  br i1 %335, label %polly.loop_exit705.1.2, label %vector.body1051, !llvm.loop !106

polly.loop_exit705.1.2:                           ; preds = %vector.body1051
  %polly.indvar_next701.1.2 = add nuw nsw i64 %polly.indvar700.1.2, 1
  %exitcond773.1.2.not = icmp eq i64 %polly.indvar_next701.1.2, 16
  br i1 %exitcond773.1.2.not, label %polly.loop_header723, label %polly.loop_header697.1.2

polly.loop_header670.1:                           ; preds = %polly.loop_exit678, %polly.loop_exit678.1
  %polly.indvar673.1 = phi i64 [ %polly.indvar_next674.1, %polly.loop_exit678.1 ], [ 0, %polly.loop_exit678 ]
  %336 = mul nuw nsw i64 %polly.indvar673.1, 640
  %337 = trunc i64 %polly.indvar673.1 to i32
  %broadcast.splatinsert893 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat894 = shufflevector <4 x i32> %broadcast.splatinsert893, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body885

vector.body885:                                   ; preds = %vector.body885, %polly.loop_header670.1
  %index887 = phi i64 [ 0, %polly.loop_header670.1 ], [ %index.next888, %vector.body885 ]
  %vec.ind891 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.1 ], [ %vec.ind.next892, %vector.body885 ]
  %338 = add nuw nsw <4 x i64> %vec.ind891, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat894, %339
  %341 = add <4 x i32> %340, <i32 3, i32 3, i32 3, i32 3>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add nuw nsw i64 %346, %336
  %348 = getelementptr i8, i8* %call, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !87, !noalias !89
  %index.next888 = add i64 %index887, 4
  %vec.ind.next892 = add <4 x i64> %vec.ind891, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next888, 32
  br i1 %350, label %polly.loop_exit678.1, label %vector.body885, !llvm.loop !107

polly.loop_exit678.1:                             ; preds = %vector.body885
  %polly.indvar_next674.1 = add nuw nsw i64 %polly.indvar673.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next674.1, 32
  br i1 %exitcond782.1.not, label %polly.loop_header670.2, label %polly.loop_header670.1

polly.loop_header670.2:                           ; preds = %polly.loop_exit678.1, %polly.loop_exit678.2
  %polly.indvar673.2 = phi i64 [ %polly.indvar_next674.2, %polly.loop_exit678.2 ], [ 0, %polly.loop_exit678.1 ]
  %351 = mul nuw nsw i64 %polly.indvar673.2, 640
  %352 = trunc i64 %polly.indvar673.2 to i32
  %broadcast.splatinsert905 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat906 = shufflevector <4 x i32> %broadcast.splatinsert905, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %polly.loop_header670.2
  %index899 = phi i64 [ 0, %polly.loop_header670.2 ], [ %index.next900, %vector.body897 ]
  %vec.ind903 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.2 ], [ %vec.ind.next904, %vector.body897 ]
  %353 = add nuw nsw <4 x i64> %vec.ind903, <i64 64, i64 64, i64 64, i64 64>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat906, %354
  %356 = add <4 x i32> %355, <i32 3, i32 3, i32 3, i32 3>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %351
  %363 = getelementptr i8, i8* %call, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !87, !noalias !89
  %index.next900 = add i64 %index899, 4
  %vec.ind.next904 = add <4 x i64> %vec.ind903, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next900, 16
  br i1 %365, label %polly.loop_exit678.2, label %vector.body897, !llvm.loop !108

polly.loop_exit678.2:                             ; preds = %vector.body897
  %polly.indvar_next674.2 = add nuw nsw i64 %polly.indvar673.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar_next674.2, 32
  br i1 %exitcond782.2.not, label %polly.loop_header670.1818, label %polly.loop_header670.2

polly.loop_header670.1818:                        ; preds = %polly.loop_exit678.2, %polly.loop_exit678.1829
  %polly.indvar673.1817 = phi i64 [ %polly.indvar_next674.1827, %polly.loop_exit678.1829 ], [ 0, %polly.loop_exit678.2 ]
  %366 = add nuw nsw i64 %polly.indvar673.1817, 32
  %367 = mul nuw nsw i64 %366, 640
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert919 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat920 = shufflevector <4 x i32> %broadcast.splatinsert919, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body909

vector.body909:                                   ; preds = %vector.body909, %polly.loop_header670.1818
  %index911 = phi i64 [ 0, %polly.loop_header670.1818 ], [ %index.next912, %vector.body909 ]
  %vec.ind917 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header670.1818 ], [ %vec.ind.next918, %vector.body909 ]
  %369 = mul <4 x i32> %vec.ind917, %broadcast.splat920
  %370 = add <4 x i32> %369, <i32 3, i32 3, i32 3, i32 3>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %374 = shl i64 %index911, 3
  %375 = add nuw nsw i64 %374, %367
  %376 = getelementptr i8, i8* %call, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !87, !noalias !89
  %index.next912 = add i64 %index911, 4
  %vec.ind.next918 = add <4 x i32> %vec.ind917, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next912, 32
  br i1 %378, label %polly.loop_exit678.1829, label %vector.body909, !llvm.loop !109

polly.loop_exit678.1829:                          ; preds = %vector.body909
  %polly.indvar_next674.1827 = add nuw nsw i64 %polly.indvar673.1817, 1
  %exitcond782.1828.not = icmp eq i64 %polly.indvar_next674.1827, 32
  br i1 %exitcond782.1828.not, label %polly.loop_header670.1.1, label %polly.loop_header670.1818

polly.loop_header670.1.1:                         ; preds = %polly.loop_exit678.1829, %polly.loop_exit678.1.1
  %polly.indvar673.1.1 = phi i64 [ %polly.indvar_next674.1.1, %polly.loop_exit678.1.1 ], [ 0, %polly.loop_exit678.1829 ]
  %379 = add nuw nsw i64 %polly.indvar673.1.1, 32
  %380 = mul nuw nsw i64 %379, 640
  %381 = trunc i64 %379 to i32
  %broadcast.splatinsert931 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat932 = shufflevector <4 x i32> %broadcast.splatinsert931, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %polly.loop_header670.1.1
  %index925 = phi i64 [ 0, %polly.loop_header670.1.1 ], [ %index.next926, %vector.body923 ]
  %vec.ind929 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.1.1 ], [ %vec.ind.next930, %vector.body923 ]
  %382 = add nuw nsw <4 x i64> %vec.ind929, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat932, %383
  %385 = add <4 x i32> %384, <i32 3, i32 3, i32 3, i32 3>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add nuw nsw i64 %390, %380
  %392 = getelementptr i8, i8* %call, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !87, !noalias !89
  %index.next926 = add i64 %index925, 4
  %vec.ind.next930 = add <4 x i64> %vec.ind929, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next926, 32
  br i1 %394, label %polly.loop_exit678.1.1, label %vector.body923, !llvm.loop !110

polly.loop_exit678.1.1:                           ; preds = %vector.body923
  %polly.indvar_next674.1.1 = add nuw nsw i64 %polly.indvar673.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar_next674.1.1, 32
  br i1 %exitcond782.1.1.not, label %polly.loop_header670.2.1, label %polly.loop_header670.1.1

polly.loop_header670.2.1:                         ; preds = %polly.loop_exit678.1.1, %polly.loop_exit678.2.1
  %polly.indvar673.2.1 = phi i64 [ %polly.indvar_next674.2.1, %polly.loop_exit678.2.1 ], [ 0, %polly.loop_exit678.1.1 ]
  %395 = add nuw nsw i64 %polly.indvar673.2.1, 32
  %396 = mul nuw nsw i64 %395, 640
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert943 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat944 = shufflevector <4 x i32> %broadcast.splatinsert943, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %polly.loop_header670.2.1
  %index937 = phi i64 [ 0, %polly.loop_header670.2.1 ], [ %index.next938, %vector.body935 ]
  %vec.ind941 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.2.1 ], [ %vec.ind.next942, %vector.body935 ]
  %398 = add nuw nsw <4 x i64> %vec.ind941, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat944, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !87, !noalias !89
  %index.next938 = add i64 %index937, 4
  %vec.ind.next942 = add <4 x i64> %vec.ind941, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next938, 16
  br i1 %410, label %polly.loop_exit678.2.1, label %vector.body935, !llvm.loop !111

polly.loop_exit678.2.1:                           ; preds = %vector.body935
  %polly.indvar_next674.2.1 = add nuw nsw i64 %polly.indvar673.2.1, 1
  %exitcond782.2.1.not = icmp eq i64 %polly.indvar_next674.2.1, 32
  br i1 %exitcond782.2.1.not, label %polly.loop_header670.2832, label %polly.loop_header670.2.1

polly.loop_header670.2832:                        ; preds = %polly.loop_exit678.2.1, %polly.loop_exit678.2843
  %polly.indvar673.2831 = phi i64 [ %polly.indvar_next674.2841, %polly.loop_exit678.2843 ], [ 0, %polly.loop_exit678.2.1 ]
  %411 = add nuw nsw i64 %polly.indvar673.2831, 64
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert957 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat958 = shufflevector <4 x i32> %broadcast.splatinsert957, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %polly.loop_header670.2832
  %index949 = phi i64 [ 0, %polly.loop_header670.2832 ], [ %index.next950, %vector.body947 ]
  %vec.ind955 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header670.2832 ], [ %vec.ind.next956, %vector.body947 ]
  %414 = mul <4 x i32> %vec.ind955, %broadcast.splat958
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index949, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !87, !noalias !89
  %index.next950 = add i64 %index949, 4
  %vec.ind.next956 = add <4 x i32> %vec.ind955, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next950, 32
  br i1 %423, label %polly.loop_exit678.2843, label %vector.body947, !llvm.loop !112

polly.loop_exit678.2843:                          ; preds = %vector.body947
  %polly.indvar_next674.2841 = add nuw nsw i64 %polly.indvar673.2831, 1
  %exitcond782.2842.not = icmp eq i64 %polly.indvar_next674.2841, 16
  br i1 %exitcond782.2842.not, label %polly.loop_header670.1.2, label %polly.loop_header670.2832

polly.loop_header670.1.2:                         ; preds = %polly.loop_exit678.2843, %polly.loop_exit678.1.2
  %polly.indvar673.1.2 = phi i64 [ %polly.indvar_next674.1.2, %polly.loop_exit678.1.2 ], [ 0, %polly.loop_exit678.2843 ]
  %424 = add nuw nsw i64 %polly.indvar673.1.2, 64
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header670.1.2
  %index963 = phi i64 [ 0, %polly.loop_header670.1.2 ], [ %index.next964, %vector.body961 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.1.2 ], [ %vec.ind.next968, %vector.body961 ]
  %427 = add nuw nsw <4 x i64> %vec.ind967, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat970, %428
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add nuw nsw i64 %435, %425
  %437 = getelementptr i8, i8* %call, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !87, !noalias !89
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next964, 32
  br i1 %439, label %polly.loop_exit678.1.2, label %vector.body961, !llvm.loop !113

polly.loop_exit678.1.2:                           ; preds = %vector.body961
  %polly.indvar_next674.1.2 = add nuw nsw i64 %polly.indvar673.1.2, 1
  %exitcond782.1.2.not = icmp eq i64 %polly.indvar_next674.1.2, 16
  br i1 %exitcond782.1.2.not, label %polly.loop_header670.2.2, label %polly.loop_header670.1.2

polly.loop_header670.2.2:                         ; preds = %polly.loop_exit678.1.2, %polly.loop_exit678.2.2
  %polly.indvar673.2.2 = phi i64 [ %polly.indvar_next674.2.2, %polly.loop_exit678.2.2 ], [ 0, %polly.loop_exit678.1.2 ]
  %440 = add nuw nsw i64 %polly.indvar673.2.2, 64
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header670.2.2
  %index975 = phi i64 [ 0, %polly.loop_header670.2.2 ], [ %index.next976, %vector.body973 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header670.2.2 ], [ %vec.ind.next980, %vector.body973 ]
  %443 = add nuw nsw <4 x i64> %vec.ind979, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat982, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !87, !noalias !89
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next976, 16
  br i1 %455, label %polly.loop_exit678.2.2, label %vector.body973, !llvm.loop !114

polly.loop_exit678.2.2:                           ; preds = %vector.body973
  %polly.indvar_next674.2.2 = add nuw nsw i64 %polly.indvar673.2.2, 1
  %exitcond782.2.2.not = icmp eq i64 %polly.indvar_next674.2.2, 16
  br i1 %exitcond782.2.2.not, label %polly.loop_header697, label %polly.loop_header670.2.2
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

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!24 = !{!"llvm.loop.tile.size", i32 256}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 100}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !48}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 50}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !47}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.tile.followup_tile", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i2"}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !4, i64 0}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !60, !"polly.alias.scope.MemRef_call"}
!60 = distinct !{!60, !"polly.alias.scope.domain"}
!61 = !{!62, !63}
!62 = distinct !{!62, !60, !"polly.alias.scope.MemRef_call1"}
!63 = distinct !{!63, !60, !"polly.alias.scope.MemRef_call2"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !66, !13}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!59, !62}
!68 = !{!59, !63}
!69 = distinct !{!69, !70, !"polly.alias.scope.MemRef_call"}
!70 = distinct !{!70, !"polly.alias.scope.domain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"polly.alias.scope.MemRef_call1"}
!73 = distinct !{!73, !70, !"polly.alias.scope.MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !66, !13}
!76 = !{!69, !72}
!77 = !{!69, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !66, !13}
!85 = !{!78, !81}
!86 = !{!78, !82}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = !{!90, !87}
!94 = distinct !{!94, !13}
!95 = !{!91, !87}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
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
