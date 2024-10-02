; ModuleID = 'syr2k_exhaustive/mmp_all_XL_5178.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_5178.c"
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
  %scevgep1082 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1081 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1080 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1079 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1079, %scevgep1082
  %bound1 = icmp ult i8* %scevgep1081, %scevgep1080
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
  br i1 %exitcond18.not.i, label %vector.ph1086, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1086:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1093 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1094 = shufflevector <4 x i64> %broadcast.splatinsert1093, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1086
  %index1087 = phi i64 [ 0, %vector.ph1086 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1091 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1086 ], [ %vec.ind.next1092, %vector.body1085 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1091, %broadcast.splat1094
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv7.i, i64 %index1087
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1092 = add <4 x i64> %vec.ind1091, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1088, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1085, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1085
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1086, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit840
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start467, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1148 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1148, label %for.body3.i46.preheader1225, label %vector.ph1149

vector.ph1149:                                    ; preds = %for.body3.i46.preheader
  %n.vec1151 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1149
  %index1152 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1153, %vector.body1147 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i, i64 %index1152
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %46 = icmp eq i64 %index.next1153, %n.vec1151
  br i1 %46, label %middle.block1145, label %vector.body1147, !llvm.loop !18

middle.block1145:                                 ; preds = %vector.body1147
  %cmp.n1155 = icmp eq i64 %indvars.iv21.i, %n.vec1151
  br i1 %cmp.n1155, label %for.inc6.i, label %for.body3.i46.preheader1225

for.body3.i46.preheader1225:                      ; preds = %for.body3.i46.preheader, %middle.block1145
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1151, %middle.block1145 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1225, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1225 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1145, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !43

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
  %min.iters.check1171 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1171, label %for.body3.i60.preheader1223, label %vector.ph1172

vector.ph1172:                                    ; preds = %for.body3.i60.preheader
  %n.vec1174 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1172
  %index1175 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1176, %vector.body1170 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i52, i64 %index1175
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1179 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1179, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1176 = add i64 %index1175, 4
  %57 = icmp eq i64 %index.next1176, %n.vec1174
  br i1 %57, label %middle.block1168, label %vector.body1170, !llvm.loop !53

middle.block1168:                                 ; preds = %vector.body1170
  %cmp.n1178 = icmp eq i64 %indvars.iv21.i52, %n.vec1174
  br i1 %cmp.n1178, label %for.inc6.i63, label %for.body3.i60.preheader1223

for.body3.i60.preheader1223:                      ; preds = %for.body3.i60.preheader, %middle.block1168
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1174, %middle.block1168 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1223, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1223 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1168, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !43

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
  %min.iters.check1197 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1197, label %for.body3.i99.preheader1221, label %vector.ph1198

vector.ph1198:                                    ; preds = %for.body3.i99.preheader
  %n.vec1200 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1196 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i91, i64 %index1201
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1205 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1205, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %68 = icmp eq i64 %index.next1202, %n.vec1200
  br i1 %68, label %middle.block1194, label %vector.body1196, !llvm.loop !55

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1204 = icmp eq i64 %indvars.iv21.i91, %n.vec1200
  br i1 %cmp.n1204, label %for.inc6.i102, label %for.body3.i99.preheader1221

for.body3.i99.preheader1221:                      ; preds = %for.body3.i99.preheader, %middle.block1194
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1200, %middle.block1194 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1221, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1221 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1194, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !43

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !57
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call805, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !59

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !60

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %indvar1209 = phi i64 [ %indvar.next1210, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1209, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1211 = icmp ult i64 %88, 4
  br i1 %min.iters.check1211, label %polly.loop_header191.preheader, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header
  %n.vec1214 = and i64 %88, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1208 ]
  %90 = shl nuw nsw i64 %index1215, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1216 = add i64 %index1215, 4
  %95 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %95, label %middle.block1206, label %vector.body1208, !llvm.loop !67

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1218 = icmp eq i64 %88, %n.vec1214
  br i1 %cmp.n1218, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1206
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1214, %middle.block1206 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1206
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1210 = add i64 %indvar1209, 1
  br i1 %exitcond991.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond990.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv985 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next986, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 100
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next203, 12
  br i1 %exitcond989.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %98 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond988.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %99 = mul nuw nsw i64 %polly.indvar214, 100
  %100 = sub nsw i64 %97, %99
  %101 = add nuw nsw i64 %99, 100
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -100
  %exitcond987.not = icmp eq i64 %polly.indvar_next215, %indvars.iv985
  br i1 %exitcond987.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit248 ], [ %indvars.iv975, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin981 = call i64 @llvm.smin.i64(i64 %indvars.iv977, i64 99)
  %102 = add nsw i64 %polly.indvar220, %100
  %polly.loop_guard1068 = icmp sgt i64 %102, -1
  %103 = add nuw nsw i64 %polly.indvar220, %97
  %.not = icmp ult i64 %103, %101
  %polly.access.mul.call1240 = mul nuw nsw i64 %103, 1000
  %104 = add nuw nsw i64 %polly.access.mul.call1240, %98
  br i1 %polly.loop_guard1068, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %105 = add nuw nsw i64 %polly.indvar226.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %106 = add nuw nsw i64 %polly.indvar232.us, %99
  %polly.access.mul.call1236.us = mul nuw nsw i64 %106, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %105, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !64, !noalias !70
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond979.not = icmp eq i64 %polly.indvar232.us, %smin981
  br i1 %exitcond979.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1241.us = add nuw nsw i64 %104, %polly.indvar226.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !64, !noalias !70
  %polly.access.add.Packed_MemRef_call1244.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %102
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond980.not = icmp eq i64 %polly.indvar_next227.us, 100
  br i1 %exitcond980.not, label %polly.loop_header246.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header217.split, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond984.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1241 = add nuw nsw i64 %104, %polly.indvar226
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !64, !noalias !70
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar226, 1200
  %polly.access.add.Packed_MemRef_call1244 = add nsw i64 %polly.access.mul.Packed_MemRef_call1243, %102
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, 100
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header223

polly.loop_header246.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %107 = mul nuw nsw i64 %103, 8000
  %108 = mul nuw nsw i64 %103, 9600
  br i1 %polly.loop_guard1068, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %109 = add nuw nsw i64 %polly.indvar249.us, %98
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar249.us, 1200
  %110 = shl i64 %109, 3
  %111 = add nuw nsw i64 %110, %107
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %111
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us, %102
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us ]
  %112 = add nuw nsw i64 %polly.indvar257.us, %99
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %113 = mul nuw nsw i64 %112, 8000
  %114 = add nuw nsw i64 %113, %110
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %114
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !65, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %115 = shl i64 %112, 3
  %116 = add nuw nsw i64 %115, %108
  %scevgep274.us = getelementptr i8, i8* %call, i64 %116
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar257.us, %smin981
  br i1 %exitcond982.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next250.us, 100
  br i1 %exitcond983.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1183 = phi i64 [ %indvar.next1184, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %117 = add i64 %indvar1183, 1
  %118 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1185 = icmp ult i64 %117, 4
  br i1 %min.iters.check1185, label %polly.loop_header371.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header365
  %n.vec1188 = and i64 %117, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1182 ]
  %119 = shl nuw nsw i64 %index1189, 3
  %120 = getelementptr i8, i8* %scevgep377, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !72, !noalias !74
  %122 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !72, !noalias !74
  %index.next1190 = add i64 %index1189, 4
  %124 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %124, label %middle.block1180, label %vector.body1182, !llvm.loop !78

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1192 = icmp eq i64 %117, %n.vec1188
  br i1 %cmp.n1192, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1180
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1188, %middle.block1180 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1180
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1184 = add i64 %indvar1183, 1
  br i1 %exitcond1012.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %125
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1011.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !79

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %indvars.iv1006 = phi i64 [ 1, %polly.loop_header381.preheader ], [ %indvars.iv.next1007, %polly.loop_exit389 ]
  %indvars.iv993 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next994, %polly.loop_exit389 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit389 ]
  %126 = mul nuw nsw i64 %polly.indvar384, 100
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit395
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 100
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next385, 12
  br i1 %exitcond1010.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit395, %polly.loop_header381
  %polly.indvar390 = phi i64 [ 0, %polly.loop_header381 ], [ %polly.indvar_next391, %polly.loop_exit395 ]
  %127 = mul nuw nsw i64 %polly.indvar390, 100
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next391, 10
  br i1 %exitcond1009.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_header387
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %polly.loop_exit401 ], [ %indvars.iv993, %polly.loop_header387 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ 0, %polly.loop_header387 ]
  %128 = mul nuw nsw i64 %polly.indvar396, 100
  %129 = sub nsw i64 %126, %128
  %130 = add nuw nsw i64 %128, 100
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit436
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, -100
  %exitcond1008.not = icmp eq i64 %polly.indvar_next397, %indvars.iv1006
  br i1 %exitcond1008.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit436, %polly.loop_header393
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit436 ], [ %indvars.iv995, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit436 ], [ 0, %polly.loop_header393 ]
  %smin1002 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 99)
  %131 = add nsw i64 %polly.indvar402, %129
  %polly.loop_guard4151069 = icmp sgt i64 %131, -1
  %132 = add nuw nsw i64 %polly.indvar402, %126
  %.not859 = icmp ult i64 %132, %130
  %polly.access.mul.call1428 = mul nuw nsw i64 %132, 1000
  %133 = add nuw nsw i64 %polly.access.mul.call1428, %127
  br i1 %polly.loop_guard4151069, label %polly.loop_header405.us, label %polly.loop_header399.split

polly.loop_header405.us:                          ; preds = %polly.loop_header399, %polly.merge424.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.merge424.us ], [ 0, %polly.loop_header399 ]
  %134 = add nuw nsw i64 %polly.indvar408.us, %127
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar408.us, 1200
  br label %polly.loop_header412.us

polly.loop_header412.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header412.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_header412.us ], [ 0, %polly.loop_header405.us ]
  %135 = add nuw nsw i64 %polly.indvar416.us, %128
  %polly.access.mul.call1420.us = mul nuw nsw i64 %135, 1000
  %polly.access.add.call1421.us = add nuw nsw i64 %134, %polly.access.mul.call1420.us
  %polly.access.call1422.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1421.us
  %polly.access.call1422.load.us = load double, double* %polly.access.call1422.us, align 8, !alias.scope !75, !noalias !80
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar416.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1422.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar416.us, %smin1002
  br i1 %exitcond1000.not, label %polly.cond423.loopexit.us, label %polly.loop_header412.us

polly.then425.us:                                 ; preds = %polly.cond423.loopexit.us
  %polly.access.add.call1429.us = add nuw nsw i64 %133, %polly.indvar408.us
  %polly.access.call1430.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429.us
  %polly.access.call1430.load.us = load double, double* %polly.access.call1430.us, align 8, !alias.scope !75, !noalias !80
  %polly.access.add.Packed_MemRef_call1282432.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %131
  %polly.access.Packed_MemRef_call1282433.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432.us
  store double %polly.access.call1430.load.us, double* %polly.access.Packed_MemRef_call1282433.us, align 8
  br label %polly.merge424.us

polly.merge424.us:                                ; preds = %polly.then425.us, %polly.cond423.loopexit.us
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next409.us, 100
  br i1 %exitcond1001.not, label %polly.loop_header434.preheader, label %polly.loop_header405.us

polly.cond423.loopexit.us:                        ; preds = %polly.loop_header412.us
  br i1 %.not859, label %polly.merge424.us, label %polly.then425.us

polly.loop_header399.split:                       ; preds = %polly.loop_header399
  br i1 %.not859, label %polly.loop_exit436, label %polly.loop_header405

polly.loop_exit436:                               ; preds = %polly.loop_exit443.loopexit.us, %polly.loop_header399.split, %polly.loop_header434.preheader
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next403, 100
  br i1 %exitcond1005.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header405:                             ; preds = %polly.loop_header399.split, %polly.loop_header405
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_header405 ], [ 0, %polly.loop_header399.split ]
  %polly.access.add.call1429 = add nuw nsw i64 %133, %polly.indvar408
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !75, !noalias !80
  %polly.access.mul.Packed_MemRef_call1282431 = mul nuw nsw i64 %polly.indvar408, 1200
  %polly.access.add.Packed_MemRef_call1282432 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282431, %131
  %polly.access.Packed_MemRef_call1282433 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1282433, align 8
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next409, 100
  br i1 %exitcond992.not, label %polly.loop_header434.preheader, label %polly.loop_header405

polly.loop_header434.preheader:                   ; preds = %polly.loop_header405, %polly.merge424.us
  %136 = mul nuw nsw i64 %132, 8000
  %137 = mul nuw nsw i64 %132, 9600
  br i1 %polly.loop_guard4151069, label %polly.loop_header434.us, label %polly.loop_exit436

polly.loop_header434.us:                          ; preds = %polly.loop_header434.preheader, %polly.loop_exit443.loopexit.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_exit443.loopexit.us ], [ 0, %polly.loop_header434.preheader ]
  %138 = add nuw nsw i64 %polly.indvar437.us, %127
  %polly.access.mul.Packed_MemRef_call1282448.us = mul nuw nsw i64 %polly.indvar437.us, 1200
  %139 = shl i64 %138, 3
  %140 = add nuw nsw i64 %139, %136
  %scevgep452.us = getelementptr i8, i8* %call2, i64 %140
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282459.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282448.us, %131
  %polly.access.Packed_MemRef_call1282460.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282459.us
  %_p_scalar_461.us = load double, double* %polly.access.Packed_MemRef_call1282460.us, align 8
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %141 = add nuw nsw i64 %polly.indvar445.us, %128
  %polly.access.add.Packed_MemRef_call1282449.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1282448.us
  %polly.access.Packed_MemRef_call1282450.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282449.us
  %_p_scalar_451.us = load double, double* %polly.access.Packed_MemRef_call1282450.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_451.us
  %142 = mul nuw nsw i64 %141, 8000
  %143 = add nuw nsw i64 %142, %139
  %scevgep455.us = getelementptr i8, i8* %call2, i64 %143
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !76, !noalias !81
  %p_mul37.i75.us = fmul fast double %_p_scalar_461.us, %_p_scalar_457.us
  %144 = shl i64 %141, 3
  %145 = add nuw nsw i64 %144, %137
  %scevgep462.us = getelementptr i8, i8* %call, i64 %145
  %scevgep462463.us = bitcast i8* %scevgep462.us to double*
  %_p_scalar_464.us = load double, double* %scevgep462463.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_464.us
  store double %p_add42.i79.us, double* %scevgep462463.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar445.us, %smin1002
  br i1 %exitcond1003.not, label %polly.loop_exit443.loopexit.us, label %polly.loop_header441.us

polly.loop_exit443.loopexit.us:                   ; preds = %polly.loop_header441.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next438.us, 100
  br i1 %exitcond1004.not, label %polly.loop_exit436, label %polly.loop_header434.us

polly.start467:                                   ; preds = %init_array.exit
  %malloccall469 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header553

polly.exiting468:                                 ; preds = %polly.loop_exit577
  tail call void @free(i8* %malloccall469)
  br label %kernel_syr2k.exit

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.start467
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit561 ], [ 0, %polly.start467 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 1, %polly.start467 ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar556, 9600
  %scevgep565 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1159 = icmp ult i64 %146, 4
  br i1 %min.iters.check1159, label %polly.loop_header559.preheader, label %vector.ph1160

vector.ph1160:                                    ; preds = %polly.loop_header553
  %n.vec1162 = and i64 %146, -4
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1158 ]
  %148 = shl nuw nsw i64 %index1163, 3
  %149 = getelementptr i8, i8* %scevgep565, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1167 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !82, !noalias !84
  %151 = fmul fast <4 x double> %wide.load1167, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !82, !noalias !84
  %index.next1164 = add i64 %index1163, 4
  %153 = icmp eq i64 %index.next1164, %n.vec1162
  br i1 %153, label %middle.block1156, label %vector.body1158, !llvm.loop !88

middle.block1156:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %146, %n.vec1162
  br i1 %cmp.n1166, label %polly.loop_exit561, label %polly.loop_header559.preheader

polly.loop_header559.preheader:                   ; preds = %polly.loop_header553, %middle.block1156
  %polly.indvar562.ph = phi i64 [ 0, %polly.loop_header553 ], [ %n.vec1162, %middle.block1156 ]
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559, %middle.block1156
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next557, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1033.not, label %polly.loop_header569.preheader, label %polly.loop_header553

polly.loop_header569.preheader:                   ; preds = %polly.loop_exit561
  %Packed_MemRef_call1470 = bitcast i8* %malloccall469 to double*
  br label %polly.loop_header569

polly.loop_header559:                             ; preds = %polly.loop_header559.preheader, %polly.loop_header559
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_header559 ], [ %polly.indvar562.ph, %polly.loop_header559.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %154
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_568, 1.200000e+00
  store double %p_mul.i, double* %scevgep566567, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next563, %polly.indvar556
  br i1 %exitcond1032.not, label %polly.loop_exit561, label %polly.loop_header559, !llvm.loop !89

polly.loop_header569:                             ; preds = %polly.loop_header569.preheader, %polly.loop_exit577
  %indvars.iv1027 = phi i64 [ 1, %polly.loop_header569.preheader ], [ %indvars.iv.next1028, %polly.loop_exit577 ]
  %indvars.iv1014 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %indvars.iv.next1015, %polly.loop_exit577 ]
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %polly.indvar_next573, %polly.loop_exit577 ]
  %155 = mul nuw nsw i64 %polly.indvar572, 100
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 100
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next573, 12
  br i1 %exitcond1031.not, label %polly.exiting468, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit583, %polly.loop_header569
  %polly.indvar578 = phi i64 [ 0, %polly.loop_header569 ], [ %polly.indvar_next579, %polly.loop_exit583 ]
  %156 = mul nuw nsw i64 %polly.indvar578, 100
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next579, 10
  br i1 %exitcond1030.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header575
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit589 ], [ %indvars.iv1014, %polly.loop_header575 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header575 ]
  %157 = mul nuw nsw i64 %polly.indvar584, 100
  %158 = sub nsw i64 %155, %157
  %159 = add nuw nsw i64 %157, 100
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit624
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -100
  %exitcond1029.not = icmp eq i64 %polly.indvar_next585, %indvars.iv1027
  br i1 %exitcond1029.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit624, %polly.loop_header581
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit624 ], [ %indvars.iv1016, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit624 ], [ 0, %polly.loop_header581 ]
  %smin1023 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 99)
  %160 = add nsw i64 %polly.indvar590, %158
  %polly.loop_guard6031070 = icmp sgt i64 %160, -1
  %161 = add nuw nsw i64 %polly.indvar590, %155
  %.not860 = icmp ult i64 %161, %159
  %polly.access.mul.call1616 = mul nuw nsw i64 %161, 1000
  %162 = add nuw nsw i64 %polly.access.mul.call1616, %156
  br i1 %polly.loop_guard6031070, label %polly.loop_header593.us, label %polly.loop_header587.split

polly.loop_header593.us:                          ; preds = %polly.loop_header587, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header587 ]
  %163 = add nuw nsw i64 %polly.indvar596.us, %156
  %polly.access.mul.Packed_MemRef_call1470.us = mul nuw nsw i64 %polly.indvar596.us, 1200
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %164 = add nuw nsw i64 %polly.indvar604.us, %157
  %polly.access.mul.call1608.us = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1609.us = add nuw nsw i64 %163, %polly.access.mul.call1608.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !85, !noalias !90
  %polly.access.add.Packed_MemRef_call1470.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1470.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar604.us, %smin1023
  br i1 %exitcond1021.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %162, %polly.indvar596.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !85, !noalias !90
  %polly.access.add.Packed_MemRef_call1470620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470.us, %160
  %polly.access.Packed_MemRef_call1470621.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1470621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next597.us, 100
  br i1 %exitcond1022.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not860, label %polly.merge612.us, label %polly.then613.us

polly.loop_header587.split:                       ; preds = %polly.loop_header587
  br i1 %.not860, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header587.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next591, 100
  br i1 %exitcond1026.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_header587.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header587.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %162, %polly.indvar596
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !85, !noalias !90
  %polly.access.mul.Packed_MemRef_call1470619 = mul nuw nsw i64 %polly.indvar596, 1200
  %polly.access.add.Packed_MemRef_call1470620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470619, %160
  %polly.access.Packed_MemRef_call1470621 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1470621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next597, 100
  br i1 %exitcond1013.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %165 = mul nuw nsw i64 %161, 8000
  %166 = mul nuw nsw i64 %161, 9600
  br i1 %polly.loop_guard6031070, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %167 = add nuw nsw i64 %polly.indvar625.us, %156
  %polly.access.mul.Packed_MemRef_call1470636.us = mul nuw nsw i64 %polly.indvar625.us, 1200
  %168 = shl i64 %167, 3
  %169 = add nuw nsw i64 %168, %165
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %169
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470647.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470636.us, %160
  %polly.access.Packed_MemRef_call1470648.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1470648.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header622.us, %polly.loop_header629.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_header629.us ], [ 0, %polly.loop_header622.us ]
  %170 = add nuw nsw i64 %polly.indvar633.us, %157
  %polly.access.add.Packed_MemRef_call1470637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1470636.us
  %polly.access.Packed_MemRef_call1470638.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1470638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_642.us, %_p_scalar_639.us
  %171 = mul nuw nsw i64 %170, 8000
  %172 = add nuw nsw i64 %171, %168
  %scevgep643.us = getelementptr i8, i8* %call2, i64 %172
  %scevgep643644.us = bitcast i8* %scevgep643.us to double*
  %_p_scalar_645.us = load double, double* %scevgep643644.us, align 8, !alias.scope !86, !noalias !91
  %p_mul37.i.us = fmul fast double %_p_scalar_649.us, %_p_scalar_645.us
  %173 = shl i64 %170, 3
  %174 = add nuw nsw i64 %173, %166
  %scevgep650.us = getelementptr i8, i8* %call, i64 %174
  %scevgep650651.us = bitcast i8* %scevgep650.us to double*
  %_p_scalar_652.us = load double, double* %scevgep650651.us, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_652.us
  store double %p_add42.i.us, double* %scevgep650651.us, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar633.us, %smin1023
  br i1 %exitcond1024.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next626.us, 100
  br i1 %exitcond1025.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header779:                             ; preds = %entry, %polly.loop_exit787
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit787 ], [ 0, %entry ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %entry ]
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -1168)
  %175 = shl nsw i64 %polly.indvar782, 5
  %176 = add nsw i64 %smin1060, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond1063.not, label %polly.loop_header806, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %177 = mul nsw i64 %polly.indvar788, -32
  %smin = call i64 @llvm.smin.i64(i64 %177, i64 -1168)
  %178 = add nsw i64 %smin, 1200
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -1168)
  %179 = shl nsw i64 %polly.indvar788, 5
  %180 = add nsw i64 %smin1056, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond1062.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %181 = add nuw nsw i64 %polly.indvar794, %175
  %182 = trunc i64 %181 to i32
  %183 = mul nuw nsw i64 %181, 9600
  %min.iters.check = icmp eq i64 %178, 0
  br i1 %min.iters.check, label %polly.loop_header797, label %vector.ph1098

vector.ph1098:                                    ; preds = %polly.loop_header791
  %broadcast.splatinsert1105 = insertelement <4 x i64> poison, i64 %179, i32 0
  %broadcast.splat1106 = shufflevector <4 x i64> %broadcast.splatinsert1105, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1098
  %index1099 = phi i64 [ 0, %vector.ph1098 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1103 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1098 ], [ %vec.ind.next1104, %vector.body1097 ]
  %184 = add nuw nsw <4 x i64> %vec.ind1103, %broadcast.splat1106
  %185 = trunc <4 x i64> %184 to <4 x i32>
  %186 = mul <4 x i32> %broadcast.splat1108, %185
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 1200, i32 1200, i32 1200, i32 1200>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %191 = extractelement <4 x i64> %184, i32 0
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %183
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %190, <4 x double>* %195, align 8, !alias.scope !92, !noalias !94
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1104 = add <4 x i64> %vec.ind1103, <i64 4, i64 4, i64 4, i64 4>
  %196 = icmp eq i64 %index.next1100, %178
  br i1 %196, label %polly.loop_exit799, label %vector.body1097, !llvm.loop !97

polly.loop_exit799:                               ; preds = %vector.body1097, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar794, %176
  br i1 %exitcond1061.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %197 = add nuw nsw i64 %polly.indvar800, %179
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, %182
  %200 = add i32 %199, 3
  %201 = urem i32 %200, 1200
  %p_conv31.i = sitofp i32 %201 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %202 = shl i64 %197, 3
  %203 = add nuw nsw i64 %202, %183
  %scevgep803 = getelementptr i8, i8* %call, i64 %203
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div33.i, double* %scevgep803804, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar800, %180
  br i1 %exitcond1057.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !98

polly.loop_header806:                             ; preds = %polly.loop_exit787, %polly.loop_exit814
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit814 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar809 = phi i64 [ %polly.indvar_next810, %polly.loop_exit814 ], [ 0, %polly.loop_exit787 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %204 = shl nsw i64 %polly.indvar809, 5
  %205 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header812

polly.loop_exit814:                               ; preds = %polly.loop_exit820
  %polly.indvar_next810 = add nuw nsw i64 %polly.indvar809, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next810, 38
  br i1 %exitcond1053.not, label %polly.loop_header832, label %polly.loop_header806

polly.loop_header812:                             ; preds = %polly.loop_exit820, %polly.loop_header806
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit820 ], [ 0, %polly.loop_header806 ]
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_header806 ]
  %206 = mul nsw i64 %polly.indvar815, -32
  %smin1112 = call i64 @llvm.smin.i64(i64 %206, i64 -968)
  %207 = add nsw i64 %smin1112, 1000
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -968)
  %208 = shl nsw i64 %polly.indvar815, 5
  %209 = add nsw i64 %smin1046, 999
  br label %polly.loop_header818

polly.loop_exit820:                               ; preds = %polly.loop_exit826
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next816, 32
  br i1 %exitcond1052.not, label %polly.loop_exit814, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_exit826, %polly.loop_header812
  %polly.indvar821 = phi i64 [ 0, %polly.loop_header812 ], [ %polly.indvar_next822, %polly.loop_exit826 ]
  %210 = add nuw nsw i64 %polly.indvar821, %204
  %211 = trunc i64 %210 to i32
  %212 = mul nuw nsw i64 %210, 8000
  %min.iters.check1113 = icmp eq i64 %207, 0
  br i1 %min.iters.check1113, label %polly.loop_header824, label %vector.ph1114

vector.ph1114:                                    ; preds = %polly.loop_header818
  %broadcast.splatinsert1123 = insertelement <4 x i64> poison, i64 %208, i32 0
  %broadcast.splat1124 = shufflevector <4 x i64> %broadcast.splatinsert1123, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %vector.ph1114
  %index1117 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1118, %vector.body1111 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1114 ], [ %vec.ind.next1122, %vector.body1111 ]
  %213 = add nuw nsw <4 x i64> %vec.ind1121, %broadcast.splat1124
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat1126, %214
  %216 = add <4 x i32> %215, <i32 2, i32 2, i32 2, i32 2>
  %217 = urem <4 x i32> %216, <i32 1000, i32 1000, i32 1000, i32 1000>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !96, !noalias !99
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next1118, %207
  br i1 %225, label %polly.loop_exit826, label %vector.body1111, !llvm.loop !100

polly.loop_exit826:                               ; preds = %vector.body1111, %polly.loop_header824
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar821, %205
  br i1 %exitcond1051.not, label %polly.loop_exit820, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_header818, %polly.loop_header824
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_header824 ], [ 0, %polly.loop_header818 ]
  %226 = add nuw nsw i64 %polly.indvar827, %208
  %227 = trunc i64 %226 to i32
  %228 = mul i32 %227, %211
  %229 = add i32 %228, 2
  %230 = urem i32 %229, 1000
  %p_conv10.i = sitofp i32 %230 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %231 = shl i64 %226, 3
  %232 = add nuw nsw i64 %231, %212
  %scevgep830 = getelementptr i8, i8* %call2, i64 %232
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div12.i, double* %scevgep830831, align 8, !alias.scope !96, !noalias !99
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar827, %209
  br i1 %exitcond1047.not, label %polly.loop_exit826, label %polly.loop_header824, !llvm.loop !101

polly.loop_header832:                             ; preds = %polly.loop_exit814, %polly.loop_exit840
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit840 ], [ 0, %polly.loop_exit814 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_exit814 ]
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 -1168)
  %233 = shl nsw i64 %polly.indvar835, 5
  %234 = add nsw i64 %smin1040, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %exitcond1043.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1043.not, label %init_array.exit, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %235 = mul nsw i64 %polly.indvar841, -32
  %smin1130 = call i64 @llvm.smin.i64(i64 %235, i64 -968)
  %236 = add nsw i64 %smin1130, 1000
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -968)
  %237 = shl nsw i64 %polly.indvar841, 5
  %238 = add nsw i64 %smin1036, 999
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1042.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1042.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %polly.indvar847 = phi i64 [ 0, %polly.loop_header838 ], [ %polly.indvar_next848, %polly.loop_exit852 ]
  %239 = add nuw nsw i64 %polly.indvar847, %233
  %240 = trunc i64 %239 to i32
  %241 = mul nuw nsw i64 %239, 8000
  %min.iters.check1131 = icmp eq i64 %236, 0
  br i1 %min.iters.check1131, label %polly.loop_header850, label %vector.ph1132

vector.ph1132:                                    ; preds = %polly.loop_header844
  %broadcast.splatinsert1141 = insertelement <4 x i64> poison, i64 %237, i32 0
  %broadcast.splat1142 = shufflevector <4 x i64> %broadcast.splatinsert1141, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %vector.ph1132
  %index1135 = phi i64 [ 0, %vector.ph1132 ], [ %index.next1136, %vector.body1129 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1132 ], [ %vec.ind.next1140, %vector.body1129 ]
  %242 = add nuw nsw <4 x i64> %vec.ind1139, %broadcast.splat1142
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat1144, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 1200, i32 1200, i32 1200, i32 1200>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add nuw nsw i64 %250, %241
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !95, !noalias !102
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next1136, %236
  br i1 %254, label %polly.loop_exit852, label %vector.body1129, !llvm.loop !103

polly.loop_exit852:                               ; preds = %vector.body1129, %polly.loop_header850
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar847, %234
  br i1 %exitcond1041.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_header844, %polly.loop_header850
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_header850 ], [ 0, %polly.loop_header844 ]
  %255 = add nuw nsw i64 %polly.indvar853, %237
  %256 = trunc i64 %255 to i32
  %257 = mul i32 %256, %240
  %258 = add i32 %257, 1
  %259 = urem i32 %258, 1200
  %p_conv.i = sitofp i32 %259 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %260 = shl i64 %255, 3
  %261 = add nuw nsw i64 %260, %241
  %scevgep857 = getelementptr i8, i8* %call1, i64 %261
  %scevgep857858 = bitcast i8* %scevgep857 to double*
  store double %p_div.i, double* %scevgep857858, align 8, !alias.scope !95, !noalias !102
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar853, %238
  br i1 %exitcond1037.not, label %polly.loop_exit852, label %polly.loop_header850, !llvm.loop !104
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
!43 = distinct !{!43, !12, !23, !44, !45, !46, !25, !47, !50}
!44 = !{!"llvm.loop.id", !"i"}
!45 = !{!"llvm.loop.tile.enable", i1 true}
!46 = !{!"llvm.loop.tile.depth", i32 3}
!47 = !{!"llvm.loop.tile.followup_floor", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i1"}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !52}
!52 = !{!"llvm.loop.id", !"i2"}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !4, i64 0}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !62, !"polly.alias.scope.MemRef_call"}
!62 = distinct !{!62, !"polly.alias.scope.domain"}
!63 = !{!64, !65, !66}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !62, !"polly.alias.scope.Packed_MemRef_call1"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!61, !65, !66}
!71 = !{!61, !64, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !69, !13}
!80 = !{!72, !76, !77}
!81 = !{!72, !75, !77}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !69, !13}
!90 = !{!82, !86, !87}
!91 = !{!82, !85, !87}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !69, !13}
!99 = !{!95, !92}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !69, !13}
!102 = !{!96, !92}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !69, !13}
