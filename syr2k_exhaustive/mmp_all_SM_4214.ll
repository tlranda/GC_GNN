; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4214.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4214.c"
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
  %call805 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1657 = bitcast i8* %call1 to double*
  %polly.access.call1666 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1666, %call2
  %polly.access.call2686 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2686, %call1
  %2 = or i1 %0, %1
  %polly.access.call706 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call706, %call2
  %4 = icmp ule i8* %polly.access.call2686, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call706, %call1
  %8 = icmp ule i8* %polly.access.call1666, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header779, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv7.i, i64 %index1102
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit840
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start467, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i, i64 %index1167
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting468
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i52, i64 %index1190
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1212 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1212, label %for.body3.i99.preheader1236, label %vector.ph1213

vector.ph1213:                                    ; preds = %for.body3.i99.preheader
  %n.vec1215 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1211 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i91, i64 %index1216
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
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
  %exitcond996.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1225 = add i64 %indvar1224, 1
  br i1 %exitcond996.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond995.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond995.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv990 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit207 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next976, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 8
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next203, 150
  br i1 %exitcond994.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -872)
  %98 = add nsw i64 %smin987, 1000
  %99 = shl nsw i64 %polly.indvar208, 7
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %exitcond993.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond993.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv975, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %100 = shl nsw i64 %polly.indvar214, 3
  %101 = sub nsw i64 %97, %100
  %102 = add nuw nsw i64 %100, 8
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -8
  %exitcond992.not = icmp eq i64 %polly.indvar_next215, %indvars.iv990
  br i1 %exitcond992.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit248 ], [ %indvars.iv977, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin985 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 7)
  %103 = add nsw i64 %polly.indvar220, %101
  %polly.loop_guard1083 = icmp sgt i64 %103, -1
  %104 = add nuw nsw i64 %polly.indvar220, %97
  %.not = icmp ult i64 %104, %102
  %polly.access.mul.call1240 = mul nuw nsw i64 %104, 1000
  %105 = add nuw nsw i64 %polly.access.mul.call1240, %99
  br i1 %polly.loop_guard1083, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %106 = add nuw nsw i64 %polly.indvar226.us, %99
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %107 = add nuw nsw i64 %polly.indvar232.us, %100
  %polly.access.mul.call1236.us = mul nuw nsw i64 %107, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %106, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar232.us, %smin985
  br i1 %exitcond982.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1241.us = add nuw nsw i64 %105, %polly.indvar226.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %103
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next227.us, %98
  br i1 %exitcond984.not, label %polly.loop_header246.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header217.split, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond989.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1241 = add nuw nsw i64 %105, %polly.indvar226
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar226, 1200
  %polly.access.add.Packed_MemRef_call1244 = add nsw i64 %polly.access.mul.Packed_MemRef_call1243, %103
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %98
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header223

polly.loop_header246.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %108 = mul nuw nsw i64 %104, 8000
  %109 = mul nuw nsw i64 %104, 9600
  br i1 %polly.loop_guard1083, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %110 = add nuw nsw i64 %polly.indvar249.us, %99
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar249.us, 1200
  %111 = shl i64 %110, 3
  %112 = add nuw nsw i64 %111, %108
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %112
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us, %103
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us ]
  %113 = add nuw nsw i64 %polly.indvar257.us, %100
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %114 = mul nuw nsw i64 %113, 8000
  %115 = add nuw nsw i64 %114, %111
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %115
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %116 = shl i64 %113, 3
  %117 = add nuw nsw i64 %116, %109
  %scevgep274.us = getelementptr i8, i8* %call, i64 %117
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar257.us, %smin985
  br i1 %exitcond986.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next250.us, %98
  br i1 %exitcond988.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1198 = phi i64 [ %indvar.next1199, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %118 = add i64 %indvar1198, 1
  %119 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1200 = icmp ult i64 %118, 4
  br i1 %min.iters.check1200, label %polly.loop_header371.preheader, label %vector.ph1201

vector.ph1201:                                    ; preds = %polly.loop_header365
  %n.vec1203 = and i64 %118, -4
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1201
  %index1204 = phi i64 [ 0, %vector.ph1201 ], [ %index.next1205, %vector.body1197 ]
  %120 = shl nuw nsw i64 %index1204, 3
  %121 = getelementptr i8, i8* %scevgep377, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1208 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !73, !noalias !75
  %123 = fmul fast <4 x double> %wide.load1208, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !73, !noalias !75
  %index.next1205 = add i64 %index1204, 4
  %125 = icmp eq i64 %index.next1205, %n.vec1203
  br i1 %125, label %middle.block1195, label %vector.body1197, !llvm.loop !79

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1207 = icmp eq i64 %118, %n.vec1203
  br i1 %cmp.n1207, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1195
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1203, %middle.block1195 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1195
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1199 = add i64 %indvar1198, 1
  br i1 %exitcond1022.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %126
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1021.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !80

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %indvars.iv1016 = phi i64 [ 1, %polly.loop_header381.preheader ], [ %indvars.iv.next1017, %polly.loop_exit389 ]
  %indvars.iv1001 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next1002, %polly.loop_exit389 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit389 ]
  %127 = shl nsw i64 %polly.indvar384, 3
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit395
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 8
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next385, 150
  br i1 %exitcond1020.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit395, %polly.loop_header381
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit395 ], [ 0, %polly.loop_header381 ]
  %polly.indvar390 = phi i64 [ %polly.indvar_next391, %polly.loop_exit395 ], [ 0, %polly.loop_header381 ]
  %smin1013 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 -872)
  %128 = add nsw i64 %smin1013, 1000
  %129 = shl nsw i64 %polly.indvar390, 7
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -128
  %exitcond1019.not = icmp eq i64 %polly.indvar_next391, 8
  br i1 %exitcond1019.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_header387
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit401 ], [ %indvars.iv1001, %polly.loop_header387 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ 0, %polly.loop_header387 ]
  %130 = shl nsw i64 %polly.indvar396, 3
  %131 = sub nsw i64 %127, %130
  %132 = add nuw nsw i64 %130, 8
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit436
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, -8
  %exitcond1018.not = icmp eq i64 %polly.indvar_next397, %indvars.iv1016
  br i1 %exitcond1018.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit436, %polly.loop_header393
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %polly.loop_exit436 ], [ %indvars.iv1003, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit436 ], [ 0, %polly.loop_header393 ]
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1005, i64 7)
  %133 = add nsw i64 %polly.indvar402, %131
  %polly.loop_guard4151084 = icmp sgt i64 %133, -1
  %134 = add nuw nsw i64 %polly.indvar402, %127
  %.not859 = icmp ult i64 %134, %132
  %polly.access.mul.call1428 = mul nuw nsw i64 %134, 1000
  %135 = add nuw nsw i64 %polly.access.mul.call1428, %129
  br i1 %polly.loop_guard4151084, label %polly.loop_header405.us, label %polly.loop_header399.split

polly.loop_header405.us:                          ; preds = %polly.loop_header399, %polly.merge424.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.merge424.us ], [ 0, %polly.loop_header399 ]
  %136 = add nuw nsw i64 %polly.indvar408.us, %129
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar408.us, 1200
  br label %polly.loop_header412.us

polly.loop_header412.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header412.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_header412.us ], [ 0, %polly.loop_header405.us ]
  %137 = add nuw nsw i64 %polly.indvar416.us, %130
  %polly.access.mul.call1420.us = mul nuw nsw i64 %137, 1000
  %polly.access.add.call1421.us = add nuw nsw i64 %136, %polly.access.mul.call1420.us
  %polly.access.call1422.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1421.us
  %polly.access.call1422.load.us = load double, double* %polly.access.call1422.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar416.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1422.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar416.us, %smin1011
  br i1 %exitcond1008.not, label %polly.cond423.loopexit.us, label %polly.loop_header412.us

polly.then425.us:                                 ; preds = %polly.cond423.loopexit.us
  %polly.access.add.call1429.us = add nuw nsw i64 %135, %polly.indvar408.us
  %polly.access.call1430.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429.us
  %polly.access.call1430.load.us = load double, double* %polly.access.call1430.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282432.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %133
  %polly.access.Packed_MemRef_call1282433.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432.us
  store double %polly.access.call1430.load.us, double* %polly.access.Packed_MemRef_call1282433.us, align 8
  br label %polly.merge424.us

polly.merge424.us:                                ; preds = %polly.then425.us, %polly.cond423.loopexit.us
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next409.us, %128
  br i1 %exitcond1010.not, label %polly.loop_header434.preheader, label %polly.loop_header405.us

polly.cond423.loopexit.us:                        ; preds = %polly.loop_header412.us
  br i1 %.not859, label %polly.merge424.us, label %polly.then425.us

polly.loop_header399.split:                       ; preds = %polly.loop_header399
  br i1 %.not859, label %polly.loop_exit436, label %polly.loop_header405

polly.loop_exit436:                               ; preds = %polly.loop_exit443.loopexit.us, %polly.loop_header399.split, %polly.loop_header434.preheader
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next403, 8
  br i1 %exitcond1015.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header405:                             ; preds = %polly.loop_header399.split, %polly.loop_header405
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_header405 ], [ 0, %polly.loop_header399.split ]
  %polly.access.add.call1429 = add nuw nsw i64 %135, %polly.indvar408
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1282431 = mul nuw nsw i64 %polly.indvar408, 1200
  %polly.access.add.Packed_MemRef_call1282432 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282431, %133
  %polly.access.Packed_MemRef_call1282433 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1282433, align 8
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next409, %128
  br i1 %exitcond1000.not, label %polly.loop_header434.preheader, label %polly.loop_header405

polly.loop_header434.preheader:                   ; preds = %polly.loop_header405, %polly.merge424.us
  %138 = mul nuw nsw i64 %134, 8000
  %139 = mul nuw nsw i64 %134, 9600
  br i1 %polly.loop_guard4151084, label %polly.loop_header434.us, label %polly.loop_exit436

polly.loop_header434.us:                          ; preds = %polly.loop_header434.preheader, %polly.loop_exit443.loopexit.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_exit443.loopexit.us ], [ 0, %polly.loop_header434.preheader ]
  %140 = add nuw nsw i64 %polly.indvar437.us, %129
  %polly.access.mul.Packed_MemRef_call1282448.us = mul nuw nsw i64 %polly.indvar437.us, 1200
  %141 = shl i64 %140, 3
  %142 = add nuw nsw i64 %141, %138
  %scevgep452.us = getelementptr i8, i8* %call2, i64 %142
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282459.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282448.us, %133
  %polly.access.Packed_MemRef_call1282460.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282459.us
  %_p_scalar_461.us = load double, double* %polly.access.Packed_MemRef_call1282460.us, align 8
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %143 = add nuw nsw i64 %polly.indvar445.us, %130
  %polly.access.add.Packed_MemRef_call1282449.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1282448.us
  %polly.access.Packed_MemRef_call1282450.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282449.us
  %_p_scalar_451.us = load double, double* %polly.access.Packed_MemRef_call1282450.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_451.us
  %144 = mul nuw nsw i64 %143, 8000
  %145 = add nuw nsw i64 %144, %141
  %scevgep455.us = getelementptr i8, i8* %call2, i64 %145
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_461.us, %_p_scalar_457.us
  %146 = shl i64 %143, 3
  %147 = add nuw nsw i64 %146, %139
  %scevgep462.us = getelementptr i8, i8* %call, i64 %147
  %scevgep462463.us = bitcast i8* %scevgep462.us to double*
  %_p_scalar_464.us = load double, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_464.us
  store double %p_add42.i79.us, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar445.us, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit443.loopexit.us, label %polly.loop_header441.us

polly.loop_exit443.loopexit.us:                   ; preds = %polly.loop_header441.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next438.us, %128
  br i1 %exitcond1014.not, label %polly.loop_exit436, label %polly.loop_header434.us

polly.start467:                                   ; preds = %init_array.exit
  %malloccall469 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header553

polly.exiting468:                                 ; preds = %polly.loop_exit577
  tail call void @free(i8* %malloccall469)
  br label %kernel_syr2k.exit

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.start467
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit561 ], [ 0, %polly.start467 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 1, %polly.start467 ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar556, 9600
  %scevgep565 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1174 = icmp ult i64 %148, 4
  br i1 %min.iters.check1174, label %polly.loop_header559.preheader, label %vector.ph1175

vector.ph1175:                                    ; preds = %polly.loop_header553
  %n.vec1177 = and i64 %148, -4
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1173 ]
  %150 = shl nuw nsw i64 %index1178, 3
  %151 = getelementptr i8, i8* %scevgep565, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1182 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !83, !noalias !85
  %153 = fmul fast <4 x double> %wide.load1182, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !83, !noalias !85
  %index.next1179 = add i64 %index1178, 4
  %155 = icmp eq i64 %index.next1179, %n.vec1177
  br i1 %155, label %middle.block1171, label %vector.body1173, !llvm.loop !89

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %148, %n.vec1177
  br i1 %cmp.n1181, label %polly.loop_exit561, label %polly.loop_header559.preheader

polly.loop_header559.preheader:                   ; preds = %polly.loop_header553, %middle.block1171
  %polly.indvar562.ph = phi i64 [ 0, %polly.loop_header553 ], [ %n.vec1177, %middle.block1171 ]
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559, %middle.block1171
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next557, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1048.not, label %polly.loop_header569.preheader, label %polly.loop_header553

polly.loop_header569.preheader:                   ; preds = %polly.loop_exit561
  %Packed_MemRef_call1470 = bitcast i8* %malloccall469 to double*
  br label %polly.loop_header569

polly.loop_header559:                             ; preds = %polly.loop_header559.preheader, %polly.loop_header559
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_header559 ], [ %polly.indvar562.ph, %polly.loop_header559.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %156
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_568, 1.200000e+00
  store double %p_mul.i, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next563, %polly.indvar556
  br i1 %exitcond1047.not, label %polly.loop_exit561, label %polly.loop_header559, !llvm.loop !90

polly.loop_header569:                             ; preds = %polly.loop_header569.preheader, %polly.loop_exit577
  %indvars.iv1042 = phi i64 [ 1, %polly.loop_header569.preheader ], [ %indvars.iv.next1043, %polly.loop_exit577 ]
  %indvars.iv1027 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %indvars.iv.next1028, %polly.loop_exit577 ]
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %polly.indvar_next573, %polly.loop_exit577 ]
  %157 = shl nsw i64 %polly.indvar572, 3
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 8
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next573, 150
  br i1 %exitcond1046.not, label %polly.exiting468, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit583, %polly.loop_header569
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1023, i64 -872)
  %158 = add nsw i64 %smin1039, 1000
  %159 = shl nsw i64 %polly.indvar578, 7
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -128
  %exitcond1045.not = icmp eq i64 %polly.indvar_next579, 8
  br i1 %exitcond1045.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header575
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit589 ], [ %indvars.iv1027, %polly.loop_header575 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header575 ]
  %160 = shl nsw i64 %polly.indvar584, 3
  %161 = sub nsw i64 %157, %160
  %162 = add nuw nsw i64 %160, 8
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit624
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -8
  %exitcond1044.not = icmp eq i64 %polly.indvar_next585, %indvars.iv1042
  br i1 %exitcond1044.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit624, %polly.loop_header581
  %indvars.iv1031 = phi i64 [ %indvars.iv.next1032, %polly.loop_exit624 ], [ %indvars.iv1029, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit624 ], [ 0, %polly.loop_header581 ]
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1031, i64 7)
  %163 = add nsw i64 %polly.indvar590, %161
  %polly.loop_guard6031085 = icmp sgt i64 %163, -1
  %164 = add nuw nsw i64 %polly.indvar590, %157
  %.not860 = icmp ult i64 %164, %162
  %polly.access.mul.call1616 = mul nuw nsw i64 %164, 1000
  %165 = add nuw nsw i64 %polly.access.mul.call1616, %159
  br i1 %polly.loop_guard6031085, label %polly.loop_header593.us, label %polly.loop_header587.split

polly.loop_header593.us:                          ; preds = %polly.loop_header587, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header587 ]
  %166 = add nuw nsw i64 %polly.indvar596.us, %159
  %polly.access.mul.Packed_MemRef_call1470.us = mul nuw nsw i64 %polly.indvar596.us, 1200
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %167 = add nuw nsw i64 %polly.indvar604.us, %160
  %polly.access.mul.call1608.us = mul nuw nsw i64 %167, 1000
  %polly.access.add.call1609.us = add nuw nsw i64 %166, %polly.access.mul.call1608.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1470.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar604.us, %smin1037
  br i1 %exitcond1034.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %165, %polly.indvar596.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470.us, %163
  %polly.access.Packed_MemRef_call1470621.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1470621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next597.us, %158
  br i1 %exitcond1036.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not860, label %polly.merge612.us, label %polly.then613.us

polly.loop_header587.split:                       ; preds = %polly.loop_header587
  br i1 %.not860, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header587.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1032 = add nsw i64 %indvars.iv1031, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next591, 8
  br i1 %exitcond1041.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_header587.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header587.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %165, %polly.indvar596
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1470619 = mul nuw nsw i64 %polly.indvar596, 1200
  %polly.access.add.Packed_MemRef_call1470620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470619, %163
  %polly.access.Packed_MemRef_call1470621 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1470621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next597, %158
  br i1 %exitcond1026.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %168 = mul nuw nsw i64 %164, 8000
  %169 = mul nuw nsw i64 %164, 9600
  br i1 %polly.loop_guard6031085, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %170 = add nuw nsw i64 %polly.indvar625.us, %159
  %polly.access.mul.Packed_MemRef_call1470636.us = mul nuw nsw i64 %polly.indvar625.us, 1200
  %171 = shl i64 %170, 3
  %172 = add nuw nsw i64 %171, %168
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %172
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1470647.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470636.us, %163
  %polly.access.Packed_MemRef_call1470648.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1470648.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header622.us, %polly.loop_header629.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_header629.us ], [ 0, %polly.loop_header622.us ]
  %173 = add nuw nsw i64 %polly.indvar633.us, %160
  %polly.access.add.Packed_MemRef_call1470637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1470636.us
  %polly.access.Packed_MemRef_call1470638.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1470638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_642.us, %_p_scalar_639.us
  %174 = mul nuw nsw i64 %173, 8000
  %175 = add nuw nsw i64 %174, %171
  %scevgep643.us = getelementptr i8, i8* %call2, i64 %175
  %scevgep643644.us = bitcast i8* %scevgep643.us to double*
  %_p_scalar_645.us = load double, double* %scevgep643644.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_649.us, %_p_scalar_645.us
  %176 = shl i64 %173, 3
  %177 = add nuw nsw i64 %176, %169
  %scevgep650.us = getelementptr i8, i8* %call, i64 %177
  %scevgep650651.us = bitcast i8* %scevgep650.us to double*
  %_p_scalar_652.us = load double, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_652.us
  store double %p_add42.i.us, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar633.us, %smin1037
  br i1 %exitcond1038.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next626.us, %158
  br i1 %exitcond1040.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header779:                             ; preds = %entry, %polly.loop_exit787
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit787 ], [ 0, %entry ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %entry ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %178 = shl nsw i64 %polly.indvar782, 5
  %179 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond1078.not, label %polly.loop_header806, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %180 = mul nsw i64 %polly.indvar788, -32
  %smin = call i64 @llvm.smin.i64(i64 %180, i64 -1168)
  %181 = add nsw i64 %smin, 1200
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1168)
  %182 = shl nsw i64 %polly.indvar788, 5
  %183 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond1077.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %184 = add nuw nsw i64 %polly.indvar794, %178
  %185 = trunc i64 %184 to i32
  %186 = mul nuw nsw i64 %184, 9600
  %min.iters.check = icmp eq i64 %181, 0
  br i1 %min.iters.check, label %polly.loop_header797, label %vector.ph1113

vector.ph1113:                                    ; preds = %polly.loop_header791
  %broadcast.splatinsert1120 = insertelement <4 x i64> poison, i64 %182, i32 0
  %broadcast.splat1121 = shufflevector <4 x i64> %broadcast.splatinsert1120, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1113
  %index1114 = phi i64 [ 0, %vector.ph1113 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1113 ], [ %vec.ind.next1119, %vector.body1112 ]
  %187 = add nuw nsw <4 x i64> %vec.ind1118, %broadcast.splat1121
  %188 = trunc <4 x i64> %187 to <4 x i32>
  %189 = mul <4 x i32> %broadcast.splat1123, %188
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 1200, i32 1200, i32 1200, i32 1200>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %194 = extractelement <4 x i64> %187, i32 0
  %195 = shl i64 %194, 3
  %196 = add nuw nsw i64 %195, %186
  %197 = getelementptr i8, i8* %call, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %193, <4 x double>* %198, align 8, !alias.scope !93, !noalias !95
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %199 = icmp eq i64 %index.next1115, %181
  br i1 %199, label %polly.loop_exit799, label %vector.body1112, !llvm.loop !98

polly.loop_exit799:                               ; preds = %vector.body1112, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar794, %179
  br i1 %exitcond1076.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %200 = add nuw nsw i64 %polly.indvar800, %182
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %201, %185
  %203 = add i32 %202, 3
  %204 = urem i32 %203, 1200
  %p_conv31.i = sitofp i32 %204 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %205 = shl i64 %200, 3
  %206 = add nuw nsw i64 %205, %186
  %scevgep803 = getelementptr i8, i8* %call, i64 %206
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div33.i, double* %scevgep803804, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar800, %183
  br i1 %exitcond1072.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !99

polly.loop_header806:                             ; preds = %polly.loop_exit787, %polly.loop_exit814
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit814 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar809 = phi i64 [ %polly.indvar_next810, %polly.loop_exit814 ], [ 0, %polly.loop_exit787 ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %207 = shl nsw i64 %polly.indvar809, 5
  %208 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header812

polly.loop_exit814:                               ; preds = %polly.loop_exit820
  %polly.indvar_next810 = add nuw nsw i64 %polly.indvar809, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next810, 38
  br i1 %exitcond1068.not, label %polly.loop_header832, label %polly.loop_header806

polly.loop_header812:                             ; preds = %polly.loop_exit820, %polly.loop_header806
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit820 ], [ 0, %polly.loop_header806 ]
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_header806 ]
  %209 = mul nsw i64 %polly.indvar815, -32
  %smin1127 = call i64 @llvm.smin.i64(i64 %209, i64 -968)
  %210 = add nsw i64 %smin1127, 1000
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -968)
  %211 = shl nsw i64 %polly.indvar815, 5
  %212 = add nsw i64 %smin1061, 999
  br label %polly.loop_header818

polly.loop_exit820:                               ; preds = %polly.loop_exit826
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next816, 32
  br i1 %exitcond1067.not, label %polly.loop_exit814, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_exit826, %polly.loop_header812
  %polly.indvar821 = phi i64 [ 0, %polly.loop_header812 ], [ %polly.indvar_next822, %polly.loop_exit826 ]
  %213 = add nuw nsw i64 %polly.indvar821, %207
  %214 = trunc i64 %213 to i32
  %215 = mul nuw nsw i64 %213, 8000
  %min.iters.check1128 = icmp eq i64 %210, 0
  br i1 %min.iters.check1128, label %polly.loop_header824, label %vector.ph1129

vector.ph1129:                                    ; preds = %polly.loop_header818
  %broadcast.splatinsert1138 = insertelement <4 x i64> poison, i64 %211, i32 0
  %broadcast.splat1139 = shufflevector <4 x i64> %broadcast.splatinsert1138, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %vector.ph1129
  %index1132 = phi i64 [ 0, %vector.ph1129 ], [ %index.next1133, %vector.body1126 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1129 ], [ %vec.ind.next1137, %vector.body1126 ]
  %216 = add nuw nsw <4 x i64> %vec.ind1136, %broadcast.splat1139
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat1141, %217
  %219 = add <4 x i32> %218, <i32 2, i32 2, i32 2, i32 2>
  %220 = urem <4 x i32> %219, <i32 1000, i32 1000, i32 1000, i32 1000>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %215
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !97, !noalias !100
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next1133, %210
  br i1 %228, label %polly.loop_exit826, label %vector.body1126, !llvm.loop !101

polly.loop_exit826:                               ; preds = %vector.body1126, %polly.loop_header824
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar821, %208
  br i1 %exitcond1066.not, label %polly.loop_exit820, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_header818, %polly.loop_header824
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_header824 ], [ 0, %polly.loop_header818 ]
  %229 = add nuw nsw i64 %polly.indvar827, %211
  %230 = trunc i64 %229 to i32
  %231 = mul i32 %230, %214
  %232 = add i32 %231, 2
  %233 = urem i32 %232, 1000
  %p_conv10.i = sitofp i32 %233 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %234 = shl i64 %229, 3
  %235 = add nuw nsw i64 %234, %215
  %scevgep830 = getelementptr i8, i8* %call2, i64 %235
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div12.i, double* %scevgep830831, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar827, %212
  br i1 %exitcond1062.not, label %polly.loop_exit826, label %polly.loop_header824, !llvm.loop !102

polly.loop_header832:                             ; preds = %polly.loop_exit814, %polly.loop_exit840
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit840 ], [ 0, %polly.loop_exit814 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_exit814 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1053, i64 -1168)
  %236 = shl nsw i64 %polly.indvar835, 5
  %237 = add nsw i64 %smin1055, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1058.not, label %init_array.exit, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %238 = mul nsw i64 %polly.indvar841, -32
  %smin1145 = call i64 @llvm.smin.i64(i64 %238, i64 -968)
  %239 = add nsw i64 %smin1145, 1000
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -968)
  %240 = shl nsw i64 %polly.indvar841, 5
  %241 = add nsw i64 %smin1051, 999
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1057.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %polly.indvar847 = phi i64 [ 0, %polly.loop_header838 ], [ %polly.indvar_next848, %polly.loop_exit852 ]
  %242 = add nuw nsw i64 %polly.indvar847, %236
  %243 = trunc i64 %242 to i32
  %244 = mul nuw nsw i64 %242, 8000
  %min.iters.check1146 = icmp eq i64 %239, 0
  br i1 %min.iters.check1146, label %polly.loop_header850, label %vector.ph1147

vector.ph1147:                                    ; preds = %polly.loop_header844
  %broadcast.splatinsert1156 = insertelement <4 x i64> poison, i64 %240, i32 0
  %broadcast.splat1157 = shufflevector <4 x i64> %broadcast.splatinsert1156, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1147
  %index1150 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1151, %vector.body1144 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1147 ], [ %vec.ind.next1155, %vector.body1144 ]
  %245 = add nuw nsw <4 x i64> %vec.ind1154, %broadcast.splat1157
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat1159, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 1200, i32 1200, i32 1200, i32 1200>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %244
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !96, !noalias !103
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next1151, %239
  br i1 %257, label %polly.loop_exit852, label %vector.body1144, !llvm.loop !104

polly.loop_exit852:                               ; preds = %vector.body1144, %polly.loop_header850
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar847, %237
  br i1 %exitcond1056.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_header844, %polly.loop_header850
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_header850 ], [ 0, %polly.loop_header844 ]
  %258 = add nuw nsw i64 %polly.indvar853, %240
  %259 = trunc i64 %258 to i32
  %260 = mul i32 %259, %243
  %261 = add i32 %260, 1
  %262 = urem i32 %261, 1200
  %p_conv.i = sitofp i32 %262 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %263 = shl i64 %258, 3
  %264 = add nuw nsw i64 %263, %244
  %scevgep857 = getelementptr i8, i8* %call1, i64 %264
  %scevgep857858 = bitcast i8* %scevgep857 to double*
  store double %p_div.i, double* %scevgep857858, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar853, %241
  br i1 %exitcond1052.not, label %polly.loop_exit852, label %polly.loop_header850, !llvm.loop !105
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !25, !48, !51}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
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
