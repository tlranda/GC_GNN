; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4815.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4815.c"
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
  %call819 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1671 = bitcast i8* %call1 to double*
  %polly.access.call1680 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1680, %call2
  %polly.access.call2700 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2700, %call1
  %2 = or i1 %0, %1
  %polly.access.call720 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call720, %call2
  %4 = icmp ule i8* %polly.access.call2700, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call720, %call1
  %8 = icmp ule i8* %polly.access.call1680, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1097 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1096 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1095 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1094 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1094, %scevgep1097
  %bound1 = icmp ult i8* %scevgep1096, %scevgep1095
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
  br i1 %exitcond18.not.i, label %vector.ph1101, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1101:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1108 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1109 = shufflevector <4 x i64> %broadcast.splatinsert1108, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %vector.ph1101
  %index1102 = phi i64 [ 0, %vector.ph1101 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1101 ], [ %vec.ind.next1107, %vector.body1100 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1106, %broadcast.splat1109
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1102
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1103, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1100, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1100
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1101, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1163 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1163, label %for.body3.i46.preheader1240, label %vector.ph1164

vector.ph1164:                                    ; preds = %for.body3.i46.preheader
  %n.vec1166 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1164
  %index1167 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1168, %vector.body1162 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1167
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1168 = add i64 %index1167, 4
  %46 = icmp eq i64 %index.next1168, %n.vec1166
  br i1 %46, label %middle.block1160, label %vector.body1162, !llvm.loop !18

middle.block1160:                                 ; preds = %vector.body1162
  %cmp.n1170 = icmp eq i64 %indvars.iv21.i, %n.vec1166
  br i1 %cmp.n1170, label %for.inc6.i, label %for.body3.i46.preheader1240

for.body3.i46.preheader1240:                      ; preds = %for.body3.i46.preheader, %middle.block1160
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1166, %middle.block1160 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1240, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1240 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1160, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !43

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting477
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1186 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1186, label %for.body3.i60.preheader1238, label %vector.ph1187

vector.ph1187:                                    ; preds = %for.body3.i60.preheader
  %n.vec1189 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1191, %vector.body1185 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1190
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1194 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1194, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1191 = add i64 %index1190, 4
  %57 = icmp eq i64 %index.next1191, %n.vec1189
  br i1 %57, label %middle.block1183, label %vector.body1185, !llvm.loop !54

middle.block1183:                                 ; preds = %vector.body1185
  %cmp.n1193 = icmp eq i64 %indvars.iv21.i52, %n.vec1189
  br i1 %cmp.n1193, label %for.inc6.i63, label %for.body3.i60.preheader1238

for.body3.i60.preheader1238:                      ; preds = %for.body3.i60.preheader, %middle.block1183
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1189, %middle.block1183 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1238, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1238 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1183, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !43

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
  %min.iters.check1212 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1212, label %for.body3.i99.preheader1236, label %vector.ph1213

vector.ph1213:                                    ; preds = %for.body3.i99.preheader
  %n.vec1215 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1211 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1216
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1220 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1220, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1217 = add i64 %index1216, 4
  %68 = icmp eq i64 %index.next1217, %n.vec1215
  br i1 %68, label %middle.block1209, label %vector.body1211, !llvm.loop !56

middle.block1209:                                 ; preds = %vector.body1211
  %cmp.n1219 = icmp eq i64 %indvars.iv21.i91, %n.vec1215
  br i1 %cmp.n1219, label %for.inc6.i102, label %for.body3.i99.preheader1236

for.body3.i99.preheader1236:                      ; preds = %for.body3.i99.preheader, %middle.block1209
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1215, %middle.block1209 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1236, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1236 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1209, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !43

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1224 = phi i64 [ %indvar.next1225, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1224, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1226 = icmp ult i64 %88, 4
  br i1 %min.iters.check1226, label %polly.loop_header191.preheader, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header
  %n.vec1229 = and i64 %88, -4
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1223 ]
  %90 = shl nuw nsw i64 %index1230, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1234 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1234, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1231 = add i64 %index1230, 4
  %95 = icmp eq i64 %index.next1231, %n.vec1229
  br i1 %95, label %middle.block1221, label %vector.body1223, !llvm.loop !68

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1233 = icmp eq i64 %88, %n.vec1229
  br i1 %cmp.n1233, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1221
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1229, %middle.block1221 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1221
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1225 = add i64 %indvar1224, 1
  br i1 %exitcond1002.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1001.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv987 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next988, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 9
  %98 = add nuw nsw i64 %97, 34
  %pexp.p_div_q = udiv i64 %98, 25
  %99 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 11
  %101 = select i1 %.inv, i64 %100, i64 11
  %polly.loop_guard = icmp sgt i64 %101, -1
  %102 = mul nsw i64 %polly.indvar202, -64
  %103 = icmp slt i64 %102, -1136
  %104 = select i1 %103, i64 %102, i64 -1136
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar202, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 64
  %exitcond1000.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond1000.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %107 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond999.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv989 = phi i64 [ %indvars.iv987, %polly.loop_header211.preheader ], [ %indvars.iv.next990, %polly.loop_exit220 ]
  %indvars.iv985 = phi i64 [ %indvars.iv, %polly.loop_header211.preheader ], [ %indvars.iv.next986, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %108 = mul nsw i64 %polly.indvar214, 100
  %109 = add nsw i64 %108, %102
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard221.not = icmp sgt i64 %111, %105
  br i1 %polly.loop_guard221.not, label %polly.loop_exit220, label %polly.loop_header218.preheader

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv985, i64 0)
  %112 = add i64 %smax, %indvars.iv989
  %113 = sub nsw i64 %106, %108
  %114 = add nuw nsw i64 %108, 100
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw i64 %polly.indvar214, 1
  %indvars.iv.next986 = add i64 %indvars.iv985, 100
  %indvars.iv.next990 = add i64 %indvars.iv989, -100
  %exitcond998.not = icmp eq i64 %polly.indvar214, %101
  br i1 %exitcond998.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv991 = phi i64 [ %112, %polly.loop_header218.preheader ], [ %indvars.iv.next992, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %111, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin995 = call i64 @llvm.smin.i64(i64 %indvars.iv991, i64 99)
  %115 = add nsw i64 %polly.indvar222, %113
  %polly.loop_guard2351083 = icmp sgt i64 %115, -1
  %116 = add nuw nsw i64 %polly.indvar222, %106
  %.not = icmp ult i64 %116, %114
  %polly.access.mul.call1244 = mul nsw i64 %116, 1000
  %117 = add nuw i64 %polly.access.mul.call1244, %107
  br i1 %polly.loop_guard2351083, label %polly.loop_header225.us, label %polly.loop_header218.split

polly.loop_header225.us:                          ; preds = %polly.loop_header218, %polly.merge.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.merge.us ], [ 0, %polly.loop_header218 ]
  %118 = add nuw nsw i64 %polly.indvar228.us, %107
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar228.us, 1200
  br label %polly.loop_header232.us

polly.loop_header232.us:                          ; preds = %polly.loop_header225.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header225.us ]
  %119 = add nuw nsw i64 %polly.indvar236.us, %108
  %polly.access.mul.call1240.us = mul nsw i64 %119, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %118, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar236.us, %smin995
  br i1 %exitcond993.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1245.us = add i64 %117, %polly.indvar228.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1248.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %115
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next229.us, 100
  br i1 %exitcond994.not, label %polly.loop_header250.preheader, label %polly.loop_header225.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225

polly.loop_exit252:                               ; preds = %polly.loop_exit259.loopexit.us, %polly.loop_header218.split, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224.not.not = icmp ult i64 %polly.indvar222, %105
  %indvars.iv.next992 = add i64 %indvars.iv991, 1
  br i1 %polly.loop_cond224.not.not, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header225:                             ; preds = %polly.loop_header218.split, %polly.loop_header225
  %polly.indvar228 = phi i64 [ %polly.indvar_next229, %polly.loop_header225 ], [ 0, %polly.loop_header218.split ]
  %polly.access.add.call1245 = add i64 %117, %polly.indvar228
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1247 = mul nuw nsw i64 %polly.indvar228, 1200
  %polly.access.add.Packed_MemRef_call1248 = add nsw i64 %polly.access.mul.Packed_MemRef_call1247, %115
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next229, 100
  br i1 %exitcond.not, label %polly.loop_header250.preheader, label %polly.loop_header225

polly.loop_header250.preheader:                   ; preds = %polly.loop_header225, %polly.merge.us
  %120 = mul i64 %116, 8000
  %121 = mul i64 %116, 9600
  br i1 %polly.loop_guard2351083, label %polly.loop_header250.us, label %polly.loop_exit252

polly.loop_header250.us:                          ; preds = %polly.loop_header250.preheader, %polly.loop_exit259.loopexit.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.loopexit.us ], [ 0, %polly.loop_header250.preheader ]
  %122 = add nuw nsw i64 %polly.indvar253.us, %107
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar253.us, 1200
  %123 = shl i64 %122, 3
  %124 = add i64 %123, %120
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1264.us, %115
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us ]
  %125 = add nuw nsw i64 %polly.indvar261.us, %108
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %126 = mul i64 %125, 8000
  %127 = add i64 %126, %123
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %127
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %121
  %scevgep278.us = getelementptr i8, i8* %call, i64 %129
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar261.us, %smin995
  br i1 %exitcond996.not, label %polly.loop_exit259.loopexit.us, label %polly.loop_header257.us

polly.loop_exit259.loopexit.us:                   ; preds = %polly.loop_header257.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next254.us, 100
  br i1 %exitcond997.not, label %polly.loop_exit252, label %polly.loop_header250.us

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1198 = phi i64 [ %indvar.next1199, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %130 = add i64 %indvar1198, 1
  %131 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1200 = icmp ult i64 %130, 4
  br i1 %min.iters.check1200, label %polly.loop_header375.preheader, label %vector.ph1201

vector.ph1201:                                    ; preds = %polly.loop_header369
  %n.vec1203 = and i64 %130, -4
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1201
  %index1204 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1205, %vector.body1197 ]
  %132 = shl nuw nsw i64 %index1204, 3
  %133 = getelementptr i8, i8* %scevgep381, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1208 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !73, !noalias !75
  %135 = fmul fast <4 x double> %wide.load1208, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !73, !noalias !75
  %index.next1205 = add i64 %index1204, 4
  %137 = icmp eq i64 %index.next1205, %n.vec1203
  br i1 %137, label %middle.block1195, label %vector.body1197, !llvm.loop !79

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1207 = icmp eq i64 %130, %n.vec1203
  br i1 %cmp.n1207, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1195
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1203, %middle.block1195 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1195
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1199 = add i64 %indvar1198, 1
  br i1 %exitcond1025.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %138
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1024.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !80

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1009 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1010, %polly.loop_exit393 ]
  %indvars.iv1004 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1005, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %139 = mul nuw nsw i64 %polly.indvar388, 9
  %140 = add nuw nsw i64 %139, 34
  %pexp.p_div_q397 = udiv i64 %140, 25
  %141 = sub nsw i64 %polly.indvar388, %pexp.p_div_q397
  %142 = add nsw i64 %141, 1
  %.inv873 = icmp slt i64 %141, 11
  %143 = select i1 %.inv873, i64 %142, i64 11
  %polly.loop_guard402 = icmp sgt i64 %143, -1
  %144 = mul nsw i64 %polly.indvar388, -64
  %145 = icmp slt i64 %144, -1136
  %146 = select i1 %145, i64 %144, i64 -1136
  %147 = add nsw i64 %146, 1199
  %148 = shl nsw i64 %polly.indvar388, 6
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, -64
  %indvars.iv.next1010 = add nuw nsw i64 %indvars.iv1009, 64
  %exitcond1023.not = icmp eq i64 %polly.indvar_next389, 19
  br i1 %exitcond1023.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit401 ]
  br i1 %polly.loop_guard402, label %polly.loop_header399.preheader, label %polly.loop_exit401

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %149 = mul nuw nsw i64 %polly.indvar394, 100
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next395, 10
  br i1 %exitcond1022.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1011 = phi i64 [ %indvars.iv1009, %polly.loop_header399.preheader ], [ %indvars.iv.next1012, %polly.loop_exit409 ]
  %indvars.iv1006 = phi i64 [ %indvars.iv1004, %polly.loop_header399.preheader ], [ %indvars.iv.next1007, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %150 = mul nsw i64 %polly.indvar403, 100
  %151 = add nsw i64 %150, %144
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  %polly.loop_guard410.not = icmp sgt i64 %153, %147
  br i1 %polly.loop_guard410.not, label %polly.loop_exit409, label %polly.loop_header407.preheader

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1008 = call i64 @llvm.smax.i64(i64 %indvars.iv1006, i64 0)
  %154 = add i64 %smax1008, %indvars.iv1011
  %155 = sub nsw i64 %148, %150
  %156 = add nuw nsw i64 %150, 100
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw i64 %polly.indvar403, 1
  %indvars.iv.next1007 = add i64 %indvars.iv1006, 100
  %indvars.iv.next1012 = add i64 %indvars.iv1011, -100
  %exitcond1021.not = icmp eq i64 %polly.indvar403, %143
  br i1 %exitcond1021.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1013 = phi i64 [ %154, %polly.loop_header407.preheader ], [ %indvars.iv.next1014, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %153, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1013, i64 99)
  %157 = add nsw i64 %polly.indvar411, %155
  %polly.loop_guard4241084 = icmp sgt i64 %157, -1
  %158 = add nuw nsw i64 %polly.indvar411, %148
  %.not874 = icmp ult i64 %158, %156
  %polly.access.mul.call1437 = mul nsw i64 %158, 1000
  %159 = add nuw i64 %polly.access.mul.call1437, %149
  br i1 %polly.loop_guard4241084, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.merge433.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.merge433.us ], [ 0, %polly.loop_header407 ]
  %160 = add nuw nsw i64 %polly.indvar417.us, %149
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %161 = add nuw nsw i64 %polly.indvar425.us, %150
  %polly.access.mul.call1429.us = mul nsw i64 %161, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %160, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar425.us, %smin1018
  br i1 %exitcond1016.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.add.call1438.us = add i64 %159, %polly.indvar417.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1286441.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, %157
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.merge433.us

polly.merge433.us:                                ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next418.us, 100
  br i1 %exitcond1017.not, label %polly.loop_header443.preheader, label %polly.loop_header414.us

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not874, label %polly.merge433.us, label %polly.then434.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not874, label %polly.loop_exit445, label %polly.loop_header414

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header407.split, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413.not.not = icmp ult i64 %polly.indvar411, %147
  %indvars.iv.next1014 = add i64 %indvars.iv1013, 1
  br i1 %polly.loop_cond413.not.not, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header414:                             ; preds = %polly.loop_header407.split, %polly.loop_header414
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_header414 ], [ 0, %polly.loop_header407.split ]
  %polly.access.add.call1438 = add i64 %159, %polly.indvar417
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1286440 = mul nuw nsw i64 %polly.indvar417, 1200
  %polly.access.add.Packed_MemRef_call1286441 = add nsw i64 %polly.access.mul.Packed_MemRef_call1286440, %157
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next418, 100
  br i1 %exitcond1003.not, label %polly.loop_header443.preheader, label %polly.loop_header414

polly.loop_header443.preheader:                   ; preds = %polly.loop_header414, %polly.merge433.us
  %162 = mul i64 %158, 8000
  %163 = mul i64 %158, 9600
  br i1 %polly.loop_guard4241084, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %164 = add nuw nsw i64 %polly.indvar446.us, %149
  %polly.access.mul.Packed_MemRef_call1286457.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %165 = shl i64 %164, 3
  %166 = add i64 %165, %162
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %166
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286457.us, %157
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %167 = add nuw nsw i64 %polly.indvar454.us, %150
  %polly.access.add.Packed_MemRef_call1286458.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1286457.us
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %168 = mul i64 %167, 8000
  %169 = add i64 %168, %165
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %169
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %170 = shl i64 %167, 3
  %171 = add i64 %170, %163
  %scevgep471.us = getelementptr i8, i8* %call, i64 %171
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar454.us, %smin1018
  br i1 %exitcond1019.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next447.us, 100
  br i1 %exitcond1020.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1174 = icmp ult i64 %172, 4
  br i1 %min.iters.check1174, label %polly.loop_header568.preheader, label %vector.ph1175

vector.ph1175:                                    ; preds = %polly.loop_header562
  %n.vec1177 = and i64 %172, -4
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1173 ]
  %174 = shl nuw nsw i64 %index1178, 3
  %175 = getelementptr i8, i8* %scevgep574, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1182 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !83, !noalias !85
  %177 = fmul fast <4 x double> %wide.load1182, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !83, !noalias !85
  %index.next1179 = add i64 %index1178, 4
  %179 = icmp eq i64 %index.next1179, %n.vec1177
  br i1 %179, label %middle.block1171, label %vector.body1173, !llvm.loop !89

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %172, %n.vec1177
  br i1 %cmp.n1181, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1171
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1177, %middle.block1171 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1171
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1048.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %180
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1047.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !90

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1032 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1033, %polly.loop_exit586 ]
  %indvars.iv1027 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1028, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit586 ]
  %181 = mul nuw nsw i64 %polly.indvar581, 9
  %182 = add nuw nsw i64 %181, 34
  %pexp.p_div_q590 = udiv i64 %182, 25
  %183 = sub nsw i64 %polly.indvar581, %pexp.p_div_q590
  %184 = add nsw i64 %183, 1
  %.inv875 = icmp slt i64 %183, 11
  %185 = select i1 %.inv875, i64 %184, i64 11
  %polly.loop_guard595 = icmp sgt i64 %185, -1
  %186 = mul nsw i64 %polly.indvar581, -64
  %187 = icmp slt i64 %186, -1136
  %188 = select i1 %187, i64 %186, i64 -1136
  %189 = add nsw i64 %188, 1199
  %190 = shl nsw i64 %polly.indvar581, 6
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1028 = add nsw i64 %indvars.iv1027, -64
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 64
  %exitcond1046.not = icmp eq i64 %polly.indvar_next582, 19
  br i1 %exitcond1046.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header578 ], [ %polly.indvar_next588, %polly.loop_exit594 ]
  br i1 %polly.loop_guard595, label %polly.loop_header592.preheader, label %polly.loop_exit594

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %191 = mul nuw nsw i64 %polly.indvar587, 100
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next588, 10
  br i1 %exitcond1045.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1034 = phi i64 [ %indvars.iv1032, %polly.loop_header592.preheader ], [ %indvars.iv.next1035, %polly.loop_exit602 ]
  %indvars.iv1029 = phi i64 [ %indvars.iv1027, %polly.loop_header592.preheader ], [ %indvars.iv.next1030, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %192 = mul nsw i64 %polly.indvar596, 100
  %193 = add nsw i64 %192, %186
  %194 = icmp sgt i64 %193, 0
  %195 = select i1 %194, i64 %193, i64 0
  %polly.loop_guard603.not = icmp sgt i64 %195, %189
  br i1 %polly.loop_guard603.not, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1031 = call i64 @llvm.smax.i64(i64 %indvars.iv1029, i64 0)
  %196 = add i64 %smax1031, %indvars.iv1034
  %197 = sub nsw i64 %190, %192
  %198 = add nuw nsw i64 %192, 100
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw i64 %polly.indvar596, 1
  %indvars.iv.next1030 = add i64 %indvars.iv1029, 100
  %indvars.iv.next1035 = add i64 %indvars.iv1034, -100
  %exitcond1044.not = icmp eq i64 %polly.indvar596, %185
  br i1 %exitcond1044.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1036 = phi i64 [ %196, %polly.loop_header600.preheader ], [ %indvars.iv.next1037, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %195, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 99)
  %199 = add nsw i64 %polly.indvar604, %197
  %polly.loop_guard6171085 = icmp sgt i64 %199, -1
  %200 = add nuw nsw i64 %polly.indvar604, %190
  %.not876 = icmp ult i64 %200, %198
  %polly.access.mul.call1630 = mul nsw i64 %200, 1000
  %201 = add nuw i64 %polly.access.mul.call1630, %191
  br i1 %polly.loop_guard6171085, label %polly.loop_header607.us, label %polly.loop_header600.split

polly.loop_header607.us:                          ; preds = %polly.loop_header600, %polly.merge626.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.merge626.us ], [ 0, %polly.loop_header600 ]
  %202 = add nuw nsw i64 %polly.indvar610.us, %191
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar610.us, 1200
  br label %polly.loop_header614.us

polly.loop_header614.us:                          ; preds = %polly.loop_header607.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header607.us ]
  %203 = add nuw nsw i64 %polly.indvar618.us, %192
  %polly.access.mul.call1622.us = mul nsw i64 %203, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %202, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar618.us, %smin1041
  br i1 %exitcond1039.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.add.call1631.us = add i64 %201, %polly.indvar610.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1479634.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, %199
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next611.us, 100
  br i1 %exitcond1040.not, label %polly.loop_header636.preheader, label %polly.loop_header607.us

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not876, label %polly.merge626.us, label %polly.then627.us

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not876, label %polly.loop_exit638, label %polly.loop_header607

polly.loop_exit638:                               ; preds = %polly.loop_exit645.loopexit.us, %polly.loop_header600.split, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606.not.not = icmp ult i64 %polly.indvar604, %189
  %indvars.iv.next1037 = add i64 %indvars.iv1036, 1
  br i1 %polly.loop_cond606.not.not, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header607:                             ; preds = %polly.loop_header600.split, %polly.loop_header607
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_header607 ], [ 0, %polly.loop_header600.split ]
  %polly.access.add.call1631 = add i64 %201, %polly.indvar610
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1479633 = mul nuw nsw i64 %polly.indvar610, 1200
  %polly.access.add.Packed_MemRef_call1479634 = add nsw i64 %polly.access.mul.Packed_MemRef_call1479633, %199
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next611, 100
  br i1 %exitcond1026.not, label %polly.loop_header636.preheader, label %polly.loop_header607

polly.loop_header636.preheader:                   ; preds = %polly.loop_header607, %polly.merge626.us
  %204 = mul i64 %200, 8000
  %205 = mul i64 %200, 9600
  br i1 %polly.loop_guard6171085, label %polly.loop_header636.us, label %polly.loop_exit638

polly.loop_header636.us:                          ; preds = %polly.loop_header636.preheader, %polly.loop_exit645.loopexit.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_exit645.loopexit.us ], [ 0, %polly.loop_header636.preheader ]
  %206 = add nuw nsw i64 %polly.indvar639.us, %191
  %polly.access.mul.Packed_MemRef_call1479650.us = mul nuw nsw i64 %polly.indvar639.us, 1200
  %207 = shl i64 %206, 3
  %208 = add i64 %207, %204
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %208
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479650.us, %199
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us ]
  %209 = add nuw nsw i64 %polly.indvar647.us, %192
  %polly.access.add.Packed_MemRef_call1479651.us = add nuw nsw i64 %polly.indvar647.us, %polly.access.mul.Packed_MemRef_call1479650.us
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %210 = mul i64 %209, 8000
  %211 = add i64 %210, %207
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %211
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %212 = shl i64 %209, 3
  %213 = add i64 %212, %205
  %scevgep664.us = getelementptr i8, i8* %call, i64 %213
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar647.us, %smin1041
  br i1 %exitcond1042.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next640.us, 100
  br i1 %exitcond1043.not, label %polly.loop_exit638, label %polly.loop_header636.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %214 = shl nsw i64 %polly.indvar796, 5
  %215 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1078.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %216 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin, 1200
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %218 = shl nsw i64 %polly.indvar802, 5
  %219 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1077.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %220 = add nuw nsw i64 %polly.indvar808, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1113

vector.ph1113:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1120 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat1121 = shufflevector <4 x i64> %broadcast.splatinsert1120, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1113
  %index1114 = phi i64 [ 0, %vector.ph1113 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1113 ], [ %vec.ind.next1119, %vector.body1112 ]
  %223 = add nuw nsw <4 x i64> %vec.ind1118, %broadcast.splat1121
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat1123, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !93, !noalias !95
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next1115, %217
  br i1 %235, label %polly.loop_exit813, label %vector.body1112, !llvm.loop !98

polly.loop_exit813:                               ; preds = %vector.body1112, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar808, %215
  br i1 %exitcond1076.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %236 = add nuw nsw i64 %polly.indvar814, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep817 = getelementptr i8, i8* %call, i64 %242
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar814, %219
  br i1 %exitcond1072.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !99

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %243 = shl nsw i64 %polly.indvar823, 5
  %244 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1068.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %245 = mul nsw i64 %polly.indvar829, -32
  %smin1127 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin1127, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %247 = shl nsw i64 %polly.indvar829, 5
  %248 = add nsw i64 %smin1061, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1067.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %249 = add nuw nsw i64 %polly.indvar835, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check1128 = icmp eq i64 %246, 0
  br i1 %min.iters.check1128, label %polly.loop_header838, label %vector.ph1129

vector.ph1129:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1138 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1139 = shufflevector <4 x i64> %broadcast.splatinsert1138, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %vector.ph1129
  %index1132 = phi i64 [ 0, %vector.ph1129 ], [ %index.next1133, %vector.body1126 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1129 ], [ %vec.ind.next1137, %vector.body1126 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1136, %broadcast.splat1139
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1141, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !97, !noalias !100
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1133, %246
  br i1 %264, label %polly.loop_exit840, label %vector.body1126, !llvm.loop !101

polly.loop_exit840:                               ; preds = %vector.body1126, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar835, %244
  br i1 %exitcond1066.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %265 = add nuw nsw i64 %polly.indvar841, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep844 = getelementptr i8, i8* %call2, i64 %271
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar841, %248
  br i1 %exitcond1062.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !102

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1053, i64 -1168)
  %272 = shl nsw i64 %polly.indvar849, 5
  %273 = add nsw i64 %smin1055, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1058.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %274 = mul nsw i64 %polly.indvar855, -32
  %smin1145 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1145, 1000
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -968)
  %276 = shl nsw i64 %polly.indvar855, 5
  %277 = add nsw i64 %smin1051, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1057.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %278 = add nuw nsw i64 %polly.indvar861, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1146 = icmp eq i64 %275, 0
  br i1 %min.iters.check1146, label %polly.loop_header864, label %vector.ph1147

vector.ph1147:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1156 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1157 = shufflevector <4 x i64> %broadcast.splatinsert1156, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1147
  %index1150 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1151, %vector.body1144 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1147 ], [ %vec.ind.next1155, %vector.body1144 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1154, %broadcast.splat1157
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1159, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !96, !noalias !103
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1151, %275
  br i1 %293, label %polly.loop_exit866, label %vector.body1144, !llvm.loop !104

polly.loop_exit866:                               ; preds = %vector.body1144, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar861, %273
  br i1 %exitcond1056.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %294 = add nuw nsw i64 %polly.indvar867, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep871 = getelementptr i8, i8* %call1, i64 %300
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar867, %277
  br i1 %exitcond1052.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40, !41, !42}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.data.pack.enable", i1 true}
!41 = !{!"llvm.data.pack.array", !21}
!42 = !{!"llvm.data.pack.allocate", !"malloc"}
!43 = distinct !{!43, !12, !23, !44, !45, !46, !47, !48, !51}
!44 = !{!"llvm.loop.id", !"i"}
!45 = !{!"llvm.loop.tile.enable", i1 true}
!46 = !{!"llvm.loop.tile.depth", i32 3}
!47 = !{!"llvm.loop.tile.size", i32 64}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
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
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
