; ModuleID = 'syr2k_exhaustive/mmp_all_SM_5241.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_5241.c"
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
  %call813 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1665 = bitcast i8* %call1 to double*
  %polly.access.call1674 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1674, %call2
  %polly.access.call2694 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2694, %call1
  %2 = or i1 %0, %1
  %polly.access.call714 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call714, %call2
  %4 = icmp ule i8* %polly.access.call2694, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call714, %call1
  %8 = icmp ule i8* %polly.access.call1674, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header787, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1101 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1100 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1099 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1098 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1098, %scevgep1101
  %bound1 = icmp ult i8* %scevgep1100, %scevgep1099
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
  br i1 %exitcond18.not.i, label %vector.ph1105, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1105:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1112 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1113 = shufflevector <4 x i64> %broadcast.splatinsert1112, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1105
  %index1106 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1105 ], [ %vec.ind.next1111, %vector.body1104 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1110, %broadcast.splat1113
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv7.i, i64 %index1106
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1107, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1104, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1104
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1105, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit848
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1167 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1167, label %for.body3.i46.preheader1241, label %vector.ph1168

vector.ph1168:                                    ; preds = %for.body3.i46.preheader
  %n.vec1170 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1168
  %index1171 = phi i64 [ 0, %vector.ph1168 ], [ %index.next1172, %vector.body1166 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i, i64 %index1171
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1172 = add i64 %index1171, 4
  %46 = icmp eq i64 %index.next1172, %n.vec1170
  br i1 %46, label %middle.block1164, label %vector.body1166, !llvm.loop !18

middle.block1164:                                 ; preds = %vector.body1166
  %cmp.n1174 = icmp eq i64 %indvars.iv21.i, %n.vec1170
  br i1 %cmp.n1174, label %for.inc6.i, label %for.body3.i46.preheader1241

for.body3.i46.preheader1241:                      ; preds = %for.body3.i46.preheader, %middle.block1164
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1170, %middle.block1164 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1241, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1241 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1164, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1190 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1190, label %for.body3.i60.preheader1240, label %vector.ph1191

vector.ph1191:                                    ; preds = %for.body3.i60.preheader
  %n.vec1193 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1189 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i52, i64 %index1194
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1198 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1198, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1195 = add i64 %index1194, 4
  %57 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %57, label %middle.block1187, label %vector.body1189, !llvm.loop !55

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1197 = icmp eq i64 %indvars.iv21.i52, %n.vec1193
  br i1 %cmp.n1197, label %for.inc6.i63, label %for.body3.i60.preheader1240

for.body3.i60.preheader1240:                      ; preds = %for.body3.i60.preheader, %middle.block1187
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1193, %middle.block1187 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1240, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1240 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1187, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1216 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1216, label %for.body3.i99.preheader1239, label %vector.ph1217

vector.ph1217:                                    ; preds = %for.body3.i99.preheader
  %n.vec1219 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1217
  %index1220 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1221, %vector.body1215 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i91, i64 %index1220
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1224 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1224, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %68 = icmp eq i64 %index.next1221, %n.vec1219
  br i1 %68, label %middle.block1213, label %vector.body1215, !llvm.loop !57

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %indvars.iv21.i91, %n.vec1219
  br i1 %cmp.n1223, label %for.inc6.i102, label %for.body3.i99.preheader1239

for.body3.i99.preheader1239:                      ; preds = %for.body3.i99.preheader, %middle.block1213
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1219, %middle.block1213 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1239, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1239 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1213, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1228 = phi i64 [ %indvar.next1229, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1228, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1230 = icmp ult i64 %88, 4
  br i1 %min.iters.check1230, label %polly.loop_header191.preheader, label %vector.ph1231

vector.ph1231:                                    ; preds = %polly.loop_header
  %n.vec1233 = and i64 %88, -4
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1231
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1235, %vector.body1227 ]
  %90 = shl nuw nsw i64 %index1234, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1238 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1238, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1235 = add i64 %index1234, 4
  %95 = icmp eq i64 %index.next1235, %n.vec1233
  br i1 %95, label %middle.block1225, label %vector.body1227, !llvm.loop !69

middle.block1225:                                 ; preds = %vector.body1227
  %cmp.n1237 = icmp eq i64 %88, %n.vec1233
  br i1 %cmp.n1237, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1225
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1233, %middle.block1225 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1225
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1229 = add i64 %indvar1228, 1
  br i1 %exitcond1000.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond999.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond999.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv992 = phi i64 [ 36, %polly.loop_header199.preheader ], [ %indvars.iv.next993, %polly.loop_exit207 ]
  %indvars.iv990 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit207 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv992, 25
  %98 = sub nsw i64 %indvars.iv990, %97
  %smin994 = call i64 @llvm.smin.i64(i64 %98, i64 20)
  %99 = add nsw i64 %smin994, 3
  %smax995 = call i64 @llvm.smax.i64(i64 %99, i64 0)
  %100 = mul nsw i64 %polly.indvar202, -128
  %101 = icmp slt i64 %100, -1072
  %102 = select i1 %101, i64 %100, i64 -1072
  %103 = add nsw i64 %102, 1199
  %104 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 128
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 3
  %indvars.iv.next993 = add nuw nsw i64 %indvars.iv992, 11
  %exitcond998.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond998.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %105 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond997.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header205 ]
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %106 = mul nuw nsw i64 %polly.indvar214, 50
  %107 = add nsw i64 %106, %100
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard.not = icmp sgt i64 %109, %103
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv977, i64 0)
  %110 = add i64 %smax, %indvars.iv981
  %111 = sub nsw i64 %104, %106
  %112 = add nuw nsw i64 %106, 50
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 50
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -50
  %exitcond996.not = icmp eq i64 %polly.indvar214, %smax995
  br i1 %exitcond996.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv983 = phi i64 [ %110, %polly.loop_header217.preheader ], [ %indvars.iv.next984, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %109, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 49)
  %113 = add nsw i64 %polly.indvar220, %111
  %polly.loop_guard2331093 = icmp sgt i64 %113, -1
  %114 = add nuw nsw i64 %polly.indvar220, %104
  %.not = icmp ult i64 %114, %112
  %polly.access.mul.call1242 = mul nsw i64 %114, 1000
  %115 = add nuw i64 %polly.access.mul.call1242, %105
  br i1 %polly.loop_guard2331093, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %116 = add nuw nsw i64 %polly.indvar226.us, %105
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %117 = add nuw nsw i64 %polly.indvar234.us, %106
  %polly.access.mul.call1238.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %116, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar234.us, %smin987
  br i1 %exitcond985.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %115, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %113
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next227.us, 20
  br i1 %exitcond986.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1665, i64 %115
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %113
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.access.add.call1243.1 = or i64 %115, 1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.1 = add nsw i64 %113, 1200
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.access.add.call1243.2 = or i64 %115, 2
  %polly.access.call1244.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.2
  %polly.access.call1244.load.2 = load double, double* %polly.access.call1244.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.2 = add nsw i64 %113, 2400
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  store double %polly.access.call1244.load.2, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %polly.access.add.call1243.3 = or i64 %115, 3
  %polly.access.call1244.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.3
  %polly.access.call1244.load.3 = load double, double* %polly.access.call1244.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.3 = add nsw i64 %113, 3600
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  store double %polly.access.call1244.load.3, double* %polly.access.Packed_MemRef_call1247.3, align 8
  %polly.access.add.call1243.4 = add nuw nsw i64 %115, 4
  %polly.access.call1244.4 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.4
  %polly.access.call1244.load.4 = load double, double* %polly.access.call1244.4, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.4 = add nsw i64 %113, 4800
  %polly.access.Packed_MemRef_call1247.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.4
  store double %polly.access.call1244.load.4, double* %polly.access.Packed_MemRef_call1247.4, align 8
  %polly.access.add.call1243.5 = add nuw nsw i64 %115, 5
  %polly.access.call1244.5 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.5
  %polly.access.call1244.load.5 = load double, double* %polly.access.call1244.5, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.5 = add nsw i64 %113, 6000
  %polly.access.Packed_MemRef_call1247.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.5
  store double %polly.access.call1244.load.5, double* %polly.access.Packed_MemRef_call1247.5, align 8
  %polly.access.add.call1243.6 = add nuw nsw i64 %115, 6
  %polly.access.call1244.6 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.6
  %polly.access.call1244.load.6 = load double, double* %polly.access.call1244.6, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.6 = add nsw i64 %113, 7200
  %polly.access.Packed_MemRef_call1247.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.6
  store double %polly.access.call1244.load.6, double* %polly.access.Packed_MemRef_call1247.6, align 8
  %polly.access.add.call1243.7 = add nuw nsw i64 %115, 7
  %polly.access.call1244.7 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.7
  %polly.access.call1244.load.7 = load double, double* %polly.access.call1244.7, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.7 = add nsw i64 %113, 8400
  %polly.access.Packed_MemRef_call1247.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.7
  store double %polly.access.call1244.load.7, double* %polly.access.Packed_MemRef_call1247.7, align 8
  %polly.access.add.call1243.8 = add nuw nsw i64 %115, 8
  %polly.access.call1244.8 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.8
  %polly.access.call1244.load.8 = load double, double* %polly.access.call1244.8, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.8 = add nsw i64 %113, 9600
  %polly.access.Packed_MemRef_call1247.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.8
  store double %polly.access.call1244.load.8, double* %polly.access.Packed_MemRef_call1247.8, align 8
  %polly.access.add.call1243.9 = add nuw nsw i64 %115, 9
  %polly.access.call1244.9 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.9
  %polly.access.call1244.load.9 = load double, double* %polly.access.call1244.9, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.9 = add nsw i64 %113, 10800
  %polly.access.Packed_MemRef_call1247.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.9
  store double %polly.access.call1244.load.9, double* %polly.access.Packed_MemRef_call1247.9, align 8
  %polly.access.add.call1243.10 = add nuw nsw i64 %115, 10
  %polly.access.call1244.10 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.10
  %polly.access.call1244.load.10 = load double, double* %polly.access.call1244.10, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.10 = add nsw i64 %113, 12000
  %polly.access.Packed_MemRef_call1247.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.10
  store double %polly.access.call1244.load.10, double* %polly.access.Packed_MemRef_call1247.10, align 8
  %polly.access.add.call1243.11 = add nuw nsw i64 %115, 11
  %polly.access.call1244.11 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.11
  %polly.access.call1244.load.11 = load double, double* %polly.access.call1244.11, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.11 = add nsw i64 %113, 13200
  %polly.access.Packed_MemRef_call1247.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.11
  store double %polly.access.call1244.load.11, double* %polly.access.Packed_MemRef_call1247.11, align 8
  %polly.access.add.call1243.12 = add nuw nsw i64 %115, 12
  %polly.access.call1244.12 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.12
  %polly.access.call1244.load.12 = load double, double* %polly.access.call1244.12, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.12 = add nsw i64 %113, 14400
  %polly.access.Packed_MemRef_call1247.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.12
  store double %polly.access.call1244.load.12, double* %polly.access.Packed_MemRef_call1247.12, align 8
  %polly.access.add.call1243.13 = add nuw nsw i64 %115, 13
  %polly.access.call1244.13 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.13
  %polly.access.call1244.load.13 = load double, double* %polly.access.call1244.13, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.13 = add nsw i64 %113, 15600
  %polly.access.Packed_MemRef_call1247.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.13
  store double %polly.access.call1244.load.13, double* %polly.access.Packed_MemRef_call1247.13, align 8
  %polly.access.add.call1243.14 = add nuw nsw i64 %115, 14
  %polly.access.call1244.14 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.14
  %polly.access.call1244.load.14 = load double, double* %polly.access.call1244.14, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.14 = add nsw i64 %113, 16800
  %polly.access.Packed_MemRef_call1247.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.14
  store double %polly.access.call1244.load.14, double* %polly.access.Packed_MemRef_call1247.14, align 8
  %polly.access.add.call1243.15 = add nuw nsw i64 %115, 15
  %polly.access.call1244.15 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.15
  %polly.access.call1244.load.15 = load double, double* %polly.access.call1244.15, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.15 = add nsw i64 %113, 18000
  %polly.access.Packed_MemRef_call1247.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.15
  store double %polly.access.call1244.load.15, double* %polly.access.Packed_MemRef_call1247.15, align 8
  %polly.access.add.call1243.16 = add nuw nsw i64 %115, 16
  %polly.access.call1244.16 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.16
  %polly.access.call1244.load.16 = load double, double* %polly.access.call1244.16, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.16 = add nsw i64 %113, 19200
  %polly.access.Packed_MemRef_call1247.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.16
  store double %polly.access.call1244.load.16, double* %polly.access.Packed_MemRef_call1247.16, align 8
  %polly.access.add.call1243.17 = add nuw nsw i64 %115, 17
  %polly.access.call1244.17 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.17
  %polly.access.call1244.load.17 = load double, double* %polly.access.call1244.17, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.17 = add nsw i64 %113, 20400
  %polly.access.Packed_MemRef_call1247.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.17
  store double %polly.access.call1244.load.17, double* %polly.access.Packed_MemRef_call1247.17, align 8
  %polly.access.add.call1243.18 = add nuw nsw i64 %115, 18
  %polly.access.call1244.18 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.18
  %polly.access.call1244.load.18 = load double, double* %polly.access.call1244.18, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.18 = add nsw i64 %113, 21600
  %polly.access.Packed_MemRef_call1247.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.18
  store double %polly.access.call1244.load.18, double* %polly.access.Packed_MemRef_call1247.18, align 8
  %polly.access.add.call1243.19 = add nuw nsw i64 %115, 19
  %polly.access.call1244.19 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.19
  %polly.access.call1244.load.19 = load double, double* %polly.access.call1244.19, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.19 = add nsw i64 %113, 22800
  %polly.access.Packed_MemRef_call1247.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.19
  store double %polly.access.call1244.load.19, double* %polly.access.Packed_MemRef_call1247.19, align 8
  br label %polly.loop_exit250

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %103
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header248.preheader:                   ; preds = %polly.merge.us
  %118 = mul i64 %114, 8000
  %119 = mul i64 %114, 9600
  br i1 %polly.loop_guard2331093, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %120 = add nuw nsw i64 %polly.indvar251.us, %105
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %121 = shl i64 %120, 3
  %122 = add i64 %121, %118
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %113
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %123 = add nuw nsw i64 %polly.indvar259.us, %106
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %124 = mul nuw nsw i64 %123, 8000
  %125 = add nuw nsw i64 %124, %121
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %125
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %126 = shl i64 %123, 3
  %127 = add i64 %126, %119
  %scevgep276.us = getelementptr i8, i8* %call, i64 %127
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar259.us, %smin987
  br i1 %exitcond988.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next252.us, 20
  br i1 %exitcond989.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1202 = phi i64 [ %indvar.next1203, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %128 = add i64 %indvar1202, 1
  %129 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1204 = icmp ult i64 %128, 4
  br i1 %min.iters.check1204, label %polly.loop_header373.preheader, label %vector.ph1205

vector.ph1205:                                    ; preds = %polly.loop_header367
  %n.vec1207 = and i64 %128, -4
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1201 ]
  %130 = shl nuw nsw i64 %index1208, 3
  %131 = getelementptr i8, i8* %scevgep379, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !74, !noalias !76
  %133 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !74, !noalias !76
  %index.next1209 = add i64 %index1208, 4
  %135 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %135, label %middle.block1199, label %vector.body1201, !llvm.loop !80

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1211 = icmp eq i64 %128, %n.vec1207
  br i1 %cmp.n1211, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1199
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1207, %middle.block1199 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1199
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1203 = add i64 %indvar1202, 1
  br i1 %exitcond1029.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %136
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1028.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1021 = phi i64 [ 36, %polly.loop_header383.preheader ], [ %indvars.iv.next1022, %polly.loop_exit391 ]
  %indvars.iv1019 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1020, %polly.loop_exit391 ]
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1008, %polly.loop_exit391 ]
  %indvars.iv1002 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1003, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %137 = udiv i64 %indvars.iv1021, 25
  %138 = sub nsw i64 %indvars.iv1019, %137
  %smin1023 = call i64 @llvm.smin.i64(i64 %138, i64 20)
  %139 = add nsw i64 %smin1023, 3
  %smax1024 = call i64 @llvm.smax.i64(i64 %139, i64 0)
  %140 = mul nsw i64 %polly.indvar386, -128
  %141 = icmp slt i64 %140, -1072
  %142 = select i1 %141, i64 %140, i64 -1072
  %143 = add nsw i64 %142, 1199
  %144 = shl nsw i64 %polly.indvar386, 7
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit398
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -128
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 128
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 3
  %indvars.iv.next1022 = add nuw nsw i64 %indvars.iv1021, 11
  %exitcond1027.not = icmp eq i64 %polly.indvar_next387, 10
  br i1 %exitcond1027.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit398, %polly.loop_header383
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header383 ], [ %polly.indvar_next393, %polly.loop_exit398 ]
  %145 = mul nuw nsw i64 %polly.indvar392, 20
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next393, 50
  br i1 %exitcond1026.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header389
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit405 ], [ %indvars.iv1007, %polly.loop_header389 ]
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit405 ], [ %indvars.iv1002, %polly.loop_header389 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit405 ], [ 0, %polly.loop_header389 ]
  %146 = mul nuw nsw i64 %polly.indvar399, 50
  %147 = add nsw i64 %146, %140
  %148 = icmp sgt i64 %147, 0
  %149 = select i1 %148, i64 %147, i64 0
  %polly.loop_guard406.not = icmp sgt i64 %149, %143
  br i1 %polly.loop_guard406.not, label %polly.loop_exit405, label %polly.loop_header403.preheader

polly.loop_header403.preheader:                   ; preds = %polly.loop_header396
  %smax1006 = call i64 @llvm.smax.i64(i64 %indvars.iv1004, i64 0)
  %150 = add i64 %smax1006, %indvars.iv1009
  %151 = sub nsw i64 %144, %146
  %152 = add nuw nsw i64 %146, 50
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit441, %polly.loop_header396
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, 50
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, -50
  %exitcond1025.not = icmp eq i64 %polly.indvar399, %smax1024
  br i1 %exitcond1025.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_header403.preheader, %polly.loop_exit441
  %indvars.iv1011 = phi i64 [ %150, %polly.loop_header403.preheader ], [ %indvars.iv.next1012, %polly.loop_exit441 ]
  %polly.indvar407 = phi i64 [ %149, %polly.loop_header403.preheader ], [ %polly.indvar_next408, %polly.loop_exit441 ]
  %smin1016 = call i64 @llvm.smin.i64(i64 %indvars.iv1011, i64 49)
  %153 = add nsw i64 %polly.indvar407, %151
  %polly.loop_guard4201094 = icmp sgt i64 %153, -1
  %154 = add nuw nsw i64 %polly.indvar407, %144
  %.not867 = icmp ult i64 %154, %152
  %polly.access.mul.call1433 = mul nsw i64 %154, 1000
  %155 = add nuw i64 %polly.access.mul.call1433, %145
  br i1 %polly.loop_guard4201094, label %polly.loop_header410.us, label %polly.loop_header403.split

polly.loop_header410.us:                          ; preds = %polly.loop_header403, %polly.merge429.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.merge429.us ], [ 0, %polly.loop_header403 ]
  %156 = add nuw nsw i64 %polly.indvar413.us, %145
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar413.us, 1200
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %157 = add nuw nsw i64 %polly.indvar421.us, %146
  %polly.access.mul.call1425.us = mul nuw nsw i64 %157, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %156, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next422.us = add nuw nsw i64 %polly.indvar421.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar421.us, %smin1016
  br i1 %exitcond1014.not, label %polly.cond428.loopexit.us, label %polly.loop_header417.us

polly.then430.us:                                 ; preds = %polly.cond428.loopexit.us
  %polly.access.add.call1434.us = add nuw nsw i64 %155, %polly.indvar413.us
  %polly.access.call1435.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us
  %polly.access.call1435.load.us = load double, double* %polly.access.call1435.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %153
  %polly.access.Packed_MemRef_call1284438.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us
  store double %polly.access.call1435.load.us, double* %polly.access.Packed_MemRef_call1284438.us, align 8
  br label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.then430.us, %polly.cond428.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next414.us, 20
  br i1 %exitcond1015.not, label %polly.loop_header439.preheader, label %polly.loop_header410.us

polly.cond428.loopexit.us:                        ; preds = %polly.loop_header417.us
  br i1 %.not867, label %polly.merge429.us, label %polly.then430.us

polly.loop_header403.split:                       ; preds = %polly.loop_header403
  br i1 %.not867, label %polly.loop_exit441, label %polly.loop_header410.preheader

polly.loop_header410.preheader:                   ; preds = %polly.loop_header403.split
  %polly.access.call1435 = getelementptr double, double* %polly.access.cast.call1665, i64 %155
  %polly.access.call1435.load = load double, double* %polly.access.call1435, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284438 = getelementptr double, double* %Packed_MemRef_call1284, i64 %153
  store double %polly.access.call1435.load, double* %polly.access.Packed_MemRef_call1284438, align 8
  %polly.access.add.call1434.1 = or i64 %155, 1
  %polly.access.call1435.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.1
  %polly.access.call1435.load.1 = load double, double* %polly.access.call1435.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.1 = add nsw i64 %153, 1200
  %polly.access.Packed_MemRef_call1284438.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.1
  store double %polly.access.call1435.load.1, double* %polly.access.Packed_MemRef_call1284438.1, align 8
  %polly.access.add.call1434.2 = or i64 %155, 2
  %polly.access.call1435.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.2
  %polly.access.call1435.load.2 = load double, double* %polly.access.call1435.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.2 = add nsw i64 %153, 2400
  %polly.access.Packed_MemRef_call1284438.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.2
  store double %polly.access.call1435.load.2, double* %polly.access.Packed_MemRef_call1284438.2, align 8
  %polly.access.add.call1434.3 = or i64 %155, 3
  %polly.access.call1435.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.3
  %polly.access.call1435.load.3 = load double, double* %polly.access.call1435.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.3 = add nsw i64 %153, 3600
  %polly.access.Packed_MemRef_call1284438.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.3
  store double %polly.access.call1435.load.3, double* %polly.access.Packed_MemRef_call1284438.3, align 8
  %polly.access.add.call1434.4 = add nuw nsw i64 %155, 4
  %polly.access.call1435.4 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.4
  %polly.access.call1435.load.4 = load double, double* %polly.access.call1435.4, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.4 = add nsw i64 %153, 4800
  %polly.access.Packed_MemRef_call1284438.4 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.4
  store double %polly.access.call1435.load.4, double* %polly.access.Packed_MemRef_call1284438.4, align 8
  %polly.access.add.call1434.5 = add nuw nsw i64 %155, 5
  %polly.access.call1435.5 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.5
  %polly.access.call1435.load.5 = load double, double* %polly.access.call1435.5, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.5 = add nsw i64 %153, 6000
  %polly.access.Packed_MemRef_call1284438.5 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.5
  store double %polly.access.call1435.load.5, double* %polly.access.Packed_MemRef_call1284438.5, align 8
  %polly.access.add.call1434.6 = add nuw nsw i64 %155, 6
  %polly.access.call1435.6 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.6
  %polly.access.call1435.load.6 = load double, double* %polly.access.call1435.6, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.6 = add nsw i64 %153, 7200
  %polly.access.Packed_MemRef_call1284438.6 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.6
  store double %polly.access.call1435.load.6, double* %polly.access.Packed_MemRef_call1284438.6, align 8
  %polly.access.add.call1434.7 = add nuw nsw i64 %155, 7
  %polly.access.call1435.7 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.7
  %polly.access.call1435.load.7 = load double, double* %polly.access.call1435.7, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.7 = add nsw i64 %153, 8400
  %polly.access.Packed_MemRef_call1284438.7 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.7
  store double %polly.access.call1435.load.7, double* %polly.access.Packed_MemRef_call1284438.7, align 8
  %polly.access.add.call1434.8 = add nuw nsw i64 %155, 8
  %polly.access.call1435.8 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.8
  %polly.access.call1435.load.8 = load double, double* %polly.access.call1435.8, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.8 = add nsw i64 %153, 9600
  %polly.access.Packed_MemRef_call1284438.8 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.8
  store double %polly.access.call1435.load.8, double* %polly.access.Packed_MemRef_call1284438.8, align 8
  %polly.access.add.call1434.9 = add nuw nsw i64 %155, 9
  %polly.access.call1435.9 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.9
  %polly.access.call1435.load.9 = load double, double* %polly.access.call1435.9, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.9 = add nsw i64 %153, 10800
  %polly.access.Packed_MemRef_call1284438.9 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.9
  store double %polly.access.call1435.load.9, double* %polly.access.Packed_MemRef_call1284438.9, align 8
  %polly.access.add.call1434.10 = add nuw nsw i64 %155, 10
  %polly.access.call1435.10 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.10
  %polly.access.call1435.load.10 = load double, double* %polly.access.call1435.10, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.10 = add nsw i64 %153, 12000
  %polly.access.Packed_MemRef_call1284438.10 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.10
  store double %polly.access.call1435.load.10, double* %polly.access.Packed_MemRef_call1284438.10, align 8
  %polly.access.add.call1434.11 = add nuw nsw i64 %155, 11
  %polly.access.call1435.11 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.11
  %polly.access.call1435.load.11 = load double, double* %polly.access.call1435.11, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.11 = add nsw i64 %153, 13200
  %polly.access.Packed_MemRef_call1284438.11 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.11
  store double %polly.access.call1435.load.11, double* %polly.access.Packed_MemRef_call1284438.11, align 8
  %polly.access.add.call1434.12 = add nuw nsw i64 %155, 12
  %polly.access.call1435.12 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.12
  %polly.access.call1435.load.12 = load double, double* %polly.access.call1435.12, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.12 = add nsw i64 %153, 14400
  %polly.access.Packed_MemRef_call1284438.12 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.12
  store double %polly.access.call1435.load.12, double* %polly.access.Packed_MemRef_call1284438.12, align 8
  %polly.access.add.call1434.13 = add nuw nsw i64 %155, 13
  %polly.access.call1435.13 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.13
  %polly.access.call1435.load.13 = load double, double* %polly.access.call1435.13, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.13 = add nsw i64 %153, 15600
  %polly.access.Packed_MemRef_call1284438.13 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.13
  store double %polly.access.call1435.load.13, double* %polly.access.Packed_MemRef_call1284438.13, align 8
  %polly.access.add.call1434.14 = add nuw nsw i64 %155, 14
  %polly.access.call1435.14 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.14
  %polly.access.call1435.load.14 = load double, double* %polly.access.call1435.14, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.14 = add nsw i64 %153, 16800
  %polly.access.Packed_MemRef_call1284438.14 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.14
  store double %polly.access.call1435.load.14, double* %polly.access.Packed_MemRef_call1284438.14, align 8
  %polly.access.add.call1434.15 = add nuw nsw i64 %155, 15
  %polly.access.call1435.15 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.15
  %polly.access.call1435.load.15 = load double, double* %polly.access.call1435.15, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.15 = add nsw i64 %153, 18000
  %polly.access.Packed_MemRef_call1284438.15 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.15
  store double %polly.access.call1435.load.15, double* %polly.access.Packed_MemRef_call1284438.15, align 8
  %polly.access.add.call1434.16 = add nuw nsw i64 %155, 16
  %polly.access.call1435.16 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.16
  %polly.access.call1435.load.16 = load double, double* %polly.access.call1435.16, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.16 = add nsw i64 %153, 19200
  %polly.access.Packed_MemRef_call1284438.16 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.16
  store double %polly.access.call1435.load.16, double* %polly.access.Packed_MemRef_call1284438.16, align 8
  %polly.access.add.call1434.17 = add nuw nsw i64 %155, 17
  %polly.access.call1435.17 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.17
  %polly.access.call1435.load.17 = load double, double* %polly.access.call1435.17, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.17 = add nsw i64 %153, 20400
  %polly.access.Packed_MemRef_call1284438.17 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.17
  store double %polly.access.call1435.load.17, double* %polly.access.Packed_MemRef_call1284438.17, align 8
  %polly.access.add.call1434.18 = add nuw nsw i64 %155, 18
  %polly.access.call1435.18 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.18
  %polly.access.call1435.load.18 = load double, double* %polly.access.call1435.18, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.18 = add nsw i64 %153, 21600
  %polly.access.Packed_MemRef_call1284438.18 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.18
  store double %polly.access.call1435.load.18, double* %polly.access.Packed_MemRef_call1284438.18, align 8
  %polly.access.add.call1434.19 = add nuw nsw i64 %155, 19
  %polly.access.call1435.19 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.19
  %polly.access.call1435.load.19 = load double, double* %polly.access.call1435.19, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.19 = add nsw i64 %153, 22800
  %polly.access.Packed_MemRef_call1284438.19 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.19
  store double %polly.access.call1435.load.19, double* %polly.access.Packed_MemRef_call1284438.19, align 8
  br label %polly.loop_exit441

polly.loop_exit441:                               ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header403.split, %polly.loop_header410.preheader, %polly.loop_header439.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409.not.not = icmp ult i64 %polly.indvar407, %143
  %indvars.iv.next1012 = add i64 %indvars.iv1011, 1
  br i1 %polly.loop_cond409.not.not, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header439.preheader:                   ; preds = %polly.merge429.us
  %158 = mul i64 %154, 8000
  %159 = mul i64 %154, 9600
  br i1 %polly.loop_guard4201094, label %polly.loop_header439.us, label %polly.loop_exit441

polly.loop_header439.us:                          ; preds = %polly.loop_header439.preheader, %polly.loop_exit448.loopexit.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit448.loopexit.us ], [ 0, %polly.loop_header439.preheader ]
  %160 = add nuw nsw i64 %polly.indvar442.us, %145
  %polly.access.mul.Packed_MemRef_call1284453.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  %161 = shl i64 %160, 3
  %162 = add i64 %161, %158
  %scevgep457.us = getelementptr i8, i8* %call2, i64 %162
  %scevgep457458.us = bitcast i8* %scevgep457.us to double*
  %_p_scalar_459.us = load double, double* %scevgep457458.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284453.us, %153
  %polly.access.Packed_MemRef_call1284465.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us
  %_p_scalar_466.us = load double, double* %polly.access.Packed_MemRef_call1284465.us, align 8
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %163 = add nuw nsw i64 %polly.indvar450.us, %146
  %polly.access.add.Packed_MemRef_call1284454.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1284453.us
  %polly.access.Packed_MemRef_call1284455.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us
  %_p_scalar_456.us = load double, double* %polly.access.Packed_MemRef_call1284455.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_459.us, %_p_scalar_456.us
  %164 = mul nuw nsw i64 %163, 8000
  %165 = add nuw nsw i64 %164, %161
  %scevgep460.us = getelementptr i8, i8* %call2, i64 %165
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_466.us, %_p_scalar_462.us
  %166 = shl i64 %163, 3
  %167 = add i64 %166, %159
  %scevgep467.us = getelementptr i8, i8* %call, i64 %167
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_469.us
  store double %p_add42.i79.us, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar450.us, %smin1016
  br i1 %exitcond1017.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next443.us, 20
  br i1 %exitcond1018.not, label %polly.loop_exit441, label %polly.loop_header439.us

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header558

polly.exiting473:                                 ; preds = %polly.loop_exit582
  tail call void @free(i8* %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start472 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start472 ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar561, 9600
  %scevgep570 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check1178 = icmp ult i64 %168, 4
  br i1 %min.iters.check1178, label %polly.loop_header564.preheader, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header558
  %n.vec1181 = and i64 %168, -4
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %170 = shl nuw nsw i64 %index1182, 3
  %171 = getelementptr i8, i8* %scevgep570, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !84, !noalias !86
  %173 = fmul fast <4 x double> %wide.load1186, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !84, !noalias !86
  %index.next1183 = add i64 %index1182, 4
  %175 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %175, label %middle.block1175, label %vector.body1177, !llvm.loop !90

middle.block1175:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %168, %n.vec1181
  br i1 %cmp.n1185, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1175
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1181, %middle.block1175 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1175
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next562, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1058.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header574

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %176
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond1057.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !91

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit582
  %indvars.iv1050 = phi i64 [ 36, %polly.loop_header574.preheader ], [ %indvars.iv.next1051, %polly.loop_exit582 ]
  %indvars.iv1048 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1049, %polly.loop_exit582 ]
  %indvars.iv1036 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1037, %polly.loop_exit582 ]
  %indvars.iv1031 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1032, %polly.loop_exit582 ]
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next578, %polly.loop_exit582 ]
  %177 = udiv i64 %indvars.iv1050, 25
  %178 = sub nsw i64 %indvars.iv1048, %177
  %smin1052 = call i64 @llvm.smin.i64(i64 %178, i64 20)
  %179 = add nsw i64 %smin1052, 3
  %smax1053 = call i64 @llvm.smax.i64(i64 %179, i64 0)
  %180 = mul nsw i64 %polly.indvar577, -128
  %181 = icmp slt i64 %180, -1072
  %182 = select i1 %181, i64 %180, i64 -1072
  %183 = add nsw i64 %182, 1199
  %184 = shl nsw i64 %polly.indvar577, 7
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit589
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %indvars.iv.next1032 = add nsw i64 %indvars.iv1031, -128
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 128
  %indvars.iv.next1049 = add nuw nsw i64 %indvars.iv1048, 3
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 11
  %exitcond1056.not = icmp eq i64 %polly.indvar_next578, 10
  br i1 %exitcond1056.not, label %polly.exiting473, label %polly.loop_header574

polly.loop_header580:                             ; preds = %polly.loop_exit589, %polly.loop_header574
  %polly.indvar583 = phi i64 [ 0, %polly.loop_header574 ], [ %polly.indvar_next584, %polly.loop_exit589 ]
  %185 = mul nuw nsw i64 %polly.indvar583, 20
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next584, 50
  br i1 %exitcond1055.not, label %polly.loop_exit582, label %polly.loop_header580

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header580
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit596 ], [ %indvars.iv1036, %polly.loop_header580 ]
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit596 ], [ %indvars.iv1031, %polly.loop_header580 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header580 ]
  %186 = mul nuw nsw i64 %polly.indvar590, 50
  %187 = add nsw i64 %186, %180
  %188 = icmp sgt i64 %187, 0
  %189 = select i1 %188, i64 %187, i64 0
  %polly.loop_guard597.not = icmp sgt i64 %189, %183
  br i1 %polly.loop_guard597.not, label %polly.loop_exit596, label %polly.loop_header594.preheader

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %smax1035 = call i64 @llvm.smax.i64(i64 %indvars.iv1033, i64 0)
  %190 = add i64 %smax1035, %indvars.iv1038
  %191 = sub nsw i64 %184, %186
  %192 = add nuw nsw i64 %186, 50
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit632, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, 50
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -50
  %exitcond1054.not = icmp eq i64 %polly.indvar590, %smax1053
  br i1 %exitcond1054.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit632
  %indvars.iv1040 = phi i64 [ %190, %polly.loop_header594.preheader ], [ %indvars.iv.next1041, %polly.loop_exit632 ]
  %polly.indvar598 = phi i64 [ %189, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit632 ]
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 49)
  %193 = add nsw i64 %polly.indvar598, %191
  %polly.loop_guard6111095 = icmp sgt i64 %193, -1
  %194 = add nuw nsw i64 %polly.indvar598, %184
  %.not868 = icmp ult i64 %194, %192
  %polly.access.mul.call1624 = mul nsw i64 %194, 1000
  %195 = add nuw i64 %polly.access.mul.call1624, %185
  br i1 %polly.loop_guard6111095, label %polly.loop_header601.us, label %polly.loop_header594.split

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.merge620.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.merge620.us ], [ 0, %polly.loop_header594 ]
  %196 = add nuw nsw i64 %polly.indvar604.us, %185
  %polly.access.mul.Packed_MemRef_call1475.us = mul nuw nsw i64 %polly.indvar604.us, 1200
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %197 = add nuw nsw i64 %polly.indvar612.us, %186
  %polly.access.mul.call1616.us = mul nuw nsw i64 %197, 1000
  %polly.access.add.call1617.us = add nuw nsw i64 %196, %polly.access.mul.call1616.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us = add nuw nsw i64 %polly.indvar612.us, %polly.access.mul.Packed_MemRef_call1475.us
  %polly.access.Packed_MemRef_call1475.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1475.us, align 8
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar612.us, %smin1045
  br i1 %exitcond1043.not, label %polly.cond619.loopexit.us, label %polly.loop_header608.us

polly.then621.us:                                 ; preds = %polly.cond619.loopexit.us
  %polly.access.add.call1625.us = add nuw nsw i64 %195, %polly.indvar604.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475.us, %193
  %polly.access.Packed_MemRef_call1475629.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1475629.us, align 8
  br label %polly.merge620.us

polly.merge620.us:                                ; preds = %polly.then621.us, %polly.cond619.loopexit.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next605.us, 20
  br i1 %exitcond1044.not, label %polly.loop_header630.preheader, label %polly.loop_header601.us

polly.cond619.loopexit.us:                        ; preds = %polly.loop_header608.us
  br i1 %.not868, label %polly.merge620.us, label %polly.then621.us

polly.loop_header594.split:                       ; preds = %polly.loop_header594
  br i1 %.not868, label %polly.loop_exit632, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header594.split
  %polly.access.call1626 = getelementptr double, double* %polly.access.cast.call1665, i64 %195
  %polly.access.call1626.load = load double, double* %polly.access.call1626, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1475629 = getelementptr double, double* %Packed_MemRef_call1475, i64 %193
  store double %polly.access.call1626.load, double* %polly.access.Packed_MemRef_call1475629, align 8
  %polly.access.add.call1625.1 = or i64 %195, 1
  %polly.access.call1626.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.1
  %polly.access.call1626.load.1 = load double, double* %polly.access.call1626.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.1 = add nsw i64 %193, 1200
  %polly.access.Packed_MemRef_call1475629.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.1
  store double %polly.access.call1626.load.1, double* %polly.access.Packed_MemRef_call1475629.1, align 8
  %polly.access.add.call1625.2 = or i64 %195, 2
  %polly.access.call1626.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.2
  %polly.access.call1626.load.2 = load double, double* %polly.access.call1626.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.2 = add nsw i64 %193, 2400
  %polly.access.Packed_MemRef_call1475629.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.2
  store double %polly.access.call1626.load.2, double* %polly.access.Packed_MemRef_call1475629.2, align 8
  %polly.access.add.call1625.3 = or i64 %195, 3
  %polly.access.call1626.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.3
  %polly.access.call1626.load.3 = load double, double* %polly.access.call1626.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.3 = add nsw i64 %193, 3600
  %polly.access.Packed_MemRef_call1475629.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.3
  store double %polly.access.call1626.load.3, double* %polly.access.Packed_MemRef_call1475629.3, align 8
  %polly.access.add.call1625.4 = add nuw nsw i64 %195, 4
  %polly.access.call1626.4 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.4
  %polly.access.call1626.load.4 = load double, double* %polly.access.call1626.4, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.4 = add nsw i64 %193, 4800
  %polly.access.Packed_MemRef_call1475629.4 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.4
  store double %polly.access.call1626.load.4, double* %polly.access.Packed_MemRef_call1475629.4, align 8
  %polly.access.add.call1625.5 = add nuw nsw i64 %195, 5
  %polly.access.call1626.5 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.5
  %polly.access.call1626.load.5 = load double, double* %polly.access.call1626.5, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.5 = add nsw i64 %193, 6000
  %polly.access.Packed_MemRef_call1475629.5 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.5
  store double %polly.access.call1626.load.5, double* %polly.access.Packed_MemRef_call1475629.5, align 8
  %polly.access.add.call1625.6 = add nuw nsw i64 %195, 6
  %polly.access.call1626.6 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.6
  %polly.access.call1626.load.6 = load double, double* %polly.access.call1626.6, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.6 = add nsw i64 %193, 7200
  %polly.access.Packed_MemRef_call1475629.6 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.6
  store double %polly.access.call1626.load.6, double* %polly.access.Packed_MemRef_call1475629.6, align 8
  %polly.access.add.call1625.7 = add nuw nsw i64 %195, 7
  %polly.access.call1626.7 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.7
  %polly.access.call1626.load.7 = load double, double* %polly.access.call1626.7, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.7 = add nsw i64 %193, 8400
  %polly.access.Packed_MemRef_call1475629.7 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.7
  store double %polly.access.call1626.load.7, double* %polly.access.Packed_MemRef_call1475629.7, align 8
  %polly.access.add.call1625.8 = add nuw nsw i64 %195, 8
  %polly.access.call1626.8 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.8
  %polly.access.call1626.load.8 = load double, double* %polly.access.call1626.8, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.8 = add nsw i64 %193, 9600
  %polly.access.Packed_MemRef_call1475629.8 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.8
  store double %polly.access.call1626.load.8, double* %polly.access.Packed_MemRef_call1475629.8, align 8
  %polly.access.add.call1625.9 = add nuw nsw i64 %195, 9
  %polly.access.call1626.9 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.9
  %polly.access.call1626.load.9 = load double, double* %polly.access.call1626.9, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.9 = add nsw i64 %193, 10800
  %polly.access.Packed_MemRef_call1475629.9 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.9
  store double %polly.access.call1626.load.9, double* %polly.access.Packed_MemRef_call1475629.9, align 8
  %polly.access.add.call1625.10 = add nuw nsw i64 %195, 10
  %polly.access.call1626.10 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.10
  %polly.access.call1626.load.10 = load double, double* %polly.access.call1626.10, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.10 = add nsw i64 %193, 12000
  %polly.access.Packed_MemRef_call1475629.10 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.10
  store double %polly.access.call1626.load.10, double* %polly.access.Packed_MemRef_call1475629.10, align 8
  %polly.access.add.call1625.11 = add nuw nsw i64 %195, 11
  %polly.access.call1626.11 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.11
  %polly.access.call1626.load.11 = load double, double* %polly.access.call1626.11, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.11 = add nsw i64 %193, 13200
  %polly.access.Packed_MemRef_call1475629.11 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.11
  store double %polly.access.call1626.load.11, double* %polly.access.Packed_MemRef_call1475629.11, align 8
  %polly.access.add.call1625.12 = add nuw nsw i64 %195, 12
  %polly.access.call1626.12 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.12
  %polly.access.call1626.load.12 = load double, double* %polly.access.call1626.12, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.12 = add nsw i64 %193, 14400
  %polly.access.Packed_MemRef_call1475629.12 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.12
  store double %polly.access.call1626.load.12, double* %polly.access.Packed_MemRef_call1475629.12, align 8
  %polly.access.add.call1625.13 = add nuw nsw i64 %195, 13
  %polly.access.call1626.13 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.13
  %polly.access.call1626.load.13 = load double, double* %polly.access.call1626.13, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.13 = add nsw i64 %193, 15600
  %polly.access.Packed_MemRef_call1475629.13 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.13
  store double %polly.access.call1626.load.13, double* %polly.access.Packed_MemRef_call1475629.13, align 8
  %polly.access.add.call1625.14 = add nuw nsw i64 %195, 14
  %polly.access.call1626.14 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.14
  %polly.access.call1626.load.14 = load double, double* %polly.access.call1626.14, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.14 = add nsw i64 %193, 16800
  %polly.access.Packed_MemRef_call1475629.14 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.14
  store double %polly.access.call1626.load.14, double* %polly.access.Packed_MemRef_call1475629.14, align 8
  %polly.access.add.call1625.15 = add nuw nsw i64 %195, 15
  %polly.access.call1626.15 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.15
  %polly.access.call1626.load.15 = load double, double* %polly.access.call1626.15, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.15 = add nsw i64 %193, 18000
  %polly.access.Packed_MemRef_call1475629.15 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.15
  store double %polly.access.call1626.load.15, double* %polly.access.Packed_MemRef_call1475629.15, align 8
  %polly.access.add.call1625.16 = add nuw nsw i64 %195, 16
  %polly.access.call1626.16 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.16
  %polly.access.call1626.load.16 = load double, double* %polly.access.call1626.16, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.16 = add nsw i64 %193, 19200
  %polly.access.Packed_MemRef_call1475629.16 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.16
  store double %polly.access.call1626.load.16, double* %polly.access.Packed_MemRef_call1475629.16, align 8
  %polly.access.add.call1625.17 = add nuw nsw i64 %195, 17
  %polly.access.call1626.17 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.17
  %polly.access.call1626.load.17 = load double, double* %polly.access.call1626.17, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.17 = add nsw i64 %193, 20400
  %polly.access.Packed_MemRef_call1475629.17 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.17
  store double %polly.access.call1626.load.17, double* %polly.access.Packed_MemRef_call1475629.17, align 8
  %polly.access.add.call1625.18 = add nuw nsw i64 %195, 18
  %polly.access.call1626.18 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.18
  %polly.access.call1626.load.18 = load double, double* %polly.access.call1626.18, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.18 = add nsw i64 %193, 21600
  %polly.access.Packed_MemRef_call1475629.18 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.18
  store double %polly.access.call1626.load.18, double* %polly.access.Packed_MemRef_call1475629.18, align 8
  %polly.access.add.call1625.19 = add nuw nsw i64 %195, 19
  %polly.access.call1626.19 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.19
  %polly.access.call1626.load.19 = load double, double* %polly.access.call1626.19, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.19 = add nsw i64 %193, 22800
  %polly.access.Packed_MemRef_call1475629.19 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.19
  store double %polly.access.call1626.load.19, double* %polly.access.Packed_MemRef_call1475629.19, align 8
  br label %polly.loop_exit632

polly.loop_exit632:                               ; preds = %polly.loop_exit639.loopexit.us, %polly.loop_header594.split, %polly.loop_header601.preheader, %polly.loop_header630.preheader
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp ult i64 %polly.indvar598, %183
  %indvars.iv.next1041 = add i64 %indvars.iv1040, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header630.preheader:                   ; preds = %polly.merge620.us
  %198 = mul i64 %194, 8000
  %199 = mul i64 %194, 9600
  br i1 %polly.loop_guard6111095, label %polly.loop_header630.us, label %polly.loop_exit632

polly.loop_header630.us:                          ; preds = %polly.loop_header630.preheader, %polly.loop_exit639.loopexit.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_exit639.loopexit.us ], [ 0, %polly.loop_header630.preheader ]
  %200 = add nuw nsw i64 %polly.indvar633.us, %185
  %polly.access.mul.Packed_MemRef_call1475644.us = mul nuw nsw i64 %polly.indvar633.us, 1200
  %201 = shl i64 %200, 3
  %202 = add i64 %201, %198
  %scevgep648.us = getelementptr i8, i8* %call2, i64 %202
  %scevgep648649.us = bitcast i8* %scevgep648.us to double*
  %_p_scalar_650.us = load double, double* %scevgep648649.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475644.us, %193
  %polly.access.Packed_MemRef_call1475656.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us
  %_p_scalar_657.us = load double, double* %polly.access.Packed_MemRef_call1475656.us, align 8
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header630.us, %polly.loop_header637.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_header637.us ], [ 0, %polly.loop_header630.us ]
  %203 = add nuw nsw i64 %polly.indvar641.us, %186
  %polly.access.add.Packed_MemRef_call1475645.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.Packed_MemRef_call1475644.us
  %polly.access.Packed_MemRef_call1475646.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us
  %_p_scalar_647.us = load double, double* %polly.access.Packed_MemRef_call1475646.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_650.us, %_p_scalar_647.us
  %204 = mul nuw nsw i64 %203, 8000
  %205 = add nuw nsw i64 %204, %201
  %scevgep651.us = getelementptr i8, i8* %call2, i64 %205
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_657.us, %_p_scalar_653.us
  %206 = shl i64 %203, 3
  %207 = add i64 %206, %199
  %scevgep658.us = getelementptr i8, i8* %call, i64 %207
  %scevgep658659.us = bitcast i8* %scevgep658.us to double*
  %_p_scalar_660.us = load double, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_660.us
  store double %p_add42.i.us, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar641.us, %smin1045
  br i1 %exitcond1046.not, label %polly.loop_exit639.loopexit.us, label %polly.loop_header637.us

polly.loop_exit639.loopexit.us:                   ; preds = %polly.loop_header637.us
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next634.us, 20
  br i1 %exitcond1047.not, label %polly.loop_exit632, label %polly.loop_header630.us

polly.loop_header787:                             ; preds = %entry, %polly.loop_exit795
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit795 ], [ 0, %entry ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %entry ]
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -1168)
  %208 = shl nsw i64 %polly.indvar790, 5
  %209 = add nsw i64 %smin1085, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1088.not, label %polly.loop_header814, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %210 = mul nsw i64 %polly.indvar796, -32
  %smin = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin, 1200
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 -1168)
  %212 = shl nsw i64 %polly.indvar796, 5
  %213 = add nsw i64 %smin1081, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1087.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %polly.indvar802 = phi i64 [ 0, %polly.loop_header793 ], [ %polly.indvar_next803, %polly.loop_exit807 ]
  %214 = add nuw nsw i64 %polly.indvar802, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header805, label %vector.ph1117

vector.ph1117:                                    ; preds = %polly.loop_header799
  %broadcast.splatinsert1124 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat1125 = shufflevector <4 x i64> %broadcast.splatinsert1124, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1117
  %index1118 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1117 ], [ %vec.ind.next1123, %vector.body1116 ]
  %217 = add nuw nsw <4 x i64> %vec.ind1122, %broadcast.splat1125
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat1127, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !94, !noalias !96
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next1119, %211
  br i1 %229, label %polly.loop_exit807, label %vector.body1116, !llvm.loop !99

polly.loop_exit807:                               ; preds = %vector.body1116, %polly.loop_header805
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar802, %209
  br i1 %exitcond1086.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_header799, %polly.loop_header805
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_header805 ], [ 0, %polly.loop_header799 ]
  %230 = add nuw nsw i64 %polly.indvar808, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep811 = getelementptr i8, i8* %call, i64 %236
  %scevgep811812 = bitcast i8* %scevgep811 to double*
  store double %p_div33.i, double* %scevgep811812, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar808, %213
  br i1 %exitcond1082.not, label %polly.loop_exit807, label %polly.loop_header805, !llvm.loop !100

polly.loop_header814:                             ; preds = %polly.loop_exit795, %polly.loop_exit822
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %237 = shl nsw i64 %polly.indvar817, 5
  %238 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next818, 38
  br i1 %exitcond1078.not, label %polly.loop_header840, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %239 = mul nsw i64 %polly.indvar823, -32
  %smin1131 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin1131, 1000
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -968)
  %241 = shl nsw i64 %polly.indvar823, 5
  %242 = add nsw i64 %smin1071, 999
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond1077.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %polly.indvar829 = phi i64 [ 0, %polly.loop_header820 ], [ %polly.indvar_next830, %polly.loop_exit834 ]
  %243 = add nuw nsw i64 %polly.indvar829, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check1132 = icmp eq i64 %240, 0
  br i1 %min.iters.check1132, label %polly.loop_header832, label %vector.ph1133

vector.ph1133:                                    ; preds = %polly.loop_header826
  %broadcast.splatinsert1142 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat1143 = shufflevector <4 x i64> %broadcast.splatinsert1142, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1137, %vector.body1130 ]
  %vec.ind1140 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1133 ], [ %vec.ind.next1141, %vector.body1130 ]
  %246 = add nuw nsw <4 x i64> %vec.ind1140, %broadcast.splat1143
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat1145, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !98, !noalias !101
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1141 = add <4 x i64> %vec.ind1140, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next1137, %240
  br i1 %258, label %polly.loop_exit834, label %vector.body1130, !llvm.loop !102

polly.loop_exit834:                               ; preds = %vector.body1130, %polly.loop_header832
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar829, %238
  br i1 %exitcond1076.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_header826, %polly.loop_header832
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_header832 ], [ 0, %polly.loop_header826 ]
  %259 = add nuw nsw i64 %polly.indvar835, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep838 = getelementptr i8, i8* %call2, i64 %265
  %scevgep838839 = bitcast i8* %scevgep838 to double*
  store double %p_div12.i, double* %scevgep838839, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar835, %242
  br i1 %exitcond1072.not, label %polly.loop_exit834, label %polly.loop_header832, !llvm.loop !103

polly.loop_header840:                             ; preds = %polly.loop_exit822, %polly.loop_exit848
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %266 = shl nsw i64 %polly.indvar843, 5
  %267 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1068.not, label %init_array.exit, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %268 = mul nsw i64 %polly.indvar849, -32
  %smin1149 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin1149, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %270 = shl nsw i64 %polly.indvar849, 5
  %271 = add nsw i64 %smin1061, 999
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond1067.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %272 = add nuw nsw i64 %polly.indvar855, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check1150 = icmp eq i64 %269, 0
  br i1 %min.iters.check1150, label %polly.loop_header858, label %vector.ph1151

vector.ph1151:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1151
  %index1154 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1155, %vector.body1148 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1151 ], [ %vec.ind.next1159, %vector.body1148 ]
  %275 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat1163, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !97, !noalias !104
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next1155, %269
  br i1 %287, label %polly.loop_exit860, label %vector.body1148, !llvm.loop !105

polly.loop_exit860:                               ; preds = %vector.body1148, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar855, %267
  br i1 %exitcond1066.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %288 = add nuw nsw i64 %polly.indvar861, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep865 = getelementptr i8, i8* %call1, i64 %294
  %scevgep865866 = bitcast i8* %scevgep865 to double*
  store double %p_div.i, double* %scevgep865866, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar861, %271
  br i1 %exitcond1062.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !106
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
!48 = !{!"llvm.loop.tile.size", i32 128}
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
