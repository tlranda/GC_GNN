; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4729.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4729.c"
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
  %scevgep1081 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1080 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1079 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1078 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1078, %scevgep1081
  %bound1 = icmp ult i8* %scevgep1080, %scevgep1079
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
  br i1 %exitcond18.not.i, label %vector.ph1085, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1085:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1092 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1093 = shufflevector <4 x i64> %broadcast.splatinsert1092, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %vector.ph1085
  %index1086 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1085 ], [ %vec.ind.next1091, %vector.body1084 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1090, %broadcast.splat1093
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv7.i, i64 %index1086
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1087, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1084, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1084
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1085, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit842
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start468, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1147 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1147, label %for.body3.i46.preheader1221, label %vector.ph1148

vector.ph1148:                                    ; preds = %for.body3.i46.preheader
  %n.vec1150 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1152, %vector.body1146 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %index1151
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1152 = add i64 %index1151, 4
  %46 = icmp eq i64 %index.next1152, %n.vec1150
  br i1 %46, label %middle.block1144, label %vector.body1146, !llvm.loop !18

middle.block1144:                                 ; preds = %vector.body1146
  %cmp.n1154 = icmp eq i64 %indvars.iv21.i, %n.vec1150
  br i1 %cmp.n1154, label %for.inc6.i, label %for.body3.i46.preheader1221

for.body3.i46.preheader1221:                      ; preds = %for.body3.i46.preheader, %middle.block1144
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1150, %middle.block1144 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1221, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1221 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1144, %for.cond1.preheader.i45
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
  %min.iters.check1170 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1170, label %for.body3.i60.preheader1220, label %vector.ph1171

vector.ph1171:                                    ; preds = %for.body3.i60.preheader
  %n.vec1173 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1175, %vector.body1169 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1174
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1178 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1178, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1175 = add i64 %index1174, 4
  %57 = icmp eq i64 %index.next1175, %n.vec1173
  br i1 %57, label %middle.block1167, label %vector.body1169, !llvm.loop !55

middle.block1167:                                 ; preds = %vector.body1169
  %cmp.n1177 = icmp eq i64 %indvars.iv21.i52, %n.vec1173
  br i1 %cmp.n1177, label %for.inc6.i63, label %for.body3.i60.preheader1220

for.body3.i60.preheader1220:                      ; preds = %for.body3.i60.preheader, %middle.block1167
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1173, %middle.block1167 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1220, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1220 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1167, %for.cond1.preheader.i54
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
  %min.iters.check1196 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1196, label %for.body3.i99.preheader1219, label %vector.ph1197

vector.ph1197:                                    ; preds = %for.body3.i99.preheader
  %n.vec1199 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1197
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1201, %vector.body1195 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1200
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1204 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1204, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1201 = add i64 %index1200, 4
  %68 = icmp eq i64 %index.next1201, %n.vec1199
  br i1 %68, label %middle.block1193, label %vector.body1195, !llvm.loop !57

middle.block1193:                                 ; preds = %vector.body1195
  %cmp.n1203 = icmp eq i64 %indvars.iv21.i91, %n.vec1199
  br i1 %cmp.n1203, label %for.inc6.i102, label %for.body3.i99.preheader1219

for.body3.i99.preheader1219:                      ; preds = %for.body3.i99.preheader, %middle.block1193
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1199, %middle.block1193 ]
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

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1193, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1208 = phi i64 [ %indvar.next1209, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1208, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1210 = icmp ult i64 %88, 4
  br i1 %min.iters.check1210, label %polly.loop_header191.preheader, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header
  %n.vec1213 = and i64 %88, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1207 ]
  %90 = shl nuw nsw i64 %index1214, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1215 = add i64 %index1214, 4
  %95 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %95, label %middle.block1205, label %vector.body1207, !llvm.loop !69

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1217 = icmp eq i64 %88, %n.vec1213
  br i1 %cmp.n1217, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1205
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1213, %middle.block1205 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1205
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1209 = add i64 %indvar1208, 1
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
  %indvars.iv986 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next987, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar202, 2
  %smin988 = call i64 @llvm.smin.i64(i64 %indvars.iv986, i64 -1136)
  %98 = shl nsw i64 %polly.indvar202, 6
  %99 = add nsw i64 %smin988, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next987 = add nsw i64 %indvars.iv986, -64
  %exitcond992.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond992.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %100 = shl nsw i64 %polly.indvar208, 2
  %101 = or i64 %100, 1
  %102 = or i64 %100, 2
  %103 = or i64 %100, 3
  %104 = shl i64 %polly.indvar208, 5
  %105 = shl i64 %polly.indvar208, 5
  %106 = or i64 %105, 8
  %107 = shl i64 %polly.indvar208, 5
  %108 = or i64 %107, 16
  %109 = shl i64 %polly.indvar208, 5
  %110 = or i64 %109, 24
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next209, 250
  br i1 %exitcond991.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %111 = shl nsw i64 %polly.indvar214, 8
  %112 = sub nsw i64 %98, %111
  %113 = add nuw nsw i64 %111, 256
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -256
  %exitcond990.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond990.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit248 ], [ %indvars.iv977, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin983 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 255)
  %114 = add nsw i64 %polly.indvar220, %112
  %polly.loop_guard1073 = icmp sgt i64 %114, -1
  %115 = add nuw nsw i64 %polly.indvar220, %98
  %.not = icmp ult i64 %115, %113
  %polly.access.mul.call1240 = mul nuw nsw i64 %115, 1000
  %116 = add nuw nsw i64 %polly.access.mul.call1240, %100
  br i1 %polly.loop_guard1073, label %polly.loop_header229.us, label %polly.loop_header217.split

polly.loop_header229.us:                          ; preds = %polly.loop_header217, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header217 ]
  %117 = add nuw nsw i64 %polly.indvar232.us, %111
  %polly.access.mul.call1236.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %100, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar232.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond981.not = icmp eq i64 %polly.indvar232.us, %smin983
  br i1 %exitcond981.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1659, i64 %116
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %114
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.loop_header229.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.loop_header229.us.1.preheader, label %polly.then.us

polly.loop_header229.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header229.us.1

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1659, i64 %116
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %114
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.access.add.call1241.1 = or i64 %116, 1
  %polly.access.call1242.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.1
  %polly.access.call1242.load.1 = load double, double* %polly.access.call1242.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.1 = add nsw i64 %114, 1200
  %polly.access.Packed_MemRef_call1245.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.1
  store double %polly.access.call1242.load.1, double* %polly.access.Packed_MemRef_call1245.1, align 8
  %polly.access.add.call1241.2 = or i64 %116, 2
  %polly.access.call1242.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.2
  %polly.access.call1242.load.2 = load double, double* %polly.access.call1242.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.2 = add nsw i64 %114, 2400
  %polly.access.Packed_MemRef_call1245.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.2
  store double %polly.access.call1242.load.2, double* %polly.access.Packed_MemRef_call1245.2, align 8
  %polly.access.add.call1241.3 = or i64 %116, 3
  %polly.access.call1242.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.3
  %polly.access.call1242.load.3 = load double, double* %polly.access.call1242.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.3 = add nsw i64 %114, 3600
  %polly.access.Packed_MemRef_call1245.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.3
  store double %polly.access.call1242.load.3, double* %polly.access.Packed_MemRef_call1245.3, align 8
  br label %polly.loop_exit248

polly.loop_exit248:                               ; preds = %polly.loop_header253.us.3, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %exitcond989.not = icmp eq i64 %polly.indvar220, %99
  br i1 %exitcond989.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %118 = mul nuw nsw i64 %115, 8000
  %119 = mul nuw nsw i64 %115, 9600
  br i1 %polly.loop_guard1073, label %polly.loop_header246.us.preheader, label %polly.loop_exit248

polly.loop_header246.us.preheader:                ; preds = %polly.loop_header246.preheader
  %120 = add nuw nsw i64 %104, %118
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %120
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %114
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us.preheader, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us.preheader ]
  %121 = add nuw nsw i64 %polly.indvar257.us, %111
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar257.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %122 = mul nuw nsw i64 %121, 8000
  %123 = add nuw nsw i64 %122, %104
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %123
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %124 = shl i64 %121, 3
  %125 = add nuw nsw i64 %124, %119
  %scevgep274.us = getelementptr i8, i8* %call, i64 %125
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar257.us, %smin983
  br i1 %exitcond984.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %126 = add nuw nsw i64 %106, %118
  %scevgep264.us.1 = getelementptr i8, i8* %call2, i64 %126
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us.1 = add nsw i64 %114, 1200
  %polly.access.Packed_MemRef_call1272.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.1
  %_p_scalar_273.us.1 = load double, double* %polly.access.Packed_MemRef_call1272.us.1, align 8
  br label %polly.loop_header253.us.1

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1182 = phi i64 [ %indvar.next1183, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %127 = add i64 %indvar1182, 1
  %128 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %128
  %min.iters.check1184 = icmp ult i64 %127, 4
  br i1 %min.iters.check1184, label %polly.loop_header371.preheader, label %vector.ph1185

vector.ph1185:                                    ; preds = %polly.loop_header365
  %n.vec1187 = and i64 %127, -4
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1185
  %index1188 = phi i64 [ 0, %vector.ph1185 ], [ %index.next1189, %vector.body1181 ]
  %129 = shl nuw nsw i64 %index1188, 3
  %130 = getelementptr i8, i8* %scevgep377, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1192 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !74, !noalias !76
  %132 = fmul fast <4 x double> %wide.load1192, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %132, <4 x double>* %133, align 8, !alias.scope !74, !noalias !76
  %index.next1189 = add i64 %index1188, 4
  %134 = icmp eq i64 %index.next1189, %n.vec1187
  br i1 %134, label %middle.block1179, label %vector.body1181, !llvm.loop !80

middle.block1179:                                 ; preds = %vector.body1181
  %cmp.n1191 = icmp eq i64 %127, %n.vec1187
  br i1 %cmp.n1191, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1179
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1187, %middle.block1179 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1179
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1183 = add i64 %indvar1182, 1
  br i1 %exitcond1016.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %135 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %135
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1015.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !81

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %indvars.iv1008 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next1009, %polly.loop_exit389 ]
  %indvars.iv996 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next997, %polly.loop_exit389 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit389 ]
  %136 = lshr i64 %polly.indvar384, 2
  %smin1010 = call i64 @llvm.smin.i64(i64 %indvars.iv1008, i64 -1136)
  %137 = shl nsw i64 %polly.indvar384, 6
  %138 = add nsw i64 %smin1010, 1199
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit396
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 64
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -64
  %exitcond1014.not = icmp eq i64 %polly.indvar_next385, 19
  br i1 %exitcond1014.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit396, %polly.loop_header381
  %polly.indvar390 = phi i64 [ 0, %polly.loop_header381 ], [ %polly.indvar_next391, %polly.loop_exit396 ]
  %139 = shl nsw i64 %polly.indvar390, 2
  %140 = or i64 %139, 1
  %141 = or i64 %139, 2
  %142 = or i64 %139, 3
  %143 = shl i64 %polly.indvar390, 5
  %144 = shl i64 %polly.indvar390, 5
  %145 = or i64 %144, 8
  %146 = shl i64 %polly.indvar390, 5
  %147 = or i64 %146, 16
  %148 = shl i64 %polly.indvar390, 5
  %149 = or i64 %148, 24
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit402
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next391, 250
  br i1 %exitcond1013.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header387
  %indvars.iv998 = phi i64 [ %indvars.iv.next999, %polly.loop_exit402 ], [ %indvars.iv996, %polly.loop_header387 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header387 ]
  %150 = shl nsw i64 %polly.indvar397, 8
  %151 = sub nsw i64 %137, %150
  %152 = add nuw nsw i64 %150, 256
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit437
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, -256
  %exitcond1012.not = icmp eq i64 %polly.indvar397, %136
  br i1 %exitcond1012.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit437, %polly.loop_header394
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit437 ], [ %indvars.iv998, %polly.loop_header394 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit437 ], [ 0, %polly.loop_header394 ]
  %smin1005 = call i64 @llvm.smin.i64(i64 %indvars.iv1000, i64 255)
  %153 = add nsw i64 %polly.indvar403, %151
  %polly.loop_guard4161074 = icmp sgt i64 %153, -1
  %154 = add nuw nsw i64 %polly.indvar403, %137
  %.not861 = icmp ult i64 %154, %152
  %polly.access.mul.call1429 = mul nuw nsw i64 %154, 1000
  %155 = add nuw nsw i64 %polly.access.mul.call1429, %139
  br i1 %polly.loop_guard4161074, label %polly.loop_header413.us, label %polly.loop_header400.split

polly.loop_header413.us:                          ; preds = %polly.loop_header400, %polly.loop_header413.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.loop_header413.us ], [ 0, %polly.loop_header400 ]
  %156 = add nuw nsw i64 %polly.indvar417.us, %150
  %polly.access.mul.call1421.us = mul nuw nsw i64 %156, 1000
  %polly.access.add.call1422.us = add nuw nsw i64 %139, %polly.access.mul.call1421.us
  %polly.access.call1423.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us
  %polly.access.call1423.load.us = load double, double* %polly.access.call1423.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.indvar417.us
  store double %polly.access.call1423.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar417.us, %smin1005
  br i1 %exitcond1003.not, label %polly.cond424.loopexit.us, label %polly.loop_header413.us

polly.then426.us:                                 ; preds = %polly.cond424.loopexit.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1659, i64 %155
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1282434.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %153
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1282434.us, align 8
  br label %polly.loop_header413.us.1.preheader

polly.cond424.loopexit.us:                        ; preds = %polly.loop_header413.us
  br i1 %.not861, label %polly.loop_header413.us.1.preheader, label %polly.then426.us

polly.loop_header413.us.1.preheader:              ; preds = %polly.then426.us, %polly.cond424.loopexit.us
  br label %polly.loop_header413.us.1

polly.loop_header400.split:                       ; preds = %polly.loop_header400
  br i1 %.not861, label %polly.loop_exit437, label %polly.loop_header406.preheader

polly.loop_header406.preheader:                   ; preds = %polly.loop_header400.split
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1659, i64 %155
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1282434 = getelementptr double, double* %Packed_MemRef_call1282, i64 %153
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1282434, align 8
  %polly.access.add.call1430.1 = or i64 %155, 1
  %polly.access.call1431.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.1
  %polly.access.call1431.load.1 = load double, double* %polly.access.call1431.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.1 = add nsw i64 %153, 1200
  %polly.access.Packed_MemRef_call1282434.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.1
  store double %polly.access.call1431.load.1, double* %polly.access.Packed_MemRef_call1282434.1, align 8
  %polly.access.add.call1430.2 = or i64 %155, 2
  %polly.access.call1431.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.2
  %polly.access.call1431.load.2 = load double, double* %polly.access.call1431.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.2 = add nsw i64 %153, 2400
  %polly.access.Packed_MemRef_call1282434.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.2
  store double %polly.access.call1431.load.2, double* %polly.access.Packed_MemRef_call1282434.2, align 8
  %polly.access.add.call1430.3 = or i64 %155, 3
  %polly.access.call1431.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.3
  %polly.access.call1431.load.3 = load double, double* %polly.access.call1431.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.3 = add nsw i64 %153, 3600
  %polly.access.Packed_MemRef_call1282434.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.3
  store double %polly.access.call1431.load.3, double* %polly.access.Packed_MemRef_call1282434.3, align 8
  br label %polly.loop_exit437

polly.loop_exit437:                               ; preds = %polly.loop_header442.us.3, %polly.loop_header400.split, %polly.loop_header406.preheader, %polly.loop_header435.preheader
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar403, %138
  br i1 %exitcond1011.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header435.preheader:                   ; preds = %polly.cond424.loopexit.us.3, %polly.then426.us.3
  %157 = mul nuw nsw i64 %154, 8000
  %158 = mul nuw nsw i64 %154, 9600
  br i1 %polly.loop_guard4161074, label %polly.loop_header435.us.preheader, label %polly.loop_exit437

polly.loop_header435.us.preheader:                ; preds = %polly.loop_header435.preheader
  %159 = add nuw nsw i64 %143, %157
  %scevgep453.us = getelementptr i8, i8* %call2, i64 %159
  %scevgep453454.us = bitcast i8* %scevgep453.us to double*
  %_p_scalar_455.us = load double, double* %scevgep453454.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.Packed_MemRef_call1282461.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %153
  %_p_scalar_462.us = load double, double* %polly.access.Packed_MemRef_call1282461.us, align 8
  br label %polly.loop_header442.us

polly.loop_header442.us:                          ; preds = %polly.loop_header435.us.preheader, %polly.loop_header442.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_header442.us ], [ 0, %polly.loop_header435.us.preheader ]
  %160 = add nuw nsw i64 %polly.indvar446.us, %150
  %polly.access.Packed_MemRef_call1282451.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.indvar446.us
  %_p_scalar_452.us = load double, double* %polly.access.Packed_MemRef_call1282451.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_455.us, %_p_scalar_452.us
  %161 = mul nuw nsw i64 %160, 8000
  %162 = add nuw nsw i64 %161, %143
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %162
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_462.us, %_p_scalar_458.us
  %163 = shl i64 %160, 3
  %164 = add nuw nsw i64 %163, %158
  %scevgep463.us = getelementptr i8, i8* %call, i64 %164
  %scevgep463464.us = bitcast i8* %scevgep463.us to double*
  %_p_scalar_465.us = load double, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_465.us
  store double %p_add42.i79.us, double* %scevgep463464.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar446.us, %smin1005
  br i1 %exitcond1006.not, label %polly.loop_exit444.loopexit.us, label %polly.loop_header442.us

polly.loop_exit444.loopexit.us:                   ; preds = %polly.loop_header442.us
  %165 = add nuw nsw i64 %145, %157
  %scevgep453.us.1 = getelementptr i8, i8* %call2, i64 %165
  %scevgep453454.us.1 = bitcast i8* %scevgep453.us.1 to double*
  %_p_scalar_455.us.1 = load double, double* %scevgep453454.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us.1 = add nsw i64 %153, 1200
  %polly.access.Packed_MemRef_call1282461.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.1
  %_p_scalar_462.us.1 = load double, double* %polly.access.Packed_MemRef_call1282461.us.1, align 8
  br label %polly.loop_header442.us.1

polly.start468:                                   ; preds = %init_array.exit
  %malloccall470 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header554

polly.exiting469:                                 ; preds = %polly.loop_exit578
  tail call void @free(i8* %malloccall470)
  br label %kernel_syr2k.exit

polly.loop_header554:                             ; preds = %polly.loop_exit562, %polly.start468
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit562 ], [ 0, %polly.start468 ]
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_exit562 ], [ 1, %polly.start468 ]
  %166 = add i64 %indvar, 1
  %167 = mul nuw nsw i64 %polly.indvar557, 9600
  %scevgep566 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1158 = icmp ult i64 %166, 4
  br i1 %min.iters.check1158, label %polly.loop_header560.preheader, label %vector.ph1159

vector.ph1159:                                    ; preds = %polly.loop_header554
  %n.vec1161 = and i64 %166, -4
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1159
  %index1162 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1163, %vector.body1157 ]
  %168 = shl nuw nsw i64 %index1162, 3
  %169 = getelementptr i8, i8* %scevgep566, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1166 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !84, !noalias !86
  %171 = fmul fast <4 x double> %wide.load1166, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !84, !noalias !86
  %index.next1163 = add i64 %index1162, 4
  %173 = icmp eq i64 %index.next1163, %n.vec1161
  br i1 %173, label %middle.block1155, label %vector.body1157, !llvm.loop !90

middle.block1155:                                 ; preds = %vector.body1157
  %cmp.n1165 = icmp eq i64 %166, %n.vec1161
  br i1 %cmp.n1165, label %polly.loop_exit562, label %polly.loop_header560.preheader

polly.loop_header560.preheader:                   ; preds = %polly.loop_header554, %middle.block1155
  %polly.indvar563.ph = phi i64 [ 0, %polly.loop_header554 ], [ %n.vec1161, %middle.block1155 ]
  br label %polly.loop_header560

polly.loop_exit562:                               ; preds = %polly.loop_header560, %middle.block1155
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next558, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1038.not, label %polly.loop_header570.preheader, label %polly.loop_header554

polly.loop_header570.preheader:                   ; preds = %polly.loop_exit562
  %Packed_MemRef_call1471 = bitcast i8* %malloccall470 to double*
  br label %polly.loop_header570

polly.loop_header560:                             ; preds = %polly.loop_header560.preheader, %polly.loop_header560
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_header560 ], [ %polly.indvar563.ph, %polly.loop_header560.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar563, 3
  %scevgep567 = getelementptr i8, i8* %scevgep566, i64 %174
  %scevgep567568 = bitcast i8* %scevgep567 to double*
  %_p_scalar_569 = load double, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_569, 1.200000e+00
  store double %p_mul.i, double* %scevgep567568, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next564, %polly.indvar557
  br i1 %exitcond1037.not, label %polly.loop_exit562, label %polly.loop_header560, !llvm.loop !91

polly.loop_header570:                             ; preds = %polly.loop_header570.preheader, %polly.loop_exit578
  %indvars.iv1030 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1031, %polly.loop_exit578 ]
  %indvars.iv1018 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %indvars.iv.next1019, %polly.loop_exit578 ]
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header570.preheader ], [ %polly.indvar_next574, %polly.loop_exit578 ]
  %175 = lshr i64 %polly.indvar573, 2
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -1136)
  %176 = shl nsw i64 %polly.indvar573, 6
  %177 = add nsw i64 %smin1032, 1199
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_exit585
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 64
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -64
  %exitcond1036.not = icmp eq i64 %polly.indvar_next574, 19
  br i1 %exitcond1036.not, label %polly.exiting469, label %polly.loop_header570

polly.loop_header576:                             ; preds = %polly.loop_exit585, %polly.loop_header570
  %polly.indvar579 = phi i64 [ 0, %polly.loop_header570 ], [ %polly.indvar_next580, %polly.loop_exit585 ]
  %178 = shl nsw i64 %polly.indvar579, 2
  %179 = or i64 %178, 1
  %180 = or i64 %178, 2
  %181 = or i64 %178, 3
  %182 = shl i64 %polly.indvar579, 5
  %183 = shl i64 %polly.indvar579, 5
  %184 = or i64 %183, 8
  %185 = shl i64 %polly.indvar579, 5
  %186 = or i64 %185, 16
  %187 = shl i64 %polly.indvar579, 5
  %188 = or i64 %187, 24
  br label %polly.loop_header583

polly.loop_exit585:                               ; preds = %polly.loop_exit591
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next580, 250
  br i1 %exitcond1035.not, label %polly.loop_exit578, label %polly.loop_header576

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header576
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit591 ], [ %indvars.iv1018, %polly.loop_header576 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 0, %polly.loop_header576 ]
  %189 = shl nsw i64 %polly.indvar586, 8
  %190 = sub nsw i64 %176, %189
  %191 = add nuw nsw i64 %189, 256
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_exit626
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -256
  %exitcond1034.not = icmp eq i64 %polly.indvar586, %175
  br i1 %exitcond1034.not, label %polly.loop_exit585, label %polly.loop_header583

polly.loop_header589:                             ; preds = %polly.loop_exit626, %polly.loop_header583
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit626 ], [ %indvars.iv1020, %polly.loop_header583 ]
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_exit626 ], [ 0, %polly.loop_header583 ]
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1022, i64 255)
  %192 = add nsw i64 %polly.indvar592, %190
  %polly.loop_guard6051075 = icmp sgt i64 %192, -1
  %193 = add nuw nsw i64 %polly.indvar592, %176
  %.not862 = icmp ult i64 %193, %191
  %polly.access.mul.call1618 = mul nuw nsw i64 %193, 1000
  %194 = add nuw nsw i64 %polly.access.mul.call1618, %178
  br i1 %polly.loop_guard6051075, label %polly.loop_header602.us, label %polly.loop_header589.split

polly.loop_header602.us:                          ; preds = %polly.loop_header589, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header589 ]
  %195 = add nuw nsw i64 %polly.indvar606.us, %189
  %polly.access.mul.call1610.us = mul nuw nsw i64 %195, 1000
  %polly.access.add.call1611.us = add nuw nsw i64 %178, %polly.access.mul.call1610.us
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1471.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.indvar606.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1471.us, align 8
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar606.us, %smin1027
  br i1 %exitcond1025.not, label %polly.cond613.loopexit.us, label %polly.loop_header602.us

polly.then615.us:                                 ; preds = %polly.cond613.loopexit.us
  %polly.access.call1620.us = getelementptr double, double* %polly.access.cast.call1659, i64 %194
  %polly.access.call1620.load.us = load double, double* %polly.access.call1620.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1471623.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %192
  store double %polly.access.call1620.load.us, double* %polly.access.Packed_MemRef_call1471623.us, align 8
  br label %polly.loop_header602.us.1.preheader

polly.cond613.loopexit.us:                        ; preds = %polly.loop_header602.us
  br i1 %.not862, label %polly.loop_header602.us.1.preheader, label %polly.then615.us

polly.loop_header602.us.1.preheader:              ; preds = %polly.then615.us, %polly.cond613.loopexit.us
  br label %polly.loop_header602.us.1

polly.loop_header589.split:                       ; preds = %polly.loop_header589
  br i1 %.not862, label %polly.loop_exit626, label %polly.loop_header595.preheader

polly.loop_header595.preheader:                   ; preds = %polly.loop_header589.split
  %polly.access.call1620 = getelementptr double, double* %polly.access.cast.call1659, i64 %194
  %polly.access.call1620.load = load double, double* %polly.access.call1620, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1471623 = getelementptr double, double* %Packed_MemRef_call1471, i64 %192
  store double %polly.access.call1620.load, double* %polly.access.Packed_MemRef_call1471623, align 8
  %polly.access.add.call1619.1 = or i64 %194, 1
  %polly.access.call1620.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.1
  %polly.access.call1620.load.1 = load double, double* %polly.access.call1620.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.1 = add nsw i64 %192, 1200
  %polly.access.Packed_MemRef_call1471623.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.1
  store double %polly.access.call1620.load.1, double* %polly.access.Packed_MemRef_call1471623.1, align 8
  %polly.access.add.call1619.2 = or i64 %194, 2
  %polly.access.call1620.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.2
  %polly.access.call1620.load.2 = load double, double* %polly.access.call1620.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.2 = add nsw i64 %192, 2400
  %polly.access.Packed_MemRef_call1471623.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.2
  store double %polly.access.call1620.load.2, double* %polly.access.Packed_MemRef_call1471623.2, align 8
  %polly.access.add.call1619.3 = or i64 %194, 3
  %polly.access.call1620.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.3
  %polly.access.call1620.load.3 = load double, double* %polly.access.call1620.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.3 = add nsw i64 %192, 3600
  %polly.access.Packed_MemRef_call1471623.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.3
  store double %polly.access.call1620.load.3, double* %polly.access.Packed_MemRef_call1471623.3, align 8
  br label %polly.loop_exit626

polly.loop_exit626:                               ; preds = %polly.loop_header631.us.3, %polly.loop_header589.split, %polly.loop_header595.preheader, %polly.loop_header624.preheader
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar592, %177
  br i1 %exitcond1033.not, label %polly.loop_exit591, label %polly.loop_header589

polly.loop_header624.preheader:                   ; preds = %polly.cond613.loopexit.us.3, %polly.then615.us.3
  %196 = mul nuw nsw i64 %193, 8000
  %197 = mul nuw nsw i64 %193, 9600
  br i1 %polly.loop_guard6051075, label %polly.loop_header624.us.preheader, label %polly.loop_exit626

polly.loop_header624.us.preheader:                ; preds = %polly.loop_header624.preheader
  %198 = add nuw nsw i64 %182, %196
  %scevgep642.us = getelementptr i8, i8* %call2, i64 %198
  %scevgep642643.us = bitcast i8* %scevgep642.us to double*
  %_p_scalar_644.us = load double, double* %scevgep642643.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.Packed_MemRef_call1471650.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %192
  %_p_scalar_651.us = load double, double* %polly.access.Packed_MemRef_call1471650.us, align 8
  br label %polly.loop_header631.us

polly.loop_header631.us:                          ; preds = %polly.loop_header624.us.preheader, %polly.loop_header631.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.loop_header631.us ], [ 0, %polly.loop_header624.us.preheader ]
  %199 = add nuw nsw i64 %polly.indvar635.us, %189
  %polly.access.Packed_MemRef_call1471640.us = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.indvar635.us
  %_p_scalar_641.us = load double, double* %polly.access.Packed_MemRef_call1471640.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_644.us, %_p_scalar_641.us
  %200 = mul nuw nsw i64 %199, 8000
  %201 = add nuw nsw i64 %200, %182
  %scevgep645.us = getelementptr i8, i8* %call2, i64 %201
  %scevgep645646.us = bitcast i8* %scevgep645.us to double*
  %_p_scalar_647.us = load double, double* %scevgep645646.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_651.us, %_p_scalar_647.us
  %202 = shl i64 %199, 3
  %203 = add nuw nsw i64 %202, %197
  %scevgep652.us = getelementptr i8, i8* %call, i64 %203
  %scevgep652653.us = bitcast i8* %scevgep652.us to double*
  %_p_scalar_654.us = load double, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_654.us
  store double %p_add42.i.us, double* %scevgep652653.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar635.us, %smin1027
  br i1 %exitcond1028.not, label %polly.loop_exit633.loopexit.us, label %polly.loop_header631.us

polly.loop_exit633.loopexit.us:                   ; preds = %polly.loop_header631.us
  %204 = add nuw nsw i64 %184, %196
  %scevgep642.us.1 = getelementptr i8, i8* %call2, i64 %204
  %scevgep642643.us.1 = bitcast i8* %scevgep642.us.1 to double*
  %_p_scalar_644.us.1 = load double, double* %scevgep642643.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us.1 = add nsw i64 %192, 1200
  %polly.access.Packed_MemRef_call1471650.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.1
  %_p_scalar_651.us.1 = load double, double* %polly.access.Packed_MemRef_call1471650.us.1, align 8
  br label %polly.loop_header631.us.1

polly.loop_header781:                             ; preds = %entry, %polly.loop_exit789
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit789 ], [ 0, %entry ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %entry ]
  %smin1065 = call i64 @llvm.smin.i64(i64 %indvars.iv1063, i64 -1168)
  %205 = shl nsw i64 %polly.indvar784, 5
  %206 = add nsw i64 %smin1065, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond1068.not, label %polly.loop_header808, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %207 = mul nsw i64 %polly.indvar790, -32
  %smin = call i64 @llvm.smin.i64(i64 %207, i64 -1168)
  %208 = add nsw i64 %smin, 1200
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -1168)
  %209 = shl nsw i64 %polly.indvar790, 5
  %210 = add nsw i64 %smin1061, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1067.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %polly.indvar796 = phi i64 [ 0, %polly.loop_header787 ], [ %polly.indvar_next797, %polly.loop_exit801 ]
  %211 = add nuw nsw i64 %polly.indvar796, %205
  %212 = trunc i64 %211 to i32
  %213 = mul nuw nsw i64 %211, 9600
  %min.iters.check = icmp eq i64 %208, 0
  br i1 %min.iters.check, label %polly.loop_header799, label %vector.ph1097

vector.ph1097:                                    ; preds = %polly.loop_header793
  %broadcast.splatinsert1104 = insertelement <4 x i64> poison, i64 %209, i32 0
  %broadcast.splat1105 = shufflevector <4 x i64> %broadcast.splatinsert1104, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %vector.ph1097
  %index1098 = phi i64 [ 0, %vector.ph1097 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1102 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1097 ], [ %vec.ind.next1103, %vector.body1096 ]
  %214 = add nuw nsw <4 x i64> %vec.ind1102, %broadcast.splat1105
  %215 = trunc <4 x i64> %214 to <4 x i32>
  %216 = mul <4 x i32> %broadcast.splat1107, %215
  %217 = add <4 x i32> %216, <i32 3, i32 3, i32 3, i32 3>
  %218 = urem <4 x i32> %217, <i32 1200, i32 1200, i32 1200, i32 1200>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %221 = extractelement <4 x i64> %214, i32 0
  %222 = shl i64 %221, 3
  %223 = add nuw nsw i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %220, <4 x double>* %225, align 8, !alias.scope !94, !noalias !96
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1103 = add <4 x i64> %vec.ind1102, <i64 4, i64 4, i64 4, i64 4>
  %226 = icmp eq i64 %index.next1099, %208
  br i1 %226, label %polly.loop_exit801, label %vector.body1096, !llvm.loop !99

polly.loop_exit801:                               ; preds = %vector.body1096, %polly.loop_header799
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar796, %206
  br i1 %exitcond1066.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_header793, %polly.loop_header799
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_header799 ], [ 0, %polly.loop_header793 ]
  %227 = add nuw nsw i64 %polly.indvar802, %209
  %228 = trunc i64 %227 to i32
  %229 = mul i32 %228, %212
  %230 = add i32 %229, 3
  %231 = urem i32 %230, 1200
  %p_conv31.i = sitofp i32 %231 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %232 = shl i64 %227, 3
  %233 = add nuw nsw i64 %232, %213
  %scevgep805 = getelementptr i8, i8* %call, i64 %233
  %scevgep805806 = bitcast i8* %scevgep805 to double*
  store double %p_div33.i, double* %scevgep805806, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar802, %210
  br i1 %exitcond1062.not, label %polly.loop_exit801, label %polly.loop_header799, !llvm.loop !100

polly.loop_header808:                             ; preds = %polly.loop_exit789, %polly.loop_exit816
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %polly.indvar811 = phi i64 [ %polly.indvar_next812, %polly.loop_exit816 ], [ 0, %polly.loop_exit789 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1053, i64 -1168)
  %234 = shl nsw i64 %polly.indvar811, 5
  %235 = add nsw i64 %smin1055, 1199
  br label %polly.loop_header814

polly.loop_exit816:                               ; preds = %polly.loop_exit822
  %polly.indvar_next812 = add nuw nsw i64 %polly.indvar811, 1
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -32
  %exitcond1058.not = icmp eq i64 %polly.indvar_next812, 38
  br i1 %exitcond1058.not, label %polly.loop_header834, label %polly.loop_header808

polly.loop_header814:                             ; preds = %polly.loop_exit822, %polly.loop_header808
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_header808 ]
  %236 = mul nsw i64 %polly.indvar817, -32
  %smin1111 = call i64 @llvm.smin.i64(i64 %236, i64 -968)
  %237 = add nsw i64 %smin1111, 1000
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -968)
  %238 = shl nsw i64 %polly.indvar817, 5
  %239 = add nsw i64 %smin1051, 999
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next818, 32
  br i1 %exitcond1057.not, label %polly.loop_exit816, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %polly.indvar823 = phi i64 [ 0, %polly.loop_header814 ], [ %polly.indvar_next824, %polly.loop_exit828 ]
  %240 = add nuw nsw i64 %polly.indvar823, %234
  %241 = trunc i64 %240 to i32
  %242 = mul nuw nsw i64 %240, 8000
  %min.iters.check1112 = icmp eq i64 %237, 0
  br i1 %min.iters.check1112, label %polly.loop_header826, label %vector.ph1113

vector.ph1113:                                    ; preds = %polly.loop_header820
  %broadcast.splatinsert1122 = insertelement <4 x i64> poison, i64 %238, i32 0
  %broadcast.splat1123 = shufflevector <4 x i64> %broadcast.splatinsert1122, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1124 = insertelement <4 x i32> poison, i32 %241, i32 0
  %broadcast.splat1125 = shufflevector <4 x i32> %broadcast.splatinsert1124, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %vector.ph1113
  %index1116 = phi i64 [ 0, %vector.ph1113 ], [ %index.next1117, %vector.body1110 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1113 ], [ %vec.ind.next1121, %vector.body1110 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1120, %broadcast.splat1123
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1125, %244
  %246 = add <4 x i32> %245, <i32 2, i32 2, i32 2, i32 2>
  %247 = urem <4 x i32> %246, <i32 1000, i32 1000, i32 1000, i32 1000>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add nuw nsw i64 %251, %242
  %253 = getelementptr i8, i8* %call2, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !98, !noalias !101
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1117, %237
  br i1 %255, label %polly.loop_exit828, label %vector.body1110, !llvm.loop !102

polly.loop_exit828:                               ; preds = %vector.body1110, %polly.loop_header826
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar823, %235
  br i1 %exitcond1056.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_header820, %polly.loop_header826
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_header826 ], [ 0, %polly.loop_header820 ]
  %256 = add nuw nsw i64 %polly.indvar829, %238
  %257 = trunc i64 %256 to i32
  %258 = mul i32 %257, %241
  %259 = add i32 %258, 2
  %260 = urem i32 %259, 1000
  %p_conv10.i = sitofp i32 %260 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %261 = shl i64 %256, 3
  %262 = add nuw nsw i64 %261, %242
  %scevgep832 = getelementptr i8, i8* %call2, i64 %262
  %scevgep832833 = bitcast i8* %scevgep832 to double*
  store double %p_div12.i, double* %scevgep832833, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar829, %239
  br i1 %exitcond1052.not, label %polly.loop_exit828, label %polly.loop_header826, !llvm.loop !103

polly.loop_header834:                             ; preds = %polly.loop_exit816, %polly.loop_exit842
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit816 ]
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 -1168)
  %263 = shl nsw i64 %polly.indvar837, 5
  %264 = add nsw i64 %smin1045, 1199
  br label %polly.loop_header840

polly.loop_exit842:                               ; preds = %polly.loop_exit848
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next838, 38
  br i1 %exitcond1048.not, label %init_array.exit, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_exit848, %polly.loop_header834
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_header834 ]
  %265 = mul nsw i64 %polly.indvar843, -32
  %smin1129 = call i64 @llvm.smin.i64(i64 %265, i64 -968)
  %266 = add nsw i64 %smin1129, 1000
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 -968)
  %267 = shl nsw i64 %polly.indvar843, 5
  %268 = add nsw i64 %smin1041, 999
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next844, 32
  br i1 %exitcond1047.not, label %polly.loop_exit842, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %polly.indvar849 = phi i64 [ 0, %polly.loop_header840 ], [ %polly.indvar_next850, %polly.loop_exit854 ]
  %269 = add nuw nsw i64 %polly.indvar849, %263
  %270 = trunc i64 %269 to i32
  %271 = mul nuw nsw i64 %269, 8000
  %min.iters.check1130 = icmp eq i64 %266, 0
  br i1 %min.iters.check1130, label %polly.loop_header852, label %vector.ph1131

vector.ph1131:                                    ; preds = %polly.loop_header846
  %broadcast.splatinsert1140 = insertelement <4 x i64> poison, i64 %267, i32 0
  %broadcast.splat1141 = shufflevector <4 x i64> %broadcast.splatinsert1140, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %vector.ph1131
  %index1134 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1135, %vector.body1128 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1131 ], [ %vec.ind.next1139, %vector.body1128 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1138, %broadcast.splat1141
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1143, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 1200, i32 1200, i32 1200, i32 1200>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add nuw nsw i64 %280, %271
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !97, !noalias !104
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1135, %266
  br i1 %284, label %polly.loop_exit854, label %vector.body1128, !llvm.loop !105

polly.loop_exit854:                               ; preds = %vector.body1128, %polly.loop_header852
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar849, %264
  br i1 %exitcond1046.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_header846, %polly.loop_header852
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_header852 ], [ 0, %polly.loop_header846 ]
  %285 = add nuw nsw i64 %polly.indvar855, %267
  %286 = trunc i64 %285 to i32
  %287 = mul i32 %286, %270
  %288 = add i32 %287, 1
  %289 = urem i32 %288, 1200
  %p_conv.i = sitofp i32 %289 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %290 = shl i64 %285, 3
  %291 = add nuw nsw i64 %290, %271
  %scevgep859 = getelementptr i8, i8* %call1, i64 %291
  %scevgep859860 = bitcast i8* %scevgep859 to double*
  store double %p_div.i, double* %scevgep859860, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar855, %268
  br i1 %exitcond1042.not, label %polly.loop_exit854, label %polly.loop_header852, !llvm.loop !106

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1.preheader, %polly.loop_header229.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header229.us.1.preheader ]
  %292 = add nuw nsw i64 %polly.indvar232.us.1, %111
  %polly.access.mul.call1236.us.1 = mul nuw nsw i64 %292, 1000
  %polly.access.add.call1237.us.1 = add nuw nsw i64 %101, %polly.access.mul.call1236.us.1
  %polly.access.call1238.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.1
  %polly.access.call1238.load.us.1 = load double, double* %polly.access.call1238.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1238.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond981.1.not = icmp eq i64 %polly.indvar232.us.1, %smin983
  br i1 %exitcond981.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header229.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header229.us.1
  br i1 %.not, label %polly.loop_header229.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1241.us.1 = or i64 %116, 1
  %polly.access.call1242.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.1
  %polly.access.call1242.load.us.1 = load double, double* %polly.access.call1242.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.us.1 = add nsw i64 %114, 1200
  %polly.access.Packed_MemRef_call1245.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.1
  store double %polly.access.call1242.load.us.1, double* %polly.access.Packed_MemRef_call1245.us.1, align 8
  br label %polly.loop_header229.us.2.preheader

polly.loop_header229.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2.preheader, %polly.loop_header229.us.2
  %polly.indvar232.us.2 = phi i64 [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ], [ 0, %polly.loop_header229.us.2.preheader ]
  %293 = add nuw nsw i64 %polly.indvar232.us.2, %111
  %polly.access.mul.call1236.us.2 = mul nuw nsw i64 %293, 1000
  %polly.access.add.call1237.us.2 = add nuw nsw i64 %102, %polly.access.mul.call1236.us.2
  %polly.access.call1238.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.2
  %polly.access.call1238.load.us.2 = load double, double* %polly.access.call1238.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1238.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond981.2.not = icmp eq i64 %polly.indvar232.us.2, %smin983
  br i1 %exitcond981.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header229.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header229.us.2
  br i1 %.not, label %polly.loop_header229.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1241.us.2 = or i64 %116, 2
  %polly.access.call1242.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.2
  %polly.access.call1242.load.us.2 = load double, double* %polly.access.call1242.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.us.2 = add nsw i64 %114, 2400
  %polly.access.Packed_MemRef_call1245.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.2
  store double %polly.access.call1242.load.us.2, double* %polly.access.Packed_MemRef_call1245.us.2, align 8
  br label %polly.loop_header229.us.3.preheader

polly.loop_header229.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3.preheader, %polly.loop_header229.us.3
  %polly.indvar232.us.3 = phi i64 [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ], [ 0, %polly.loop_header229.us.3.preheader ]
  %294 = add nuw nsw i64 %polly.indvar232.us.3, %111
  %polly.access.mul.call1236.us.3 = mul nuw nsw i64 %294, 1000
  %polly.access.add.call1237.us.3 = add nuw nsw i64 %103, %polly.access.mul.call1236.us.3
  %polly.access.call1238.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1237.us.3
  %polly.access.call1238.load.us.3 = load double, double* %polly.access.call1238.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1238.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond981.3.not = icmp eq i64 %polly.indvar232.us.3, %smin983
  br i1 %exitcond981.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header229.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header229.us.3
  br i1 %.not, label %polly.loop_header246.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1241.us.3 = or i64 %116, 3
  %polly.access.call1242.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1241.us.3
  %polly.access.call1242.load.us.3 = load double, double* %polly.access.call1242.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1244.us.3 = add nsw i64 %114, 3600
  %polly.access.Packed_MemRef_call1245.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us.3
  store double %polly.access.call1242.load.us.3, double* %polly.access.Packed_MemRef_call1245.us.3, align 8
  br label %polly.loop_header246.preheader

polly.loop_header253.us.1:                        ; preds = %polly.loop_header253.us.1, %polly.loop_exit255.loopexit.us
  %polly.indvar257.us.1 = phi i64 [ %polly.indvar_next258.us.1, %polly.loop_header253.us.1 ], [ 0, %polly.loop_exit255.loopexit.us ]
  %295 = add nuw nsw i64 %polly.indvar257.us.1, %111
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %296 = mul nuw nsw i64 %295, 8000
  %297 = add nuw nsw i64 %296, %106
  %scevgep267.us.1 = getelementptr i8, i8* %call2, i64 %297
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_273.us.1, %_p_scalar_269.us.1
  %298 = shl i64 %295, 3
  %299 = add nuw nsw i64 %298, %119
  %scevgep274.us.1 = getelementptr i8, i8* %call, i64 %299
  %scevgep274275.us.1 = bitcast i8* %scevgep274.us.1 to double*
  %_p_scalar_276.us.1 = load double, double* %scevgep274275.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_276.us.1
  store double %p_add42.i118.us.1, double* %scevgep274275.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next258.us.1 = add nuw nsw i64 %polly.indvar257.us.1, 1
  %exitcond984.1.not = icmp eq i64 %polly.indvar257.us.1, %smin983
  br i1 %exitcond984.1.not, label %polly.loop_exit255.loopexit.us.1, label %polly.loop_header253.us.1

polly.loop_exit255.loopexit.us.1:                 ; preds = %polly.loop_header253.us.1
  %300 = add nuw nsw i64 %108, %118
  %scevgep264.us.2 = getelementptr i8, i8* %call2, i64 %300
  %scevgep264265.us.2 = bitcast i8* %scevgep264.us.2 to double*
  %_p_scalar_266.us.2 = load double, double* %scevgep264265.us.2, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us.2 = add nsw i64 %114, 2400
  %polly.access.Packed_MemRef_call1272.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.2
  %_p_scalar_273.us.2 = load double, double* %polly.access.Packed_MemRef_call1272.us.2, align 8
  br label %polly.loop_header253.us.2

polly.loop_header253.us.2:                        ; preds = %polly.loop_header253.us.2, %polly.loop_exit255.loopexit.us.1
  %polly.indvar257.us.2 = phi i64 [ %polly.indvar_next258.us.2, %polly.loop_header253.us.2 ], [ 0, %polly.loop_exit255.loopexit.us.1 ]
  %301 = add nuw nsw i64 %polly.indvar257.us.2, %111
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nuw nsw i64 %polly.indvar257.us.2, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  %_p_scalar_263.us.2 = load double, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_266.us.2, %_p_scalar_263.us.2
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %108
  %scevgep267.us.2 = getelementptr i8, i8* %call2, i64 %303
  %scevgep267268.us.2 = bitcast i8* %scevgep267.us.2 to double*
  %_p_scalar_269.us.2 = load double, double* %scevgep267268.us.2, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_273.us.2, %_p_scalar_269.us.2
  %304 = shl i64 %301, 3
  %305 = add nuw nsw i64 %304, %119
  %scevgep274.us.2 = getelementptr i8, i8* %call, i64 %305
  %scevgep274275.us.2 = bitcast i8* %scevgep274.us.2 to double*
  %_p_scalar_276.us.2 = load double, double* %scevgep274275.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_276.us.2
  store double %p_add42.i118.us.2, double* %scevgep274275.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next258.us.2 = add nuw nsw i64 %polly.indvar257.us.2, 1
  %exitcond984.2.not = icmp eq i64 %polly.indvar257.us.2, %smin983
  br i1 %exitcond984.2.not, label %polly.loop_exit255.loopexit.us.2, label %polly.loop_header253.us.2

polly.loop_exit255.loopexit.us.2:                 ; preds = %polly.loop_header253.us.2
  %306 = add nuw nsw i64 %110, %118
  %scevgep264.us.3 = getelementptr i8, i8* %call2, i64 %306
  %scevgep264265.us.3 = bitcast i8* %scevgep264.us.3 to double*
  %_p_scalar_266.us.3 = load double, double* %scevgep264265.us.3, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1271.us.3 = add nsw i64 %114, 3600
  %polly.access.Packed_MemRef_call1272.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us.3
  %_p_scalar_273.us.3 = load double, double* %polly.access.Packed_MemRef_call1272.us.3, align 8
  br label %polly.loop_header253.us.3

polly.loop_header253.us.3:                        ; preds = %polly.loop_header253.us.3, %polly.loop_exit255.loopexit.us.2
  %polly.indvar257.us.3 = phi i64 [ %polly.indvar_next258.us.3, %polly.loop_header253.us.3 ], [ 0, %polly.loop_exit255.loopexit.us.2 ]
  %307 = add nuw nsw i64 %polly.indvar257.us.3, %111
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nuw nsw i64 %polly.indvar257.us.3, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  %_p_scalar_263.us.3 = load double, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_266.us.3, %_p_scalar_263.us.3
  %308 = mul nuw nsw i64 %307, 8000
  %309 = add nuw nsw i64 %308, %110
  %scevgep267.us.3 = getelementptr i8, i8* %call2, i64 %309
  %scevgep267268.us.3 = bitcast i8* %scevgep267.us.3 to double*
  %_p_scalar_269.us.3 = load double, double* %scevgep267268.us.3, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_273.us.3, %_p_scalar_269.us.3
  %310 = shl i64 %307, 3
  %311 = add nuw nsw i64 %310, %119
  %scevgep274.us.3 = getelementptr i8, i8* %call, i64 %311
  %scevgep274275.us.3 = bitcast i8* %scevgep274.us.3 to double*
  %_p_scalar_276.us.3 = load double, double* %scevgep274275.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_276.us.3
  store double %p_add42.i118.us.3, double* %scevgep274275.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next258.us.3 = add nuw nsw i64 %polly.indvar257.us.3, 1
  %exitcond984.3.not = icmp eq i64 %polly.indvar257.us.3, %smin983
  br i1 %exitcond984.3.not, label %polly.loop_exit248, label %polly.loop_header253.us.3

polly.loop_header413.us.1:                        ; preds = %polly.loop_header413.us.1.preheader, %polly.loop_header413.us.1
  %polly.indvar417.us.1 = phi i64 [ %polly.indvar_next418.us.1, %polly.loop_header413.us.1 ], [ 0, %polly.loop_header413.us.1.preheader ]
  %312 = add nuw nsw i64 %polly.indvar417.us.1, %150
  %polly.access.mul.call1421.us.1 = mul nuw nsw i64 %312, 1000
  %polly.access.add.call1422.us.1 = add nuw nsw i64 %140, %polly.access.mul.call1421.us.1
  %polly.access.call1423.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.1
  %polly.access.call1423.load.us.1 = load double, double* %polly.access.call1423.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar417.us.1, 1200
  %polly.access.Packed_MemRef_call1282.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  store double %polly.access.call1423.load.us.1, double* %polly.access.Packed_MemRef_call1282.us.1, align 8
  %polly.indvar_next418.us.1 = add nuw nsw i64 %polly.indvar417.us.1, 1
  %exitcond1003.1.not = icmp eq i64 %polly.indvar417.us.1, %smin1005
  br i1 %exitcond1003.1.not, label %polly.cond424.loopexit.us.1, label %polly.loop_header413.us.1

polly.cond424.loopexit.us.1:                      ; preds = %polly.loop_header413.us.1
  br i1 %.not861, label %polly.loop_header413.us.2.preheader, label %polly.then426.us.1

polly.then426.us.1:                               ; preds = %polly.cond424.loopexit.us.1
  %polly.access.add.call1430.us.1 = or i64 %155, 1
  %polly.access.call1431.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.1
  %polly.access.call1431.load.us.1 = load double, double* %polly.access.call1431.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.us.1 = add nsw i64 %153, 1200
  %polly.access.Packed_MemRef_call1282434.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.1
  store double %polly.access.call1431.load.us.1, double* %polly.access.Packed_MemRef_call1282434.us.1, align 8
  br label %polly.loop_header413.us.2.preheader

polly.loop_header413.us.2.preheader:              ; preds = %polly.then426.us.1, %polly.cond424.loopexit.us.1
  br label %polly.loop_header413.us.2

polly.loop_header413.us.2:                        ; preds = %polly.loop_header413.us.2.preheader, %polly.loop_header413.us.2
  %polly.indvar417.us.2 = phi i64 [ %polly.indvar_next418.us.2, %polly.loop_header413.us.2 ], [ 0, %polly.loop_header413.us.2.preheader ]
  %313 = add nuw nsw i64 %polly.indvar417.us.2, %150
  %polly.access.mul.call1421.us.2 = mul nuw nsw i64 %313, 1000
  %polly.access.add.call1422.us.2 = add nuw nsw i64 %141, %polly.access.mul.call1421.us.2
  %polly.access.call1423.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.2
  %polly.access.call1423.load.us.2 = load double, double* %polly.access.call1423.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar417.us.2, 2400
  %polly.access.Packed_MemRef_call1282.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  store double %polly.access.call1423.load.us.2, double* %polly.access.Packed_MemRef_call1282.us.2, align 8
  %polly.indvar_next418.us.2 = add nuw nsw i64 %polly.indvar417.us.2, 1
  %exitcond1003.2.not = icmp eq i64 %polly.indvar417.us.2, %smin1005
  br i1 %exitcond1003.2.not, label %polly.cond424.loopexit.us.2, label %polly.loop_header413.us.2

polly.cond424.loopexit.us.2:                      ; preds = %polly.loop_header413.us.2
  br i1 %.not861, label %polly.loop_header413.us.3.preheader, label %polly.then426.us.2

polly.then426.us.2:                               ; preds = %polly.cond424.loopexit.us.2
  %polly.access.add.call1430.us.2 = or i64 %155, 2
  %polly.access.call1431.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.2
  %polly.access.call1431.load.us.2 = load double, double* %polly.access.call1431.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.us.2 = add nsw i64 %153, 2400
  %polly.access.Packed_MemRef_call1282434.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.2
  store double %polly.access.call1431.load.us.2, double* %polly.access.Packed_MemRef_call1282434.us.2, align 8
  br label %polly.loop_header413.us.3.preheader

polly.loop_header413.us.3.preheader:              ; preds = %polly.then426.us.2, %polly.cond424.loopexit.us.2
  br label %polly.loop_header413.us.3

polly.loop_header413.us.3:                        ; preds = %polly.loop_header413.us.3.preheader, %polly.loop_header413.us.3
  %polly.indvar417.us.3 = phi i64 [ %polly.indvar_next418.us.3, %polly.loop_header413.us.3 ], [ 0, %polly.loop_header413.us.3.preheader ]
  %314 = add nuw nsw i64 %polly.indvar417.us.3, %150
  %polly.access.mul.call1421.us.3 = mul nuw nsw i64 %314, 1000
  %polly.access.add.call1422.us.3 = add nuw nsw i64 %142, %polly.access.mul.call1421.us.3
  %polly.access.call1423.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1422.us.3
  %polly.access.call1423.load.us.3 = load double, double* %polly.access.call1423.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar417.us.3, 3600
  %polly.access.Packed_MemRef_call1282.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  store double %polly.access.call1423.load.us.3, double* %polly.access.Packed_MemRef_call1282.us.3, align 8
  %polly.indvar_next418.us.3 = add nuw nsw i64 %polly.indvar417.us.3, 1
  %exitcond1003.3.not = icmp eq i64 %polly.indvar417.us.3, %smin1005
  br i1 %exitcond1003.3.not, label %polly.cond424.loopexit.us.3, label %polly.loop_header413.us.3

polly.cond424.loopexit.us.3:                      ; preds = %polly.loop_header413.us.3
  br i1 %.not861, label %polly.loop_header435.preheader, label %polly.then426.us.3

polly.then426.us.3:                               ; preds = %polly.cond424.loopexit.us.3
  %polly.access.add.call1430.us.3 = or i64 %155, 3
  %polly.access.call1431.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1430.us.3
  %polly.access.call1431.load.us.3 = load double, double* %polly.access.call1431.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282433.us.3 = add nsw i64 %153, 3600
  %polly.access.Packed_MemRef_call1282434.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282433.us.3
  store double %polly.access.call1431.load.us.3, double* %polly.access.Packed_MemRef_call1282434.us.3, align 8
  br label %polly.loop_header435.preheader

polly.loop_header442.us.1:                        ; preds = %polly.loop_header442.us.1, %polly.loop_exit444.loopexit.us
  %polly.indvar446.us.1 = phi i64 [ %polly.indvar_next447.us.1, %polly.loop_header442.us.1 ], [ 0, %polly.loop_exit444.loopexit.us ]
  %315 = add nuw nsw i64 %polly.indvar446.us.1, %150
  %polly.access.add.Packed_MemRef_call1282450.us.1 = add nuw nsw i64 %polly.indvar446.us.1, 1200
  %polly.access.Packed_MemRef_call1282451.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.1
  %_p_scalar_452.us.1 = load double, double* %polly.access.Packed_MemRef_call1282451.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_455.us.1, %_p_scalar_452.us.1
  %316 = mul nuw nsw i64 %315, 8000
  %317 = add nuw nsw i64 %316, %145
  %scevgep456.us.1 = getelementptr i8, i8* %call2, i64 %317
  %scevgep456457.us.1 = bitcast i8* %scevgep456.us.1 to double*
  %_p_scalar_458.us.1 = load double, double* %scevgep456457.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_462.us.1, %_p_scalar_458.us.1
  %318 = shl i64 %315, 3
  %319 = add nuw nsw i64 %318, %158
  %scevgep463.us.1 = getelementptr i8, i8* %call, i64 %319
  %scevgep463464.us.1 = bitcast i8* %scevgep463.us.1 to double*
  %_p_scalar_465.us.1 = load double, double* %scevgep463464.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_465.us.1
  store double %p_add42.i79.us.1, double* %scevgep463464.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next447.us.1 = add nuw nsw i64 %polly.indvar446.us.1, 1
  %exitcond1006.1.not = icmp eq i64 %polly.indvar446.us.1, %smin1005
  br i1 %exitcond1006.1.not, label %polly.loop_exit444.loopexit.us.1, label %polly.loop_header442.us.1

polly.loop_exit444.loopexit.us.1:                 ; preds = %polly.loop_header442.us.1
  %320 = add nuw nsw i64 %147, %157
  %scevgep453.us.2 = getelementptr i8, i8* %call2, i64 %320
  %scevgep453454.us.2 = bitcast i8* %scevgep453.us.2 to double*
  %_p_scalar_455.us.2 = load double, double* %scevgep453454.us.2, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us.2 = add nsw i64 %153, 2400
  %polly.access.Packed_MemRef_call1282461.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.2
  %_p_scalar_462.us.2 = load double, double* %polly.access.Packed_MemRef_call1282461.us.2, align 8
  br label %polly.loop_header442.us.2

polly.loop_header442.us.2:                        ; preds = %polly.loop_header442.us.2, %polly.loop_exit444.loopexit.us.1
  %polly.indvar446.us.2 = phi i64 [ %polly.indvar_next447.us.2, %polly.loop_header442.us.2 ], [ 0, %polly.loop_exit444.loopexit.us.1 ]
  %321 = add nuw nsw i64 %polly.indvar446.us.2, %150
  %polly.access.add.Packed_MemRef_call1282450.us.2 = add nuw nsw i64 %polly.indvar446.us.2, 2400
  %polly.access.Packed_MemRef_call1282451.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.2
  %_p_scalar_452.us.2 = load double, double* %polly.access.Packed_MemRef_call1282451.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_455.us.2, %_p_scalar_452.us.2
  %322 = mul nuw nsw i64 %321, 8000
  %323 = add nuw nsw i64 %322, %147
  %scevgep456.us.2 = getelementptr i8, i8* %call2, i64 %323
  %scevgep456457.us.2 = bitcast i8* %scevgep456.us.2 to double*
  %_p_scalar_458.us.2 = load double, double* %scevgep456457.us.2, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_462.us.2, %_p_scalar_458.us.2
  %324 = shl i64 %321, 3
  %325 = add nuw nsw i64 %324, %158
  %scevgep463.us.2 = getelementptr i8, i8* %call, i64 %325
  %scevgep463464.us.2 = bitcast i8* %scevgep463.us.2 to double*
  %_p_scalar_465.us.2 = load double, double* %scevgep463464.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_465.us.2
  store double %p_add42.i79.us.2, double* %scevgep463464.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next447.us.2 = add nuw nsw i64 %polly.indvar446.us.2, 1
  %exitcond1006.2.not = icmp eq i64 %polly.indvar446.us.2, %smin1005
  br i1 %exitcond1006.2.not, label %polly.loop_exit444.loopexit.us.2, label %polly.loop_header442.us.2

polly.loop_exit444.loopexit.us.2:                 ; preds = %polly.loop_header442.us.2
  %326 = add nuw nsw i64 %149, %157
  %scevgep453.us.3 = getelementptr i8, i8* %call2, i64 %326
  %scevgep453454.us.3 = bitcast i8* %scevgep453.us.3 to double*
  %_p_scalar_455.us.3 = load double, double* %scevgep453454.us.3, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1282460.us.3 = add nsw i64 %153, 3600
  %polly.access.Packed_MemRef_call1282461.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282460.us.3
  %_p_scalar_462.us.3 = load double, double* %polly.access.Packed_MemRef_call1282461.us.3, align 8
  br label %polly.loop_header442.us.3

polly.loop_header442.us.3:                        ; preds = %polly.loop_header442.us.3, %polly.loop_exit444.loopexit.us.2
  %polly.indvar446.us.3 = phi i64 [ %polly.indvar_next447.us.3, %polly.loop_header442.us.3 ], [ 0, %polly.loop_exit444.loopexit.us.2 ]
  %327 = add nuw nsw i64 %polly.indvar446.us.3, %150
  %polly.access.add.Packed_MemRef_call1282450.us.3 = add nuw nsw i64 %polly.indvar446.us.3, 3600
  %polly.access.Packed_MemRef_call1282451.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282450.us.3
  %_p_scalar_452.us.3 = load double, double* %polly.access.Packed_MemRef_call1282451.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_455.us.3, %_p_scalar_452.us.3
  %328 = mul nuw nsw i64 %327, 8000
  %329 = add nuw nsw i64 %328, %149
  %scevgep456.us.3 = getelementptr i8, i8* %call2, i64 %329
  %scevgep456457.us.3 = bitcast i8* %scevgep456.us.3 to double*
  %_p_scalar_458.us.3 = load double, double* %scevgep456457.us.3, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_462.us.3, %_p_scalar_458.us.3
  %330 = shl i64 %327, 3
  %331 = add nuw nsw i64 %330, %158
  %scevgep463.us.3 = getelementptr i8, i8* %call, i64 %331
  %scevgep463464.us.3 = bitcast i8* %scevgep463.us.3 to double*
  %_p_scalar_465.us.3 = load double, double* %scevgep463464.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_465.us.3
  store double %p_add42.i79.us.3, double* %scevgep463464.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next447.us.3 = add nuw nsw i64 %polly.indvar446.us.3, 1
  %exitcond1006.3.not = icmp eq i64 %polly.indvar446.us.3, %smin1005
  br i1 %exitcond1006.3.not, label %polly.loop_exit437, label %polly.loop_header442.us.3

polly.loop_header602.us.1:                        ; preds = %polly.loop_header602.us.1.preheader, %polly.loop_header602.us.1
  %polly.indvar606.us.1 = phi i64 [ %polly.indvar_next607.us.1, %polly.loop_header602.us.1 ], [ 0, %polly.loop_header602.us.1.preheader ]
  %332 = add nuw nsw i64 %polly.indvar606.us.1, %189
  %polly.access.mul.call1610.us.1 = mul nuw nsw i64 %332, 1000
  %polly.access.add.call1611.us.1 = add nuw nsw i64 %179, %polly.access.mul.call1610.us.1
  %polly.access.call1612.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.1
  %polly.access.call1612.load.us.1 = load double, double* %polly.access.call1612.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1200
  %polly.access.Packed_MemRef_call1471.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.1
  store double %polly.access.call1612.load.us.1, double* %polly.access.Packed_MemRef_call1471.us.1, align 8
  %polly.indvar_next607.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1
  %exitcond1025.1.not = icmp eq i64 %polly.indvar606.us.1, %smin1027
  br i1 %exitcond1025.1.not, label %polly.cond613.loopexit.us.1, label %polly.loop_header602.us.1

polly.cond613.loopexit.us.1:                      ; preds = %polly.loop_header602.us.1
  br i1 %.not862, label %polly.loop_header602.us.2.preheader, label %polly.then615.us.1

polly.then615.us.1:                               ; preds = %polly.cond613.loopexit.us.1
  %polly.access.add.call1619.us.1 = or i64 %194, 1
  %polly.access.call1620.us.1 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.1
  %polly.access.call1620.load.us.1 = load double, double* %polly.access.call1620.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.us.1 = add nsw i64 %192, 1200
  %polly.access.Packed_MemRef_call1471623.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.1
  store double %polly.access.call1620.load.us.1, double* %polly.access.Packed_MemRef_call1471623.us.1, align 8
  br label %polly.loop_header602.us.2.preheader

polly.loop_header602.us.2.preheader:              ; preds = %polly.then615.us.1, %polly.cond613.loopexit.us.1
  br label %polly.loop_header602.us.2

polly.loop_header602.us.2:                        ; preds = %polly.loop_header602.us.2.preheader, %polly.loop_header602.us.2
  %polly.indvar606.us.2 = phi i64 [ %polly.indvar_next607.us.2, %polly.loop_header602.us.2 ], [ 0, %polly.loop_header602.us.2.preheader ]
  %333 = add nuw nsw i64 %polly.indvar606.us.2, %189
  %polly.access.mul.call1610.us.2 = mul nuw nsw i64 %333, 1000
  %polly.access.add.call1611.us.2 = add nuw nsw i64 %180, %polly.access.mul.call1610.us.2
  %polly.access.call1612.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.2
  %polly.access.call1612.load.us.2 = load double, double* %polly.access.call1612.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 2400
  %polly.access.Packed_MemRef_call1471.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.2
  store double %polly.access.call1612.load.us.2, double* %polly.access.Packed_MemRef_call1471.us.2, align 8
  %polly.indvar_next607.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 1
  %exitcond1025.2.not = icmp eq i64 %polly.indvar606.us.2, %smin1027
  br i1 %exitcond1025.2.not, label %polly.cond613.loopexit.us.2, label %polly.loop_header602.us.2

polly.cond613.loopexit.us.2:                      ; preds = %polly.loop_header602.us.2
  br i1 %.not862, label %polly.loop_header602.us.3.preheader, label %polly.then615.us.2

polly.then615.us.2:                               ; preds = %polly.cond613.loopexit.us.2
  %polly.access.add.call1619.us.2 = or i64 %194, 2
  %polly.access.call1620.us.2 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.2
  %polly.access.call1620.load.us.2 = load double, double* %polly.access.call1620.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.us.2 = add nsw i64 %192, 2400
  %polly.access.Packed_MemRef_call1471623.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.2
  store double %polly.access.call1620.load.us.2, double* %polly.access.Packed_MemRef_call1471623.us.2, align 8
  br label %polly.loop_header602.us.3.preheader

polly.loop_header602.us.3.preheader:              ; preds = %polly.then615.us.2, %polly.cond613.loopexit.us.2
  br label %polly.loop_header602.us.3

polly.loop_header602.us.3:                        ; preds = %polly.loop_header602.us.3.preheader, %polly.loop_header602.us.3
  %polly.indvar606.us.3 = phi i64 [ %polly.indvar_next607.us.3, %polly.loop_header602.us.3 ], [ 0, %polly.loop_header602.us.3.preheader ]
  %334 = add nuw nsw i64 %polly.indvar606.us.3, %189
  %polly.access.mul.call1610.us.3 = mul nuw nsw i64 %334, 1000
  %polly.access.add.call1611.us.3 = add nuw nsw i64 %181, %polly.access.mul.call1610.us.3
  %polly.access.call1612.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1611.us.3
  %polly.access.call1612.load.us.3 = load double, double* %polly.access.call1612.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 3600
  %polly.access.Packed_MemRef_call1471.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471.us.3
  store double %polly.access.call1612.load.us.3, double* %polly.access.Packed_MemRef_call1471.us.3, align 8
  %polly.indvar_next607.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 1
  %exitcond1025.3.not = icmp eq i64 %polly.indvar606.us.3, %smin1027
  br i1 %exitcond1025.3.not, label %polly.cond613.loopexit.us.3, label %polly.loop_header602.us.3

polly.cond613.loopexit.us.3:                      ; preds = %polly.loop_header602.us.3
  br i1 %.not862, label %polly.loop_header624.preheader, label %polly.then615.us.3

polly.then615.us.3:                               ; preds = %polly.cond613.loopexit.us.3
  %polly.access.add.call1619.us.3 = or i64 %194, 3
  %polly.access.call1620.us.3 = getelementptr double, double* %polly.access.cast.call1659, i64 %polly.access.add.call1619.us.3
  %polly.access.call1620.load.us.3 = load double, double* %polly.access.call1620.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1471622.us.3 = add nsw i64 %192, 3600
  %polly.access.Packed_MemRef_call1471623.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471622.us.3
  store double %polly.access.call1620.load.us.3, double* %polly.access.Packed_MemRef_call1471623.us.3, align 8
  br label %polly.loop_header624.preheader

polly.loop_header631.us.1:                        ; preds = %polly.loop_header631.us.1, %polly.loop_exit633.loopexit.us
  %polly.indvar635.us.1 = phi i64 [ %polly.indvar_next636.us.1, %polly.loop_header631.us.1 ], [ 0, %polly.loop_exit633.loopexit.us ]
  %335 = add nuw nsw i64 %polly.indvar635.us.1, %189
  %polly.access.add.Packed_MemRef_call1471639.us.1 = add nuw nsw i64 %polly.indvar635.us.1, 1200
  %polly.access.Packed_MemRef_call1471640.us.1 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.1
  %_p_scalar_641.us.1 = load double, double* %polly.access.Packed_MemRef_call1471640.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_644.us.1, %_p_scalar_641.us.1
  %336 = mul nuw nsw i64 %335, 8000
  %337 = add nuw nsw i64 %336, %184
  %scevgep645.us.1 = getelementptr i8, i8* %call2, i64 %337
  %scevgep645646.us.1 = bitcast i8* %scevgep645.us.1 to double*
  %_p_scalar_647.us.1 = load double, double* %scevgep645646.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_651.us.1, %_p_scalar_647.us.1
  %338 = shl i64 %335, 3
  %339 = add nuw nsw i64 %338, %197
  %scevgep652.us.1 = getelementptr i8, i8* %call, i64 %339
  %scevgep652653.us.1 = bitcast i8* %scevgep652.us.1 to double*
  %_p_scalar_654.us.1 = load double, double* %scevgep652653.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_654.us.1
  store double %p_add42.i.us.1, double* %scevgep652653.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next636.us.1 = add nuw nsw i64 %polly.indvar635.us.1, 1
  %exitcond1028.1.not = icmp eq i64 %polly.indvar635.us.1, %smin1027
  br i1 %exitcond1028.1.not, label %polly.loop_exit633.loopexit.us.1, label %polly.loop_header631.us.1

polly.loop_exit633.loopexit.us.1:                 ; preds = %polly.loop_header631.us.1
  %340 = add nuw nsw i64 %186, %196
  %scevgep642.us.2 = getelementptr i8, i8* %call2, i64 %340
  %scevgep642643.us.2 = bitcast i8* %scevgep642.us.2 to double*
  %_p_scalar_644.us.2 = load double, double* %scevgep642643.us.2, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us.2 = add nsw i64 %192, 2400
  %polly.access.Packed_MemRef_call1471650.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.2
  %_p_scalar_651.us.2 = load double, double* %polly.access.Packed_MemRef_call1471650.us.2, align 8
  br label %polly.loop_header631.us.2

polly.loop_header631.us.2:                        ; preds = %polly.loop_header631.us.2, %polly.loop_exit633.loopexit.us.1
  %polly.indvar635.us.2 = phi i64 [ %polly.indvar_next636.us.2, %polly.loop_header631.us.2 ], [ 0, %polly.loop_exit633.loopexit.us.1 ]
  %341 = add nuw nsw i64 %polly.indvar635.us.2, %189
  %polly.access.add.Packed_MemRef_call1471639.us.2 = add nuw nsw i64 %polly.indvar635.us.2, 2400
  %polly.access.Packed_MemRef_call1471640.us.2 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.2
  %_p_scalar_641.us.2 = load double, double* %polly.access.Packed_MemRef_call1471640.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_644.us.2, %_p_scalar_641.us.2
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %186
  %scevgep645.us.2 = getelementptr i8, i8* %call2, i64 %343
  %scevgep645646.us.2 = bitcast i8* %scevgep645.us.2 to double*
  %_p_scalar_647.us.2 = load double, double* %scevgep645646.us.2, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_651.us.2, %_p_scalar_647.us.2
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %197
  %scevgep652.us.2 = getelementptr i8, i8* %call, i64 %345
  %scevgep652653.us.2 = bitcast i8* %scevgep652.us.2 to double*
  %_p_scalar_654.us.2 = load double, double* %scevgep652653.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_654.us.2
  store double %p_add42.i.us.2, double* %scevgep652653.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next636.us.2 = add nuw nsw i64 %polly.indvar635.us.2, 1
  %exitcond1028.2.not = icmp eq i64 %polly.indvar635.us.2, %smin1027
  br i1 %exitcond1028.2.not, label %polly.loop_exit633.loopexit.us.2, label %polly.loop_header631.us.2

polly.loop_exit633.loopexit.us.2:                 ; preds = %polly.loop_header631.us.2
  %346 = add nuw nsw i64 %188, %196
  %scevgep642.us.3 = getelementptr i8, i8* %call2, i64 %346
  %scevgep642643.us.3 = bitcast i8* %scevgep642.us.3 to double*
  %_p_scalar_644.us.3 = load double, double* %scevgep642643.us.3, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1471649.us.3 = add nsw i64 %192, 3600
  %polly.access.Packed_MemRef_call1471650.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471649.us.3
  %_p_scalar_651.us.3 = load double, double* %polly.access.Packed_MemRef_call1471650.us.3, align 8
  br label %polly.loop_header631.us.3

polly.loop_header631.us.3:                        ; preds = %polly.loop_header631.us.3, %polly.loop_exit633.loopexit.us.2
  %polly.indvar635.us.3 = phi i64 [ %polly.indvar_next636.us.3, %polly.loop_header631.us.3 ], [ 0, %polly.loop_exit633.loopexit.us.2 ]
  %347 = add nuw nsw i64 %polly.indvar635.us.3, %189
  %polly.access.add.Packed_MemRef_call1471639.us.3 = add nuw nsw i64 %polly.indvar635.us.3, 3600
  %polly.access.Packed_MemRef_call1471640.us.3 = getelementptr double, double* %Packed_MemRef_call1471, i64 %polly.access.add.Packed_MemRef_call1471639.us.3
  %_p_scalar_641.us.3 = load double, double* %polly.access.Packed_MemRef_call1471640.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_644.us.3, %_p_scalar_641.us.3
  %348 = mul nuw nsw i64 %347, 8000
  %349 = add nuw nsw i64 %348, %188
  %scevgep645.us.3 = getelementptr i8, i8* %call2, i64 %349
  %scevgep645646.us.3 = bitcast i8* %scevgep645.us.3 to double*
  %_p_scalar_647.us.3 = load double, double* %scevgep645646.us.3, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_651.us.3, %_p_scalar_647.us.3
  %350 = shl i64 %347, 3
  %351 = add nuw nsw i64 %350, %197
  %scevgep652.us.3 = getelementptr i8, i8* %call, i64 %351
  %scevgep652653.us.3 = bitcast i8* %scevgep652.us.3 to double*
  %_p_scalar_654.us.3 = load double, double* %scevgep652653.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_654.us.3
  store double %p_add42.i.us.3, double* %scevgep652653.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next636.us.3 = add nuw nsw i64 %polly.indvar635.us.3, 1
  %exitcond1028.3.not = icmp eq i64 %polly.indvar635.us.3, %smin1027
  br i1 %exitcond1028.3.not, label %polly.loop_exit626, label %polly.loop_header631.us.3
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
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
!48 = !{!"llvm.loop.tile.size", i32 64}
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
